/**
 * GraphHopper Directions API
 * You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package io.swagger.client.api

import java.text.SimpleDateFormat

import io.swagger.client.model.GHError
import io.swagger.client.model.MatrixRequest
import io.swagger.client.model.MatrixResponse
import io.swagger.client.{ApiInvoker, ApiException}

import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart

import javax.ws.rs.core.MediaType

import java.io.File
import java.util.Date
import java.util.TimeZone

import scala.collection.mutable.HashMap

import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

import java.net.URI

import com.wordnik.swagger.client.ClientResponseReaders.Json4sFormatsReader._
import com.wordnik.swagger.client.RequestWriters.Json4sFormatsWriter._

import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent._
import scala.concurrent.duration._
import scala.util.{Failure, Success, Try}

import org.json4s._

class MatrixApi(
  val defBasePath: String = "https://graphhopper.com/api/1",
  defApiInvoker: ApiInvoker = ApiInvoker
) {
  private lazy val dateTimeFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  private val dateFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  implicit val formats = new org.json4s.DefaultFormats {
    override def dateFormatter = dateTimeFormatter
  }
  implicit val stringReader: ClientResponseReader[String] = ClientResponseReaders.StringReader
  implicit val unitReader: ClientResponseReader[Unit] = ClientResponseReaders.UnitReader
  implicit val jvalueReader: ClientResponseReader[JValue] = ClientResponseReaders.JValueReader
  implicit val jsonReader: ClientResponseReader[Nothing] = JsonFormatsReader
  implicit val stringWriter: RequestWriter[String] = RequestWriters.StringWriter
  implicit val jsonWriter: RequestWriter[Nothing] = JsonFormatsWriter

  var basePath: String = defBasePath
  var apiInvoker: ApiInvoker = defApiInvoker

  def addHeader(key: String, value: String): mutable.HashMap[String, String] = {
    apiInvoker.defaultHeaders += key -> value
  }

  val config: SwaggerConfig = SwaggerConfig.forUrl(new URI(defBasePath))
  val client = new RestClient(config)
  val helper = new MatrixApiAsyncHelper(client, config)

  /**
   * Matrix API
   * The Matrix API is part of the GraphHopper Directions API and with this API you can calculate many-to-many distances, times or routes a lot more efficient than calling the Routing API multiple times. In the Routing API we support multiple points, so called &#39;via points&#39;, which results in one route being calculated. The Matrix API results in NxM routes or more precise NxM weights, distances or times being calculated but is a lot faster compared to NxM single requests. The most simple example is a tourist trying to decide which pizza is close to him instead of using beeline distance she can calculate a 1x4 matrix. Or a delivery service in the need of often big NxN matrices to solve vehicle routing problems. E.g. the GraphHopper Route Optimization API uses the Matrix API under the hood to achieve this. 
   *
   * @param key Get your key at graphhopper.com 
   * @param point Specifiy multiple points for which the weight-, route-, time- or distance-matrix should be calculated. In this case the starts are identical to the destinations. If there are N points, then NxN entries will be calculated. The order of the point parameter is important. Specify at least three points. Cannot be used together with from_point or to_point. Is a string with the format latitude,longitude. (optional)
   * @param fromPoint The starting points for the routes. E.g. if you want to calculate the three routes A-&amp;gt;1, A-&amp;gt;2, A-&amp;gt;3 then you have one from_point parameter and three to_point parameters. Is a string with the format latitude,longitude. (optional)
   * @param toPoint The destination points for the routes. Is a string with the format latitude,longitude. (optional)
   * @param pointHint Optional parameter. Specifies a hint for each &#x60;point&#x60; parameter to prefer a certain street for the closest location lookup. E.g. if there is an address or house with two or more neighboring streets you can control for which street the closest location is looked up. (optional)
   * @param fromPointHint For the from_point parameter. See point_hint (optional)
   * @param toPointHint For the to_point parameter. See point_hint (optional)
   * @param outArray Specifies which arrays should be included in the response. Specify one or more of the following options &#39;weights&#39;, &#39;times&#39;, &#39;distances&#39;. To specify more than one array use e.g. out_array&#x3D;times&amp;out_array&#x3D;distances. The units of the entries of distances are meters, of times are seconds and of weights is arbitrary and it can differ for different vehicles or versions of this API. (optional)
   * @param vehicle The vehicle for which the route should be calculated. Other vehicles are foot, small_truck etc (optional, default to car)
   * @return MatrixResponse
   */
  def matrixGet(key: String, point: Option[List[String]] = None, fromPoint: Option[List[String]] = None, toPoint: Option[List[String]] = None, pointHint: Option[List[String]] = None, fromPointHint: Option[List[String]] = None, toPointHint: Option[List[String]] = None, outArray: Option[List[String]] = None, vehicle: Option[String] = Option("car")): Option[MatrixResponse] = {
    val await = Try(Await.result(matrixGetAsync(key, point, fromPoint, toPoint, pointHint, fromPointHint, toPointHint, outArray, vehicle), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Matrix API asynchronously
   * The Matrix API is part of the GraphHopper Directions API and with this API you can calculate many-to-many distances, times or routes a lot more efficient than calling the Routing API multiple times. In the Routing API we support multiple points, so called &#39;via points&#39;, which results in one route being calculated. The Matrix API results in NxM routes or more precise NxM weights, distances or times being calculated but is a lot faster compared to NxM single requests. The most simple example is a tourist trying to decide which pizza is close to him instead of using beeline distance she can calculate a 1x4 matrix. Or a delivery service in the need of often big NxN matrices to solve vehicle routing problems. E.g. the GraphHopper Route Optimization API uses the Matrix API under the hood to achieve this. 
   *
   * @param key Get your key at graphhopper.com 
   * @param point Specifiy multiple points for which the weight-, route-, time- or distance-matrix should be calculated. In this case the starts are identical to the destinations. If there are N points, then NxN entries will be calculated. The order of the point parameter is important. Specify at least three points. Cannot be used together with from_point or to_point. Is a string with the format latitude,longitude. (optional)
   * @param fromPoint The starting points for the routes. E.g. if you want to calculate the three routes A-&amp;gt;1, A-&amp;gt;2, A-&amp;gt;3 then you have one from_point parameter and three to_point parameters. Is a string with the format latitude,longitude. (optional)
   * @param toPoint The destination points for the routes. Is a string with the format latitude,longitude. (optional)
   * @param pointHint Optional parameter. Specifies a hint for each &#x60;point&#x60; parameter to prefer a certain street for the closest location lookup. E.g. if there is an address or house with two or more neighboring streets you can control for which street the closest location is looked up. (optional)
   * @param fromPointHint For the from_point parameter. See point_hint (optional)
   * @param toPointHint For the to_point parameter. See point_hint (optional)
   * @param outArray Specifies which arrays should be included in the response. Specify one or more of the following options &#39;weights&#39;, &#39;times&#39;, &#39;distances&#39;. To specify more than one array use e.g. out_array&#x3D;times&amp;out_array&#x3D;distances. The units of the entries of distances are meters, of times are seconds and of weights is arbitrary and it can differ for different vehicles or versions of this API. (optional)
   * @param vehicle The vehicle for which the route should be calculated. Other vehicles are foot, small_truck etc (optional, default to car)
   * @return Future(MatrixResponse)
   */
  def matrixGetAsync(key: String, point: Option[List[String]] = None, fromPoint: Option[List[String]] = None, toPoint: Option[List[String]] = None, pointHint: Option[List[String]] = None, fromPointHint: Option[List[String]] = None, toPointHint: Option[List[String]] = None, outArray: Option[List[String]] = None, vehicle: Option[String] = Option("car")): Future[MatrixResponse] = {
      helper.matrixGet(key, point, fromPoint, toPoint, pointHint, fromPointHint, toPointHint, outArray, vehicle)
  }

  /**
   * Matrix API Post
   * The GET request has an URL length limitation, which hurts for many locations per request. In those cases use a HTTP POST request with JSON data as input. The only parameter in the URL will be the key which stays in the URL. Both request scenarios are identically except that all singular parameter names are named as their plural for a POST request. 
   *
   * @param key Get your key at graphhopper.com 
   * @param body  (optional)
   * @return MatrixResponse
   */
  def matrixPost(key: String, body: Option[MatrixRequest] = None): Option[MatrixResponse] = {
    val await = Try(Await.result(matrixPostAsync(key, body), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Matrix API Post asynchronously
   * The GET request has an URL length limitation, which hurts for many locations per request. In those cases use a HTTP POST request with JSON data as input. The only parameter in the URL will be the key which stays in the URL. Both request scenarios are identically except that all singular parameter names are named as their plural for a POST request. 
   *
   * @param key Get your key at graphhopper.com 
   * @param body  (optional)
   * @return Future(MatrixResponse)
   */
  def matrixPostAsync(key: String, body: Option[MatrixRequest] = None): Future[MatrixResponse] = {
      helper.matrixPost(key, body)
  }

}

class MatrixApiAsyncHelper(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def matrixGet(key: String,
    point: Option[List[String]] = None,
    fromPoint: Option[List[String]] = None,
    toPoint: Option[List[String]] = None,
    pointHint: Option[List[String]] = None,
    fromPointHint: Option[List[String]] = None,
    toPointHint: Option[List[String]] = None,
    outArray: Option[List[String]] = None,
    vehicle: Option[String] = Option("car")
    )(implicit reader: ClientResponseReader[MatrixResponse]): Future[MatrixResponse] = {
    // create path and map variables
    val path = (addFmt("/matrix"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (key == null) throw new Exception("Missing required parameter 'key' when calling MatrixApi->matrixGet")

    point match {
      case Some(param) => queryParams += "point" -> param.toString
      case _ => queryParams
    }
    fromPoint match {
      case Some(param) => queryParams += "from_point" -> param.toString
      case _ => queryParams
    }
    toPoint match {
      case Some(param) => queryParams += "to_point" -> param.toString
      case _ => queryParams
    }
    pointHint match {
      case Some(param) => queryParams += "point_hint" -> param.toString
      case _ => queryParams
    }
    fromPointHint match {
      case Some(param) => queryParams += "from_point_hint" -> param.toString
      case _ => queryParams
    }
    toPointHint match {
      case Some(param) => queryParams += "to_point_hint" -> param.toString
      case _ => queryParams
    }
    outArray match {
      case Some(param) => queryParams += "out_array" -> param.toString
      case _ => queryParams
    }
    vehicle match {
      case Some(param) => queryParams += "vehicle" -> param.toString
      case _ => queryParams
    }
    queryParams += "key" -> key.toString

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def matrixPost(key: String,
    body: Option[MatrixRequest] = None
    )(implicit reader: ClientResponseReader[MatrixResponse], writer: RequestWriter[Option[MatrixRequest]]): Future[MatrixResponse] = {
    // create path and map variables
    val path = (addFmt("/matrix"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (key == null) throw new Exception("Missing required parameter 'key' when calling MatrixApi->matrixPost")

    queryParams += "key" -> key.toString

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
