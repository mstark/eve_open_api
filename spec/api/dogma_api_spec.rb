=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EVEOpenAPI::DogmaApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DogmaApi' do
  before do
    # run before each test
    @instance = EVEOpenAPI::DogmaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DogmaApi' do
    it 'should create an instance of DogmaApi' do
      expect(@instance).to be_instance_of(EVEOpenAPI::DogmaApi)
    end
  end

  # unit tests for get_dogma_attributes
  # Get attributes
  # Get a list of dogma attribute ids  --- Alternate route: &#x60;/dev/dogma/attributes/&#x60;  Alternate route: &#x60;/legacy/dogma/attributes/&#x60;  Alternate route: &#x60;/v1/dogma/attributes/&#x60;  --- This route expires daily at 11:05
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<Integer>]
  describe 'get_dogma_attributes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dogma_attributes_attribute_id
  # Get attribute information
  # Get information on a dogma attribute  --- Alternate route: &#x60;/dev/dogma/attributes/{attribute_id}/&#x60;  Alternate route: &#x60;/legacy/dogma/attributes/{attribute_id}/&#x60;  Alternate route: &#x60;/v1/dogma/attributes/{attribute_id}/&#x60;  --- This route expires daily at 11:05
  # @param attribute_id A dogma attribute ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetDogmaAttributesAttributeIdOk]
  describe 'get_dogma_attributes_attribute_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dogma_effects
  # Get effects
  # Get a list of dogma effect ids  --- Alternate route: &#x60;/dev/dogma/effects/&#x60;  Alternate route: &#x60;/legacy/dogma/effects/&#x60;  Alternate route: &#x60;/v1/dogma/effects/&#x60;  --- This route expires daily at 11:05
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<Integer>]
  describe 'get_dogma_effects test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dogma_effects_effect_id
  # Get effect information
  # Get information on a dogma effect  --- Alternate route: &#x60;/dev/dogma/effects/{effect_id}/&#x60;  Alternate route: &#x60;/v2/dogma/effects/{effect_id}/&#x60;  --- This route expires daily at 11:05
  # @param effect_id A dogma effect ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetDogmaEffectsEffectIdOk]
  describe 'get_dogma_effects_effect_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
