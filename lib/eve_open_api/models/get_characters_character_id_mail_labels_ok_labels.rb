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

require 'date'

module EveOpenApi
  # label object
  class GetCharactersCharacterIdMailLabelsOkLabels
    # color string
    attr_accessor :color

    # label_id integer
    attr_accessor :label_id

    # name string
    attr_accessor :name

    # unread_count integer
    attr_accessor :unread_count

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
        :'color' => :'color',
        :'label_id' => :'label_id',
        :'name' => :'name',
        :'unread_count' => :'unread_count'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'color' => :'String',
        :'label_id' => :'Integer',
        :'name' => :'String',
        :'unread_count' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'color')
        self.color = attributes[:'color']
      else
        self.color = "#ffffff"
      end

      if attributes.has_key?(:'label_id')
        self.label_id = attributes[:'label_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'unread_count')
        self.unread_count = attributes[:'unread_count']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new

      if !@label_id.nil? && @label_id < 0.0
        invalid_properties.push("invalid value for 'label_id', must be greater than or equal to 0.0.")
      end


      if !@name.nil? && @name.to_s.length > 40
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 40.")
      end


      if !@unread_count.nil? && @unread_count < 0.0
        invalid_properties.push("invalid value for 'unread_count', must be greater than or equal to 0.0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      color_validator = EnumAttributeValidator.new('String', ["#ffffff", "#ffff01", "#ff6600", "#fe0000", "#9a0000", "#660066", "#0000fe", "#0099ff", "#01ffff", "#00ff33", "#349800", "#006634", "#666666", "#999999", "#e6e6e6", "#ffffcd", "#99ffff", "#ccff9a"])
      return false unless color_validator.valid?(@color)
      return false if !@label_id.nil? && @label_id < 0.0
      return false if !@name.nil? && @name.to_s.length > 40
      return false if !@unread_count.nil? && @unread_count < 0.0
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] color Object to be assigned
    def color=(color)
      validator = EnumAttributeValidator.new('String', ["#ffffff", "#ffff01", "#ff6600", "#fe0000", "#9a0000", "#660066", "#0000fe", "#0099ff", "#01ffff", "#00ff33", "#349800", "#006634", "#666666", "#999999", "#e6e6e6", "#ffffcd", "#99ffff", "#ccff9a"])
      unless validator.valid?(color)
        fail ArgumentError, "invalid value for 'color', must be one of #{validator.allowable_values}."
      end
      @color = color
    end

    # Custom attribute writer method with validation
    # @param [Object] label_id Value to be assigned
    def label_id=(label_id)

      if !label_id.nil? && label_id < 0.0
        fail ArgumentError, "invalid value for 'label_id', must be greater than or equal to 0.0."
      end

      @label_id = label_id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 40
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 40."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] unread_count Value to be assigned
    def unread_count=(unread_count)

      if !unread_count.nil? && unread_count < 0.0
        fail ArgumentError, "invalid value for 'unread_count', must be greater than or equal to 0.0."
      end

      @unread_count = unread_count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          color == o.color &&
          label_id == o.label_id &&
          name == o.name &&
          unread_count == o.unread_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [color, label_id, name, unread_count].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = EveOpenApi.const_get(type).new
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
