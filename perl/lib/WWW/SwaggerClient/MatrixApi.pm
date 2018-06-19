=begin comment

GraphHopper Directions API

You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::MatrixApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::SwaggerClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::SwaggerClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# matrix_get
#
# Matrix API
# 
# @param string $key Get your key at graphhopper.com (required)
# @param ARRAY[string] $point Specifiy multiple points for which the weight-, route-, time- or distance-matrix should be calculated. In this case the starts are identical to the destinations. If there are N points, then NxN entries will be calculated. The order of the point parameter is important. Specify at least three points. Cannot be used together with from_point or to_point. Is a string with the format latitude,longitude. (optional)
# @param ARRAY[string] $from_point The starting points for the routes. E.g. if you want to calculate the three routes A-&amp;gt;1, A-&amp;gt;2, A-&amp;gt;3 then you have one from_point parameter and three to_point parameters. Is a string with the format latitude,longitude. (optional)
# @param ARRAY[string] $to_point The destination points for the routes. Is a string with the format latitude,longitude. (optional)
# @param ARRAY[string] $out_array Specifies which arrays should be included in the response. Specify one or more of the following options &#39;weights&#39;, &#39;times&#39;, &#39;distances&#39;. To specify more than one array use e.g. out_array&#x3D;times&amp;out_array&#x3D;distances. The units of the entries of distances are meters, of times are seconds and of weights is arbitrary and it can differ for different vehicles or versions of this API. (optional)
# @param ARRAY[string] $point_hint Optional parameter. Specifies a hint for each &#x60;point&#x60; parameter to prefer a certain street for the closest location lookup. E.g. if there is an address or house with two or more neighboring streets you can control for which street the closest location is looked up. (optional)
# @param ARRAY[string] $to_point_hint For the to_point parameter. See point_hint (optional)
# @param ARRAY[string] $from_point_hint For the from_point parameter. See point_hint (optional)
# @param string $vehicle The vehicle for which the route should be calculated. Other vehicles are foot, small_truck etc (optional, default to car)
{
    my $params = {
    'key' => {
        data_type => 'string',
        description => 'Get your key at graphhopper.com',
        required => '1',
    },
    'point' => {
        data_type => 'ARRAY[string]',
        description => 'Specifiy multiple points for which the weight-, route-, time- or distance-matrix should be calculated. In this case the starts are identical to the destinations. If there are N points, then NxN entries will be calculated. The order of the point parameter is important. Specify at least three points. Cannot be used together with from_point or to_point. Is a string with the format latitude,longitude.',
        required => '0',
    },
    'from_point' => {
        data_type => 'ARRAY[string]',
        description => 'The starting points for the routes. E.g. if you want to calculate the three routes A-&amp;gt;1, A-&amp;gt;2, A-&amp;gt;3 then you have one from_point parameter and three to_point parameters. Is a string with the format latitude,longitude.',
        required => '0',
    },
    'to_point' => {
        data_type => 'ARRAY[string]',
        description => 'The destination points for the routes. Is a string with the format latitude,longitude.',
        required => '0',
    },
    'out_array' => {
        data_type => 'ARRAY[string]',
        description => 'Specifies which arrays should be included in the response. Specify one or more of the following options &#39;weights&#39;, &#39;times&#39;, &#39;distances&#39;. To specify more than one array use e.g. out_array&#x3D;times&amp;out_array&#x3D;distances. The units of the entries of distances are meters, of times are seconds and of weights is arbitrary and it can differ for different vehicles or versions of this API.',
        required => '0',
    },
    'point_hint' => {
        data_type => 'ARRAY[string]',
        description => 'Optional parameter. Specifies a hint for each &#x60;point&#x60; parameter to prefer a certain street for the closest location lookup. E.g. if there is an address or house with two or more neighboring streets you can control for which street the closest location is looked up.',
        required => '0',
    },
    'to_point_hint' => {
        data_type => 'ARRAY[string]',
        description => 'For the to_point parameter. See point_hint',
        required => '0',
    },
    'from_point_hint' => {
        data_type => 'ARRAY[string]',
        description => 'For the from_point parameter. See point_hint',
        required => '0',
    },
    'vehicle' => {
        data_type => 'string',
        description => 'The vehicle for which the route should be calculated. Other vehicles are foot, small_truck etc',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'matrix_get' } = { 
    	summary => 'Matrix API',
        params => $params,
        returns => 'MatrixResponse',
        };
}
# @return MatrixResponse
#
sub matrix_get {
    my ($self, %args) = @_;

    # verify the required parameter 'key' is set
    unless (exists $args{'key'}) {
      croak("Missing the required parameter 'key' when calling matrix_get");
    }

    # parse inputs
    my $_resource_path = '/matrix';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'point'}) {
        $query_params->{'point'} = $self->{api_client}->to_query_value($args{'point'});
    }

    # query params
    if ( exists $args{'from_point'}) {
        $query_params->{'from_point'} = $self->{api_client}->to_query_value($args{'from_point'});
    }

    # query params
    if ( exists $args{'to_point'}) {
        $query_params->{'to_point'} = $self->{api_client}->to_query_value($args{'to_point'});
    }

    # query params
    if ( exists $args{'out_array'}) {
        $query_params->{'out_array'} = $self->{api_client}->to_query_value($args{'out_array'});
    }

    # query params
    if ( exists $args{'point_hint'}) {
        $query_params->{'point_hint'} = $self->{api_client}->to_query_value($args{'point_hint'});
    }

    # query params
    if ( exists $args{'to_point_hint'}) {
        $query_params->{'to_point_hint'} = $self->{api_client}->to_query_value($args{'to_point_hint'});
    }

    # query params
    if ( exists $args{'from_point_hint'}) {
        $query_params->{'from_point_hint'} = $self->{api_client}->to_query_value($args{'from_point_hint'});
    }

    # query params
    if ( exists $args{'vehicle'}) {
        $query_params->{'vehicle'} = $self->{api_client}->to_query_value($args{'vehicle'});
    }

    # query params
    if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MatrixResponse', $response);
    return $_response_object;
}

#
# matrix_post
#
# Matrix API Post
# 
# @param string $key Get your key at graphhopper.com (required)
# @param MatrixRequest $body  (optional)
{
    my $params = {
    'key' => {
        data_type => 'string',
        description => 'Get your key at graphhopper.com',
        required => '1',
    },
    'body' => {
        data_type => 'MatrixRequest',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'matrix_post' } = { 
    	summary => 'Matrix API Post',
        params => $params,
        returns => 'MatrixResponse',
        };
}
# @return MatrixResponse
#
sub matrix_post {
    my ($self, %args) = @_;

    # verify the required parameter 'key' is set
    unless (exists $args{'key'}) {
      croak("Missing the required parameter 'key' when calling matrix_post");
    }

    # parse inputs
    my $_resource_path = '/matrix';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MatrixResponse', $response);
    return $_response_object;
}

1;
