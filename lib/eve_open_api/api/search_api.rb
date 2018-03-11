=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module EVEOpenAPI
  class SearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Search on a string
    # Search for entities that match a given sub-string.  --- Alternate route: `/dev/characters/{character_id}/search/`  Alternate route: `/v3/characters/{character_id}/search/`  --- This route is cached for up to 3600 seconds
    # @param categories Type of entities to search for
    # @param character_id An EVE character ID
    # @param search The string to search on
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :language Language to use in the response (default to en-us)
    # @option opts [BOOLEAN] :strict Whether the search should be a strict match (default to false)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetCharactersCharacterIdSearchOk]
    def get_characters_character_id_search(categories, character_id, search, opts = {})
      data, _status_code, _headers = get_characters_character_id_search_with_http_info(categories, character_id, search, opts)
      return data
    end

    # Search on a string
    # Search for entities that match a given sub-string.  --- Alternate route: &#x60;/dev/characters/{character_id}/search/&#x60;  Alternate route: &#x60;/v3/characters/{character_id}/search/&#x60;  --- This route is cached for up to 3600 seconds
    # @param categories Type of entities to search for
    # @param character_id An EVE character ID
    # @param search The string to search on
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :language Language to use in the response
    # @option opts [BOOLEAN] :strict Whether the search should be a strict match
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetCharactersCharacterIdSearchOk, Fixnum, Hash)>] GetCharactersCharacterIdSearchOk data, response status code and response headers
    def get_characters_character_id_search_with_http_info(categories, character_id, search, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SearchApi.get_characters_character_id_search ..."
      end
      # verify the required parameter 'categories' is set
      if @api_client.config.client_side_validation && categories.nil?
        fail ArgumentError, "Missing the required parameter 'categories' when calling SearchApi.get_characters_character_id_search"
      end
      if @api_client.config.client_side_validation && categories.length > 11
        fail ArgumentError, 'invalid value for "categories" when calling SearchApi.get_characters_character_id_search, number of items must be less than or equal to 11.'
      end

      if @api_client.config.client_side_validation && categories.length < 1
        fail ArgumentError, 'invalid value for "categories" when calling SearchApi.get_characters_character_id_search, number of items must be greater than or equal to 1.'
      end

      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling SearchApi.get_characters_character_id_search"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling SearchApi.get_characters_character_id_search, must be greater than or equal to 1.'
      end

      # verify the required parameter 'search' is set
      if @api_client.config.client_side_validation && search.nil?
        fail ArgumentError, "Missing the required parameter 'search' when calling SearchApi.get_characters_character_id_search"
      end
      if @api_client.config.client_side_validation && search.to_s.length < 3
        fail ArgumentError, 'invalid value for "search" when calling SearchApi.get_characters_character_id_search, the character length must be great than or equal to 3.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && opts[:'language'] && !['de', 'en-us', 'fr', 'ja', 'ru', 'zh'].include?(opts[:'language'])
        fail ArgumentError, 'invalid value for "language", must be one of de, en-us, fr, ja, ru, zh'
      end
      # resource path
      local_var_path = "/characters/{character_id}/search/".sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'categories'] = @api_client.build_collection_param(categories, :csv)
      query_params[:'search'] = search
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'strict'] = opts[:'strict'] if !opts[:'strict'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'GetCharactersCharacterIdSearchOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#get_characters_character_id_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search on a string
    # Search for entities that match a given sub-string.  --- Alternate route: `/dev/search/`  Alternate route: `/v2/search/`  --- This route is cached for up to 3600 seconds
    # @param categories Type of entities to search for
    # @param search The string to search on
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :language Language to use in the response (default to en-us)
    # @option opts [BOOLEAN] :strict Whether the search should be a strict match (default to false)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetSearchOk]
    def get_search(categories, search, opts = {})
      data, _status_code, _headers = get_search_with_http_info(categories, search, opts)
      return data
    end

    # Search on a string
    # Search for entities that match a given sub-string.  --- Alternate route: &#x60;/dev/search/&#x60;  Alternate route: &#x60;/v2/search/&#x60;  --- This route is cached for up to 3600 seconds
    # @param categories Type of entities to search for
    # @param search The string to search on
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :language Language to use in the response
    # @option opts [BOOLEAN] :strict Whether the search should be a strict match
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetSearchOk, Fixnum, Hash)>] GetSearchOk data, response status code and response headers
    def get_search_with_http_info(categories, search, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SearchApi.get_search ..."
      end
      # verify the required parameter 'categories' is set
      if @api_client.config.client_side_validation && categories.nil?
        fail ArgumentError, "Missing the required parameter 'categories' when calling SearchApi.get_search"
      end
      if @api_client.config.client_side_validation && categories.length > 10
        fail ArgumentError, 'invalid value for "categories" when calling SearchApi.get_search, number of items must be less than or equal to 10.'
      end

      if @api_client.config.client_side_validation && categories.length < 1
        fail ArgumentError, 'invalid value for "categories" when calling SearchApi.get_search, number of items must be greater than or equal to 1.'
      end

      # verify the required parameter 'search' is set
      if @api_client.config.client_side_validation && search.nil?
        fail ArgumentError, "Missing the required parameter 'search' when calling SearchApi.get_search"
      end
      if @api_client.config.client_side_validation && search.to_s.length < 3
        fail ArgumentError, 'invalid value for "search" when calling SearchApi.get_search, the character length must be great than or equal to 3.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && opts[:'language'] && !['de', 'en-us', 'fr', 'ja', 'ru', 'zh'].include?(opts[:'language'])
        fail ArgumentError, 'invalid value for "language", must be one of de, en-us, fr, ja, ru, zh'
      end
      # resource path
      local_var_path = "/search/"

      # query parameters
      query_params = {}
      query_params[:'categories'] = @api_client.build_collection_param(categories, :csv)
      query_params[:'search'] = search
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'strict'] = opts[:'strict'] if !opts[:'strict'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetSearchOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#get_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
