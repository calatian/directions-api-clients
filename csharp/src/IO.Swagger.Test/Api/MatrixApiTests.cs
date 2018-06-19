/* 
 * GraphHopper Directions API
 *
 * You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Swagger.Client;
using IO.Swagger.Api;
using IO.Swagger.Model;

namespace IO.Swagger.Test
{
    /// <summary>
    ///  Class for testing MatrixApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class MatrixApiTests
    {
        private MatrixApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new MatrixApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of MatrixApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' MatrixApi
            //Assert.IsInstanceOfType(typeof(MatrixApi), instance, "instance is a MatrixApi");
        }

        
        /// <summary>
        /// Test MatrixGet
        /// </summary>
        [Test]
        public void MatrixGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string key = null;
            //List<string> point = null;
            //List<string> fromPoint = null;
            //List<string> toPoint = null;
            //List<string> outArray = null;
            //List<string> pointHint = null;
            //List<string> toPointHint = null;
            //List<string> fromPointHint = null;
            //string vehicle = null;
            //var response = instance.MatrixGet(key, point, fromPoint, toPoint, outArray, pointHint, toPointHint, fromPointHint, vehicle);
            //Assert.IsInstanceOf<MatrixResponse> (response, "response is MatrixResponse");
        }
        
        /// <summary>
        /// Test MatrixPost
        /// </summary>
        [Test]
        public void MatrixPostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string key = null;
            //MatrixRequest body = null;
            //var response = instance.MatrixPost(key, body);
            //Assert.IsInstanceOf<MatrixResponse> (response, "response is MatrixResponse");
        }
        
    }

}
