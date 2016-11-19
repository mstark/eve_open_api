# EVEOpenAPI::WalletApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_wallets**](WalletApi.md#get_characters_character_id_wallets) | **GET** /characters/{character_id}/wallets/ | List wallets and balances
[**get_characters_character_id_wallets_journal**](WalletApi.md#get_characters_character_id_wallets_journal) | **GET** /characters/{character_id}/wallets/journal/ | Get character wallet journal
[**get_characters_character_id_wallets_transactions**](WalletApi.md#get_characters_character_id_wallets_transactions) | **GET** /characters/{character_id}/wallets/transactions/ | Get wallet transactions
[**get_corporations_corporation_id_wallets**](WalletApi.md#get_corporations_corporation_id_wallets) | **GET** /corporations/{corporation_id}/wallets/ | Dummy Endpoint, Please Ignore
[**get_corporations_corporation_id_wallets_wallet_id_journal**](WalletApi.md#get_corporations_corporation_id_wallets_wallet_id_journal) | **GET** /corporations/{corporation_id}/wallets/{wallet_id}/journal/ | Dummy Endpoint, Please Ignore
[**get_corporations_corporation_id_wallets_wallet_id_transactions**](WalletApi.md#get_corporations_corporation_id_wallets_wallet_id_transactions) | **GET** /corporations/{corporation_id}/wallets/{wallet_id}/transactions/ | Dummy Endpoint, Please Ignore


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

api_instance = EVEOpenAPI::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List wallets and balances
  result = api_instance.get_characters_character_id_wallets(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallets: #{e}"
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



# **get_characters_character_id_wallets_journal**
> Array&lt;GetCharactersCharacterIdWalletsJournal200Ok&gt; get_characters_character_id_wallets_journal(character_id, opts)

Get character wallet journal

Returns the most recent 50 entries for the characters wallet journal. Optionally, takes an argument with a reference ID, and returns the prior 50 entries from the journal.  ---  Alternate route: `/v1/characters/{character_id}/wallets/journal/`  Alternate route: `/legacy/characters/{character_id}/wallets/journal/`  Alternate route: `/dev/characters/{character_id}/wallets/journal/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  last_seen_id: 789, # Integer | A journal reference ID to paginate from
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get character wallet journal
  result = api_instance.get_characters_character_id_wallets_journal(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallets_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **last_seen_id** | **Integer**| A journal reference ID to paginate from | [optional] 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetCharactersCharacterIdWalletsJournal200Ok&gt;**](GetCharactersCharacterIdWalletsJournal200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_wallets_transactions**
> Array&lt;GetCharactersCharacterIdWalletsTransactions200Ok&gt; get_characters_character_id_wallets_transactions(character_id, opts)

Get wallet transactions

Gets the 50 most recent transactions in a characters wallet. Optionally, takes an argument with a transaction ID, and returns the prior 50 transactions  ---  Alternate route: `/v1/characters/{character_id}/wallets/transactions/`  Alternate route: `/legacy/characters/{character_id}/wallets/transactions/`  Alternate route: `/dev/characters/{character_id}/wallets/transactions/` 

### Example
```ruby
# load the gem
require 'eve_open_api'
# setup authorization
EVEOpenAPI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EVEOpenAPI::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Get wallet transactions
  result = api_instance.get_characters_character_id_wallets_transactions(character_id, opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallets_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetCharactersCharacterIdWalletsTransactions200Ok&gt;**](GetCharactersCharacterIdWalletsTransactions200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_wallets**
> get_corporations_corporation_id_wallets(corporation_id, opts)

Dummy Endpoint, Please Ignore

Dummy  ---  Alternate route: `/v1/corporations/{corporation_id}/wallets/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/`  Alternate route: `/dev/corporations/{corporation_id}/wallets/` 

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::WalletApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Dummy Endpoint, Please Ignore
  api_instance.get_corporations_corporation_id_wallets(corporation_id, opts)
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling WalletApi->get_corporations_corporation_id_wallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_wallets_wallet_id_journal**
> get_corporations_corporation_id_wallets_wallet_id_journal(corporation_id, wallet_id, opts)

Dummy Endpoint, Please Ignore

Dummy  ---  Alternate route: `/v1/corporations/{corporation_id}/wallets/{wallet_id}/journal/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/{wallet_id}/journal/`  Alternate route: `/dev/corporations/{corporation_id}/wallets/{wallet_id}/journal/` 

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::WalletApi.new

corporation_id = 56 # Integer | An EVE corporation ID

wallet_id = 56 # Integer | Wallet ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Dummy Endpoint, Please Ignore
  api_instance.get_corporations_corporation_id_wallets_wallet_id_journal(corporation_id, wallet_id, opts)
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling WalletApi->get_corporations_corporation_id_wallets_wallet_id_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **wallet_id** | **Integer**| Wallet ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_wallets_wallet_id_transactions**
> get_corporations_corporation_id_wallets_wallet_id_transactions(corporation_id, wallet_id, opts)

Dummy Endpoint, Please Ignore

Dummy  ---  Alternate route: `/v1/corporations/{corporation_id}/wallets/{wallet_id}/transactions/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/{wallet_id}/transactions/`  Alternate route: `/dev/corporations/{corporation_id}/wallets/{wallet_id}/transactions/` 

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::WalletApi.new

corporation_id = 56 # Integer | An EVE corporation ID

wallet_id = 56 # Integer | Wallet ID

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #Dummy Endpoint, Please Ignore
  api_instance.get_corporations_corporation_id_wallets_wallet_id_transactions(corporation_id, wallet_id, opts)
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling WalletApi->get_corporations_corporation_id_wallets_wallet_id_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **wallet_id** | **Integer**| Wallet ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



