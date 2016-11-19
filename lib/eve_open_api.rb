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

# Common files
require 'eve_open_api/api_client'
require 'eve_open_api/api_error'
require 'eve_open_api/version'
require 'eve_open_api/configuration'

# Models
require 'eve_open_api/models/characterscharacter_idmail_recipients'
require 'eve_open_api/models/characterscharacter_idmail_recipients_1'
require 'eve_open_api/models/delete_characters_character_id_mail_mail_id_forbidden'
require 'eve_open_api/models/delete_characters_character_id_mail_mail_id_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_calendar_200_ok'
require 'eve_open_api/models/get_characters_character_id_calendar_event_id_forbidden'
require 'eve_open_api/models/get_characters_character_id_calendar_event_id_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_calendar_event_id_ok'
require 'eve_open_api/models/get_characters_character_id_calendar_forbidden'
require 'eve_open_api/models/get_characters_character_id_calendar_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_clones_forbidden'
require 'eve_open_api/models/get_characters_character_id_clones_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_clones_ok'
require 'eve_open_api/models/get_characters_character_id_clones_ok_home_location'
require 'eve_open_api/models/get_characters_character_id_clones_ok_jump_clones'
require 'eve_open_api/models/get_characters_character_id_corporationhistory_200_ok'
require 'eve_open_api/models/get_characters_character_id_corporationhistory_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_location_forbidden'
require 'eve_open_api/models/get_characters_character_id_location_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_location_ok'
require 'eve_open_api/models/get_characters_character_id_mail_200_ok'
require 'eve_open_api/models/get_characters_character_id_mail_forbidden'
require 'eve_open_api/models/get_characters_character_id_mail_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_mail_labels_forbidden'
require 'eve_open_api/models/get_characters_character_id_mail_labels_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_mail_labels_ok'
require 'eve_open_api/models/get_characters_character_id_mail_labels_ok_labels'
require 'eve_open_api/models/get_characters_character_id_mail_lists_200_ok'
require 'eve_open_api/models/get_characters_character_id_mail_lists_forbidden'
require 'eve_open_api/models/get_characters_character_id_mail_lists_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_mail_mail_id_forbidden'
require 'eve_open_api/models/get_characters_character_id_mail_mail_id_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_mail_mail_id_not_found'
require 'eve_open_api/models/get_characters_character_id_mail_mail_id_ok'
require 'eve_open_api/models/get_characters_character_id_mail_mail_id_ok_recipients'
require 'eve_open_api/models/get_characters_character_id_ok'
require 'eve_open_api/models/get_characters_character_id_portrait_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_portrait_not_found'
require 'eve_open_api/models/get_characters_character_id_portrait_ok'
require 'eve_open_api/models/get_characters_character_id_ship_forbidden'
require 'eve_open_api/models/get_characters_character_id_ship_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_ship_ok'
require 'eve_open_api/models/get_characters_character_id_skillqueue_200_ok'
require 'eve_open_api/models/get_characters_character_id_skillqueue_forbidden'
require 'eve_open_api/models/get_characters_character_id_skillqueue_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_skills_forbidden'
require 'eve_open_api/models/get_characters_character_id_skills_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_skills_ok'
require 'eve_open_api/models/get_characters_character_id_skills_ok_skills'
require 'eve_open_api/models/get_characters_character_id_unprocessable_entity'
require 'eve_open_api/models/get_characters_character_id_wallets_200_ok'
require 'eve_open_api/models/get_characters_character_id_wallets_forbidden'
require 'eve_open_api/models/get_characters_character_id_wallets_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_wallets_journal_200_ok'
require 'eve_open_api/models/get_characters_character_id_wallets_journal_forbidden'
require 'eve_open_api/models/get_characters_character_id_wallets_journal_internal_server_error'
require 'eve_open_api/models/get_characters_character_id_wallets_transactions_200_ok'
require 'eve_open_api/models/get_characters_character_id_wallets_transactions_forbidden'
require 'eve_open_api/models/get_characters_character_id_wallets_transactions_internal_server_error'
require 'eve_open_api/models/get_characters_names_200_ok'
require 'eve_open_api/models/get_characters_names_internal_server_error'
require 'eve_open_api/models/get_corporations_corporation_id_wallets_internal_server_error'
require 'eve_open_api/models/get_corporations_corporation_id_wallets_wallet_id_journal_internal_server_error'
require 'eve_open_api/models/get_corporations_corporation_id_wallets_wallet_id_transactions_internal_server_error'
require 'eve_open_api/models/get_markets_prices_200_ok'
require 'eve_open_api/models/get_markets_prices_internal_server_error'
require 'eve_open_api/models/get_markets_region_id_history_200_ok'
require 'eve_open_api/models/get_markets_region_id_history_internal_server_error'
require 'eve_open_api/models/get_markets_region_id_history_unprocessable_entity'
require 'eve_open_api/models/get_markets_region_id_orders_200_ok'
require 'eve_open_api/models/get_markets_region_id_orders_internal_server_error'
require 'eve_open_api/models/get_markets_region_id_orders_unprocessable_entity'
require 'eve_open_api/models/get_universe_planets_planet_id_internal_server_error'
require 'eve_open_api/models/get_universe_planets_planet_id_ok'
require 'eve_open_api/models/get_universe_stations_station_id_internal_server_error'
require 'eve_open_api/models/get_universe_stations_station_id_ok'
require 'eve_open_api/models/get_universe_structures_internal_server_error'
require 'eve_open_api/models/get_universe_structures_structure_id_forbidden'
require 'eve_open_api/models/get_universe_structures_structure_id_internal_server_error'
require 'eve_open_api/models/get_universe_structures_structure_id_not_found'
require 'eve_open_api/models/get_universe_structures_structure_id_ok'
require 'eve_open_api/models/get_universe_structures_structure_id_ok_position'
require 'eve_open_api/models/get_universe_systems_system_id_internal_server_error'
require 'eve_open_api/models/get_universe_systems_system_id_not_found'
require 'eve_open_api/models/get_universe_systems_system_id_ok'
require 'eve_open_api/models/get_universe_types_type_id_internal_server_error'
require 'eve_open_api/models/get_universe_types_type_id_not_found'
require 'eve_open_api/models/get_universe_types_type_id_ok'
require 'eve_open_api/models/post_characters_character_id_cspa_characters'
require 'eve_open_api/models/post_characters_character_id_cspa_created'
require 'eve_open_api/models/post_characters_character_id_cspa_forbidden'
require 'eve_open_api/models/post_characters_character_id_cspa_internal_server_error'
require 'eve_open_api/models/post_characters_character_id_mail_bad_request'
require 'eve_open_api/models/post_characters_character_id_mail_forbidden'
require 'eve_open_api/models/post_characters_character_id_mail_internal_server_error'
require 'eve_open_api/models/post_characters_character_id_mail_labels_forbidden'
require 'eve_open_api/models/post_characters_character_id_mail_labels_internal_server_error'
require 'eve_open_api/models/post_characters_character_id_mail_labels_label'
require 'eve_open_api/models/post_characters_character_id_mail_mail'
require 'eve_open_api/models/post_universe_names_200_ok'
require 'eve_open_api/models/post_universe_names_ids'
require 'eve_open_api/models/post_universe_names_internal_server_error'
require 'eve_open_api/models/post_universe_names_not_found'
require 'eve_open_api/models/put_characters_character_id_calendar_event_id_forbidden'
require 'eve_open_api/models/put_characters_character_id_calendar_event_id_internal_server_error'
require 'eve_open_api/models/put_characters_character_id_calendar_event_id_response'
require 'eve_open_api/models/put_characters_character_id_mail_mail_id_bad_request'
require 'eve_open_api/models/put_characters_character_id_mail_mail_id_contents'
require 'eve_open_api/models/put_characters_character_id_mail_mail_id_forbidden'
require 'eve_open_api/models/put_characters_character_id_mail_mail_id_internal_server_error'

# APIs
require 'eve_open_api/api/calendar_api'
require 'eve_open_api/api/character_api'
require 'eve_open_api/api/clones_api'
require 'eve_open_api/api/dummy_api'
require 'eve_open_api/api/live_api'
require 'eve_open_api/api/location_api'
require 'eve_open_api/api/mail_api'
require 'eve_open_api/api/market_api'
require 'eve_open_api/api/skills_api'
require 'eve_open_api/api/universe_api'
require 'eve_open_api/api/wallet_api'

module EveOpenApi
  class << self
    # Customize default settings for the SDK using block.
    #   EveOpenApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
