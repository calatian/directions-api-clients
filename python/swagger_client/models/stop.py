# coding: utf-8

"""
    GraphHopper Directions API

    You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.  # noqa: E501

    OpenAPI spec version: 1.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six

from swagger_client.models.address import Address  # noqa: F401,E501
from swagger_client.models.time_window import TimeWindow  # noqa: F401,E501


class Stop(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'address': 'Address',
        'duration': 'int',
        'preparation_time': 'int',
        'time_windows': 'list[TimeWindow]'
    }

    attribute_map = {
        'address': 'address',
        'duration': 'duration',
        'preparation_time': 'preparation_time',
        'time_windows': 'time_windows'
    }

    def __init__(self, address=None, duration=None, preparation_time=None, time_windows=None):  # noqa: E501
        """Stop - a model defined in Swagger"""  # noqa: E501

        self._address = None
        self._duration = None
        self._preparation_time = None
        self._time_windows = None
        self.discriminator = None

        if address is not None:
            self.address = address
        if duration is not None:
            self.duration = duration
        if preparation_time is not None:
            self.preparation_time = preparation_time
        if time_windows is not None:
            self.time_windows = time_windows

    @property
    def address(self):
        """Gets the address of this Stop.  # noqa: E501


        :return: The address of this Stop.  # noqa: E501
        :rtype: Address
        """
        return self._address

    @address.setter
    def address(self, address):
        """Sets the address of this Stop.


        :param address: The address of this Stop.  # noqa: E501
        :type: Address
        """

        self._address = address

    @property
    def duration(self):
        """Gets the duration of this Stop.  # noqa: E501

        duration of stop, i.e. time in seconds the corresponding activity takes  # noqa: E501

        :return: The duration of this Stop.  # noqa: E501
        :rtype: int
        """
        return self._duration

    @duration.setter
    def duration(self, duration):
        """Sets the duration of this Stop.

        duration of stop, i.e. time in seconds the corresponding activity takes  # noqa: E501

        :param duration: The duration of this Stop.  # noqa: E501
        :type: int
        """

        self._duration = duration

    @property
    def preparation_time(self):
        """Gets the preparation_time of this Stop.  # noqa: E501

        preparation time of service, e.g. search for a parking space. it only falls due if the location of previous activity differs from this location  # noqa: E501

        :return: The preparation_time of this Stop.  # noqa: E501
        :rtype: int
        """
        return self._preparation_time

    @preparation_time.setter
    def preparation_time(self, preparation_time):
        """Sets the preparation_time of this Stop.

        preparation time of service, e.g. search for a parking space. it only falls due if the location of previous activity differs from this location  # noqa: E501

        :param preparation_time: The preparation_time of this Stop.  # noqa: E501
        :type: int
        """

        self._preparation_time = preparation_time

    @property
    def time_windows(self):
        """Gets the time_windows of this Stop.  # noqa: E501

        array of time windows. currently, only a single time window is allowed  # noqa: E501

        :return: The time_windows of this Stop.  # noqa: E501
        :rtype: list[TimeWindow]
        """
        return self._time_windows

    @time_windows.setter
    def time_windows(self, time_windows):
        """Sets the time_windows of this Stop.

        array of time windows. currently, only a single time window is allowed  # noqa: E501

        :param time_windows: The time_windows of this Stop.  # noqa: E501
        :type: list[TimeWindow]
        """

        self._time_windows = time_windows

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, Stop):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other