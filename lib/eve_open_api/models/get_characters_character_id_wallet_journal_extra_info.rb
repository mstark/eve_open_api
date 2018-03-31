=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module EVEOpenAPI
  # Extra information for different type of transaction
  class GetCharactersCharacterIdWalletJournalExtraInfo
    # location_id integer
    attr_accessor :location_id

    # transaction_id integer
    attr_accessor :transaction_id

    # npc_name string
    attr_accessor :npc_name

    # npc_id integer
    attr_accessor :npc_id

    # destroyed_ship_type_id integer
    attr_accessor :destroyed_ship_type_id

    # character_id integer
    attr_accessor :character_id

    # corporation_id integer
    attr_accessor :corporation_id

    # alliance_id integer
    attr_accessor :alliance_id

    # job_id integer
    attr_accessor :job_id

    # contract_id integer
    attr_accessor :contract_id

    # system_id integer
    attr_accessor :system_id

    # planet_id integer
    attr_accessor :planet_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'location_id' => :'location_id',
        :'transaction_id' => :'transaction_id',
        :'npc_name' => :'npc_name',
        :'npc_id' => :'npc_id',
        :'destroyed_ship_type_id' => :'destroyed_ship_type_id',
        :'character_id' => :'character_id',
        :'corporation_id' => :'corporation_id',
        :'alliance_id' => :'alliance_id',
        :'job_id' => :'job_id',
        :'contract_id' => :'contract_id',
        :'system_id' => :'system_id',
        :'planet_id' => :'planet_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'location_id' => :'Integer',
        :'transaction_id' => :'Integer',
        :'npc_name' => :'String',
        :'npc_id' => :'Integer',
        :'destroyed_ship_type_id' => :'Integer',
        :'character_id' => :'Integer',
        :'corporation_id' => :'Integer',
        :'alliance_id' => :'Integer',
        :'job_id' => :'Integer',
        :'contract_id' => :'Integer',
        :'system_id' => :'Integer',
        :'planet_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.has_key?(:'npc_name')
        self.npc_name = attributes[:'npc_name']
      end

      if attributes.has_key?(:'npc_id')
        self.npc_id = attributes[:'npc_id']
      end

      if attributes.has_key?(:'destroyed_ship_type_id')
        self.destroyed_ship_type_id = attributes[:'destroyed_ship_type_id']
      end

      if attributes.has_key?(:'character_id')
        self.character_id = attributes[:'character_id']
      end

      if attributes.has_key?(:'corporation_id')
        self.corporation_id = attributes[:'corporation_id']
      end

      if attributes.has_key?(:'alliance_id')
        self.alliance_id = attributes[:'alliance_id']
      end

      if attributes.has_key?(:'job_id')
        self.job_id = attributes[:'job_id']
      end

      if attributes.has_key?(:'contract_id')
        self.contract_id = attributes[:'contract_id']
      end

      if attributes.has_key?(:'system_id')
        self.system_id = attributes[:'system_id']
      end

      if attributes.has_key?(:'planet_id')
        self.planet_id = attributes[:'planet_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          location_id == o.location_id &&
          transaction_id == o.transaction_id &&
          npc_name == o.npc_name &&
          npc_id == o.npc_id &&
          destroyed_ship_type_id == o.destroyed_ship_type_id &&
          character_id == o.character_id &&
          corporation_id == o.corporation_id &&
          alliance_id == o.alliance_id &&
          job_id == o.job_id &&
          contract_id == o.contract_id &&
          system_id == o.system_id &&
          planet_id == o.planet_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [location_id, transaction_id, npc_name, npc_id, destroyed_ship_type_id, character_id, corporation_id, alliance_id, job_id, contract_id, system_id, planet_id].hash
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
