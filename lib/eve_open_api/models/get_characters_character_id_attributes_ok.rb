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
  class GetCharactersCharacterIdAttributesOk
    # Neural remapping cooldown after a character uses remap accrued over time
    attr_accessor :accrued_remap_cooldown_date

    # Number of available bonus character neural remaps
    attr_accessor :bonus_remaps

    # charisma integer
    attr_accessor :charisma

    # intelligence integer
    attr_accessor :intelligence

    # Datetime of last neural remap, including usage of bonus remaps
    attr_accessor :last_remap_date

    # memory integer
    attr_accessor :memory

    # perception integer
    attr_accessor :perception

    # willpower integer
    attr_accessor :willpower

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accrued_remap_cooldown_date' => :'accrued_remap_cooldown_date',
        :'bonus_remaps' => :'bonus_remaps',
        :'charisma' => :'charisma',
        :'intelligence' => :'intelligence',
        :'last_remap_date' => :'last_remap_date',
        :'memory' => :'memory',
        :'perception' => :'perception',
        :'willpower' => :'willpower'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'accrued_remap_cooldown_date' => :'DateTime',
        :'bonus_remaps' => :'Integer',
        :'charisma' => :'Integer',
        :'intelligence' => :'Integer',
        :'last_remap_date' => :'DateTime',
        :'memory' => :'Integer',
        :'perception' => :'Integer',
        :'willpower' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accrued_remap_cooldown_date')
        self.accrued_remap_cooldown_date = attributes[:'accrued_remap_cooldown_date']
      end

      if attributes.has_key?(:'bonus_remaps')
        self.bonus_remaps = attributes[:'bonus_remaps']
      end

      if attributes.has_key?(:'charisma')
        self.charisma = attributes[:'charisma']
      end

      if attributes.has_key?(:'intelligence')
        self.intelligence = attributes[:'intelligence']
      end

      if attributes.has_key?(:'last_remap_date')
        self.last_remap_date = attributes[:'last_remap_date']
      end

      if attributes.has_key?(:'memory')
        self.memory = attributes[:'memory']
      end

      if attributes.has_key?(:'perception')
        self.perception = attributes[:'perception']
      end

      if attributes.has_key?(:'willpower')
        self.willpower = attributes[:'willpower']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @charisma.nil?
        invalid_properties.push('invalid value for "charisma", charisma cannot be nil.')
      end

      if @intelligence.nil?
        invalid_properties.push('invalid value for "intelligence", intelligence cannot be nil.')
      end

      if @memory.nil?
        invalid_properties.push('invalid value for "memory", memory cannot be nil.')
      end

      if @perception.nil?
        invalid_properties.push('invalid value for "perception", perception cannot be nil.')
      end

      if @willpower.nil?
        invalid_properties.push('invalid value for "willpower", willpower cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @charisma.nil?
      return false if @intelligence.nil?
      return false if @memory.nil?
      return false if @perception.nil?
      return false if @willpower.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          accrued_remap_cooldown_date == o.accrued_remap_cooldown_date &&
          bonus_remaps == o.bonus_remaps &&
          charisma == o.charisma &&
          intelligence == o.intelligence &&
          last_remap_date == o.last_remap_date &&
          memory == o.memory &&
          perception == o.perception &&
          willpower == o.willpower
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [accrued_remap_cooldown_date, bonus_remaps, charisma, intelligence, last_remap_date, memory, perception, willpower].hash
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
