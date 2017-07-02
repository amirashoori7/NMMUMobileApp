var map, marker, infoWindow;
function removeMarker() {
	var url = "REST/GetLocationWS/RemoveALocation?locationId="
			+ $("#markerId").val();
	if (confirm('Are you sure you want to remove this location?'))
		$.ajax({
			url : url,
			cache : false,
			success : function(data) {
				$('#insertAMarker').popup('close');
				if (data.errorMSG != null) {
					alert(data.errorMSG);
					return;
				}
				getAllMarkers();
			}
		});
}

function printBarcode(id, name) {
	if (id == "") {
		alert("The location does not exist yet. Please save the location first");
		return;
	}
	// var query = '{"id":"' + id + '"}';
	window.open("pages/location/barcodePrint.jsp?locationId=" + id);
}

function saveMarker() {
	if ($("#markerName").val() == "") {
		alert("Please select a name for the location");
		return;
	}
	var url = "REST/GetLocationWS/SaveUpdateLocation?locationParent="
			+ $("parentLocationId").val() + "&locationName=" + $("#markerName").val()
			+ "&coordinate=" + $("#markerCoordinate").val() + "&locationType="
			+ $("#locationTypeId").val() + "&userName=admin";

	$.ajax({
		url : url,
		cache : false,
		success : function(data) {
			marker = new google.maps.Marker({
				position : {
					lat : parseFloat(data.gps.split(",")[0]),
					lng : parseFloat(data.gps.split(",")[1])
				},
				map : map,
				icon: getIcon(data.locationType.locationTypeId),
				title : data.locationName
			});
			var bounds = new google.maps.LatLngBounds();
			bounds.extend(marker.getPosition());
			map.fitBounds(bounds);
			marker.addListener('click', function() {
				addToPath(data.locationName, data.locationID, data.gps,
						data.locationType.locationTypeId);
			});
			markers.push(marker);
		}
	});
	$('#insertAMarker').popup('close');
	$('#insertAMarker').popup("destroy");
}

function removePath(id) {
	if (confirm('Are you sure you want to remove this path?')) {
		var url = "REST/GetLocationWS/RemoveAPath?pathId=" + id;
		$.ajax({
			url : url,
			cache : false,
			success : function(data) {
				if (data.errorMSG != null) {
					alert(data.errorMSG);
					return;
				}
				getAllPaths();
			}
		});
	} else {
		return;
	}
}

function savePath() {
	var url = "REST/GetLocationWS/SavePath?fLocationId="
			+ $("#departureId").val() + "&tLocationId="
			+ $("#destinationId").val() + "&pathType=" + $("#pathType").val();
	$.ajax({
		url : url,
		cache : false,
		success : function(data) {
			// window.location.replace("t_location.do?reqCode=pathManagement");
			$("#departure").val("");
			$("#departureId").val("");
			$("#destination").val("");
			$("#destinationId").val("");
			getAllPaths();
			$('#insertAPath').popup('close');
		}
	});
}

var markers = [];
var paths = [];
function getAllMarkers() {
	var url = "REST/GetLocationWS/GetAllLocationsForUser?parentLocationId="+
	$("#parentLocationId").val()+"&locationTypeId="
			+ $("#locationTypeId").val() + "&userName=admin";
	for ( var i = 0; i < markers.length; i++) {
		markers[i].setMap(null);
	}

	$.ajax({
		url : url,
		cache : false,
		success : function(data) {
			$.each(data, function(k, l) {
				marker = new google.maps.Marker({
					position : {
						lat : parseFloat(l.gps.split(",")[0]),
						lng : parseFloat(l.gps.split(",")[1])
					},
					map : map,
					icon : getIcon(l.locationType.locationTypeId),
					title : l.locationName
				});

				marker.addListener('click', function(point) {
					addToPath(l.locationName, l.locationID, l.gps,
							l.locationType.locationType);
				});
				markers.push(marker);
			});
		}
	});
}

function getIcon(locationTypeId) {
	var icon = 'images/map-markers/';
	if (locationTypeId == "1")
		icon += 'marker-blue.png';
	else if (locationTypeId == "2")
		icon += 'marker-green.png';
	else if (locationTypeId == "3")
		icon += 'marker-orange.png';
	else if (locationTypeId == "4")
		icon += 'marker-pink.png';
	else 
		icon += 'marker-yellow.png';
	return icon;
}

