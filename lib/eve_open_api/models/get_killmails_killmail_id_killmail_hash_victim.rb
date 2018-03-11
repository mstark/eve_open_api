=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module EVEOpenAPI
  # victim object
  class GetKillmailsKillmailIdKillmailHashVictim
    # character_id integer
    attr_accessor :character_id

    # corporation_id integer
    attr_accessor :corporation_id

    # alliance_id integer
    attr_accessor :alliance_id

    # faction_id integer
    attr_accessor :faction_id

    # How much total damage was taken by the victim 
    attr_accessor :damage_taken

    # The ship that the victim was piloting and was destroyed 
    attr_accessor :ship_type_id

    # items array
    attr_accessor :items

    attr_accessor :position


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'character_id' => :'character_id',
        :'corporation_id' => :'corporation_id',
        :'alliance_id' => :'alliance_id',
        :'faction_id' => :'faction_id',
        :'damage_taken' => :'damage_taken',
        :'ship_type_id' => :'ship_type_id',
        :'items' => :'items',
        :'position' => :'position'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'character_id' => :'Integer',
        :'corporation_id' => :'Integer',
        :'alliance_id' => :'Integer',
        :'faction_id' => :'Integer',
        :'damage_taken' => :'Integer',
        :'ship_type_id' => :'Integer',
        :'items' => :'Array<GetKillmailsKillmailIdKillmailHashItem1>',
        :'position' => :'GetKillmailsKillmailIdKillmailHashPosition'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'character_id')
        self.character_id = attributes[:'character_id']
      end

      if attributes.has_key?(:'corporation_id')
        self.corporation_id = attributes[:'corporation_id']
      end

      if attributes.has_key?(:'alliance_id')
        self.alliance_id = attributes[:'alliance_id']
      end

      if attributes.has_key?(:'faction_id')
        self.faction_id = attributes[:'faction_id']
      end

      if attributes.has_key?(:'damage_taken')
        self.damage_taken = attributes[:'damage_taken']
      end

      if attributes.has_key?(:'ship_type_id')
        self.ship_type_id = attributes[:'ship_type_id']
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @damage_taken.nil?
        invalid_properties.push("invalid value for 'damage_taken', damage_taken cannot be nil.")
      end

      if @ship_type_id.nil?
        invalid_properties.push("invalid value for 'ship_type_id', ship_type_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @damage_taken.nil?
      return false if @ship_type_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          character_id == o.character_id &&
          corporation_id == o.corporation_id &&
          alliance_id == o.alliance_id &&
          faction_id == o.faction_id &&
          damage_taken == o.damage_taken &&
          ship_type_id == o.ship_type_id &&
          items == o.items &&
          position == o.position
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [character_id, corporation_id, alliance_id, faction_id, damage_taken, ship_type_id, items, position].hash
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
