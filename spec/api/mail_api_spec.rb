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

# Unit tests for EveOpenApi::MailApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MailApi' do
  before do
    # run before each test
    @instance = EveOpenApi::MailApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MailApi' do
    it 'should create an instact of MailApi' do
      expect(@instance).to be_instance_of(EveOpenApi::MailApi)
    end
  end

  # unit tests for delete_characters_character_id_mail_mail_id
  # Delete a mail
  # Delete a mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/{mail_id}/&#x60; 
  # @param character_id An EVE character ID
  # @param mail_id An EVE mail ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [nil]
  describe 'delete_characters_character_id_mail_mail_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_mail
  # Return mail headers
  # Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/&#x60;   ---  This route is cached for up to 30 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :labels Fetch only mails that match one or more of the given labels
  # @option opts [Integer] :last_mail_id List only mail with an ID lower than the given ID, if present
  # @option opts [String] :datasource The server name you would like data from
  # @return [Array<GetCharactersCharacterIdMail200Ok>]
  describe 'get_characters_character_id_mail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_mail_labels
  # Get mail labels and unread counts
  # Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  Alternate route: &#x60;/v3/characters/{character_id}/mail/labels/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/labels/&#x60;   ---  This route is cached for up to 30 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [GetCharactersCharacterIdMailLabelsOk]
  describe 'get_characters_character_id_mail_labels test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_mail_lists
  # Return mailing list subscriptions
  # Return all mailing lists that the character is subscribed to   ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/lists/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/lists/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/lists/&#x60;   ---  This route is cached for up to 120 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [Array<GetCharactersCharacterIdMailLists200Ok>]
  describe 'get_characters_character_id_mail_lists test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_mail_mail_id
  # Return a mail
  # Return the contents of an EVE mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/{mail_id}/&#x60;   ---  This route is cached for up to 30 seconds
  # @param character_id An EVE character ID
  # @param mail_id An EVE mail ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [GetCharactersCharacterIdMailMailIdOk]
  describe 'get_characters_character_id_mail_mail_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_characters_character_id_mail
  # Send a new mail
  # Create and send a new mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/&#x60; 
  # @param character_id The sender&#39;s character ID
  # @param mail The mail to send
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [Integer]
  describe 'post_characters_character_id_mail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_characters_character_id_mail_labels
  # Create a mail label
  # Create a mail label  ---  Alternate route: &#x60;/v2/characters/{character_id}/mail/labels/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/labels/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/labels/&#x60; 
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [PostCharactersCharacterIdMailLabelsLabel] :label Label to create
  # @option opts [String] :datasource The server name you would like data from
  # @return [Integer]
  describe 'post_characters_character_id_mail_labels test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_characters_character_id_mail_mail_id
  # Update metadata about a mail
  # Update metadata about a mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/mail/{mail_id}/&#x60; 
  # @param character_id An EVE character ID
  # @param mail_id An EVE mail ID
  # @param contents Data used to update the mail
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [nil]
  describe 'put_characters_character_id_mail_mail_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end