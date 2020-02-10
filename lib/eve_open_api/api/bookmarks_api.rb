=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 1.2.9

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module EVEOpenAPI
  class BookmarksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List bookmarks
    # A list of your character's personal bookmarks  --- Alternate route: `/dev/characters/{character_id}/bookmarks/`  Alternate route: `/v2/characters/{character_id}/bookmarks/`  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdBookmarks200Ok>]
    def get_characters_character_id_bookmarks(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_bookmarks_with_http_info(character_id, opts)
      data
    end

    # List bookmarks
    # A list of your character&#39;s personal bookmarks  --- Alternate route: &#x60;/dev/characters/{character_id}/bookmarks/&#x60;  Alternate route: &#x60;/v2/characters/{character_id}/bookmarks/&#x60;  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdBookmarks200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdBookmarks200Ok> data, response status code and response headers
    def get_characters_character_id_bookmarks_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BookmarksApi.get_characters_character_id_bookmarks ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling BookmarksApi.get_characters_character_id_bookmarks"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling BookmarksApi.get_characters_character_id_bookmarks, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling BookmarksApi.get_characters_character_id_bookmarks, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/characters/{character_id}/bookmarks/'.sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

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
        :return_type => 'Array<GetCharactersCharacterIdBookmarks200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BookmarksApi#get_characters_character_id_bookmarks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List bookmark folders
    # A list of your character's personal bookmark folders  --- Alternate route: `/dev/characters/{character_id}/bookmarks/folders/`  Alternate route: `/v2/characters/{character_id}/bookmarks/folders/`  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdBookmarksFolders200Ok>]
    def get_characters_character_id_bookmarks_folders(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_bookmarks_folders_with_http_info(character_id, opts)
      data
    end

    # List bookmark folders
    # A list of your character&#39;s personal bookmark folders  --- Alternate route: &#x60;/dev/characters/{character_id}/bookmarks/folders/&#x60;  Alternate route: &#x60;/v2/characters/{character_id}/bookmarks/folders/&#x60;  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdBookmarksFolders200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdBookmarksFolders200Ok> data, response status code and response headers
    def get_characters_character_id_bookmarks_folders_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BookmarksApi.get_characters_character_id_bookmarks_folders ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling BookmarksApi.get_characters_character_id_bookmarks_folders"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling BookmarksApi.get_characters_character_id_bookmarks_folders, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling BookmarksApi.get_characters_character_id_bookmarks_folders, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/characters/{character_id}/bookmarks/folders/'.sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

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
        :return_type => 'Array<GetCharactersCharacterIdBookmarksFolders200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BookmarksApi#get_characters_character_id_bookmarks_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List corporation bookmarks
    # A list of your corporation's bookmarks  --- Alternate route: `/dev/corporations/{corporation_id}/bookmarks/`  Alternate route: `/legacy/corporations/{corporation_id}/bookmarks/`  Alternate route: `/v1/corporations/{corporation_id}/bookmarks/`  --- This route is cached for up to 3600 seconds
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationsCorporationIdBookmarks200Ok>]
    def get_corporations_corporation_id_bookmarks(corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_bookmarks_with_http_info(corporation_id, opts)
      data
    end

    # List corporation bookmarks
    # A list of your corporation&#39;s bookmarks  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/bookmarks/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/bookmarks/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/bookmarks/&#x60;  --- This route is cached for up to 3600 seconds
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationsCorporationIdBookmarks200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdBookmarks200Ok> data, response status code and response headers
    def get_corporations_corporation_id_bookmarks_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BookmarksApi.get_corporations_corporation_id_bookmarks ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling BookmarksApi.get_corporations_corporation_id_bookmarks"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling BookmarksApi.get_corporations_corporation_id_bookmarks, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling BookmarksApi.get_corporations_corporation_id_bookmarks, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/corporations/{corporation_id}/bookmarks/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

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
        :return_type => 'Array<GetCorporationsCorporationIdBookmarks200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BookmarksApi#get_corporations_corporation_id_bookmarks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List corporation bookmark folders
    # A list of your corporation's bookmark folders  --- Alternate route: `/dev/corporations/{corporation_id}/bookmarks/folders/`  Alternate route: `/legacy/corporations/{corporation_id}/bookmarks/folders/`  Alternate route: `/v1/corporations/{corporation_id}/bookmarks/folders/`  --- This route is cached for up to 3600 seconds
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationsCorporationIdBookmarksFolders200Ok>]
    def get_corporations_corporation_id_bookmarks_folders(corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_bookmarks_folders_with_http_info(corporation_id, opts)
      data
    end

    # List corporation bookmark folders
    # A list of your corporation&#39;s bookmark folders  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/bookmarks/folders/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/bookmarks/folders/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/bookmarks/folders/&#x60;  --- This route is cached for up to 3600 seconds
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationsCorporationIdBookmarksFolders200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdBookmarksFolders200Ok> data, response status code and response headers
    def get_corporations_corporation_id_bookmarks_folders_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BookmarksApi.get_corporations_corporation_id_bookmarks_folders ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling BookmarksApi.get_corporations_corporation_id_bookmarks_folders"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling BookmarksApi.get_corporations_corporation_id_bookmarks_folders, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling BookmarksApi.get_corporations_corporation_id_bookmarks_folders, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/corporations/{corporation_id}/bookmarks/folders/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

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
        :return_type => 'Array<GetCorporationsCorporationIdBookmarksFolders200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BookmarksApi#get_corporations_corporation_id_bookmarks_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
