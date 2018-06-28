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

/*
 * SWGObjective.h
 * 
 * 
 */

#ifndef SWGObjective_H_
#define SWGObjective_H_

#include <QJsonObject>


#include <QString>

#include "SWGObject.h"

namespace Swagger {

class SWGObjective: public SWGObject {
public:
    SWGObjective();
    SWGObjective(QString* json);
    virtual ~SWGObjective();
    void init();
    void cleanup();

    QString asJson ();
    QJsonObject* asJsonObject();
    void fromJsonObject(QJsonObject &json);
    SWGObjective* fromJson(QString &jsonString);

    QString* getType();
    void setType(QString* type);

    QString* getValue();
    void setValue(QString* value);


    virtual bool isSet() override;

private:
    QString* type;
    bool m_type_isSet;
    
    QString* value;
    bool m_value_isSet;
    
};

}

#endif /* SWGObjective_H_ */