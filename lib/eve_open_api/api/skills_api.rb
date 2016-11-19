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
  class SkillsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get character's skill queue
    # List the configured skill queue for the given character  ---  Alternate route: `/v2/characters/{character_id}/skillqueue/`  Alternate route: `/legacy/characters/{character_id}/skillqueue/`  Alternate route: `/dev/characters/{character_id}/skillqueue/`   ---  This route is cached for up to 120 seconds
    # @param character_id Character id of the target character
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Array<GetCharactersCharacterIdSkillqueue200Ok>]
    def get_characters_character_id_skillqueue(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_skillqueue_with_http_info(character_id, opts)
      return data
    end

    # Get character&#39;s skill queue
    # List the configured skill queue for the given character  ---  Alternate route: &#x60;/v2/characters/{character_id}/skillqueue/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/skillqueue/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/skillqueue/&#x60;   ---  This route is cached for up to 120 seconds
    # @param character_id Character id of the target character
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Array<GetCharactersCharacterIdSkillqueue200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdSkillqueue200Ok> data, response status code and response headers
    def get_characters_character_id_skillqueue_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SkillsApi.get_characters_character_id_skillqueue ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling SkillsApi.get_characters_character_id_skillqueue" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/skillqueue/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdSkillqueue200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SkillsApi#get_characters_character_id_skillqueue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get character skills
    # List all trained skills for the given character  ---  Alternate route: `/v3/characters/{character_id}/skills/`  Alternate route: `/dev/characters/{character_id}/skills/`   ---  This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [GetCharactersCharacterIdSkillsOk]
    def get_characters_character_id_skills(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_skills_with_http_info(character_id, opts)
      return data
    end

    # Get character skills
    # List all trained skills for the given character  ---  Alternate route: &#x60;/v3/characters/{character_id}/skills/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/skills/&#x60;   ---  This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(GetCharactersCharacterIdSkillsOk, Fixnum, Hash)>] GetCharactersCharacterIdSkillsOk data, response status code and response headers
    def get_characters_character_id_skills_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SkillsApi.get_characters_character_id_skills ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling SkillsApi.get_characters_character_id_skills" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/skills/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'GetCharactersCharacterIdSkillsOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SkillsApi#get_characters_character_id_skills\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
