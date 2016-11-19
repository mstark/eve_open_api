# EVEOpenAPI::LiveApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_characters_character_id_mail_mail_id**](LiveApi.md#delete_characters_character_id_mail_mail_id) | **DELETE** /characters/{character_id}/mail/{mail_id}/ | Delete a mail
[**get_characters_character_id**](LiveApi.md#get_characters_character_id) | **GET** /characters/{character_id}/ | Get character&#39;s public information
[**get_characters_character_id_calendar**](LiveApi.md#get_characters_character_id_calendar) | **GET** /characters/{character_id}/calendar/ | List calendar event summaries
[**get_characters_character_id_calendar_event_id**](LiveApi.md#get_characters_character_id_calendar_event_id) | **GET** /characters/{character_id}/calendar/{event_id}/ | Get an event
[**get_characters_character_id_clones**](LiveApi.md#get_characters_character_id_clones) | **GET** /characters/{character_id}/clones/ | Get clones
[**get_characters_character_id_corporationhistory**](LiveApi.md#get_characters_character_id_corporationhistory) | **GET** /characters/{character_id}/corporationhistory/ | Get corporation history
[**get_characters_character_id_location**](LiveApi.md#get_characters_character_id_location) | **GET** /characters/{character_id}/location/ | Get character location
[**get_characters_character_id_mail**](LiveApi.md#get_characters_character_id_mail) | **GET** /characters/{character_id}/mail/ | Return mail headers
[**get_characters_character_id_mail_labels**](LiveApi.md#get_characters_character_id_mail_labels) | **GET** /characters/{character_id}/mail/labels/ | Get mail labels and unread counts
[**get_characters_character_id_mail_lists**](LiveApi.md#get_characters_character_id_mail_lists) | **GET** /characters/{character_id}/mail/lists/ | Return mailing list subscriptions
[**get_characters_character_id_mail_mail_id**](LiveApi.md#get_characters_character_id_mail_mail_id) | **GET** /characters/{character_id}/mail/{mail_id}/ | Return a mail
[**get_characters_character_id_portrait**](LiveApi.md#get_characters_character_id_portrait) | **GET** /characters/{character_id}/portrait/ | Get character portraits
[**get_characters_character_id_ship**](LiveApi.md#get_characters_character_id_ship) | **GET** /characters/{character_id}/ship/ | Get current ship
[**get_characters_character_id_skillqueue**](LiveApi.md#get_characters_character_id_skillqueue) | **GET** /characters/{character_id}/skillqueue/ | Get character&#39;s skill queue
[**get_characters_character_id_skills**](LiveApi.md#get_characters_character_id_skills) | **GET** /characters/{character_id}/skills/ | Get character skills
[**get_characters_character_id_wallets**](LiveApi.md#get_characters_character_id_wallets) | **GET** /characters/{character_id}/wallets/ | List wallets and balances
[**get_characters_names**](LiveApi.md#get_characters_names) | **GET** /characters/names/ | Get character names
[**get_markets_prices**](LiveApi.md#get_markets_prices) | **GET** /markets/prices/ | List market prices
[**get_markets_region_id_history**](LiveApi.md#get_markets_region_id_history) | **GET** /markets/{region_id}/history/ | List historical market statistics in a region
[**get_markets_region_id_orders**](LiveApi.md#get_markets_region_id_orders) | **GET** /markets/{region_id}/orders/ | List orders in a region
[**get_universe_stations_station_id**](LiveApi.md#get_universe_stations_station_id) | **GET** /universe/stations/{station_id}/ | Get station information
[**get_universe_structures**](LiveApi.md#get_universe_structures) | **GET** /universe/structures/ | List all public structures
[**get_universe_structures_structure_id**](LiveApi.md#get_universe_structures_structure_id) | **GET** /universe/structures/{structure_id}/ | Get structure information
[**get_universe_systems_system_id**](LiveApi.md#get_universe_systems_system_id) | **GET** /universe/systems/{system_id}/ | Get solar system information
[**get_universe_types_type_id**](LiveApi.md#get_universe_types_type_id) | **GET** /universe/types/{type_id}/ | Get type information
[**post_characters_character_id_cspa**](LiveApi.md#post_characters_character_id_cspa) | **POST** /characters/{character_id}/cspa/ | Calculate a CSPA charge cost
[**post_characters_character_id_mail**](LiveApi.md#post_characters_character_id_mail) | **POST** /characters/{character_id}/mail/ | Send a new mail
[**post_characters_character_id_mail_labels**](LiveApi.md#post_characters_character_id_mail_labels) | **POST** /characters/{character_id}/mail/labels/ | Create a mail label
[**post_universe_names**](LiveApi.md#post_universe_names) | **POST** /universe/names/ | Get names and categories for a set of ID&#39;s
[**put_characters_character_id_calendar_event_id**](LiveApi.md#put_characters_character_id_calendar_event_id) | **PUT** /characters/{character_id}/calendar/{event_id}/ | Respond to an event
[**put_characters_character_id_mail_mail_id**](LiveApi.md#put_characters_character_id_mail_mail_id) | **PUT** /characters/{character_id}/mail/{mail_id}/ | Update metadata about a mail


# **delete_characters_character_id_mail_mail_id**
> delete_characters_character_id_mail_mail_id(character_id, mail_id, opts)

Delete a mail

Delete a mail  ---  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/dev/characters/{character_id}/mail/{mail_id}/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

mail_id = 56 # Integer | An EVE mail ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Delete a mail
  api_instance.delete_characters_character_id_mail_mail_id(character_id, mail_id, opts)
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->delete_characters_character_id_mail_mail_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **mail_id** | **Integer**| An EVE mail ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id**
> GetCharactersCharacterIdOk get_characters_character_id(character_id, opts)

Get character's public information

Public information about a character  ---  Alternate route: `/v3/characters/{character_id}/`  Alternate route: `/legacy/characters/{character_id}/`  Alternate route: `/dev/characters/{character_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character's public information
  result = api_instance.get_characters_character_id(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id: #{e}"
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



# **get_characters_character_id_calendar**
> Array&lt;GetCharactersCharacterIdCalendar200Ok&gt; get_characters_character_id_calendar(character_id, opts)

List calendar event summaries

Get 50 event summaries from the calendar. If no event ID is given, the resource will return the next 50 chronological event summaries from now. If an event ID is specified, it will return the next 50 chronological event summaries from after that event.   ---  Alternate route: `/v1/characters/{character_id}/calendar/`  Alternate route: `/legacy/characters/{character_id}/calendar/`  Alternate route: `/dev/characters/{character_id}/calendar/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 789 # Integer | The character to retrieve events from

opts = { 
  from_event: 56, # Integer | The event ID to retrieve events from
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List calendar event summaries
  result = api_instance.get_characters_character_id_calendar(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_calendar: #{e}"
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
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 789 # Integer | The character id requesting the event

event_id = 56 # Integer | The id of the event requested

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get an event
  result = api_instance.get_characters_character_id_calendar_event_id(character_id, event_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_calendar_event_id: #{e}"
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



# **get_characters_character_id_clones**
> GetCharactersCharacterIdClonesOk get_characters_character_id_clones(character_id, opts)

Get clones

A list of the character's clones  ---  Alternate route: `/v2/characters/{character_id}/clones/`  Alternate route: `/dev/characters/{character_id}/clones/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get clones
  result = api_instance.get_characters_character_id_clones(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_clones: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetCharactersCharacterIdClonesOk**](GetCharactersCharacterIdClonesOk.md)

### Authorization

[evesso](../README.md#evesso)

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

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get corporation history
  result = api_instance.get_characters_character_id_corporationhistory(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_corporationhistory: #{e}"
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



# **get_characters_character_id_location**
> GetCharactersCharacterIdLocationOk get_characters_character_id_location(character_id, opts)

Get character location

Information about the characters current location. Returns the current solar system id, and also the current station or structure ID if applicable.  ---  Alternate route: `/v1/characters/{character_id}/location/`  Alternate route: `/legacy/characters/{character_id}/location/`  Alternate route: `/dev/characters/{character_id}/location/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character location
  result = api_instance.get_characters_character_id_location(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_location: #{e}"
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



# **get_characters_character_id_mail**
> Array&lt;GetCharactersCharacterIdMail200Ok&gt; get_characters_character_id_mail(character_id, opts)

Return mail headers

Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  Alternate route: `/v1/characters/{character_id}/mail/`  Alternate route: `/legacy/characters/{character_id}/mail/`  Alternate route: `/dev/characters/{character_id}/mail/`   ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  labels: [56], # Array<Integer> | Fetch only mails that match one or more of the given labels
  last_mail_id: 56, # Integer | List only mail with an ID lower than the given ID, if present
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Return mail headers
  result = api_instance.get_characters_character_id_mail(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **labels** | [**Array&lt;Integer&gt;**](Integer.md)| Fetch only mails that match one or more of the given labels | [optional] 
 **last_mail_id** | **Integer**| List only mail with an ID lower than the given ID, if present | [optional] 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetCharactersCharacterIdMail200Ok&gt;**](GetCharactersCharacterIdMail200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_mail_labels**
> GetCharactersCharacterIdMailLabelsOk get_characters_character_id_mail_labels(character_id, opts)

Get mail labels and unread counts

Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  Alternate route: `/v3/characters/{character_id}/mail/labels/`  Alternate route: `/dev/characters/{character_id}/mail/labels/`   ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get mail labels and unread counts
  result = api_instance.get_characters_character_id_mail_labels(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_mail_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetCharactersCharacterIdMailLabelsOk**](GetCharactersCharacterIdMailLabelsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_mail_lists**
> Array&lt;GetCharactersCharacterIdMailLists200Ok&gt; get_characters_character_id_mail_lists(character_id, opts)

Return mailing list subscriptions

Return all mailing lists that the character is subscribed to   ---  Alternate route: `/v1/characters/{character_id}/mail/lists/`  Alternate route: `/legacy/characters/{character_id}/mail/lists/`  Alternate route: `/dev/characters/{character_id}/mail/lists/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Return mailing list subscriptions
  result = api_instance.get_characters_character_id_mail_lists(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_mail_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetCharactersCharacterIdMailLists200Ok&gt;**](GetCharactersCharacterIdMailLists200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_mail_mail_id**
> GetCharactersCharacterIdMailMailIdOk get_characters_character_id_mail_mail_id(character_id, mail_id, opts)

Return a mail

Return the contents of an EVE mail  ---  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/dev/characters/{character_id}/mail/{mail_id}/`   ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

mail_id = 56 # Integer | An EVE mail ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Return a mail
  result = api_instance.get_characters_character_id_mail_mail_id(character_id, mail_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_mail_mail_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **mail_id** | **Integer**| An EVE mail ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**GetCharactersCharacterIdMailMailIdOk**](GetCharactersCharacterIdMailMailIdOk.md)

### Authorization

[evesso](../README.md#evesso)

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

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character portraits
  result = api_instance.get_characters_character_id_portrait(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_portrait: #{e}"
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



# **get_characters_character_id_ship**
> GetCharactersCharacterIdShipOk get_characters_character_id_ship(character_id, opts)

Get current ship

Get the current ship type, name and id  ---  Alternate route: `/v1/characters/{character_id}/ship/`  Alternate route: `/legacy/characters/{character_id}/ship/`  Alternate route: `/dev/characters/{character_id}/ship/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get current ship
  result = api_instance.get_characters_character_id_ship(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_ship: #{e}"
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



# **get_characters_character_id_skillqueue**
> Array&lt;GetCharactersCharacterIdSkillqueue200Ok&gt; get_characters_character_id_skillqueue(character_id, opts)

Get character's skill queue

List the configured skill queue for the given character  ---  Alternate route: `/v2/characters/{character_id}/skillqueue/`  Alternate route: `/legacy/characters/{character_id}/skillqueue/`  Alternate route: `/dev/characters/{character_id}/skillqueue/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | Character id of the target character

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character's skill queue
  result = api_instance.get_characters_character_id_skillqueue(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_skillqueue: #{e}"
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
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character skills
  result = api_instance.get_characters_character_id_skills(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_skills: #{e}"
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



# **get_characters_character_id_wallets**
> Array&lt;GetCharactersCharacterIdWallets200Ok&gt; get_characters_character_id_wallets(character_id, opts)

List wallets and balances

List your wallets and their balances. Characters typically have only one wallet, with wallet_id 1000 being the master wallet.  ---  Alternate route: `/v1/characters/{character_id}/wallets/`  Alternate route: `/legacy/characters/{character_id}/wallets/`  Alternate route: `/dev/characters/{character_id}/wallets/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List wallets and balances
  result = api_instance.get_characters_character_id_wallets(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_character_id_wallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetCharactersCharacterIdWallets200Ok&gt;**](GetCharactersCharacterIdWallets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

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

api_instance = EVEOpenAPI::LiveApi.new

character_ids = [56] # Array<Integer> | A comma separated list of character IDs

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character names
  result = api_instance.get_characters_names(character_ids, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_characters_names: #{e}"
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



# **get_markets_prices**
> Array&lt;GetMarketsPrices200Ok&gt; get_markets_prices(opts)

List market prices

Return a list of prices  ---  Alternate route: `/v1/markets/prices/`  Alternate route: `/legacy/markets/prices/`  Alternate route: `/dev/markets/prices/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::LiveApi.new

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List market prices
  result = api_instance.get_markets_prices(opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_markets_prices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetMarketsPrices200Ok&gt;**](GetMarketsPrices200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_region_id_history**
> Array&lt;GetMarketsRegionIdHistory200Ok&gt; get_markets_region_id_history(region_id, type_id, opts)

List historical market statistics in a region

Return a list of historical market statistics for the specified type in a region  ---  Alternate route: `/v1/markets/{region_id}/history/`  Alternate route: `/legacy/markets/{region_id}/history/`  Alternate route: `/dev/markets/{region_id}/history/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::LiveApi.new

region_id = 789 # Integer | Return statistics in this region

type_id = 789 # Integer | Return statistics for this type

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List historical market statistics in a region
  result = api_instance.get_markets_region_id_history(region_id, type_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_markets_region_id_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| Return statistics in this region | 
 **type_id** | **Integer**| Return statistics for this type | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetMarketsRegionIdHistory200Ok&gt;**](GetMarketsRegionIdHistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_region_id_orders**
> Array&lt;GetMarketsRegionIdOrders200Ok&gt; get_markets_region_id_orders(region_id, order_type, opts)

List orders in a region

Return a list of orders in a region  ---  Alternate route: `/v1/markets/{region_id}/orders/`  Alternate route: `/legacy/markets/{region_id}/orders/`  Alternate route: `/dev/markets/{region_id}/orders/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::LiveApi.new

region_id = 789 # Integer | Return orders in this region

order_type = "all" # String | Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders. 

opts = { 
  type_id: 789, # Integer | Return orders only for this type
  page: 1, # Integer | Which page to query, only used for querying without type_id. Starting at 1 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List orders in a region
  result = api_instance.get_markets_region_id_orders(region_id, order_type, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_markets_region_id_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| Return orders in this region | 
 **order_type** | **String**| Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders.  | [default to all]
 **type_id** | **Integer**| Return orders only for this type | [optional] 
 **page** | **Integer**| Which page to query, only used for querying without type_id. Starting at 1  | [optional] [default to 1]
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetMarketsRegionIdOrders200Ok&gt;**](GetMarketsRegionIdOrders200Ok.md)

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

api_instance = EVEOpenAPI::LiveApi.new

station_id = 56 # Integer | An Eve station ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get station information
  result = api_instance.get_universe_stations_station_id(station_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_universe_stations_station_id: #{e}"
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

api_instance = EVEOpenAPI::LiveApi.new

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List all public structures
  result = api_instance.get_universe_structures(opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_universe_structures: #{e}"
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

api_instance = EVEOpenAPI::LiveApi.new

structure_id = 789 # Integer | An Eve structure ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get structure information
  result = api_instance.get_universe_structures_structure_id(structure_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_universe_structures_structure_id: #{e}"
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

api_instance = EVEOpenAPI::LiveApi.new

system_id = 56 # Integer | An Eve solar system ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get solar system information
  result = api_instance.get_universe_systems_system_id(system_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_universe_systems_system_id: #{e}"
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

api_instance = EVEOpenAPI::LiveApi.new

type_id = 56 # Integer | An Eve item type ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get type information
  result = api_instance.get_universe_types_type_id(type_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->get_universe_types_type_id: #{e}"
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



# **post_characters_character_id_cspa**
> PostCharactersCharacterIdCspaCreated post_characters_character_id_cspa(character_id, characters, opts)

Calculate a CSPA charge cost

Takes a source character ID in the url and a set of target character ID's in the body, returns a CSPA charge cost  ---  Alternate route: `/v3/characters/{character_id}/cspa/`  Alternate route: `/legacy/characters/{character_id}/cspa/`  Alternate route: `/dev/characters/{character_id}/cspa/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

characters = EVEOpenAPI::PostCharactersCharacterIdCspaCharacters.new # PostCharactersCharacterIdCspaCharacters | The target characters to calculate the charge for

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Calculate a CSPA charge cost
  result = api_instance.post_characters_character_id_cspa(character_id, characters, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->post_characters_character_id_cspa: #{e}"
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



# **post_characters_character_id_mail**
> Integer post_characters_character_id_mail(character_id, mail, opts)

Send a new mail

Create and send a new mail  ---  Alternate route: `/v1/characters/{character_id}/mail/`  Alternate route: `/legacy/characters/{character_id}/mail/`  Alternate route: `/dev/characters/{character_id}/mail/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | The sender's character ID

mail = EVEOpenAPI::PostCharactersCharacterIdMailMail.new # PostCharactersCharacterIdMailMail | The mail to send

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Send a new mail
  result = api_instance.post_characters_character_id_mail(character_id, mail, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->post_characters_character_id_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| The sender&#39;s character ID | 
 **mail** | [**PostCharactersCharacterIdMailMail**](PostCharactersCharacterIdMailMail.md)| The mail to send | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

**Integer**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_characters_character_id_mail_labels**
> Integer post_characters_character_id_mail_labels(character_id, opts)

Create a mail label

Create a mail label  ---  Alternate route: `/v2/characters/{character_id}/mail/labels/`  Alternate route: `/legacy/characters/{character_id}/mail/labels/`  Alternate route: `/dev/characters/{character_id}/mail/labels/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  label: EVEOpenAPI::PostCharactersCharacterIdMailLabelsLabel.new, # PostCharactersCharacterIdMailLabelsLabel | Label to create
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Create a mail label
  result = api_instance.post_characters_character_id_mail_labels(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->post_characters_character_id_mail_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **label** | [**PostCharactersCharacterIdMailLabelsLabel**](PostCharactersCharacterIdMailLabelsLabel.md)| Label to create | [optional] 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

**Integer**

### Authorization

[evesso](../README.md#evesso)

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

api_instance = EVEOpenAPI::LiveApi.new

ids = EVEOpenAPI::PostUniverseNamesIds.new # PostUniverseNamesIds | The ids to resolve

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get names and categories for a set of ID's
  result = api_instance.post_universe_names(ids, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->post_universe_names: #{e}"
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



# **put_characters_character_id_calendar_event_id**
> put_characters_character_id_calendar_event_id(character_id, event_id, response, opts)

Respond to an event

Set your response status to an event  ---  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | The character ID requesting the event

event_id = 56 # Integer | The ID of the event requested

response = EVEOpenAPI::PutCharactersCharacterIdCalendarEventIdResponse.new # PutCharactersCharacterIdCalendarEventIdResponse | The response value to set, overriding current value.

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Respond to an event
  api_instance.put_characters_character_id_calendar_event_id(character_id, event_id, response, opts)
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->put_characters_character_id_calendar_event_id: #{e}"
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



# **put_characters_character_id_mail_mail_id**
> put_characters_character_id_mail_mail_id(character_id, mail_id, contents, opts)

Update metadata about a mail

Update metadata about a mail  ---  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/dev/characters/{character_id}/mail/{mail_id}/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::LiveApi.new

character_id = 56 # Integer | An EVE character ID

mail_id = 56 # Integer | An EVE mail ID

contents = EVEOpenAPI::PutCharactersCharacterIdMailMailIdContents.new # PutCharactersCharacterIdMailMailIdContents | Data used to update the mail

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Update metadata about a mail
  api_instance.put_characters_character_id_mail_mail_id(character_id, mail_id, contents, opts)
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling LiveApi->put_characters_character_id_mail_mail_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **mail_id** | **Integer**| An EVE mail ID | 
 **contents** | [**PutCharactersCharacterIdMailMailIdContents**](PutCharactersCharacterIdMailMailIdContents.md)| Data used to update the mail | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



