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

# Unit tests for EVEOpenAPI::CharacterscharacterIdmailRecipients1
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CharacterscharacterIdmailRecipients1' do
  before do
    # run before each test
    @instance = EVEOpenAPI::CharacterscharacterIdmailRecipients1.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CharacterscharacterIdmailRecipients1' do
    it 'should create an instact of CharacterscharacterIdmailRecipients1' do
      expect(@instance).to be_instance_of(EVEOpenAPI::CharacterscharacterIdmailRecipients1)
    end
  end
  describe 'test attribute "recipient_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "recipient_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["alliance", "character", "corporation", "mailing_list"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.recipient_type = value }.not_to raise_error
       #end
    end
  end

end

