=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module EVEOpenAPI
  # 200 ok object
  class GetCharactersCharacterIdNotifications200Ok
    # notification_id integer
    attr_accessor :notification_id

    # sender_id integer
    attr_accessor :sender_id

    # sender_type string
    attr_accessor :sender_type

    # timestamp string
    attr_accessor :timestamp

    # is_read boolean
    attr_accessor :is_read

    # text string
    attr_accessor :text

    # type string
    attr_accessor :type

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'notification_id' => :'notification_id',
        :'sender_id' => :'sender_id',
        :'sender_type' => :'sender_type',
        :'timestamp' => :'timestamp',
        :'is_read' => :'is_read',
        :'text' => :'text',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'notification_id' => :'Integer',
        :'sender_id' => :'Integer',
        :'sender_type' => :'String',
        :'timestamp' => :'DateTime',
        :'is_read' => :'BOOLEAN',
        :'text' => :'String',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'notification_id')
        self.notification_id = attributes[:'notification_id']
      end

      if attributes.has_key?(:'sender_id')
        self.sender_id = attributes[:'sender_id']
      end

      if attributes.has_key?(:'sender_type')
        self.sender_type = attributes[:'sender_type']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'is_read')
        self.is_read = attributes[:'is_read']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @notification_id.nil?
        invalid_properties.push("invalid value for 'notification_id', notification_id cannot be nil.")
      end

      if @sender_id.nil?
        invalid_properties.push("invalid value for 'sender_id', sender_id cannot be nil.")
      end

      if @sender_type.nil?
        invalid_properties.push("invalid value for 'sender_type', sender_type cannot be nil.")
      end

      if @timestamp.nil?
        invalid_properties.push("invalid value for 'timestamp', timestamp cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @notification_id.nil?
      return false if @sender_id.nil?
      return false if @sender_type.nil?
      sender_type_validator = EnumAttributeValidator.new('String', ["character", "corporation", "alliance", "faction", "other"])
      return false unless sender_type_validator.valid?(@sender_type)
      return false if @timestamp.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["AcceptedAlly", "AcceptedSurrender", "AllAnchoringMsg", "AllMaintenanceBillMsg", "AllStrucInvulnerableMsg", "AllStructVulnerableMsg", "AllWarCorpJoinedAllianceMsg", "AllWarDeclaredMsg", "AllWarInvalidatedMsg", "AllWarRetractedMsg", "AllWarSurrenderMsg", "AllianceCapitalChanged", "AllyContractCancelled", "AllyJoinedWarAggressorMsg", "AllyJoinedWarAllyMsg", "AllyJoinedWarDefenderMsg", "BattlePunishFriendlyFire", "BillOutOfMoneyMsg", "BillPaidCorpAllMsg", "BountyClaimMsg", "BountyESSShared", "BountyESSTaken", "BountyPlacedAlliance", "BountyPlacedChar", "BountyPlacedCorp", "BountyYourBountyClaimed", "BuddyConnectContactAdd", "CharAppAcceptMsg", "CharAppRejectMsg", "CharAppWithdrawMsg", "CharLeftCorpMsg", "CharMedalMsg", "CharTerminationMsg", "CloneActivationMsg", "CloneActivationMsg2", "CloneMovedMsg", "CloneRevokedMsg1", "CloneRevokedMsg2", "ContactAdd", "ContactEdit", "ContainerPasswordMsg", "CorpAllBillMsg", "CorpAppAcceptMsg", "CorpAppInvitedMsg", "CorpAppNewMsg", "CorpAppRejectCustomMsg", "CorpAppRejectMsg", "CorpDividendMsg", "CorpFriendlyFireDisableTimerCompleted", "CorpFriendlyFireDisableTimerStarted", "CorpFriendlyFireEnableTimerCompleted", "CorpFriendlyFireEnableTimerStarted", "CorpKicked", "CorpLiquidationMsg", "CorpNewCEOMsg", "CorpNewsMsg", "CorpOfficeExpirationMsg", "CorpStructLostMsg", "CorpTaxChangeMsg", "CorpVoteCEORevokedMsg", "CorpVoteMsg", "CorpWarDeclaredMsg", "CorpWarFightingLegalMsg", "CorpWarInvalidatedMsg", "CorpWarRetractedMsg", "CorpWarSurrenderMsg", "CustomsMsg", "DeclareWar", "DistrictAttacked", "DustAppAcceptedMsg", "EntosisCaptureStarted", "FWAllianceKickMsg", "FWAllianceWarningMsg", "FWCharKickMsg", "FWCharRankGainMsg", "FWCharRankLossMsg", "FWCharWarningMsg", "FWCorpJoinMsg", "FWCorpKickMsg", "FWCorpLeaveMsg", "FWCorpWarningMsg", "FacWarCorpJoinRequestMsg", "FacWarCorpJoinWithdrawMsg", "FacWarCorpLeaveRequestMsg", "FacWarCorpLeaveWithdrawMsg", "FacWarLPDisqualifiedEvent", "FacWarLPDisqualifiedKill", "FacWarLPPayoutEvent", "FacWarLPPayoutKill", "GameTimeAdded", "GameTimeReceived", "GameTimeSent", "GiftReceived", "IHubDestroyedByBillFailure", "IncursionCompletedMsg", "IndustryTeamAuctionLost", "IndustryTeamAuctionWon", "InfrastructureHubBillAboutToExpire", "InsuranceExpirationMsg", "InsuranceFirstShipMsg", "InsuranceInvalidatedMsg", "InsuranceIssuedMsg", "InsurancePayoutMsg", "JumpCloneDeletedMsg1", "JumpCloneDeletedMsg2", "KillReportFinalBlow", "KillReportVictim", "KillRightAvailable", "KillRightAvailableOpen", "KillRightEarned", "KillRightUnavailable", "KillRightUnavailableOpen", "KillRightUsed", "LocateCharMsg", "MadeWarMutual", "MercOfferedNegotiationMsg", "MissionOfferExpirationMsg", "MissionTimeoutMsg", "MoonminingAutomaticFracture", "MoonminingExtractionCancelled", "MoonminingExtractionFinished", "MoonminingLaserFired", "NPCStandingsGained", "NPCStandingsLost", "OfferedSurrender", "OfferedToAlly", "OldLscMessages", "OperationFinished", "OrbitalAttacked", "OrbitalReinforced", "OwnershipTransferred", "ReimbursementMsg", "ResearchMissionAvailableMsg", "RetractsWar", "SeasonalChallengeCompleted", "SovAllClaimAquiredMsg", "SovAllClaimLostMsg", "SovCommandNodeEventStarted", "SovCorpBillLateMsg", "SovCorpClaimFailMsg", "SovDisruptorMsg", "SovStationEnteredFreeport", "SovStructureDestroyed", "SovStructureReinforced", "SovStructureSelfDestructCancel", "SovStructureSelfDestructFinished", "SovStructureSelfDestructRequested", "SovereigntyIHDamageMsg", "SovereigntySBUDamageMsg", "SovereigntyTCUDamageMsg", "StationAggressionMsg1", "StationAggressionMsg2", "StationConquerMsg", "StationServiceDisabled", "StationServiceEnabled", "StationStateChangeMsg", "StoryLineMissionAvailableMsg", "StructureAnchoring", "StructureCourierContractChanged", "StructureDestroyed", "StructureFuelAlert", "StructureItemsDelivered", "StructureLostArmor", "StructureLostShields", "StructureOnline", "StructureServicesOffline", "StructureUnanchoring", "StructureUnderAttack", "TowerAlertMsg", "TowerResourceAlertMsg", "TransactionReversalMsg", "TutorialMsg", "WarAllyOfferDeclinedMsg", "WarSurrenderDeclinedMsg", "WarSurrenderOfferMsg", "notificationTypeMoonminingExtractionStarted"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_type Object to be assigned
    def sender_type=(sender_type)
      validator = EnumAttributeValidator.new('String', ["character", "corporation", "alliance", "faction", "other"])
      unless validator.valid?(sender_type)
        fail ArgumentError, "invalid value for 'sender_type', must be one of #{validator.allowable_values}."
      end
      @sender_type = sender_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["AcceptedAlly", "AcceptedSurrender", "AllAnchoringMsg", "AllMaintenanceBillMsg", "AllStrucInvulnerableMsg", "AllStructVulnerableMsg", "AllWarCorpJoinedAllianceMsg", "AllWarDeclaredMsg", "AllWarInvalidatedMsg", "AllWarRetractedMsg", "AllWarSurrenderMsg", "AllianceCapitalChanged", "AllyContractCancelled", "AllyJoinedWarAggressorMsg", "AllyJoinedWarAllyMsg", "AllyJoinedWarDefenderMsg", "BattlePunishFriendlyFire", "BillOutOfMoneyMsg", "BillPaidCorpAllMsg", "BountyClaimMsg", "BountyESSShared", "BountyESSTaken", "BountyPlacedAlliance", "BountyPlacedChar", "BountyPlacedCorp", "BountyYourBountyClaimed", "BuddyConnectContactAdd", "CharAppAcceptMsg", "CharAppRejectMsg", "CharAppWithdrawMsg", "CharLeftCorpMsg", "CharMedalMsg", "CharTerminationMsg", "CloneActivationMsg", "CloneActivationMsg2", "CloneMovedMsg", "CloneRevokedMsg1", "CloneRevokedMsg2", "ContactAdd", "ContactEdit", "ContainerPasswordMsg", "CorpAllBillMsg", "CorpAppAcceptMsg", "CorpAppInvitedMsg", "CorpAppNewMsg", "CorpAppRejectCustomMsg", "CorpAppRejectMsg", "CorpDividendMsg", "CorpFriendlyFireDisableTimerCompleted", "CorpFriendlyFireDisableTimerStarted", "CorpFriendlyFireEnableTimerCompleted", "CorpFriendlyFireEnableTimerStarted", "CorpKicked", "CorpLiquidationMsg", "CorpNewCEOMsg", "CorpNewsMsg", "CorpOfficeExpirationMsg", "CorpStructLostMsg", "CorpTaxChangeMsg", "CorpVoteCEORevokedMsg", "CorpVoteMsg", "CorpWarDeclaredMsg", "CorpWarFightingLegalMsg", "CorpWarInvalidatedMsg", "CorpWarRetractedMsg", "CorpWarSurrenderMsg", "CustomsMsg", "DeclareWar", "DistrictAttacked", "DustAppAcceptedMsg", "EntosisCaptureStarted", "FWAllianceKickMsg", "FWAllianceWarningMsg", "FWCharKickMsg", "FWCharRankGainMsg", "FWCharRankLossMsg", "FWCharWarningMsg", "FWCorpJoinMsg", "FWCorpKickMsg", "FWCorpLeaveMsg", "FWCorpWarningMsg", "FacWarCorpJoinRequestMsg", "FacWarCorpJoinWithdrawMsg", "FacWarCorpLeaveRequestMsg", "FacWarCorpLeaveWithdrawMsg", "FacWarLPDisqualifiedEvent", "FacWarLPDisqualifiedKill", "FacWarLPPayoutEvent", "FacWarLPPayoutKill", "GameTimeAdded", "GameTimeReceived", "GameTimeSent", "GiftReceived", "IHubDestroyedByBillFailure", "IncursionCompletedMsg", "IndustryTeamAuctionLost", "IndustryTeamAuctionWon", "InfrastructureHubBillAboutToExpire", "InsuranceExpirationMsg", "InsuranceFirstShipMsg", "InsuranceInvalidatedMsg", "InsuranceIssuedMsg", "InsurancePayoutMsg", "JumpCloneDeletedMsg1", "JumpCloneDeletedMsg2", "KillReportFinalBlow", "KillReportVictim", "KillRightAvailable", "KillRightAvailableOpen", "KillRightEarned", "KillRightUnavailable", "KillRightUnavailableOpen", "KillRightUsed", "LocateCharMsg", "MadeWarMutual", "MercOfferedNegotiationMsg", "MissionOfferExpirationMsg", "MissionTimeoutMsg", "MoonminingAutomaticFracture", "MoonminingExtractionCancelled", "MoonminingExtractionFinished", "MoonminingLaserFired", "NPCStandingsGained", "NPCStandingsLost", "OfferedSurrender", "OfferedToAlly", "OldLscMessages", "OperationFinished", "OrbitalAttacked", "OrbitalReinforced", "OwnershipTransferred", "ReimbursementMsg", "ResearchMissionAvailableMsg", "RetractsWar", "SeasonalChallengeCompleted", "SovAllClaimAquiredMsg", "SovAllClaimLostMsg", "SovCommandNodeEventStarted", "SovCorpBillLateMsg", "SovCorpClaimFailMsg", "SovDisruptorMsg", "SovStationEnteredFreeport", "SovStructureDestroyed", "SovStructureReinforced", "SovStructureSelfDestructCancel", "SovStructureSelfDestructFinished", "SovStructureSelfDestructRequested", "SovereigntyIHDamageMsg", "SovereigntySBUDamageMsg", "SovereigntyTCUDamageMsg", "StationAggressionMsg1", "StationAggressionMsg2", "StationConquerMsg", "StationServiceDisabled", "StationServiceEnabled", "StationStateChangeMsg", "StoryLineMissionAvailableMsg", "StructureAnchoring", "StructureCourierContractChanged", "StructureDestroyed", "StructureFuelAlert", "StructureItemsDelivered", "StructureLostArmor", "StructureLostShields", "StructureOnline", "StructureServicesOffline", "StructureUnanchoring", "StructureUnderAttack", "TowerAlertMsg", "TowerResourceAlertMsg", "TransactionReversalMsg", "TutorialMsg", "WarAllyOfferDeclinedMsg", "WarSurrenderDeclinedMsg", "WarSurrenderOfferMsg", "notificationTypeMoonminingExtractionStarted"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          notification_id == o.notification_id &&
          sender_id == o.sender_id &&
          sender_type == o.sender_type &&
          timestamp == o.timestamp &&
          is_read == o.is_read &&
          text == o.text &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [notification_id, sender_id, sender_type, timestamp, is_read, text, type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = EVEOpenAPI.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
