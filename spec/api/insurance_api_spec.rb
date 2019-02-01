=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EVEOpenAPI::InsuranceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InsuranceApi' do
  before do
    # run before each test
    @instance = EVEOpenAPI::InsuranceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InsuranceApi' do
    it 'should create an instance of InsuranceApi' do
      expect(@instance).to be_instance_of(EVEOpenAPI::InsuranceApi)
    end
  end

  # unit tests for get_insurance_prices
  # List insurance levels
  # Return available insurance levels for all ship types  --- Alternate route: &#x60;/dev/insurance/prices/&#x60;  Alternate route: &#x60;/legacy/insurance/prices/&#x60;  Alternate route: &#x60;/v1/insurance/prices/&#x60;  --- This route is cached for up to 3600 seconds
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Language to use in the response
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :language Language to use in the response, takes precedence over Accept-Language
  # @return [Array<GetInsurancePrices200Ok>]
  describe 'get_insurance_prices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
