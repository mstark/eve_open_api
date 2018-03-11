=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module EVEOpenAPI
  # 200 ok object
  class GetDogmaAttributesAttributeIdOk
    # attribute_id integer
    attr_accessor :attribute_id

    # name string
    attr_accessor :name

    # description string
    attr_accessor :description

    # icon_id integer
    attr_accessor :icon_id

    # default_value number
    attr_accessor :default_value

    # published boolean
    attr_accessor :published

    # display_name string
    attr_accessor :display_name

    # unit_id integer
    attr_accessor :unit_id

    # stackable boolean
    attr_accessor :stackable

    # high_is_good boolean
    attr_accessor :high_is_good


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'attribute_id' => :'attribute_id',
        :'name' => :'name',
        :'description' => :'description',
        :'icon_id' => :'icon_id',
        :'default_value' => :'default_value',
        :'published' => :'published',
        :'display_name' => :'display_name',
        :'unit_id' => :'unit_id',
        :'stackable' => :'stackable',
        :'high_is_good' => :'high_is_good'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'attribute_id' => :'Integer',
        :'name' => :'String',
        :'description' => :'String',
        :'icon_id' => :'Integer',
        :'default_value' => :'Float',
        :'published' => :'BOOLEAN',
        :'display_name' => :'String',
        :'unit_id' => :'Integer',
        :'stackable' => :'BOOLEAN',
        :'high_is_good' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'attribute_id')
        self.attribute_id = attributes[:'attribute_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'icon_id')
        self.icon_id = attributes[:'icon_id']
      end

      if attributes.has_key?(:'default_value')
        self.default_value = attributes[:'default_value']
      end

      if attributes.has_key?(:'published')
        self.published = attributes[:'published']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'unit_id')
        self.unit_id = attributes[:'unit_id']
      end

      if attributes.has_key?(:'stackable')
        self.stackable = attributes[:'stackable']
      end

      if attributes.has_key?(:'high_is_good')
        self.high_is_good = attributes[:'high_is_good']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @attribute_id.nil?
        invalid_properties.push("invalid value for 'attribute_id', attribute_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @attribute_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attribute_id == o.attribute_id &&
          name == o.name &&
          description == o.description &&
          icon_id == o.icon_id &&
          default_value == o.default_value &&
          published == o.published &&
          display_name == o.display_name &&
          unit_id == o.unit_id &&
          stackable == o.stackable &&
          high_is_good == o.high_is_good
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [attribute_id, name, description, icon_id, default_value, published, display_name, unit_id, stackable, high_is_good].hash
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