function getAllPaths() {
	var url = "REST/GetLocationWS/GetAllPathsForUser?userName=admin";
	for ( var i = 0; i < paths.length; i++) {
		paths[i].setMap(null);
	}
	$.ajax({
		url : url,
		cache : false,
		success : function(data) {
			$.each(data, function(k, l) {
				var pathCoor = [];
				pathCoor.push(new google.maps.LatLng(parseFloat(l.departure.gps
						.split(',')[0]),
						parseFloat(l.departure.gps.split(',')[1])));
				pathCoor.push(new google.maps.LatLng(
						parseFloat(l.destination.gps.split(',')[0]),
						parseFloat(l.destination.gps.split(',')[1])));
				var color = '#FF0000';
				if (l.pathType.pathTypeId == "1")
					color = '#ffb400';
				if (l.pathType.pathTypeId == "2")
					color = '#0ec605';
				if (l.pathType.pathTypeId == "3")
					color = '#3359fc';
				if (l.pathType.pathTypeId == "4")
					color = '#000000';
				if (l.pathType.pathTypeId == "5")
					color = '#ffffff';
				if (l.pathType.pathTypeId == "6")
					color = '#fc33f0';
				var pathPolyline = new google.maps.Polyline({
					path : pathCoor,
					geodesic : true,
					strokeColor : color,
					strokeOpacity : 1.0,
					strokeWeight : 7
				});
				pathPolyline.addListener('click', function() {
					removePath(l.pathId);
				});
				pathPolyline.setMap(map);
				paths.push(pathPolyline);
			});
		}

	});
}

function animateCircle(line) {
	var count = 0;
	window.setInterval(function() {
		count = (count + 1) % 200;

		var icons = line.get('icons');
		icons[0].offset = (count / 2) + '%';
		line.set('icons', icons);
	}, 20);
}

function addToPath(name, id, gps, typeName) {
	if ($('[name="optionType"] :radio:checked').val() == "marker") {
		$("#markerId").val(id);
		$("#markerName").val(name);
		$("#markerCoordinate").val(gps);
		$("#markerLabel").html(typeName);
		// $("#locationType option[value=" + typeId + "]").attr('selected',
		// 'selected').trigger('create');
		openMarkerPopup();
	} else {
		if ($("#departure").val() == "") {
			$("#departure").val(name);
			$("#departureId").val(id);
			return;
		} else if ($("#destination").val() == "") {
			$("#destination").val(name);
			$("#destinationId").val(id);
			openPathCreationPopup();
		}
	}
}

function openMarkerPopup() {
	if ($("#locationTypeId").val() == "0"
			|| $("#parentLocationId").val() == "0") {
		alert("Please select the marker type (at the top menu) and parent location (at the right side menu) first.");
		return;
	}
	$('#insertAMarker').popup().trigger('create');
	$('#insertAMarker').popup('open').trigger('create');

}

function openPathCreationPopup() {
	$('#insertAPath').popup().trigger('create');
	$('#insertAPath').popup('open').trigger('create');
}

function initMap() {
	getLocationTypePanel();
	getPathTypePanel();
	getAllMarkers();
	getAllPaths();
	var myLatLng = {
		lat : -34.009083,
		lng : 25.669059
	};
	marker = new google.maps.Marker({
		position : myLatLng,
		map : map
	});
	map = new google.maps.Map(document.getElementById('map_canvas'), {
		zoom : 18,
		streetViewControl : true,
		fullscreenControl : true,
		mapTypeId : 'satellite'
	});
	map.setCenter(myLatLng);
	map.controls[google.maps.ControlPosition.BOTTOM_LEFT].push(document
			.getElementById('searchFields'));
	map.controls[google.maps.ControlPosition.TOP_LEFT].push(document
			.getElementById('locationTypeFields'));
	map.controls[google.maps.ControlPosition.LEFT_TOP].push(document
			.getElementById('infoDiv'));
	map.controls[google.maps.ControlPosition.RIGHT_TOP].push(document
			.getElementById('locationsUnderAType'));
	google.maps.event.addListener(map, "click", function(event) {
		$("#departure").val("");
		$("#departureId").val("");
		$("#destination").val("");
		$("#destinationId").val("");
		var lat = event.latLng.lat();
		var lng = event.latLng.lng();
		addToPath(null, null, lat + "," + lng, null);
	});
}

