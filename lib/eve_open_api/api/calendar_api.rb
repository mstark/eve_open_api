=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.2.6.dev1

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module EveOpenApi
  class CalendarApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List calendar event summaries
    # Get 50 event summaries from the calendar. If no event ID is given, the resource will return the next 50 chronological event summaries from now. If an event ID is specified, it will return the next 50 chronological event summaries from after that event.   ---  Alternate route: `/v1/characters/{character_id}/calendar/`  Alternate route: `/legacy/characters/{character_id}/calendar/`  Alternate route: `/dev/characters/{character_id}/calendar/`   ---  This route is cached for up to 5 seconds
    # @param character_id The character to retrieve events from
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from_event The event ID to retrieve events from
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Array<GetCharactersCharacterIdCalendar200Ok>]
    def get_characters_character_id_calendar(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_calendar_with_http_info(character_id, opts)
      return data
    end

    # List calendar event summaries
    # Get 50 event summaries from the calendar. If no event ID is given, the resource will return the next 50 chronological event summaries from now. If an event ID is specified, it will return the next 50 chronological event summaries from after that event.   ---  Alternate route: &#x60;/v1/characters/{character_id}/calendar/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/calendar/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/calendar/&#x60;   ---  This route is cached for up to 5 seconds
    # @param character_id The character to retrieve events from
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from_event The event ID to retrieve events from
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Array<GetCharactersCharacterIdCalendar200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdCalendar200Ok> data, response status code and response headers
    def get_characters_character_id_calendar_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarApi.get_characters_character_id_calendar ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling CalendarApi.get_characters_character_id_calendar" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/calendar/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'from_event'] = opts[:'from_event'] if !opts[:'from_event'].nil?
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCharactersCharacterIdCalendar200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarApi#get_characters_character_id_calendar\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an event
    # Get all the information for a specific event  ---  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/`   ---  This route is cached for up to 5 seconds
    # @param character_id The character id requesting the event
    # @param event_id The id of the event requested
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [GetCharactersCharacterIdCalendarEventIdOk]
    def get_characters_character_id_calendar_event_id(character_id, event_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, opts)
      return data
    end

    # Get an event
    # Get all the information for a specific event  ---  Alternate route: &#x60;/v3/characters/{character_id}/calendar/{event_id}/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/calendar/{event_id}/&#x60;   ---  This route is cached for up to 5 seconds
    # @param character_id The character id requesting the event
    # @param event_id The id of the event requested
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(GetCharactersCharacterIdCalendarEventIdOk, Fixnum, Hash)>] GetCharactersCharacterIdCalendarEventIdOk data, response status code and response headers
    def get_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarApi.get_characters_character_id_calendar_event_id ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling CalendarApi.get_characters_character_id_calendar_event_id" if character_id.nil?
      # verify the required parameter 'event_id' is set
      fail ArgumentError, "Missing the required parameter 'event_id' when calling CalendarApi.get_characters_character_id_calendar_event_id" if event_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/calendar/{event_id}/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'event_id' + '}', event_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetCharactersCharacterIdCalendarEventIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarApi#get_characters_character_id_calendar_event_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Respond to an event
    # Set your response status to an event  ---  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/` 
    # @param character_id The character ID requesting the event
    # @param event_id The ID of the event requested
    # @param response The response value to set, overriding current value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [nil]
    def put_characters_character_id_calendar_event_id(character_id, event_id, response, opts = {})
      put_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, response, opts)
      return nil
    end

    # Respond to an event
    # Set your response status to an event  ---  Alternate route: &#x60;/v3/characters/{character_id}/calendar/{event_id}/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/calendar/{event_id}/&#x60; 
    # @param character_id The character ID requesting the event
    # @param event_id The ID of the event requested
    # @param response The response value to set, overriding current value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, response, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarApi.put_characters_character_id_calendar_event_id ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling CalendarApi.put_characters_character_id_calendar_event_id" if character_id.nil?
      # verify the required parameter 'event_id' is set
      fail ArgumentError, "Missing the required parameter 'event_id' when calling CalendarApi.put_characters_character_id_calendar_event_id" if event_id.nil?
      # verify the required parameter 'response' is set
      fail ArgumentError, "Missing the required parameter 'response' when calling CalendarApi.put_characters_character_id_calendar_event_id" if response.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/calendar/{event_id}/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'event_id' + '}', event_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(response)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarApi#put_characters_character_id_calendar_event_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end