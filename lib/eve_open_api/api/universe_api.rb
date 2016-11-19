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

module EVEOpenAPI
  class UniverseApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get planet information
    # Information on a planet  ---  Alternate route: `/v1/universe/planets/{planet_id}/`  Alternate route: `/legacy/universe/planets/{planet_id}/`  Alternate route: `/dev/universe/planets/{planet_id}/` 
    # @param planet_id An Eve planet ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [GetUniversePlanetsPlanetIdOk]
    def get_universe_planets_planet_id(planet_id, opts = {})
      data, _status_code, _headers = get_universe_planets_planet_id_with_http_info(planet_id, opts)
      return data
    end

    # Get planet information
    # Information on a planet  ---  Alternate route: &#x60;/v1/universe/planets/{planet_id}/&#x60;  Alternate route: &#x60;/legacy/universe/planets/{planet_id}/&#x60;  Alternate route: &#x60;/dev/universe/planets/{planet_id}/&#x60; 
    # @param planet_id An Eve planet ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(GetUniversePlanetsPlanetIdOk, Fixnum, Hash)>] GetUniversePlanetsPlanetIdOk data, response status code and response headers
    def get_universe_planets_planet_id_with_http_info(planet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UniverseApi.get_universe_planets_planet_id ..."
      end
      # verify the required parameter 'planet_id' is set
      fail ArgumentError, "Missing the required parameter 'planet_id' when calling UniverseApi.get_universe_planets_planet_id" if planet_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/universe/planets/{planet_id}/".sub('{format}','json').sub('{' + 'planet_id' + '}', planet_id.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetUniversePlanetsPlanetIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UniverseApi#get_universe_planets_planet_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get station information
    # Public information on stations  ---  Alternate route: `/v1/universe/stations/{station_id}/`  Alternate route: `/legacy/universe/stations/{station_id}/`  Alternate route: `/dev/universe/stations/{station_id}/`   ---  This route is cached for up to 3600 seconds
    # @param station_id An Eve station ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [GetUniverseStationsStationIdOk]
    def get_universe_stations_station_id(station_id, opts = {})
      data, _status_code, _headers = get_universe_stations_station_id_with_http_info(station_id, opts)
      return data
    end

    # Get station information
    # Public information on stations  ---  Alternate route: &#x60;/v1/universe/stations/{station_id}/&#x60;  Alternate route: &#x60;/legacy/universe/stations/{station_id}/&#x60;  Alternate route: &#x60;/dev/universe/stations/{station_id}/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param station_id An Eve station ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(GetUniverseStationsStationIdOk, Fixnum, Hash)>] GetUniverseStationsStationIdOk data, response status code and response headers
    def get_universe_stations_station_id_with_http_info(station_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UniverseApi.get_universe_stations_station_id ..."
      end
      # verify the required parameter 'station_id' is set
      fail ArgumentError, "Missing the required parameter 'station_id' when calling UniverseApi.get_universe_stations_station_id" if station_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/universe/stations/{station_id}/".sub('{format}','json').sub('{' + 'station_id' + '}', station_id.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetUniverseStationsStationIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UniverseApi#get_universe_stations_station_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all public structures
    # List all public structures  ---  Alternate route: `/v1/universe/structures/`  Alternate route: `/legacy/universe/structures/`  Alternate route: `/dev/universe/structures/`   ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Array<Integer>]
    def get_universe_structures(opts = {})
      data, _status_code, _headers = get_universe_structures_with_http_info(opts)
      return data
    end

    # List all public structures
    # List all public structures  ---  Alternate route: &#x60;/v1/universe/structures/&#x60;  Alternate route: &#x60;/legacy/universe/structures/&#x60;  Alternate route: &#x60;/dev/universe/structures/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_universe_structures_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UniverseApi.get_universe_structures ..."
      end
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/universe/structures/".sub('{format}','json')

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UniverseApi#get_universe_structures\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get structure information
    # Returns information on requested structure, if you are on the ACL. Otherwise, returns \"Forbidden\" for all inputs.  ---  Alternate route: `/v1/universe/structures/{structure_id}/`  Alternate route: `/legacy/universe/structures/{structure_id}/`  Alternate route: `/dev/universe/structures/{structure_id}/` 
    # @param structure_id An Eve structure ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [GetUniverseStructuresStructureIdOk]
    def get_universe_structures_structure_id(structure_id, opts = {})
      data, _status_code, _headers = get_universe_structures_structure_id_with_http_info(structure_id, opts)
      return data
    end

    # Get structure information
    # Returns information on requested structure, if you are on the ACL. Otherwise, returns \&quot;Forbidden\&quot; for all inputs.  ---  Alternate route: &#x60;/v1/universe/structures/{structure_id}/&#x60;  Alternate route: &#x60;/legacy/universe/structures/{structure_id}/&#x60;  Alternate route: &#x60;/dev/universe/structures/{structure_id}/&#x60; 
    # @param structure_id An Eve structure ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(GetUniverseStructuresStructureIdOk, Fixnum, Hash)>] GetUniverseStructuresStructureIdOk data, response status code and response headers
    def get_universe_structures_structure_id_with_http_info(structure_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UniverseApi.get_universe_structures_structure_id ..."
      end
      # verify the required parameter 'structure_id' is set
      fail ArgumentError, "Missing the required parameter 'structure_id' when calling UniverseApi.get_universe_structures_structure_id" if structure_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/universe/structures/{structure_id}/".sub('{format}','json').sub('{' + 'structure_id' + '}', structure_id.to_s)

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
        :return_type => 'GetUniverseStructuresStructureIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UniverseApi#get_universe_structures_structure_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get solar system information
    # Information on solar systems  ---  Alternate route: `/v1/universe/systems/{system_id}/`  Alternate route: `/legacy/universe/systems/{system_id}/`  Alternate route: `/dev/universe/systems/{system_id}/`   ---  This route is cached for up to 3600 seconds
    # @param system_id An Eve solar system ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [GetUniverseSystemsSystemIdOk]
    def get_universe_systems_system_id(system_id, opts = {})
      data, _status_code, _headers = get_universe_systems_system_id_with_http_info(system_id, opts)
      return data
    end

    # Get solar system information
    # Information on solar systems  ---  Alternate route: &#x60;/v1/universe/systems/{system_id}/&#x60;  Alternate route: &#x60;/legacy/universe/systems/{system_id}/&#x60;  Alternate route: &#x60;/dev/universe/systems/{system_id}/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param system_id An Eve solar system ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(GetUniverseSystemsSystemIdOk, Fixnum, Hash)>] GetUniverseSystemsSystemIdOk data, response status code and response headers
    def get_universe_systems_system_id_with_http_info(system_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UniverseApi.get_universe_systems_system_id ..."
      end
      # verify the required parameter 'system_id' is set
      fail ArgumentError, "Missing the required parameter 'system_id' when calling UniverseApi.get_universe_systems_system_id" if system_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/universe/systems/{system_id}/".sub('{format}','json').sub('{' + 'system_id' + '}', system_id.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetUniverseSystemsSystemIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UniverseApi#get_universe_systems_system_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get type information
    # Get information on a type  ---  Alternate route: `/v1/universe/types/{type_id}/`  Alternate route: `/legacy/universe/types/{type_id}/`  Alternate route: `/dev/universe/types/{type_id}/`   ---  This route is cached for up to 3600 seconds
    # @param type_id An Eve item type ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [GetUniverseTypesTypeIdOk]
    def get_universe_types_type_id(type_id, opts = {})
      data, _status_code, _headers = get_universe_types_type_id_with_http_info(type_id, opts)
      return data
    end

    # Get type information
    # Get information on a type  ---  Alternate route: &#x60;/v1/universe/types/{type_id}/&#x60;  Alternate route: &#x60;/legacy/universe/types/{type_id}/&#x60;  Alternate route: &#x60;/dev/universe/types/{type_id}/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param type_id An Eve item type ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(GetUniverseTypesTypeIdOk, Fixnum, Hash)>] GetUniverseTypesTypeIdOk data, response status code and response headers
    def get_universe_types_type_id_with_http_info(type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UniverseApi.get_universe_types_type_id ..."
      end
      # verify the required parameter 'type_id' is set
      fail ArgumentError, "Missing the required parameter 'type_id' when calling UniverseApi.get_universe_types_type_id" if type_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/universe/types/{type_id}/".sub('{format}','json').sub('{' + 'type_id' + '}', type_id.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetUniverseTypesTypeIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UniverseApi#get_universe_types_type_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get names and categories for a set of ID's
    # Resolve a set of IDs to names and categories. Supported ID's for resolving are: Characters, Corporations, Alliances, Stations, Solar Systems, Constellations, Regions, Types.  ---  Alternate route: `/v1/universe/names/`  Alternate route: `/legacy/universe/names/` 
    # @param ids The ids to resolve
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Array<PostUniverseNames200Ok>]
    def post_universe_names(ids, opts = {})
      data, _status_code, _headers = post_universe_names_with_http_info(ids, opts)
      return data
    end

    # Get names and categories for a set of ID&#39;s
    # Resolve a set of IDs to names and categories. Supported ID&#39;s for resolving are: Characters, Corporations, Alliances, Stations, Solar Systems, Constellations, Regions, Types.  ---  Alternate route: &#x60;/v1/universe/names/&#x60;  Alternate route: &#x60;/legacy/universe/names/&#x60; 
    # @param ids The ids to resolve
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Array<PostUniverseNames200Ok>, Fixnum, Hash)>] Array<PostUniverseNames200Ok> data, response status code and response headers
    def post_universe_names_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UniverseApi.post_universe_names ..."
      end
      # verify the required parameter 'ids' is set
      fail ArgumentError, "Missing the required parameter 'ids' when calling UniverseApi.post_universe_names" if ids.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/universe/names/".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(ids)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PostUniverseNames200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UniverseApi#post_universe_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
