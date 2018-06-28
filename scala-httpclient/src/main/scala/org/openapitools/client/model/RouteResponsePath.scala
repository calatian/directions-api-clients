/**
 * GraphHopper Directions API
 * You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model


case class RouteResponsePath (
  // The total distance of the route, in meter
  distance: Option[Double] = None,
  // The total time of the route, in ms
  time: Option[Long] = None,
  ascend: Option[Double] = None,
  // The total descend (downhill) of the route, in meter
  descend: Option[Double] = None,
  points: Option[ResponseCoordinates] = None,
  // Is true if the points are encoded, if not paths[0].points contains the geo json of the path (then order is lon,lat,elevation), which is easier to handle but consumes more bandwidth compared to encoded version
  pointsEncoded: Option[Boolean] = None,
  // The bounding box of the route, format <br> minLon, minLat, maxLon, maxLat
  bbox: Option[List[Double]] = None,
  snappedWaypoints: Option[ResponseCoordinates] = None,
  instructions: Option[ResponseInstructions] = None,
  details: Option[Any] = None
)
