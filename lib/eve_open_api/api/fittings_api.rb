=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module EVEOpenAPI
  class FittingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete fitting
    # Delete a fitting from a character  --- Alternate route: `/dev/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/legacy/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/v1/characters/{character_id}/fittings/{fitting_id}/` 
    # @param character_id An EVE character ID
    # @param fitting_id ID for a fitting of this character
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [nil]
    def delete_characters_character_id_fittings_fitting_id(character_id, fitting_id, opts = {})
      delete_characters_character_id_fittings_fitting_id_with_http_info(character_id, fitting_id, opts)
      return nil
    end

    # Delete fitting
    # Delete a fitting from a character  --- Alternate route: &#x60;/dev/characters/{character_id}/fittings/{fitting_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/fittings/{fitting_id}/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/fittings/{fitting_id}/&#x60; 
    # @param character_id An EVE character ID
    # @param fitting_id ID for a fitting of this character
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_characters_character_id_fittings_fitting_id_with_http_info(character_id, fitting_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FittingsApi.delete_characters_character_id_fittings_fitting_id ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling FittingsApi.delete_characters_character_id_fittings_fitting_id"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling FittingsApi.delete_characters_character_id_fittings_fitting_id, must be greater than or equal to 1.'
      end

      # verify the required parameter 'fitting_id' is set
      if @api_client.config.client_side_validation && fitting_id.nil?
        fail ArgumentError, "Missing the required parameter 'fitting_id' when calling FittingsApi.delete_characters_character_id_fittings_fitting_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/fittings/{fitting_id}/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'fitting_id' + '}', fitting_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FittingsApi#delete_characters_character_id_fittings_fitting_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get fittings
    # Return fittings of a character  --- Alternate route: `/legacy/characters/{character_id}/fittings/`  Alternate route: `/v1/characters/{character_id}/fittings/`  --- This route is cached for up to 300 seconds  --- Warning: This route has an upgrade available  --- [Diff of the upcoming changes](https://esi.evetech.net/diff/latest/dev/#GET-/characters/{character_id}/fittings/)
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdFittings200Ok>]
    def get_characters_character_id_fittings(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_fittings_with_http_info(character_id, opts)
      return data
    end

    # Get fittings
    # Return fittings of a character  --- Alternate route: &#x60;/legacy/characters/{character_id}/fittings/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/fittings/&#x60;  --- This route is cached for up to 300 seconds  --- Warning: This route has an upgrade available  --- [Diff of the upcoming changes](https://esi.evetech.net/diff/latest/dev/#GET-/characters/{character_id}/fittings/)
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdFittings200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdFittings200Ok> data, response status code and response headers
    def get_characters_character_id_fittings_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FittingsApi.get_characters_character_id_fittings ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling FittingsApi.get_characters_character_id_fittings"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling FittingsApi.get_characters_character_id_fittings, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/fittings/".sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
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
        :return_type => 'Array<GetCharactersCharacterIdFittings200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FittingsApi#get_characters_character_id_fittings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create fitting
    # Save a new fitting for a character  --- Alternate route: `/legacy/characters/{character_id}/fittings/`  Alternate route: `/v1/characters/{character_id}/fittings/`   --- Warning: This route has an upgrade available  --- [Diff of the upcoming changes](https://esi.evetech.net/diff/latest/dev/#POST-/characters/{character_id}/fittings/)
    # @param character_id An EVE character ID
    # @param fitting Details about the new fitting
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [PostCharactersCharacterIdFittingsCreated]
    def post_characters_character_id_fittings(character_id, fitting, opts = {})
      data, _status_code, _headers = post_characters_character_id_fittings_with_http_info(character_id, fitting, opts)
      return data
    end

    # Create fitting
    # Save a new fitting for a character  --- Alternate route: &#x60;/legacy/characters/{character_id}/fittings/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/fittings/&#x60;   --- Warning: This route has an upgrade available  --- [Diff of the upcoming changes](https://esi.evetech.net/diff/latest/dev/#POST-/characters/{character_id}/fittings/)
    # @param character_id An EVE character ID
    # @param fitting Details about the new fitting
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(PostCharactersCharacterIdFittingsCreated, Fixnum, Hash)>] PostCharactersCharacterIdFittingsCreated data, response status code and response headers
    def post_characters_character_id_fittings_with_http_info(character_id, fitting, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FittingsApi.post_characters_character_id_fittings ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling FittingsApi.post_characters_character_id_fittings"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling FittingsApi.post_characters_character_id_fittings, must be greater than or equal to 1.'
      end

      # verify the required parameter 'fitting' is set
      if @api_client.config.client_side_validation && fitting.nil?
        fail ArgumentError, "Missing the required parameter 'fitting' when calling FittingsApi.post_characters_character_id_fittings"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/fittings/".sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(fitting)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PostCharactersCharacterIdFittingsCreated')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FittingsApi#post_characters_character_id_fittings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
