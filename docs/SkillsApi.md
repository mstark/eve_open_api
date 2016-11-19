# EveOpenApi::SkillsApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_skillqueue**](SkillsApi.md#get_characters_character_id_skillqueue) | **GET** /characters/{character_id}/skillqueue/ | Get character&#39;s skill queue
[**get_characters_character_id_skills**](SkillsApi.md#get_characters_character_id_skills) | **GET** /characters/{character_id}/skills/ | Get character skills


# **get_characters_character_id_skillqueue**
> Array&lt;GetCharactersCharacterIdSkillqueue200Ok&gt; get_characters_character_id_skillqueue(character_id, opts)

Get character's skill queue

List the configured skill queue for the given character  ---  Alternate route: `/v2/characters/{character_id}/skillqueue/`  Alternate route: `/legacy/characters/{character_id}/skillqueue/`  Alternate route: `/dev/characters/{character_id}/skillqueue/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EveOpenApi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveOpenApi::SkillsApi.new

character_id = 56 # Integer | Character id of the target character

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character's skill queue
  result = api_instance.get_characters_character_id_skillqueue(character_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling SkillsApi->get_characters_character_id_skillqueue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| Character id of the target character | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetCharactersCharacterIdSkillqueue200Ok&gt;**](GetCharactersCharacterIdSkillqueue200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_skills**
> GetCharactersCharacterIdSkillsOk get_characters_character_id_skills(character_id, opts)

Get character skills

List all trained skills for the given character  ---  Alternate route: `/v3/characters/{character_id}/skills/`  Alternate route: `/dev/characters/{character_id}/skills/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EveOpenApi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveOpenApi::SkillsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character skills
  result = api_instance.get_characters_character_id_skills(character_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling SkillsApi->get_characters_character_id_skills: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetCharactersCharacterIdSkillsOk**](GetCharactersCharacterIdSkillsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



