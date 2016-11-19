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
  class WalletApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List wallets and balances
    # List your wallets and their balances. Characters typically have only one wallet, with wallet_id 1000 being the master wallet.  ---  Alternate route: `/v1/characters/{character_id}/wallets/`  Alternate route: `/legacy/characters/{character_id}/wallets/`  Alternate route: `/dev/characters/{character_id}/wallets/`   ---  This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Array<GetCharactersCharacterIdWallets200Ok>]
    def get_characters_character_id_wallets(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_wallets_with_http_info(character_id, opts)
      return data
    end

    # List wallets and balances
    # List your wallets and their balances. Characters typically have only one wallet, with wallet_id 1000 being the master wallet.  ---  Alternate route: &#x60;/v1/characters/{character_id}/wallets/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/wallets/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/wallets/&#x60;   ---  This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Array<GetCharactersCharacterIdWallets200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdWallets200Ok> data, response status code and response headers
    def get_characters_character_id_wallets_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_characters_character_id_wallets ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling WalletApi.get_characters_character_id_wallets" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/wallets/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdWallets200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_characters_character_id_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get character wallet journal
    # Returns the most recent 50 entries for the characters wallet journal. Optionally, takes an argument with a reference ID, and returns the prior 50 entries from the journal.  ---  Alternate route: `/v1/characters/{character_id}/wallets/journal/`  Alternate route: `/legacy/characters/{character_id}/wallets/journal/`  Alternate route: `/dev/characters/{character_id}/wallets/journal/` 
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_seen_id A journal reference ID to paginate from
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Array<GetCharactersCharacterIdWalletsJournal200Ok>]
    def get_characters_character_id_wallets_journal(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_wallets_journal_with_http_info(character_id, opts)
      return data
    end

    # Get character wallet journal
    # Returns the most recent 50 entries for the characters wallet journal. Optionally, takes an argument with a reference ID, and returns the prior 50 entries from the journal.  ---  Alternate route: &#x60;/v1/characters/{character_id}/wallets/journal/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/wallets/journal/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/wallets/journal/&#x60; 
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_seen_id A journal reference ID to paginate from
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Array<GetCharactersCharacterIdWalletsJournal200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdWalletsJournal200Ok> data, response status code and response headers
    def get_characters_character_id_wallets_journal_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_characters_character_id_wallets_journal ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling WalletApi.get_characters_character_id_wallets_journal" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/wallets/journal/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'last_seen_id'] = opts[:'last_seen_id'] if !opts[:'last_seen_id'].nil?
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
        :return_type => 'Array<GetCharactersCharacterIdWalletsJournal200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_characters_character_id_wallets_journal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get wallet transactions
    # Gets the 50 most recent transactions in a characters wallet. Optionally, takes an argument with a transaction ID, and returns the prior 50 transactions  ---  Alternate route: `/v1/characters/{character_id}/wallets/transactions/`  Alternate route: `/legacy/characters/{character_id}/wallets/transactions/`  Alternate route: `/dev/characters/{character_id}/wallets/transactions/` 
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [Array<GetCharactersCharacterIdWalletsTransactions200Ok>]
    def get_characters_character_id_wallets_transactions(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_wallets_transactions_with_http_info(character_id, opts)
      return data
    end

    # Get wallet transactions
    # Gets the 50 most recent transactions in a characters wallet. Optionally, takes an argument with a transaction ID, and returns the prior 50 transactions  ---  Alternate route: &#x60;/v1/characters/{character_id}/wallets/transactions/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/wallets/transactions/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/wallets/transactions/&#x60; 
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(Array<GetCharactersCharacterIdWalletsTransactions200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdWalletsTransactions200Ok> data, response status code and response headers
    def get_characters_character_id_wallets_transactions_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_characters_character_id_wallets_transactions ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling WalletApi.get_characters_character_id_wallets_transactions" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/wallets/transactions/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdWalletsTransactions200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_characters_character_id_wallets_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dummy Endpoint, Please Ignore
    # Dummy  ---  Alternate route: `/v1/corporations/{corporation_id}/wallets/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/`  Alternate route: `/dev/corporations/{corporation_id}/wallets/` 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [nil]
    def get_corporations_corporation_id_wallets(corporation_id, opts = {})
      get_corporations_corporation_id_wallets_with_http_info(corporation_id, opts)
      return nil
    end

    # Dummy Endpoint, Please Ignore
    # Dummy  ---  Alternate route: &#x60;/v1/corporations/{corporation_id}/wallets/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/wallets/&#x60;  Alternate route: &#x60;/dev/corporations/{corporation_id}/wallets/&#x60; 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_corporations_corporation_id_wallets_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_corporations_corporation_id_wallets ..."
      end
      # verify the required parameter 'corporation_id' is set
      fail ArgumentError, "Missing the required parameter 'corporation_id' when calling WalletApi.get_corporations_corporation_id_wallets" if corporation_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/corporations/{corporation_id}/wallets/".sub('{format}','json').sub('{' + 'corporation_id' + '}', corporation_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_corporations_corporation_id_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dummy Endpoint, Please Ignore
    # Dummy  ---  Alternate route: `/v1/corporations/{corporation_id}/wallets/{wallet_id}/journal/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/{wallet_id}/journal/`  Alternate route: `/dev/corporations/{corporation_id}/wallets/{wallet_id}/journal/` 
    # @param corporation_id An EVE corporation ID
    # @param wallet_id Wallet ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [nil]
    def get_corporations_corporation_id_wallets_wallet_id_journal(corporation_id, wallet_id, opts = {})
      get_corporations_corporation_id_wallets_wallet_id_journal_with_http_info(corporation_id, wallet_id, opts)
      return nil
    end

    # Dummy Endpoint, Please Ignore
    # Dummy  ---  Alternate route: &#x60;/v1/corporations/{corporation_id}/wallets/{wallet_id}/journal/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/wallets/{wallet_id}/journal/&#x60;  Alternate route: &#x60;/dev/corporations/{corporation_id}/wallets/{wallet_id}/journal/&#x60; 
    # @param corporation_id An EVE corporation ID
    # @param wallet_id Wallet ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_corporations_corporation_id_wallets_wallet_id_journal_with_http_info(corporation_id, wallet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_corporations_corporation_id_wallets_wallet_id_journal ..."
      end
      # verify the required parameter 'corporation_id' is set
      fail ArgumentError, "Missing the required parameter 'corporation_id' when calling WalletApi.get_corporations_corporation_id_wallets_wallet_id_journal" if corporation_id.nil?
      # verify the required parameter 'wallet_id' is set
      fail ArgumentError, "Missing the required parameter 'wallet_id' when calling WalletApi.get_corporations_corporation_id_wallets_wallet_id_journal" if wallet_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/corporations/{corporation_id}/wallets/{wallet_id}/journal/".sub('{format}','json').sub('{' + 'corporation_id' + '}', corporation_id.to_s).sub('{' + 'wallet_id' + '}', wallet_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_corporations_corporation_id_wallets_wallet_id_journal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dummy Endpoint, Please Ignore
    # Dummy  ---  Alternate route: `/v1/corporations/{corporation_id}/wallets/{wallet_id}/transactions/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/{wallet_id}/transactions/`  Alternate route: `/dev/corporations/{corporation_id}/wallets/{wallet_id}/transactions/` 
    # @param corporation_id An EVE corporation ID
    # @param wallet_id Wallet ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @return [nil]
    def get_corporations_corporation_id_wallets_wallet_id_transactions(corporation_id, wallet_id, opts = {})
      get_corporations_corporation_id_wallets_wallet_id_transactions_with_http_info(corporation_id, wallet_id, opts)
      return nil
    end

    # Dummy Endpoint, Please Ignore
    # Dummy  ---  Alternate route: &#x60;/v1/corporations/{corporation_id}/wallets/{wallet_id}/transactions/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/wallets/{wallet_id}/transactions/&#x60;  Alternate route: &#x60;/dev/corporations/{corporation_id}/wallets/{wallet_id}/transactions/&#x60; 
    # @param corporation_id An EVE corporation ID
    # @param wallet_id Wallet ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_corporations_corporation_id_wallets_wallet_id_transactions_with_http_info(corporation_id, wallet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_corporations_corporation_id_wallets_wallet_id_transactions ..."
      end
      # verify the required parameter 'corporation_id' is set
      fail ArgumentError, "Missing the required parameter 'corporation_id' when calling WalletApi.get_corporations_corporation_id_wallets_wallet_id_transactions" if corporation_id.nil?
      # verify the required parameter 'wallet_id' is set
      fail ArgumentError, "Missing the required parameter 'wallet_id' when calling WalletApi.get_corporations_corporation_id_wallets_wallet_id_transactions" if wallet_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/corporations/{corporation_id}/wallets/{wallet_id}/transactions/".sub('{format}','json').sub('{' + 'corporation_id' + '}', corporation_id.to_s).sub('{' + 'wallet_id' + '}', wallet_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_corporations_corporation_id_wallets_wallet_id_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
