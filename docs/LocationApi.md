# EveOpenApi::LocationApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_location**](LocationApi.md#get_characters_character_id_location) | **GET** /characters/{character_id}/location/ | Get character location
[**get_characters_character_id_ship**](LocationApi.md#get_characters_character_id_ship) | **GET** /characters/{character_id}/ship/ | Get current ship


# **get_characters_character_id_location**
> GetCharactersCharacterIdLocationOk get_characters_character_id_location(character_id, opts)

Get character location

Information about the characters current location. Returns the current solar system id, and also the current station or structure ID if applicable.  ---  Alternate route: `/v1/characters/{character_id}/location/`  Alternate route: `/legacy/characters/{character_id}/location/`  Alternate route: `/dev/characters/{character_id}/location/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EveOpenApi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveOpenApi::LocationApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character location
  result = api_instance.get_characters_character_id_location(character_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling LocationApi->get_characters_character_id_location: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetCharactersCharacterIdLocationOk**](GetCharactersCharacterIdLocationOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_ship**
> GetCharactersCharacterIdShipOk get_characters_character_id_ship(character_id, opts)

Get current ship

Get the current ship type, name and id  ---  Alternate route: `/v1/characters/{character_id}/ship/`  Alternate route: `/legacy/characters/{character_id}/ship/`  Alternate route: `/dev/characters/{character_id}/ship/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EveOpenApi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveOpenApi::LocationApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get current ship
  result = api_instance.get_characters_character_id_ship(character_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling LocationApi->get_characters_character_id_ship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetCharactersCharacterIdShipOk**](GetCharactersCharacterIdShipOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



