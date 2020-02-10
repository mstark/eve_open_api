=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 1.2.9

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module EVEOpenAPI
  # 200 ok object
  class GetCorporationsCorporationIdStructures200Ok
    # ID of the corporation that owns the structure
    attr_accessor :corporation_id

    # Date on which the structure will run out of fuel
    attr_accessor :fuel_expires

    # The date and time when the structure's newly requested reinforcement times (e.g. next_reinforce_hour and next_reinforce_day) will take effect
    attr_accessor :next_reinforce_apply

    # The requested change to reinforce_hour that will take effect at the time shown by next_reinforce_apply
    attr_accessor :next_reinforce_hour

    # The requested change to reinforce_weekday that will take effect at the time shown by next_reinforce_apply
    attr_accessor :next_reinforce_weekday

    # The id of the ACL profile for this citadel
    attr_accessor :profile_id

    # The hour of day that determines the four hour window when the structure will randomly exit its reinforcement periods and become vulnerable to attack against its armor and/or hull. The structure will become vulnerable at a random time that is +/- 2 hours centered on the value of this property
    attr_accessor :reinforce_hour

    # The day of the week when the structure exits its final reinforcement period and becomes vulnerable to attack against its hull. Monday is 0 and Sunday is 6
    attr_accessor :reinforce_weekday

    # Contains a list of service upgrades, and their state
    attr_accessor :services

    # state string
    attr_accessor :state

    # Date at which the structure will move to it's next state
    attr_accessor :state_timer_end

    # Date at which the structure entered it's current state
    attr_accessor :state_timer_start

    # The Item ID of the structure
    attr_accessor :structure_id

    # The solar system the structure is in
    attr_accessor :system_id

    # The type id of the structure
    attr_accessor :type_id

    # Date at which the structure will unanchor
    attr_accessor :unanchors_at

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
        :'corporation_id' => :'corporation_id',
        :'fuel_expires' => :'fuel_expires',
        :'next_reinforce_apply' => :'next_reinforce_apply',
        :'next_reinforce_hour' => :'next_reinforce_hour',
        :'next_reinforce_weekday' => :'next_reinforce_weekday',
        :'profile_id' => :'profile_id',
        :'reinforce_hour' => :'reinforce_hour',
        :'reinforce_weekday' => :'reinforce_weekday',
        :'services' => :'services',
        :'state' => :'state',
        :'state_timer_end' => :'state_timer_end',
        :'state_timer_start' => :'state_timer_start',
        :'structure_id' => :'structure_id',
        :'system_id' => :'system_id',
        :'type_id' => :'type_id',
        :'unanchors_at' => :'unanchors_at'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'corporation_id' => :'Integer',
        :'fuel_expires' => :'DateTime',
        :'next_reinforce_apply' => :'DateTime',
        :'next_reinforce_hour' => :'Integer',
        :'next_reinforce_weekday' => :'Integer',
        :'profile_id' => :'Integer',
        :'reinforce_hour' => :'Integer',
        :'reinforce_weekday' => :'Integer',
        :'services' => :'Array<GetCorporationsCorporationIdStructuresService>',
        :'state' => :'String',
        :'state_timer_end' => :'DateTime',
        :'state_timer_start' => :'DateTime',
        :'structure_id' => :'Integer',
        :'system_id' => :'Integer',
        :'type_id' => :'Integer',
        :'unanchors_at' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'corporation_id')
        self.corporation_id = attributes[:'corporation_id']
      end

      if attributes.has_key?(:'fuel_expires')
        self.fuel_expires = attributes[:'fuel_expires']
      end

      if attributes.has_key?(:'next_reinforce_apply')
        self.next_reinforce_apply = attributes[:'next_reinforce_apply']
      end

      if attributes.has_key?(:'next_reinforce_hour')
        self.next_reinforce_hour = attributes[:'next_reinforce_hour']
      end

      if attributes.has_key?(:'next_reinforce_weekday')
        self.next_reinforce_weekday = attributes[:'next_reinforce_weekday']
      end

      if attributes.has_key?(:'profile_id')
        self.profile_id = attributes[:'profile_id']
      end

      if attributes.has_key?(:'reinforce_hour')
        self.reinforce_hour = attributes[:'reinforce_hour']
      end

      if attributes.has_key?(:'reinforce_weekday')
        self.reinforce_weekday = attributes[:'reinforce_weekday']
      end

      if attributes.has_key?(:'services')
        if (value = attributes[:'services']).is_a?(Array)
          self.services = value
        end
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'state_timer_end')
        self.state_timer_end = attributes[:'state_timer_end']
      end

      if attributes.has_key?(:'state_timer_start')
        self.state_timer_start = attributes[:'state_timer_start']
      end

      if attributes.has_key?(:'structure_id')
        self.structure_id = attributes[:'structure_id']
      end

      if attributes.has_key?(:'system_id')
        self.system_id = attributes[:'system_id']
      end

      if attributes.has_key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end

      if attributes.has_key?(:'unanchors_at')
        self.unanchors_at = attributes[:'unanchors_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @corporation_id.nil?
        invalid_properties.push('invalid value for "corporation_id", corporation_id cannot be nil.')
      end

      if !@next_reinforce_hour.nil? && @next_reinforce_hour > 23
        invalid_properties.push('invalid value for "next_reinforce_hour", must be smaller than or equal to 23.')
      end

      if !@next_reinforce_hour.nil? && @next_reinforce_hour < 0
        invalid_properties.push('invalid value for "next_reinforce_hour", must be greater than or equal to 0.')
      end

      if !@next_reinforce_weekday.nil? && @next_reinforce_weekday > 6
        invalid_properties.push('invalid value for "next_reinforce_weekday", must be smaller than or equal to 6.')
      end

      if !@next_reinforce_weekday.nil? && @next_reinforce_weekday < 0
        invalid_properties.push('invalid value for "next_reinforce_weekday", must be greater than or equal to 0.')
      end

      if @profile_id.nil?
        invalid_properties.push('invalid value for "profile_id", profile_id cannot be nil.')
      end

      if @reinforce_hour.nil?
        invalid_properties.push('invalid value for "reinforce_hour", reinforce_hour cannot be nil.')
      end

      if @reinforce_hour > 23
        invalid_properties.push('invalid value for "reinforce_hour", must be smaller than or equal to 23.')
      end

      if @reinforce_hour < 0
        invalid_properties.push('invalid value for "reinforce_hour", must be greater than or equal to 0.')
      end

      if !@reinforce_weekday.nil? && @reinforce_weekday > 6
        invalid_properties.push('invalid value for "reinforce_weekday", must be smaller than or equal to 6.')
      end

      if !@reinforce_weekday.nil? && @reinforce_weekday < 0
        invalid_properties.push('invalid value for "reinforce_weekday", must be greater than or equal to 0.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @structure_id.nil?
        invalid_properties.push('invalid value for "structure_id", structure_id cannot be nil.')
      end

      if @system_id.nil?
        invalid_properties.push('invalid value for "system_id", system_id cannot be nil.')
      end

      if @type_id.nil?
        invalid_properties.push('invalid value for "type_id", type_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @corporation_id.nil?
      return false if !@next_reinforce_hour.nil? && @next_reinforce_hour > 23
      return false if !@next_reinforce_hour.nil? && @next_reinforce_hour < 0
      return false if !@next_reinforce_weekday.nil? && @next_reinforce_weekday > 6
      return false if !@next_reinforce_weekday.nil? && @next_reinforce_weekday < 0
      return false if @profile_id.nil?
      return false if @reinforce_hour.nil?
      return false if @reinforce_hour > 23
      return false if @reinforce_hour < 0
      return false if !@reinforce_weekday.nil? && @reinforce_weekday > 6
      return false if !@reinforce_weekday.nil? && @reinforce_weekday < 0
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ['anchor_vulnerable', 'anchoring', 'armor_reinforce', 'armor_vulnerable', 'deploy_vulnerable', 'fitting_invulnerable', 'hull_reinforce', 'hull_vulnerable', 'online_deprecated', 'onlining_vulnerable', 'shield_vulnerable', 'unanchored', 'unknown'])
      return false unless state_validator.valid?(@state)
      return false if @structure_id.nil?
      return false if @system_id.nil?
      return false if @type_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] next_reinforce_hour Value to be assigned
    def next_reinforce_hour=(next_reinforce_hour)
      if !next_reinforce_hour.nil? && next_reinforce_hour > 23
        fail ArgumentError, 'invalid value for "next_reinforce_hour", must be smaller than or equal to 23.'
      end

      if !next_reinforce_hour.nil? && next_reinforce_hour < 0
        fail ArgumentError, 'invalid value for "next_reinforce_hour", must be greater than or equal to 0.'
      end

      @next_reinforce_hour = next_reinforce_hour
    end

    # Custom attribute writer method with validation
    # @param [Object] next_reinforce_weekday Value to be assigned
    def next_reinforce_weekday=(next_reinforce_weekday)
      if !next_reinforce_weekday.nil? && next_reinforce_weekday > 6
        fail ArgumentError, 'invalid value for "next_reinforce_weekday", must be smaller than or equal to 6.'
      end

      if !next_reinforce_weekday.nil? && next_reinforce_weekday < 0
        fail ArgumentError, 'invalid value for "next_reinforce_weekday", must be greater than or equal to 0.'
      end

      @next_reinforce_weekday = next_reinforce_weekday
    end

    # Custom attribute writer method with validation
    # @param [Object] reinforce_hour Value to be assigned
    def reinforce_hour=(reinforce_hour)
      if reinforce_hour.nil?
        fail ArgumentError, 'reinforce_hour cannot be nil'
      end

      if reinforce_hour > 23
        fail ArgumentError, 'invalid value for "reinforce_hour", must be smaller than or equal to 23.'
      end

      if reinforce_hour < 0
        fail ArgumentError, 'invalid value for "reinforce_hour", must be greater than or equal to 0.'
      end

      @reinforce_hour = reinforce_hour
    end

    # Custom attribute writer method with validation
    # @param [Object] reinforce_weekday Value to be assigned
    def reinforce_weekday=(reinforce_weekday)
      if !reinforce_weekday.nil? && reinforce_weekday > 6
        fail ArgumentError, 'invalid value for "reinforce_weekday", must be smaller than or equal to 6.'
      end

      if !reinforce_weekday.nil? && reinforce_weekday < 0
        fail ArgumentError, 'invalid value for "reinforce_weekday", must be greater than or equal to 0.'
      end

      @reinforce_weekday = reinforce_weekday
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ['anchor_vulnerable', 'anchoring', 'armor_reinforce', 'armor_vulnerable', 'deploy_vulnerable', 'fitting_invulnerable', 'hull_reinforce', 'hull_vulnerable', 'online_deprecated', 'onlining_vulnerable', 'shield_vulnerable', 'unanchored', 'unknown'])
      unless validator.valid?(state)
        fail ArgumentError, 'invalid value for "state", must be one of #{validator.allowable_values}.'
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          corporation_id == o.corporation_id &&
          fuel_expires == o.fuel_expires &&
          next_reinforce_apply == o.next_reinforce_apply &&
          next_reinforce_hour == o.next_reinforce_hour &&
          next_reinforce_weekday == o.next_reinforce_weekday &&
          profile_id == o.profile_id &&
          reinforce_hour == o.reinforce_hour &&
          reinforce_weekday == o.reinforce_weekday &&
          services == o.services &&
          state == o.state &&
          state_timer_end == o.state_timer_end &&
          state_timer_start == o.state_timer_start &&
          structure_id == o.structure_id &&
          system_id == o.system_id &&
          type_id == o.type_id &&
          unanchors_at == o.unanchors_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [corporation_id, fuel_expires, next_reinforce_apply, next_reinforce_hour, next_reinforce_weekday, profile_id, reinforce_hour, reinforce_weekday, services, state, state_timer_end, state_timer_start, structure_id, system_id, type_id, unanchors_at].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        value.compact.map { |v| _to_hash(v) }
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
