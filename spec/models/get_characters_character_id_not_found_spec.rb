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

# Unit tests for EVEOpenAPI::GetCharactersCharacterIdNotFound
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdNotFound' do
  before do
    # run before each test
    @instance = EVEOpenAPI::GetCharactersCharacterIdNotFound.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdNotFound' do
    it 'should create an instance of GetCharactersCharacterIdNotFound' do
      expect(@instance).to be_instance_of(EVEOpenAPI::GetCharactersCharacterIdNotFound)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

