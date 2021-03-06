//
// SolutionAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class SolutionAPI: APIBase {
    /**
     Return the solution associated to the jobId
     
     - parameter key: (query) your API key 
     - parameter jobId: (path) Request solution with jobId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getSolution(key key: String, jobId: String, completion: ((data: Response?, error: ErrorType?) -> Void)) {
        getSolutionWithRequestBuilder(key: key, jobId: jobId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Return the solution associated to the jobId
     - GET /vrp/solution/{jobId}
     - This endpoint returns the solution of a large problems. You can fetch it with the job_id, you have been sent. 
     - examples: [{contentType=application/json, example={
  "waiting_time_in_queue" : 0,
  "processing_time" : 6,
  "solution" : {
    "costs" : 1,
    "completion_time" : 4,
    "distance" : 5,
    "transport_time" : 2,
    "waiting_time" : 9,
    "unassigned" : {
      "breaks" : [ "breaks", "breaks" ],
      "details" : [ {
        "reason" : "reason",
        "code" : 6,
        "id" : "id"
      }, {
        "reason" : "reason",
        "code" : 6,
        "id" : "id"
      } ],
      "services" : [ "services", "services" ],
      "shipments" : [ "shipments", "shipments" ]
    },
    "service_duration" : 3,
    "routes" : [ {
      "completion_time" : 6,
      "distance" : 1,
      "transport_time" : 1,
      "waiting_time" : 7,
      "activities" : [ {
        "address" : {
          "street_hint" : "street_hint",
          "name" : "name",
          "lon" : 0.8008281904610115,
          "location_id" : "location_id",
          "lat" : 6.027456183070403
        },
        "arr_date_time" : "arr_date_time",
        "distance" : 8,
        "waiting_time" : 9,
        "driving_time" : 9,
        "end_time" : 9,
        "type" : "start",
        "location_id" : "location_id",
        "load_after" : [ 3, 3 ],
        "end_date_time" : "end_date_time",
        "preparation_time" : 6,
        "load_before" : [ 6, 6 ],
        "arr_time" : 5,
        "id" : "id"
      }, {
        "address" : {
          "street_hint" : "street_hint",
          "name" : "name",
          "lon" : 0.8008281904610115,
          "location_id" : "location_id",
          "lat" : 6.027456183070403
        },
        "arr_date_time" : "arr_date_time",
        "distance" : 8,
        "waiting_time" : 9,
        "driving_time" : 9,
        "end_time" : 9,
        "type" : "start",
        "location_id" : "location_id",
        "load_after" : [ 3, 3 ],
        "end_date_time" : "end_date_time",
        "preparation_time" : 6,
        "load_before" : [ 6, 6 ],
        "arr_time" : 5,
        "id" : "id"
      } ],
      "preparation_time" : 4,
      "vehicle_id" : "vehicle_id",
      "service_duration" : 1,
      "points" : [ {
        "coordinates" : [ "{}", "{}" ],
        "type" : "type"
      }, {
        "coordinates" : [ "{}", "{}" ],
        "type" : "type"
      } ]
    }, {
      "completion_time" : 6,
      "distance" : 1,
      "transport_time" : 1,
      "waiting_time" : 7,
      "activities" : [ {
        "address" : {
          "street_hint" : "street_hint",
          "name" : "name",
          "lon" : 0.8008281904610115,
          "location_id" : "location_id",
          "lat" : 6.027456183070403
        },
        "arr_date_time" : "arr_date_time",
        "distance" : 8,
        "waiting_time" : 9,
        "driving_time" : 9,
        "end_time" : 9,
        "type" : "start",
        "location_id" : "location_id",
        "load_after" : [ 3, 3 ],
        "end_date_time" : "end_date_time",
        "preparation_time" : 6,
        "load_before" : [ 6, 6 ],
        "arr_time" : 5,
        "id" : "id"
      }, {
        "address" : {
          "street_hint" : "street_hint",
          "name" : "name",
          "lon" : 0.8008281904610115,
          "location_id" : "location_id",
          "lat" : 6.027456183070403
        },
        "arr_date_time" : "arr_date_time",
        "distance" : 8,
        "waiting_time" : 9,
        "driving_time" : 9,
        "end_time" : 9,
        "type" : "start",
        "location_id" : "location_id",
        "load_after" : [ 3, 3 ],
        "end_date_time" : "end_date_time",
        "preparation_time" : 6,
        "load_before" : [ 6, 6 ],
        "arr_time" : 5,
        "id" : "id"
      } ],
      "preparation_time" : 4,
      "vehicle_id" : "vehicle_id",
      "service_duration" : 1,
      "points" : [ {
        "coordinates" : [ "{}", "{}" ],
        "type" : "type"
      }, {
        "coordinates" : [ "{}", "{}" ],
        "type" : "type"
      } ]
    } ],
    "no_vehicles" : 7,
    "preparation_time" : 2,
    "time" : 5,
    "no_unassigned" : 1,
    "max_operation_time" : 7
  },
  "copyrights" : [ "copyrights", "copyrights" ],
  "job_id" : "job_id",
  "status" : "waiting_in_queue"
}}]
     
     - parameter key: (query) your API key 
     - parameter jobId: (path) Request solution with jobId 

     - returns: RequestBuilder<Response> 
     */
    public class func getSolutionWithRequestBuilder(key key: String, jobId: String) -> RequestBuilder<Response> {
        var path = "/vrp/solution/{jobId}"
        path = path.stringByReplacingOccurrencesOfString("{jobId}", withString: "\(jobId)", options: .LiteralSearch, range: nil)
        let URLString = GraphHopperAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "key": key
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Response>.Type = GraphHopperAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
