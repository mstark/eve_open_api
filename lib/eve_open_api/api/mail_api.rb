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
  class MailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete a mail
    # Delete a mail  ---  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/dev/characters/{character_id}/mail/{mail_id}/` 
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [nil]
    def delete_characters_character_id_mail_mail_id(character_id, mail_id, opts = {})
      delete_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts)
      return nil
    end

    # Delete a mail
    # Delete a mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/{mail_id}/&#x60; 
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.delete_characters_character_id_mail_mail_id ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.delete_characters_character_id_mail_mail_id" if character_id.nil?
      # verify the required parameter 'mail_id' is set
      fail ArgumentError, "Missing the required parameter 'mail_id' when calling MailApi.delete_characters_character_id_mail_mail_id" if mail_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/mail/{mail_id}/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'mail_id' + '}', mail_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#delete_characters_character_id_mail_mail_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return mail headers
    # Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  Alternate route: `/v1/characters/{character_id}/mail/`  Alternate route: `/legacy/characters/{character_id}/mail/`  Alternate route: `/dev/characters/{character_id}/mail/`   ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :labels Fetch only mails that match one or more of the given labels
    # @option opts [Integer] :last_mail_id List only mail with an ID lower than the given ID, if present
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Array<GetCharactersCharacterIdMail200Ok>]
    def get_characters_character_id_mail(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_mail_with_http_info(character_id, opts)
      return data
    end

    # Return mail headers
    # Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/&#x60;   ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :labels Fetch only mails that match one or more of the given labels
    # @option opts [Integer] :last_mail_id List only mail with an ID lower than the given ID, if present
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Array<GetCharactersCharacterIdMail200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdMail200Ok> data, response status code and response headers
    def get_characters_character_id_mail_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.get_characters_character_id_mail ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.get_characters_character_id_mail" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/mail/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'labels'] = @api_client.build_collection_param(opts[:'labels'], :csv) if !opts[:'labels'].nil?
      query_params[:'last_mail_id'] = opts[:'last_mail_id'] if !opts[:'last_mail_id'].nil?
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
        :return_type => 'Array<GetCharactersCharacterIdMail200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#get_characters_character_id_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get mail labels and unread counts
    # Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  Alternate route: `/v3/characters/{character_id}/mail/labels/`  Alternate route: `/dev/characters/{character_id}/mail/labels/`   ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [GetCharactersCharacterIdMailLabelsOk]
    def get_characters_character_id_mail_labels(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_mail_labels_with_http_info(character_id, opts)
      return data
    end

    # Get mail labels and unread counts
    # Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  Alternate route: &#x60;/v3/characters/{character_id}/mail/labels/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/labels/&#x60;   ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(GetCharactersCharacterIdMailLabelsOk, Fixnum, Hash)>] GetCharactersCharacterIdMailLabelsOk data, response status code and response headers
    def get_characters_character_id_mail_labels_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.get_characters_character_id_mail_labels ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.get_characters_character_id_mail_labels" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/mail/labels/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'GetCharactersCharacterIdMailLabelsOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#get_characters_character_id_mail_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return mailing list subscriptions
    # Return all mailing lists that the character is subscribed to   ---  Alternate route: `/v1/characters/{character_id}/mail/lists/`  Alternate route: `/legacy/characters/{character_id}/mail/lists/`  Alternate route: `/dev/characters/{character_id}/mail/lists/`   ---  This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Array<GetCharactersCharacterIdMailLists200Ok>]
    def get_characters_character_id_mail_lists(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_mail_lists_with_http_info(character_id, opts)
      return data
    end

    # Return mailing list subscriptions
    # Return all mailing lists that the character is subscribed to   ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/lists/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/lists/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/lists/&#x60;   ---  This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Array<GetCharactersCharacterIdMailLists200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdMailLists200Ok> data, response status code and response headers
    def get_characters_character_id_mail_lists_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.get_characters_character_id_mail_lists ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.get_characters_character_id_mail_lists" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/mail/lists/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdMailLists200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#get_characters_character_id_mail_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a mail
    # Return the contents of an EVE mail  ---  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/dev/characters/{character_id}/mail/{mail_id}/`   ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [GetCharactersCharacterIdMailMailIdOk]
    def get_characters_character_id_mail_mail_id(character_id, mail_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts)
      return data
    end

    # Return a mail
    # Return the contents of an EVE mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/{mail_id}/&#x60;   ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(GetCharactersCharacterIdMailMailIdOk, Fixnum, Hash)>] GetCharactersCharacterIdMailMailIdOk data, response status code and response headers
    def get_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.get_characters_character_id_mail_mail_id ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.get_characters_character_id_mail_mail_id" if character_id.nil?
      # verify the required parameter 'mail_id' is set
      fail ArgumentError, "Missing the required parameter 'mail_id' when calling MailApi.get_characters_character_id_mail_mail_id" if mail_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/mail/{mail_id}/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'mail_id' + '}', mail_id.to_s)

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
        :return_type => 'GetCharactersCharacterIdMailMailIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#get_characters_character_id_mail_mail_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a new mail
    # Create and send a new mail  ---  Alternate route: `/v1/characters/{character_id}/mail/`  Alternate route: `/legacy/characters/{character_id}/mail/`  Alternate route: `/dev/characters/{character_id}/mail/` 
    # @param character_id The sender&#39;s character ID
    # @param mail The mail to send
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Integer]
    def post_characters_character_id_mail(character_id, mail, opts = {})
      data, _status_code, _headers = post_characters_character_id_mail_with_http_info(character_id, mail, opts)
      return data
    end

    # Send a new mail
    # Create and send a new mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/&#x60; 
    # @param character_id The sender&#39;s character ID
    # @param mail The mail to send
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def post_characters_character_id_mail_with_http_info(character_id, mail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.post_characters_character_id_mail ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.post_characters_character_id_mail" if character_id.nil?
      # verify the required parameter 'mail' is set
      fail ArgumentError, "Missing the required parameter 'mail' when calling MailApi.post_characters_character_id_mail" if mail.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/mail/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

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
      post_body = @api_client.object_to_http_body(mail)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#post_characters_character_id_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a mail label
    # Create a mail label  ---  Alternate route: `/v2/characters/{character_id}/mail/labels/`  Alternate route: `/legacy/characters/{character_id}/mail/labels/`  Alternate route: `/dev/characters/{character_id}/mail/labels/` 
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [PostCharactersCharacterIdMailLabelsLabel] :label Label to create
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Integer]
    def post_characters_character_id_mail_labels(character_id, opts = {})
      data, _status_code, _headers = post_characters_character_id_mail_labels_with_http_info(character_id, opts)
      return data
    end

    # Create a mail label
    # Create a mail label  ---  Alternate route: &#x60;/v2/characters/{character_id}/mail/labels/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/labels/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/labels/&#x60; 
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [PostCharactersCharacterIdMailLabelsLabel] :label Label to create
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def post_characters_character_id_mail_labels_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.post_characters_character_id_mail_labels ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.post_characters_character_id_mail_labels" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/mail/labels/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'label'])
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#post_characters_character_id_mail_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update metadata about a mail
    # Update metadata about a mail  ---  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/dev/characters/{character_id}/mail/{mail_id}/` 
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param contents Data used to update the mail
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [nil]
    def put_characters_character_id_mail_mail_id(character_id, mail_id, contents, opts = {})
      put_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, contents, opts)
      return nil
    end

    # Update metadata about a mail
    # Update metadata about a mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/{mail_id}/&#x60; 
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param contents Data used to update the mail
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, contents, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.put_characters_character_id_mail_mail_id ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.put_characters_character_id_mail_mail_id" if character_id.nil?
      # verify the required parameter 'mail_id' is set
      fail ArgumentError, "Missing the required parameter 'mail_id' when calling MailApi.put_characters_character_id_mail_mail_id" if mail_id.nil?
      # verify the required parameter 'contents' is set
      fail ArgumentError, "Missing the required parameter 'contents' when calling MailApi.put_characters_character_id_mail_mail_id" if contents.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/mail/{mail_id}/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'mail_id' + '}', mail_id.to_s)

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
      post_body = @api_client.object_to_http_body(contents)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#put_characters_character_id_mail_mail_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end