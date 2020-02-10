# EVEOpenAPI::InsuranceApi

All URIs are relative to *https://esi.evetech.net/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_insurance_prices**](InsuranceApi.md#get_insurance_prices) | **GET** /insurance/prices/ | List insurance levels


# **get_insurance_prices**
> Array&lt;GetInsurancePrices200Ok&gt; get_insurance_prices(opts)

List insurance levels

Return available insurance levels for all ship types  --- Alternate route: `/dev/insurance/prices/`  Alternate route: `/legacy/insurance/prices/`  Alternate route: `/v1/insurance/prices/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_open_api'

api_instance = EVEOpenAPI::InsuranceApi.new

opts = { 
  accept_language: 'en-us', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en-us' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  #List insurance levels
  result = api_instance.get_insurance_prices(opts)
  p result
rescue EVEOpenAPI::ApiError => e
  puts "Exception when calling InsuranceApi->get_insurance_prices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept_language** | **String**| Language to use in the response | [optional] [default to en-us]
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **language** | **String**| Language to use in the response, takes precedence over Accept-Language | [optional] [default to en-us]

### Return type

[**Array&lt;GetInsurancePrices200Ok&gt;**](GetInsurancePrices200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



