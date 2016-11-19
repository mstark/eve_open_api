# EveOpenApi::MarketApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_markets_prices**](MarketApi.md#get_markets_prices) | **GET** /markets/prices/ | List market prices
[**get_markets_region_id_history**](MarketApi.md#get_markets_region_id_history) | **GET** /markets/{region_id}/history/ | List historical market statistics in a region
[**get_markets_region_id_orders**](MarketApi.md#get_markets_region_id_orders) | **GET** /markets/{region_id}/orders/ | List orders in a region


# **get_markets_prices**
> Array&lt;GetMarketsPrices200Ok&gt; get_markets_prices(opts)

List market prices

Return a list of prices  ---  Alternate route: `/v1/markets/prices/`  Alternate route: `/legacy/markets/prices/`  Alternate route: `/dev/markets/prices/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EveOpenApi::MarketApi.new

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List market prices
  result = api_instance.get_markets_prices(opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_prices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetMarketsPrices200Ok&gt;**](GetMarketsPrices200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_region_id_history**
> Array&lt;GetMarketsRegionIdHistory200Ok&gt; get_markets_region_id_history(region_id, type_id, opts)

List historical market statistics in a region

Return a list of historical market statistics for the specified type in a region  ---  Alternate route: `/v1/markets/{region_id}/history/`  Alternate route: `/legacy/markets/{region_id}/history/`  Alternate route: `/dev/markets/{region_id}/history/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EveOpenApi::MarketApi.new

region_id = 789 # Integer | Return statistics in this region

type_id = 789 # Integer | Return statistics for this type

opts = { 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List historical market statistics in a region
  result = api_instance.get_markets_region_id_history(region_id, type_id, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_region_id_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| Return statistics in this region | 
 **type_id** | **Integer**| Return statistics for this type | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetMarketsRegionIdHistory200Ok&gt;**](GetMarketsRegionIdHistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_region_id_orders**
> Array&lt;GetMarketsRegionIdOrders200Ok&gt; get_markets_region_id_orders(region_id, order_type, opts)

List orders in a region

Return a list of orders in a region  ---  Alternate route: `/v1/markets/{region_id}/orders/`  Alternate route: `/legacy/markets/{region_id}/orders/`  Alternate route: `/dev/markets/{region_id}/orders/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EveOpenApi::MarketApi.new

region_id = 789 # Integer | Return orders in this region

order_type = "all" # String | Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders. 

opts = { 
  type_id: 789, # Integer | Return orders only for this type
  page: 1, # Integer | Which page to query, only used for querying without type_id. Starting at 1 
  datasource: "tranquility" # String | The server name you would like data from
}

begin
  #List orders in a region
  result = api_instance.get_markets_region_id_orders(region_id, order_type, opts)
  p result
rescue EveOpenApi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_region_id_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| Return orders in this region | 
 **order_type** | **String**| Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders.  | [default to all]
 **type_id** | **Integer**| Return orders only for this type | [optional] 
 **page** | **Integer**| Which page to query, only used for querying without type_id. Starting at 1  | [optional] [default to 1]
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]

### Return type

[**Array&lt;GetMarketsRegionIdOrders200Ok&gt;**](GetMarketsRegionIdOrders200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



