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

# Unit tests for EVEOpenAPI::GetCharactersCharacterIdPlanetsPlanetIdLink
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdPlanetsPlanetIdLink' do
  before do
    # run before each test
    @instance = EVEOpenAPI::GetCharactersCharacterIdPlanetsPlanetIdLink.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdPlanetsPlanetIdLink' do
    it 'should create an instance of GetCharactersCharacterIdPlanetsPlanetIdLink' do
      expect(@instance).to be_instance_of(EVEOpenAPI::GetCharactersCharacterIdPlanetsPlanetIdLink)
    end
  end
  describe 'test attribute "destination_pin_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "link_level"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "source_pin_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

