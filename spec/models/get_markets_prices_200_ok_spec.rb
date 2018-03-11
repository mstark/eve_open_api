=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EVEOpenAPI::GetMarketsPrices200Ok
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetMarketsPrices200Ok' do
  before do
    # run before each test
    @instance = EVEOpenAPI::GetMarketsPrices200Ok.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetMarketsPrices200Ok' do
    it 'should create an instance of GetMarketsPrices200Ok' do
      expect(@instance).to be_instance_of(EVEOpenAPI::GetMarketsPrices200Ok)
    end
  end
  describe 'test attribute "type_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "average_price"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "adjusted_price"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

