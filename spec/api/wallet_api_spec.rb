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

# Unit tests for EVEOpenAPI::WalletApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WalletApi' do
  before do
    # run before each test
    @instance = EVEOpenAPI::WalletApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WalletApi' do
    it 'should create an instact of WalletApi' do
      expect(@instance).to be_instance_of(EVEOpenAPI::WalletApi)
    end
  end

  # unit tests for get_characters_character_id_wallets
  # List wallets and balances
  # List your wallets and their balances. Characters typically have only one wallet, with wallet_id 1000 being the master wallet.  ---  Alternate route: &#x60;/v1/characters/{character_id}/wallets/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/wallets/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/wallets/&#x60;   ---  This route is cached for up to 120 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [Array<GetCharactersCharacterIdWallets200Ok>]
  describe 'get_characters_character_id_wallets test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_wallets_journal
  # Get character wallet journal
  # Returns the most recent 50 entries for the characters wallet journal. Optionally, takes an argument with a reference ID, and returns the prior 50 entries from the journal.  ---  Alternate route: &#x60;/v1/characters/{character_id}/wallets/journal/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/wallets/journal/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/wallets/journal/&#x60; 
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :last_seen_id A journal reference ID to paginate from
  # @option opts [String] :datasource The server name you would like data from
  # @return [Array<GetCharactersCharacterIdWalletsJournal200Ok>]
  describe 'get_characters_character_id_wallets_journal test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_wallets_transactions
  # Get wallet transactions
  # Gets the 50 most recent transactions in a characters wallet. Optionally, takes an argument with a transaction ID, and returns the prior 50 transactions  ---  Alternate route: &#x60;/v1/characters/{character_id}/wallets/transactions/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/wallets/transactions/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/wallets/transactions/&#x60; 
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [Array<GetCharactersCharacterIdWalletsTransactions200Ok>]
  describe 'get_characters_character_id_wallets_transactions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_corporations_corporation_id_wallets
  # Dummy Endpoint, Please Ignore
  # Dummy  ---  Alternate route: &#x60;/v1/corporations/{corporation_id}/wallets/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/wallets/&#x60;  Alternate route: &#x60;/dev/corporations/{corporation_id}/wallets/&#x60; 
  # @param corporation_id An EVE corporation ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [nil]
  describe 'get_corporations_corporation_id_wallets test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_corporations_corporation_id_wallets_wallet_id_journal
  # Dummy Endpoint, Please Ignore
  # Dummy  ---  Alternate route: &#x60;/v1/corporations/{corporation_id}/wallets/{wallet_id}/journal/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/wallets/{wallet_id}/journal/&#x60;  Alternate route: &#x60;/dev/corporations/{corporation_id}/wallets/{wallet_id}/journal/&#x60; 
  # @param corporation_id An EVE corporation ID
  # @param wallet_id Wallet ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [nil]
  describe 'get_corporations_corporation_id_wallets_wallet_id_journal test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_corporations_corporation_id_wallets_wallet_id_transactions
  # Dummy Endpoint, Please Ignore
  # Dummy  ---  Alternate route: &#x60;/v1/corporations/{corporation_id}/wallets/{wallet_id}/transactions/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/wallets/{wallet_id}/transactions/&#x60;  Alternate route: &#x60;/dev/corporations/{corporation_id}/wallets/{wallet_id}/transactions/&#x60; 
  # @param corporation_id An EVE corporation ID
  # @param wallet_id Wallet ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @return [nil]
  describe 'get_corporations_corporation_id_wallets_wallet_id_transactions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