function drawPoly() {
	for ( var i = 0; i < paths.length; i++) {
		paths[i].setMap(null);
	}
	for ( var i = 0; i < markers.length; i++) {
		marker[i].setMap(null);
	}
	var url = "REST/GetLocationWS/GetADirectionFromTo?from=" + $("#from").val()
			+ "&to=" + $("#to").val() + "&pathType="
			+ $("[name='radio-choice-path-type']:checked").val();
	$.ajax({
		url : url,
		cache : false,
		success : function(data) {
			var pathString = "";
			$.each(data, function(k, l) {
				if (k == 0) {
					pathString = l.departure.locationID + ","
							+ l.destination.locationID;
					$("#departureName").val(l.departure.locationName);
					$("#destinationName").val(l.destination.locationName);
				} else
					pathString += "," + l.destination.locationID;
				var pathCoor = [];
				pathCoor.push(new google.maps.LatLng(parseFloat(l.departure.gps
						.split(',')[0]),
						parseFloat(l.departure.gps.split(',')[1])));
				pathCoor.push(new google.maps.LatLng(
						parseFloat(l.destination.gps.split(',')[0]),
						parseFloat(l.destination.gps.split(',')[1])));
				var lineSymbol = {
					path : google.maps.SymbolPath.FORWARD_CLOSED_ARROW,
					scale : 5,
					strokeColor : 'black'
				};
				var pathPolyline = new google.maps.Polyline({
					path : pathCoor,
					geodesic : true,
					icons : [ {
						icon : lineSymbol,
						offset : '100%'
					} ],
					strokeColor : 'black',
					strokeOpacity : 1.0,
					strokeWeight : 7
				});
				pathPolyline.setMap(map);
				pathPolyline.addListener('click', function() {
					removePath(l.pathId);
				});
				paths.push(pathPolyline);
				animateCircle(pathPolyline);
			});
			$("#tripString").val(pathString);
			$("#departureId").val(pathString.split(",")[0]);
			$("#destinationId").val(
					pathString.split(",")[pathString.split(",").length - 1]);
		}
	});
}

function selectRightPanelVal() {
	if ($('[name="optionType"] :radio:checked').val() == "marker") {
		$("#locationTypeListViewDiv").css("display", "block");
		$("#pathTypeListViewDiv").css("display", "none");
	} else {
		$("#locationTypeListViewDiv").css("display", "none");
		$("#pathTypeListViewDiv").css("display", "block");
	}
}
var locationTypeJSONData;
function getLocationTypePanel() {
	var url = "REST/GetLocationWS/GetAllLocationTypes";
	$("#locationTypesContainer").controlgroup();
	$
			.ajax({
				url : url,
				cache : false,
				success : function(data) {
					locationTypeJSONData = data;
					// $("#locationTypesContainer").html("");
					var str = "<select name='selectLocationType' data-iconpos='noicon' class='locationTypeNavBar' id='NavBar"
							+ data.locationType
							+ "' onclick='getMyChild(this)'>";
					str += "<option value='" + data.locationTypeId + "'>"
							+ data.locationType + "</option>";
					if (data.children.length > 1)
						$.each(data.children, function(k, l) {
							str += "<option value='" + l.locationTypeId + "'>"
									+ l.locationType + "</option>";
						});
					$("div#infoDiv")
							.append(
									"<span class='infoDivTitle' id='locationTypeParent'>Create "
											+ data.locationType
											+ "</span>"
											+ "<span class='infoDivTitle' id='locationParent'></span>");
					str += "</select>";
					$("#locationTypeId").val(data.locationTypeId);
					// $("#locationTypesContainer").html(str);
					// $("#locationTypesContainer").trigger("create");
					$("#locationTypesContainer").controlgroup("container")
							.empty();
					$("#locationTypesContainer").controlgroup("refresh");
					$("#locationTypesContainer").controlgroup("container")
							.append(str);
					$("#NavBar" + data.locationType).selectmenu();
					$("#locationTypesContainer").controlgroup("refresh");
				}
			});
}
function selectParent(field) {
	$("#locationParent").html(
			" in " + $(field).html() + " " + $("#parentDefinition").val() + " "
					+ $("#" + $(field).attr("id") + " option:selected").text());
	$("#parentLocationId").val($(field).attr("id"));
	getAllMarkers();
}

