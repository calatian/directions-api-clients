=begin comment

GraphHopper Directions API

You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::MatrixApi');

my $api = WWW::SwaggerClient::MatrixApi->new();
isa_ok($api, 'WWW::SwaggerClient::MatrixApi');

#
# matrix_get test
#
{
    my $key = undef; # replace NULL with a proper value
    my $point = undef; # replace NULL with a proper value
    my $from_point = undef; # replace NULL with a proper value
    my $to_point = undef; # replace NULL with a proper value
    my $out_array = undef; # replace NULL with a proper value
    my $point_hint = undef; # replace NULL with a proper value
    my $to_point_hint = undef; # replace NULL with a proper value
    my $from_point_hint = undef; # replace NULL with a proper value
    my $vehicle = undef; # replace NULL with a proper value
    my $result = $api->matrix_get(key => $key, point => $point, from_point => $from_point, to_point => $to_point, out_array => $out_array, point_hint => $point_hint, to_point_hint => $to_point_hint, from_point_hint => $from_point_hint, vehicle => $vehicle);
}

#
# matrix_post test
#
{
    my $key = undef; # replace NULL with a proper value
    my $body = undef; # replace NULL with a proper value
    my $result = $api->matrix_post(key => $key, body => $body);
}


1;
