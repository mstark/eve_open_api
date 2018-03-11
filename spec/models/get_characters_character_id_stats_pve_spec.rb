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

# Unit tests for EVEOpenAPI::GetCharactersCharacterIdStatsPve
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdStatsPve' do
  before do
    # run before each test
    @instance = EVEOpenAPI::GetCharactersCharacterIdStatsPve.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdStatsPve' do
    it 'should create an instance of GetCharactersCharacterIdStatsPve' do
      expect(@instance).to be_instance_of(EVEOpenAPI::GetCharactersCharacterIdStatsPve)
    end
  end
  describe 'test attribute "dungeons_completed_agent"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "dungeons_completed_distribution"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "missions_succeeded"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "missions_succeeded_epic_arc"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

