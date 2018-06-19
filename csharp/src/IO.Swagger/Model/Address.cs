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
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// Address
    /// </summary>
    [DataContract]
    public partial class Address :  IEquatable<Address>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Address" /> class.
        /// </summary>
        /// <param name="LocationId">Unique identifier of location.</param>
        /// <param name="Name">name of location, e.g. street name plus house number.</param>
        /// <param name="Lon">longitude.</param>
        /// <param name="Lat">latitude.</param>
        /// <param name="StreetHint">Optional parameter. Specifies a hint for each address to better snap the coordinates (lon,lat) to road network. E.g. if there is an address or house with two or more neighboring streets you can control for which street the closest location is looked up..</param>
        public Address(string LocationId = default(string), string Name = default(string), double? Lon = default(double?), double? Lat = default(double?), string StreetHint = default(string))
        {
            this.LocationId = LocationId;
            this.Name = Name;
            this.Lon = Lon;
            this.Lat = Lat;
            this.StreetHint = StreetHint;
        }
        
        /// <summary>
        /// Unique identifier of location
        /// </summary>
        /// <value>Unique identifier of location</value>
        [DataMember(Name="location_id", EmitDefaultValue=false)]
        public string LocationId { get; set; }

        /// <summary>
        /// name of location, e.g. street name plus house number
        /// </summary>
        /// <value>name of location, e.g. street name plus house number</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// longitude
        /// </summary>
        /// <value>longitude</value>
        [DataMember(Name="lon", EmitDefaultValue=false)]
        public double? Lon { get; set; }

        /// <summary>
        /// latitude
        /// </summary>
        /// <value>latitude</value>
        [DataMember(Name="lat", EmitDefaultValue=false)]
        public double? Lat { get; set; }

        /// <summary>
        /// Optional parameter. Specifies a hint for each address to better snap the coordinates (lon,lat) to road network. E.g. if there is an address or house with two or more neighboring streets you can control for which street the closest location is looked up.
        /// </summary>
        /// <value>Optional parameter. Specifies a hint for each address to better snap the coordinates (lon,lat) to road network. E.g. if there is an address or house with two or more neighboring streets you can control for which street the closest location is looked up.</value>
        [DataMember(Name="street_hint", EmitDefaultValue=false)]
        public string StreetHint { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class Address {\n");
            sb.Append("  LocationId: ").Append(LocationId).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Lon: ").Append(Lon).Append("\n");
            sb.Append("  Lat: ").Append(Lat).Append("\n");
            sb.Append("  StreetHint: ").Append(StreetHint).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as Address);
        }

        /// <summary>
        /// Returns true if Address instances are equal
        /// </summary>
        /// <param name="input">Instance of Address to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Address input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.LocationId == input.LocationId ||
                    (this.LocationId != null &&
                    this.LocationId.Equals(input.LocationId))
                ) && 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Lon == input.Lon ||
                    (this.Lon != null &&
                    this.Lon.Equals(input.Lon))
                ) && 
                (
                    this.Lat == input.Lat ||
                    (this.Lat != null &&
                    this.Lat.Equals(input.Lat))
                ) && 
                (
                    this.StreetHint == input.StreetHint ||
                    (this.StreetHint != null &&
                    this.StreetHint.Equals(input.StreetHint))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.LocationId != null)
                    hashCode = hashCode * 59 + this.LocationId.GetHashCode();
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Lon != null)
                    hashCode = hashCode * 59 + this.Lon.GetHashCode();
                if (this.Lat != null)
                    hashCode = hashCode * 59 + this.Lat.GetHashCode();
                if (this.StreetHint != null)
                    hashCode = hashCode * 59 + this.StreetHint.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
