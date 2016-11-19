# EVEOpenAPI::UniverseApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_universe_planets_planet_id**](UniverseApi.md#get_universe_planets_planet_id) | **GET** /universe/planets/{planet_id}/ | Get planet information
[**get_universe_stations_station_id**](UniverseApi.md#get_universe_stations_station_id) | **GET** /universe/stations/{station_id}/ | Get station information
[**get_universe_structures**](UniverseApi.md#get_universe_structures) | **GET** /universe/structures/ | List all public structures
[**get_universe_structures_structure_id**](UniverseApi.md#get_universe_structures_structure_id) | **GET** /universe/structures/{structure_id}/ | Get structure information
[**get_universe_systems_system_id**](UniverseApi.md#get_universe_systems_system_id) | **GET** /universe/systems/{system_id}/ | Get solar system information
[**get_universe_types_type_id**](UniverseApi.md#get_universe_types_type_id) | **GET** /universe/types/{type_id}/ | Get type information
[**post_universe_names**](UniverseApi.md#post_universe_names) | **POST** /universe/names/ | Get names and categories for a set of ID&#39;s


# **get_universe_planets_planet_id**
> GetUniversePlanetsPlanetIdOk get_universe_planets_planet_id(planet_id, opts)

Get planet information

Information on a planet  ---  Alternate route: `/v1/universe/planets/{planet_id}/`  Alternate route: `/legacy/universe/planets/{planet_id}/`  Alternate route: `/dev/universe/planets/{planet_id}/` 

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::UniverseApi.new

planet_id = 56 # Integer | An Eve planet ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get planet information
  result = api_instance.get_universe_planets_planet_id(planet_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_planets_planet_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planet_id** | **Integer**| An Eve planet ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetUniversePlanetsPlanetIdOk**](GetUniversePlanetsPlanetIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_stations_station_id**
> GetUniverseStationsStationIdOk get_universe_stations_station_id(station_id, opts)

Get station information

Public information on stations  ---  Alternate route: `/v1/universe/stations/{station_id}/`  Alternate route: `/legacy/universe/stations/{station_id}/`  Alternate route: `/dev/universe/stations/{station_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::UniverseApi.new

station_id = 56 # Integer | An Eve station ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get station information
  result = api_instance.get_universe_stations_station_id(station_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_stations_station_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **station_id** | **Integer**| An Eve station ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetUniverseStationsStationIdOk**](GetUniverseStationsStationIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_structures**
> Array&lt;Integer&gt; get_universe_structures(opts)

List all public structures

List all public structures  ---  Alternate route: `/v1/universe/structures/`  Alternate route: `/legacy/universe/structures/`  Alternate route: `/dev/universe/structures/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::UniverseApi.new

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List all public structures
  result = api_instance.get_universe_structures(opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_structures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_structures_structure_id**
> GetUniverseStructuresStructureIdOk get_universe_structures_structure_id(structure_id, opts)

Get structure information

Returns information on requested structure, if you are on the ACL. Otherwise, returns \"Forbidden\" for all inputs.  ---  Alternate route: `/v1/universe/structures/{structure_id}/`  Alternate route: `/legacy/universe/structures/{structure_id}/`  Alternate route: `/dev/universe/structures/{structure_id}/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::UniverseApi.new

structure_id = 789 # Integer | An Eve structure ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get structure information
  result = api_instance.get_universe_structures_structure_id(structure_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_structures_structure_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structure_id** | **Integer**| An Eve structure ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetUniverseStructuresStructureIdOk**](GetUniverseStructuresStructureIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_systems_system_id**
> GetUniverseSystemsSystemIdOk get_universe_systems_system_id(system_id, opts)

Get solar system information

Information on solar systems  ---  Alternate route: `/v1/universe/systems/{system_id}/`  Alternate route: `/legacy/universe/systems/{system_id}/`  Alternate route: `/dev/universe/systems/{system_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::UniverseApi.new

system_id = 56 # Integer | An Eve solar system ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get solar system information
  result = api_instance.get_universe_systems_system_id(system_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_systems_system_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_id** | **Integer**| An Eve solar system ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetUniverseSystemsSystemIdOk**](GetUniverseSystemsSystemIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_types_type_id**
> GetUniverseTypesTypeIdOk get_universe_types_type_id(type_id, opts)

Get type information

Get information on a type  ---  Alternate route: `/v1/universe/types/{type_id}/`  Alternate route: `/legacy/universe/types/{type_id}/`  Alternate route: `/dev/universe/types/{type_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::UniverseApi.new

type_id = 56 # Integer | An Eve item type ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get type information
  result = api_instance.get_universe_types_type_id(type_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_types_type_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **Integer**| An Eve item type ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetUniverseTypesTypeIdOk**](GetUniverseTypesTypeIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_universe_names**
> Array&lt;PostUniverseNames200Ok&gt; post_universe_names(ids, opts)

Get names and categories for a set of ID's

Resolve a set of IDs to names and categories. Supported ID's for resolving are: Characters, Corporations, Alliances, Stations, Solar Systems, Constellations, Regions, Types.  ---  Alternate route: `/v1/universe/names/`  Alternate route: `/legacy/universe/names/` 

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::UniverseApi.new

ids = EVEOpenAPI::PostUniverseNamesIds.new # PostUniverseNamesIds | The ids to resolve

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get names and categories for a set of ID's
  result = api_instance.post_universe_names(ids, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling UniverseApi->post_universe_names: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**PostUniverseNamesIds**](PostUniverseNamesIds.md)| The ids to resolve | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;PostUniverseNames200Ok&gt;**](PostUniverseNames200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



