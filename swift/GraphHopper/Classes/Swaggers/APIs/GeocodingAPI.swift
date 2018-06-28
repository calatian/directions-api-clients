//
// GeocodingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GeocodingAPI: APIBase {
    /**
     Execute a Geocoding request
     
     - parameter key: (query) Get your key at graphhopper.com 
     - parameter q: (query) If you do forward geocoding, then this would be a textual description of the address you are looking for (optional)
     - parameter locale: (query) Display the search results for the specified locale. Currently French (fr), English (en), German (de) and Italian (it) are supported. If the locale wasn&#39;t found the default (en) is used. (optional)
     - parameter limit: (query) Specify the maximum number of returned results (optional)
     - parameter reverse: (query) Set to true to do a reverse Geocoding request, see point parameter (optional)
     - parameter point: (query) The location bias in the format &#39;latitude,longitude&#39; e.g. point&#x3D;45.93272,11.58803 (optional)
     - parameter provider: (query) Can be either, default, nominatim, opencagedata (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func geocodeGet(key key: String, q: String? = nil, locale: String? = nil, limit: Int32? = nil, reverse: Bool? = nil, point: String? = nil, provider: String? = nil, completion: ((data: GeocodingResponse?, error: ErrorType?) -> Void)) {
        geocodeGetWithRequestBuilder(key: key, q: q, locale: locale, limit: limit, reverse: reverse, point: point, provider: provider).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Execute a Geocoding request
     - GET /geocode
     - This endpoint provides forward and reverse geocoding. For more details, review the official documentation at: https://graphhopper.com/api/1/docs/geocoding/ 
     - examples: [{contentType=application/json, example={
  "hits" : [ {
    "osm_id" : "osm_id",
    "osm_type" : "osm_type",
    "country" : "country",
    "osm_key" : "osm_key",
    "city" : "city",
    "housenumber" : "housenumber",
    "street" : "street",
    "name" : "name",
    "postcode" : "postcode",
    "state" : "state",
    "point" : {
      "lng" : 6.027456183070403,
      "lat" : 0.8008281904610115
    }
  }, {
    "osm_id" : "osm_id",
    "osm_type" : "osm_type",
    "country" : "country",
    "osm_key" : "osm_key",
    "city" : "city",
    "housenumber" : "housenumber",
    "street" : "street",
    "name" : "name",
    "postcode" : "postcode",
    "state" : "state",
    "point" : {
      "lng" : 6.027456183070403,
      "lat" : 0.8008281904610115
    }
  } ],
  "locale" : "locale"
}}]
     
     - parameter key: (query) Get your key at graphhopper.com 
     - parameter q: (query) If you do forward geocoding, then this would be a textual description of the address you are looking for (optional)
     - parameter locale: (query) Display the search results for the specified locale. Currently French (fr), English (en), German (de) and Italian (it) are supported. If the locale wasn&#39;t found the default (en) is used. (optional)
     - parameter limit: (query) Specify the maximum number of returned results (optional)
     - parameter reverse: (query) Set to true to do a reverse Geocoding request, see point parameter (optional)
     - parameter point: (query) The location bias in the format &#39;latitude,longitude&#39; e.g. point&#x3D;45.93272,11.58803 (optional)
     - parameter provider: (query) Can be either, default, nominatim, opencagedata (optional)

     - returns: RequestBuilder<GeocodingResponse> 
     */
    public class func geocodeGetWithRequestBuilder(key key: String, q: String? = nil, locale: String? = nil, limit: Int32? = nil, reverse: Bool? = nil, point: String? = nil, provider: String? = nil) -> RequestBuilder<GeocodingResponse> {
        let path = "/geocode"
        let URLString = GraphHopperAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "q": q,
            "locale": locale,
            "limit": limit?.encodeToJSON(),
            "reverse": reverse,
            "point": point,
            "provider": provider,
            "key": key
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<GeocodingResponse>.Type = GraphHopperAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}