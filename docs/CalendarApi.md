# EveOpenApi::CalendarApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_calendar**](CalendarApi.md#get_characters_character_id_calendar) | **GET** /characters/{character_id}/calendar/ | List calendar event summaries
[**get_characters_character_id_calendar_event_id**](CalendarApi.md#get_characters_character_id_calendar_event_id) | **GET** /characters/{character_id}/calendar/{event_id}/ | Get an event
[**put_characters_character_id_calendar_event_id**](CalendarApi.md#put_characters_character_id_calendar_event_id) | **PUT** /characters/{character_id}/calendar/{event_id}/ | Respond to an event


# **get_characters_character_id_calendar**
> Array&lt;GetCharactersCharacterIdCalendar200Ok&gt; get_characters_character_id_calendar(character_id, opts)

List calendar event summaries

Get 50 event summaries from the calendar. If no event ID is given, the resource will return the next 50 chronological event summaries from now. If an event ID is specified, it will return the next 50 chronological event summaries from after that event.   ---  Alternate route: `/v1/characters/{character_id}/calendar/`  Alternate route: `/legacy/characters/{character_id}/calendar/`  Alternate route: `/dev/characters/{character_id}/calendar/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EveOpenApi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveOpenApi::CalendarApi.new

character_id = 789 # Integer | The character to retrieve events from

opts = { 
  from_event: 56, # Integer | The event ID to retrieve events from
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List calendar event summaries
  result = api_instance.get_characters_character_id_calendar(character_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling CalendarApi->get_characters_character_id_calendar: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| The character to retrieve events from | 
 **from_event** | **Integer**| The event ID to retrieve events from | [optional] 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetCharactersCharacterIdCalendar200Ok&gt;**](GetCharactersCharacterIdCalendar200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_calendar_event_id**
> GetCharactersCharacterIdCalendarEventIdOk get_characters_character_id_calendar_event_id(character_id, event_id, opts)

Get an event

Get all the information for a specific event  ---  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EveOpenApi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveOpenApi::CalendarApi.new

character_id = 789 # Integer | The character id requesting the event

event_id = 56 # Integer | The id of the event requested

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get an event
  result = api_instance.get_characters_character_id_calendar_event_id(character_id, event_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling CalendarApi->get_characters_character_id_calendar_event_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| The character id requesting the event | 
 **event_id** | **Integer**| The id of the event requested | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetCharactersCharacterIdCalendarEventIdOk**](GetCharactersCharacterIdCalendarEventIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_characters_character_id_calendar_event_id**
> put_characters_character_id_calendar_event_id(character_id, event_id, response, opts)

Respond to an event

Set your response status to an event  ---  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EveOpenApi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveOpenApi::CalendarApi.new

character_id = 56 # Integer | The character ID requesting the event

event_id = 56 # Integer | The ID of the event requested

response = EveOpenApi::PutCharactersCharacterIdCalendarEventIdResponse.new # PutCharactersCharacterIdCalendarEventIdResponse | The response value to set, overriding current value.

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Respond to an event
  api_instance.put_characters_character_id_calendar_event_id(character_id, event_id, response, opts)
rescue EveOpenApi::ApiError => e
  puts "Exception when calling CalendarApi->put_characters_character_id_calendar_event_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| The character ID requesting the event | 
 **event_id** | **Integer**| The ID of the event requested | 
 **response** | [**PutCharactersCharacterIdCalendarEventIdResponse**](PutCharactersCharacterIdCalendarEventIdResponse.md)| The response value to set, overriding current value. | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



