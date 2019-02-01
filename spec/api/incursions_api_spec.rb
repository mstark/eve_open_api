=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EVEOpenAPI::IncursionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IncursionsApi' do
  before do
    # run before each test
    @instance = EVEOpenAPI::IncursionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IncursionsApi' do
    it 'should create an instance of IncursionsApi' do
      expect(@instance).to be_instance_of(EVEOpenAPI::IncursionsApi)
    end
  end

  # unit tests for get_incursions
  # List incursions
  # Return a list of current incursions  --- Alternate route: &#x60;/dev/incursions/&#x60;  Alternate route: &#x60;/legacy/incursions/&#x60;  Alternate route: &#x60;/v1/incursions/&#x60;  --- This route is cached for up to 300 seconds
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @return [Array<GetIncursions200Ok>]
  describe 'get_incursions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