var childData;
function getMyChild(field) {
	var select = 0;
	if (typeof field != 'number') {
		select = $(field).val();
		$("#locationTypeId").val($(field).val());
		$("#locationTypeParent").html(
				"Create "
						+ $("#" + $(field).attr("id") + " option:selected")
								.text());
		$("#parentLocationId").val("0");
		$("#locationParent").html("");
		getAllMarkers();
		var url = "REST/GetLocationWS/GetParentLocationsOfaType?typeId="
				+ $("#locationTypeId").val();
		$
				.ajax({
					url : url,
					cache : false,
					success : function(data) {
						var str = "";
						$
								.each(
										data,
										function(k, l) {
											str += '<a href="#" id="'
													+ l.id
													+ '" data-mini="true" onclick="selectParent(this)" class="ui-btn ui-shadow ui-corner-all">'
													+ l.n + '</a>';
											$("#parentDefinition").val(l.t);
										});
						$('#parentLocationListView').html(str);
					}
				});
	} else
		select = field;
	if (childData == null)
		childData = locationTypeJSONData;
	else if (childData.children == null)
		return;
	var navbarId = "";
	if (childData.locationTypeId == select) {
		var str = "";
		$
				.each(
						childData.children,
						function(k, l) {
							if (str == "") {
								navbarId = l.locationType;
								str = "<select name='selectLocationType' data-iconpos='noicon' class='locationTypeNavBar' id='NavBar"
										+ l.locationType
										+ "' onclick='getMyChild(this)' >";
							}
							str += "<option value='" + l.locationTypeId + "'> "
									+ l.locationType + "</option>";

							if (l.children != null && l.children.length > 3) {
								$
										.each(
												l.children,
												function(p, t) {
													if (str == "")
														str = "<select name='selectLocationType' onclick='getMyChild($(this).val())'>";
													str += "<option value='"
															+ t.locationTypeId
															+ "'>"
															+ t.locationType
															+ "</option>";
												});
							}
						});
		str += "</select>";
		if ($("select#NavBar" + navbarId).length == 0) {
			$("#locationTypesContainer").controlgroup("container").append(str);
			$("#NavBar" + navbarId).selectmenu();
			$("#NavBar" + navbarId + " > option").each(function() {
				$("#NavBar" + navbarId).css("min-width",$(this).css("width"));
			});
			$("#locationTypesContainer").controlgroup("refresh");
		}
	} else
		$.each(childData.children, function(k, l) {
			childData = l;
			getMyChild(l.locationTypeId);
		});
}

function startTrip() {
	var url = "REST/GetLocationWS/StartTrip?from=" + $("#departureId").val()
			+ "&to=" + $("#destinationId").val();
	$.ajax({
		url : url,
		cache : false,
		success : function(data) {
			$("#tripId").val(data[0].tripId);
		}
	});
}

function removeTrip() {
	var url = "REST/GetLocationWS/RemoveTrip?tripId=" + $("#tripId").val();
	$.ajax({
		url : url,
		cache : false,
		success : function(data) {
			$("#from").val("");
			$("#departureId").val("");
			$("#to").val("");
			$("#destinationId").val("");
			$("#to").val("");
			$("#tripString").val("");
			$("#tripId").val("");
			for ( var i = 0; i < paths.length; i++) {
				paths[i].setMap(null);
			}
		}
	});

}

function getPathTypePanel() {
	var url = "REST/GetLocationWS/GetAllPathTypes";
	$.ajax({
		url : url,
		cache : false,
		success : function(data) {
			var tmp = "";
			$.each(data, function(k, l) {
				tmp += "<li value='" + l.pathTypeId
						+ "' class='liPathLV'><a href='#'>" + l.pathType
						+ "</a></li>";
			});
			$("ul#pathTypeListView").html(tmp).trigger("create");
			$("ul#pathTypeListView").listview();
			$("ul#pathTypeListView").listview("refresh");
			$("#rightpanel").trigger("updatelayout");
		}
	});
}

$(document).ready(
		function() {
			$("#map_canvas").css("min-width",
					parseInt($("#mainBodyContents").css("width")));
			$("#map_canvas").css(
					"min-height",
					parseInt($(window).height())
							- parseInt($(".jqm-header").css("height")) - 7);

		});
