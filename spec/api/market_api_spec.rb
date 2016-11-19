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

require 'spec_helper'
require 'json'

# Unit tests for EveOpenApi::MarketApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MarketApi' do
  before do
    # run before each test
    @instance = EveOpenApi::MarketApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MarketApi' do
    it 'should create an instact of MarketApi' do
      expect(@instance).to be_instance_of(EveOpenApi::MarketApi)
    end
  end

  # unit tests for get_markets_prices
  # List market prices
  # Return a list of prices  ---  Alternate route: &#x60;/v1/markets/prices/&#x60;  Alternate route: &#x60;/legacy/markets/prices/&#x60;  Alternate route: &#x60;/dev/markets/prices/&#x60;   ---  This route is cached for up to 3600 seconds
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [Array<GetMarketsPrices200Ok>]
  describe 'get_markets_prices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_markets_region_id_history
  # List historical market statistics in a region
  # Return a list of historical market statistics for the specified type in a region  ---  Alternate route: &#x60;/v1/markets/{region_id}/history/&#x60;  Alternate route: &#x60;/legacy/markets/{region_id}/history/&#x60;  Alternate route: &#x60;/dev/markets/{region_id}/history/&#x60;   ---  This route is cached for up to 300 seconds
  # @param region_id Return statistics in this region
  # @param type_id Return statistics for this type
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [Array<GetMarketsRegionIdHistory200Ok>]
  describe 'get_markets_region_id_history test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_markets_region_id_orders
  # List orders in a region
  # Return a list of orders in a region  ---  Alternate route: &#x60;/v1/markets/{region_id}/orders/&#x60;  Alternate route: &#x60;/legacy/markets/{region_id}/orders/&#x60;  Alternate route: &#x60;/dev/markets/{region_id}/orders/&#x60;   ---  This route is cached for up to 300 seconds
  # @param region_id Return orders in this region
  # @param order_type Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders. 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :type_id Return orders only for this type
  # @option opts [Integer] :page Which page to query, only used for querying without type_id. Starting at 1 
  # @option opts [String] :datasource The server name you would like data from
  # @return [Array<GetMarketsRegionIdOrders200Ok>]
  describe 'get_markets_region_id_orders test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
