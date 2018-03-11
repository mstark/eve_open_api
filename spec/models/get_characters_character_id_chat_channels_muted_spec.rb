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

# Unit tests for EVEOpenAPI::GetCharactersCharacterIdChatChannelsMuted
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdChatChannelsMuted' do
  before do
    # run before each test
    @instance = EVEOpenAPI::GetCharactersCharacterIdChatChannelsMuted.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdChatChannelsMuted' do
    it 'should create an instance of GetCharactersCharacterIdChatChannelsMuted' do
      expect(@instance).to be_instance_of(EVEOpenAPI::GetCharactersCharacterIdChatChannelsMuted)
    end
  end
  describe 'test attribute "accessor_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "accessor_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["character", "corporation", "alliance"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.accessor_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "reason"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_at"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

