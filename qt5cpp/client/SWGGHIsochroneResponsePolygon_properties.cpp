/**
 * GraphHopper Directions API
 * With the GraphHopper Directions API you get reliable and fast web services for routing and more with world wide coverage. We offer A-to-B routing via the Routing API optionally with turn instructions and elevation data as well as route optimization with various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API. 
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


#include "SWGGHIsochroneResponsePolygon_properties.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGGHIsochroneResponsePolygon_properties::SWGGHIsochroneResponsePolygon_properties(QString* json) {
    init();
    this->fromJson(*json);
}

SWGGHIsochroneResponsePolygon_properties::SWGGHIsochroneResponsePolygon_properties() {
    init();
}

SWGGHIsochroneResponsePolygon_properties::~SWGGHIsochroneResponsePolygon_properties() {
    this->cleanup();
}

void
SWGGHIsochroneResponsePolygon_properties::init() {
    bucket = 0;
}

void
SWGGHIsochroneResponsePolygon_properties::cleanup() {
    
}

SWGGHIsochroneResponsePolygon_properties*
SWGGHIsochroneResponsePolygon_properties::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGGHIsochroneResponsePolygon_properties::fromJsonObject(QJsonObject &pJson) {
    ::Swagger::setValue(&bucket, pJson["bucket"], "qint32", "");
}

QString
SWGGHIsochroneResponsePolygon_properties::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGGHIsochroneResponsePolygon_properties::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    
    obj->insert("bucket", QJsonValue(bucket));

    return obj;
}

qint32
SWGGHIsochroneResponsePolygon_properties::getBucket() {
    return bucket;
}
void
SWGGHIsochroneResponsePolygon_properties::setBucket(qint32 bucket) {
    this->bucket = bucket;
}



} /* namespace Swagger */
