=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.2.6.dev1

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EveOpenApi::PostCharactersCharacterIdMailLabelsLabel
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PostCharactersCharacterIdMailLabelsLabel' do
  before do
    # run before each test
    @instance = EveOpenApi::PostCharactersCharacterIdMailLabelsLabel.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PostCharactersCharacterIdMailLabelsLabel' do
    it 'should create an instact of PostCharactersCharacterIdMailLabelsLabel' do
      expect(@instance).to be_instance_of(EveOpenApi::PostCharactersCharacterIdMailLabelsLabel)
    end
  end
  describe 'test attribute "color"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["#ffffff", "#ffff01", "#ff6600", "#fe0000", "#9a0000", "#660066", "#0000fe", "#0099ff", "#01ffff", "#00ff33", "#349800", "#006634", "#666666", "#999999", "#e6e6e6", "#ffffcd", "#99ffff", "#ccff9a"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.color = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

