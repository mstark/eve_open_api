# EveOpenApi::CharacterApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id**](CharacterApi.md#get_characters_character_id) | **GET** /characters/{character_id}/ | Get character&#39;s public information
[**get_characters_character_id_corporationhistory**](CharacterApi.md#get_characters_character_id_corporationhistory) | **GET** /characters/{character_id}/corporationhistory/ | Get corporation history
[**get_characters_character_id_portrait**](CharacterApi.md#get_characters_character_id_portrait) | **GET** /characters/{character_id}/portrait/ | Get character portraits
[**get_characters_names**](CharacterApi.md#get_characters_names) | **GET** /characters/names/ | Get character names
[**post_characters_character_id_cspa**](CharacterApi.md#post_characters_character_id_cspa) | **POST** /characters/{character_id}/cspa/ | Calculate a CSPA charge cost


# **get_characters_character_id**
> GetCharactersCharacterIdOk get_characters_character_id(character_id, opts)

Get character's public information

Public information about a character  ---  Alternate route: `/v3/characters/{character_id}/`  Alternate route: `/legacy/characters/{character_id}/`  Alternate route: `/dev/characters/{character_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EveOpenApi::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character's public information
  result = api_instance.get_characters_character_id(character_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetCharactersCharacterIdOk**](GetCharactersCharacterIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_corporationhistory**
> Array&lt;GetCharactersCharacterIdCorporationhistory200Ok&gt; get_characters_character_id_corporationhistory(character_id, opts)

Get corporation history

Get a list of all the corporations a character has been a member of  ---  Alternate route: `/v1/characters/{character_id}/corporationhistory/`  Alternate route: `/legacy/characters/{character_id}/corporationhistory/`  Alternate route: `/dev/characters/{character_id}/corporationhistory/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EveOpenApi::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get corporation history
  result = api_instance.get_characters_character_id_corporationhistory(character_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_corporationhistory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetCharactersCharacterIdCorporationhistory200Ok&gt;**](GetCharactersCharacterIdCorporationhistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_portrait**
> GetCharactersCharacterIdPortraitOk get_characters_character_id_portrait(character_id, opts)

Get character portraits

Get portrait urls for a character  ---  Alternate route: `/v2/characters/{character_id}/portrait/`  Alternate route: `/dev/characters/{character_id}/portrait/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EveOpenApi::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character portraits
  result = api_instance.get_characters_character_id_portrait(character_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_portrait: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetCharactersCharacterIdPortraitOk**](GetCharactersCharacterIdPortraitOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_names**
> Array&lt;GetCharactersNames200Ok&gt; get_characters_names(character_ids, opts)

Get character names

Resolve a set of character IDs to character names  ---  Alternate route: `/v1/characters/names/`  Alternate route: `/legacy/characters/names/`  Alternate route: `/dev/characters/names/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EveOpenApi::CharacterApi.new

character_ids = [56] # Array<Integer> | A comma separated list of character IDs

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character names
  result = api_instance.get_characters_names(character_ids, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_names: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma separated list of character IDs | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetCharactersNames200Ok&gt;**](GetCharactersNames200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_characters_character_id_cspa**
> PostCharactersCharacterIdCspaCreated post_characters_character_id_cspa(character_id, characters, opts)

Calculate a CSPA charge cost

Takes a source character ID in the url and a set of target character ID's in the body, returns a CSPA charge cost  ---  Alternate route: `/v3/characters/{character_id}/cspa/`  Alternate route: `/legacy/characters/{character_id}/cspa/`  Alternate route: `/dev/characters/{character_id}/cspa/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EveOpenApi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveOpenApi::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

characters = EveOpenApi::PostCharactersCharacterIdCspaCharacters.new # PostCharactersCharacterIdCspaCharacters | The target characters to calculate the charge for

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Calculate a CSPA charge cost
  result = api_instance.post_characters_character_id_cspa(character_id, characters, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling CharacterApi->post_characters_character_id_cspa: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **characters** | [**PostCharactersCharacterIdCspaCharacters**](PostCharactersCharacterIdCspaCharacters.md)| The target characters to calculate the charge for | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**PostCharactersCharacterIdCspaCreated**](PostCharactersCharacterIdCspaCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



