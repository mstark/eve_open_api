=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module EVEOpenAPI
  class WalletApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a character's wallet balance
    # Returns a character's wallet balance  --- Alternate route: `/dev/characters/{character_id}/wallet/`  Alternate route: `/legacy/characters/{character_id}/wallet/`  Alternate route: `/v1/characters/{character_id}/wallet/`  --- This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Float]
    def get_characters_character_id_wallet(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_wallet_with_http_info(character_id, opts)
      return data
    end

    # Get a character&#39;s wallet balance
    # Returns a character&#39;s wallet balance  --- Alternate route: &#x60;/dev/characters/{character_id}/wallet/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/wallet/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/wallet/&#x60;  --- This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Float, Fixnum, Hash)>] Float data, response status code and response headers
    def get_characters_character_id_wallet_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_characters_character_id_wallet ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling WalletApi.get_characters_character_id_wallet"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling WalletApi.get_characters_character_id_wallet, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/wallet/".sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'Float')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_characters_character_id_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get character wallet journal
    # Retrieve the given character's wallet journal going 30 days back  --- Alternate route: `/dev/characters/{character_id}/wallet/journal/`  Alternate route: `/v5/characters/{character_id}/wallet/journal/`  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdWalletJournal200Ok>]
    def get_characters_character_id_wallet_journal(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_wallet_journal_with_http_info(character_id, opts)
      return data
    end

    # Get character wallet journal
    # Retrieve the given character&#39;s wallet journal going 30 days back  --- Alternate route: &#x60;/dev/characters/{character_id}/wallet/journal/&#x60;  Alternate route: &#x60;/v5/characters/{character_id}/wallet/journal/&#x60;  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdWalletJournal200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdWalletJournal200Ok> data, response status code and response headers
    def get_characters_character_id_wallet_journal_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_characters_character_id_wallet_journal ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling WalletApi.get_characters_character_id_wallet_journal"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling WalletApi.get_characters_character_id_wallet_journal, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling WalletApi.get_characters_character_id_wallet_journal, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/characters/{character_id}/wallet/journal/".sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdWalletJournal200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_characters_character_id_wallet_journal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get wallet transactions
    # Get wallet transactions of a character  --- Alternate route: `/dev/characters/{character_id}/wallet/transactions/`  Alternate route: `/legacy/characters/{character_id}/wallet/transactions/`  Alternate route: `/v1/characters/{character_id}/wallet/transactions/`  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Integer] :from_id Only show transactions happened before the one referenced by this id
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdWalletTransactions200Ok>]
    def get_characters_character_id_wallet_transactions(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_wallet_transactions_with_http_info(character_id, opts)
      return data
    end

    # Get wallet transactions
    # Get wallet transactions of a character  --- Alternate route: &#x60;/dev/characters/{character_id}/wallet/transactions/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/wallet/transactions/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/wallet/transactions/&#x60;  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [Integer] :from_id Only show transactions happened before the one referenced by this id
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdWalletTransactions200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdWalletTransactions200Ok> data, response status code and response headers
    def get_characters_character_id_wallet_transactions_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_characters_character_id_wallet_transactions ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling WalletApi.get_characters_character_id_wallet_transactions"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling WalletApi.get_characters_character_id_wallet_transactions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/wallet/transactions/".sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'from_id'] = opts[:'from_id'] if !opts[:'from_id'].nil?
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
        :return_type => 'Array<GetCharactersCharacterIdWalletTransactions200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_characters_character_id_wallet_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a corporation's wallet balance
    # Get a corporation's wallets  --- Alternate route: `/dev/corporations/{corporation_id}/wallets/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/`  Alternate route: `/v1/corporations/{corporation_id}/wallets/`  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Junior_Accountant 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationsCorporationIdWallets200Ok>]
    def get_corporations_corporation_id_wallets(corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_wallets_with_http_info(corporation_id, opts)
      return data
    end

    # Returns a corporation&#39;s wallet balance
    # Get a corporation&#39;s wallets  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/wallets/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/wallets/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/wallets/&#x60;  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Junior_Accountant 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationsCorporationIdWallets200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdWallets200Ok> data, response status code and response headers
    def get_corporations_corporation_id_wallets_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_corporations_corporation_id_wallets ..."
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling WalletApi.get_corporations_corporation_id_wallets"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling WalletApi.get_corporations_corporation_id_wallets, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/corporations/{corporation_id}/wallets/".sub('{' + 'corporation_id' + '}', corporation_id.to_s)

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
        :return_type => 'Array<GetCorporationsCorporationIdWallets200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_corporations_corporation_id_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get corporation wallet journal
    # Retrieve the given corporation's wallet journal for the given division going 30 days back  --- Alternate route: `/dev/corporations/{corporation_id}/wallets/{division}/journal/`  Alternate route: `/v4/corporations/{corporation_id}/wallets/{division}/journal/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Junior_Accountant 
    # @param corporation_id An EVE corporation ID
    # @param division Wallet key of the division to fetch journals from
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationsCorporationIdWalletsDivisionJournal200Ok>]
    def get_corporations_corporation_id_wallets_division_journal(corporation_id, division, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_wallets_division_journal_with_http_info(corporation_id, division, opts)
      return data
    end

    # Get corporation wallet journal
    # Retrieve the given corporation&#39;s wallet journal for the given division going 30 days back  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/wallets/{division}/journal/&#x60;  Alternate route: &#x60;/v4/corporations/{corporation_id}/wallets/{division}/journal/&#x60;  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Junior_Accountant 
    # @param corporation_id An EVE corporation ID
    # @param division Wallet key of the division to fetch journals from
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationsCorporationIdWalletsDivisionJournal200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdWalletsDivisionJournal200Ok> data, response status code and response headers
    def get_corporations_corporation_id_wallets_division_journal_with_http_info(corporation_id, division, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_corporations_corporation_id_wallets_division_journal ..."
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling WalletApi.get_corporations_corporation_id_wallets_division_journal"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling WalletApi.get_corporations_corporation_id_wallets_division_journal, must be greater than or equal to 1.'
      end

      # verify the required parameter 'division' is set
      if @api_client.config.client_side_validation && division.nil?
        fail ArgumentError, "Missing the required parameter 'division' when calling WalletApi.get_corporations_corporation_id_wallets_division_journal"
      end
      if @api_client.config.client_side_validation && division > 7
        fail ArgumentError, 'invalid value for "division" when calling WalletApi.get_corporations_corporation_id_wallets_division_journal, must be smaller than or equal to 7.'
      end

      if @api_client.config.client_side_validation && division < 1
        fail ArgumentError, 'invalid value for "division" when calling WalletApi.get_corporations_corporation_id_wallets_division_journal, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling WalletApi.get_corporations_corporation_id_wallets_division_journal, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/corporations/{corporation_id}/wallets/{division}/journal/".sub('{' + 'corporation_id' + '}', corporation_id.to_s).sub('{' + 'division' + '}', division.to_s)

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
        :return_type => 'Array<GetCorporationsCorporationIdWalletsDivisionJournal200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_corporations_corporation_id_wallets_division_journal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get corporation wallet transactions
    # Get wallet transactions of a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/wallets/{division}/transactions/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/{division}/transactions/`  Alternate route: `/v1/corporations/{corporation_id}/wallets/{division}/transactions/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Junior_Accountant 
    # @param corporation_id An EVE corporation ID
    # @param division Wallet key of the division to fetch journals from
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Integer] :from_id Only show journal entries happened before the transaction referenced by this id
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationsCorporationIdWalletsDivisionTransactions200Ok>]
    def get_corporations_corporation_id_wallets_division_transactions(corporation_id, division, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_wallets_division_transactions_with_http_info(corporation_id, division, opts)
      return data
    end

    # Get corporation wallet transactions
    # Get wallet transactions of a corporation  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/wallets/{division}/transactions/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/wallets/{division}/transactions/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/wallets/{division}/transactions/&#x60;  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Junior_Accountant 
    # @param corporation_id An EVE corporation ID
    # @param division Wallet key of the division to fetch journals from
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [Integer] :from_id Only show journal entries happened before the transaction referenced by this id
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationsCorporationIdWalletsDivisionTransactions200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdWalletsDivisionTransactions200Ok> data, response status code and response headers
    def get_corporations_corporation_id_wallets_division_transactions_with_http_info(corporation_id, division, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_corporations_corporation_id_wallets_division_transactions ..."
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling WalletApi.get_corporations_corporation_id_wallets_division_transactions"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling WalletApi.get_corporations_corporation_id_wallets_division_transactions, must be greater than or equal to 1.'
      end

      # verify the required parameter 'division' is set
      if @api_client.config.client_side_validation && division.nil?
        fail ArgumentError, "Missing the required parameter 'division' when calling WalletApi.get_corporations_corporation_id_wallets_division_transactions"
      end
      if @api_client.config.client_side_validation && division > 7
        fail ArgumentError, 'invalid value for "division" when calling WalletApi.get_corporations_corporation_id_wallets_division_transactions, must be smaller than or equal to 7.'
      end

      if @api_client.config.client_side_validation && division < 1
        fail ArgumentError, 'invalid value for "division" when calling WalletApi.get_corporations_corporation_id_wallets_division_transactions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/corporations/{corporation_id}/wallets/{division}/transactions/".sub('{' + 'corporation_id' + '}', corporation_id.to_s).sub('{' + 'division' + '}', division.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'from_id'] = opts[:'from_id'] if !opts[:'from_id'].nil?
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
        :return_type => 'Array<GetCorporationsCorporationIdWalletsDivisionTransactions200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_corporations_corporation_id_wallets_division_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
