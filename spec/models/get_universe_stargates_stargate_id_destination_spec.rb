=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EVEOpenAPI::GetUniverseStargatesStargateIdDestination
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetUniverseStargatesStargateIdDestination' do
  before do
    # run before each test
    @instance = EVEOpenAPI::GetUniverseStargatesStargateIdDestination.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetUniverseStargatesStargateIdDestination' do
    it 'should create an instance of GetUniverseStargatesStargateIdDestination' do
      expect(@instance).to be_instance_of(EVEOpenAPI::GetUniverseStargatesStargateIdDestination)
    end
  end
  describe 'test attribute "stargate_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "system_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

