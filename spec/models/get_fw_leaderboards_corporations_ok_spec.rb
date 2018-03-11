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

# Unit tests for EVEOpenAPI::GetFwLeaderboardsCorporationsOk
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetFwLeaderboardsCorporationsOk' do
  before do
    # run before each test
    @instance = EVEOpenAPI::GetFwLeaderboardsCorporationsOk.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetFwLeaderboardsCorporationsOk' do
    it 'should create an instance of GetFwLeaderboardsCorporationsOk' do
      expect(@instance).to be_instance_of(EVEOpenAPI::GetFwLeaderboardsCorporationsOk)
    end
  end
  describe 'test attribute "kills"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "victory_points"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

