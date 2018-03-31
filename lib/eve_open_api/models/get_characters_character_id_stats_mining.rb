=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module EVEOpenAPI
  # mining object
  class GetCharactersCharacterIdStatsMining
    # drone_mine integer
    attr_accessor :drone_mine

    # ore_arkonor integer
    attr_accessor :ore_arkonor

    # ore_bistot integer
    attr_accessor :ore_bistot

    # ore_crokite integer
    attr_accessor :ore_crokite

    # ore_dark_ochre integer
    attr_accessor :ore_dark_ochre

    # ore_gneiss integer
    attr_accessor :ore_gneiss

    # ore_harvestable_cloud integer
    attr_accessor :ore_harvestable_cloud

    # ore_hedbergite integer
    attr_accessor :ore_hedbergite

    # ore_hemorphite integer
    attr_accessor :ore_hemorphite

    # ore_ice integer
    attr_accessor :ore_ice

    # ore_jaspet integer
    attr_accessor :ore_jaspet

    # ore_kernite integer
    attr_accessor :ore_kernite

    # ore_mercoxit integer
    attr_accessor :ore_mercoxit

    # ore_omber integer
    attr_accessor :ore_omber

    # ore_plagioclase integer
    attr_accessor :ore_plagioclase

    # ore_pyroxeres integer
    attr_accessor :ore_pyroxeres

    # ore_scordite integer
    attr_accessor :ore_scordite

    # ore_spodumain integer
    attr_accessor :ore_spodumain

    # ore_veldspar integer
    attr_accessor :ore_veldspar


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'drone_mine' => :'drone_mine',
        :'ore_arkonor' => :'ore_arkonor',
        :'ore_bistot' => :'ore_bistot',
        :'ore_crokite' => :'ore_crokite',
        :'ore_dark_ochre' => :'ore_dark_ochre',
        :'ore_gneiss' => :'ore_gneiss',
        :'ore_harvestable_cloud' => :'ore_harvestable_cloud',
        :'ore_hedbergite' => :'ore_hedbergite',
        :'ore_hemorphite' => :'ore_hemorphite',
        :'ore_ice' => :'ore_ice',
        :'ore_jaspet' => :'ore_jaspet',
        :'ore_kernite' => :'ore_kernite',
        :'ore_mercoxit' => :'ore_mercoxit',
        :'ore_omber' => :'ore_omber',
        :'ore_plagioclase' => :'ore_plagioclase',
        :'ore_pyroxeres' => :'ore_pyroxeres',
        :'ore_scordite' => :'ore_scordite',
        :'ore_spodumain' => :'ore_spodumain',
        :'ore_veldspar' => :'ore_veldspar'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'drone_mine' => :'Integer',
        :'ore_arkonor' => :'Integer',
        :'ore_bistot' => :'Integer',
        :'ore_crokite' => :'Integer',
        :'ore_dark_ochre' => :'Integer',
        :'ore_gneiss' => :'Integer',
        :'ore_harvestable_cloud' => :'Integer',
        :'ore_hedbergite' => :'Integer',
        :'ore_hemorphite' => :'Integer',
        :'ore_ice' => :'Integer',
        :'ore_jaspet' => :'Integer',
        :'ore_kernite' => :'Integer',
        :'ore_mercoxit' => :'Integer',
        :'ore_omber' => :'Integer',
        :'ore_plagioclase' => :'Integer',
        :'ore_pyroxeres' => :'Integer',
        :'ore_scordite' => :'Integer',
        :'ore_spodumain' => :'Integer',
        :'ore_veldspar' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'drone_mine')
        self.drone_mine = attributes[:'drone_mine']
      end

      if attributes.has_key?(:'ore_arkonor')
        self.ore_arkonor = attributes[:'ore_arkonor']
      end

      if attributes.has_key?(:'ore_bistot')
        self.ore_bistot = attributes[:'ore_bistot']
      end

      if attributes.has_key?(:'ore_crokite')
        self.ore_crokite = attributes[:'ore_crokite']
      end

      if attributes.has_key?(:'ore_dark_ochre')
        self.ore_dark_ochre = attributes[:'ore_dark_ochre']
      end

      if attributes.has_key?(:'ore_gneiss')
        self.ore_gneiss = attributes[:'ore_gneiss']
      end

      if attributes.has_key?(:'ore_harvestable_cloud')
        self.ore_harvestable_cloud = attributes[:'ore_harvestable_cloud']
      end

      if attributes.has_key?(:'ore_hedbergite')
        self.ore_hedbergite = attributes[:'ore_hedbergite']
      end

      if attributes.has_key?(:'ore_hemorphite')
        self.ore_hemorphite = attributes[:'ore_hemorphite']
      end

      if attributes.has_key?(:'ore_ice')
        self.ore_ice = attributes[:'ore_ice']
      end

      if attributes.has_key?(:'ore_jaspet')
        self.ore_jaspet = attributes[:'ore_jaspet']
      end

      if attributes.has_key?(:'ore_kernite')
        self.ore_kernite = attributes[:'ore_kernite']
      end

      if attributes.has_key?(:'ore_mercoxit')
        self.ore_mercoxit = attributes[:'ore_mercoxit']
      end

      if attributes.has_key?(:'ore_omber')
        self.ore_omber = attributes[:'ore_omber']
      end

      if attributes.has_key?(:'ore_plagioclase')
        self.ore_plagioclase = attributes[:'ore_plagioclase']
      end

      if attributes.has_key?(:'ore_pyroxeres')
        self.ore_pyroxeres = attributes[:'ore_pyroxeres']
      end

      if attributes.has_key?(:'ore_scordite')
        self.ore_scordite = attributes[:'ore_scordite']
      end

      if attributes.has_key?(:'ore_spodumain')
        self.ore_spodumain = attributes[:'ore_spodumain']
      end

      if attributes.has_key?(:'ore_veldspar')
        self.ore_veldspar = attributes[:'ore_veldspar']
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
          drone_mine == o.drone_mine &&
          ore_arkonor == o.ore_arkonor &&
          ore_bistot == o.ore_bistot &&
          ore_crokite == o.ore_crokite &&
          ore_dark_ochre == o.ore_dark_ochre &&
          ore_gneiss == o.ore_gneiss &&
          ore_harvestable_cloud == o.ore_harvestable_cloud &&
          ore_hedbergite == o.ore_hedbergite &&
          ore_hemorphite == o.ore_hemorphite &&
          ore_ice == o.ore_ice &&
          ore_jaspet == o.ore_jaspet &&
          ore_kernite == o.ore_kernite &&
          ore_mercoxit == o.ore_mercoxit &&
          ore_omber == o.ore_omber &&
          ore_plagioclase == o.ore_plagioclase &&
          ore_pyroxeres == o.ore_pyroxeres &&
          ore_scordite == o.ore_scordite &&
          ore_spodumain == o.ore_spodumain &&
          ore_veldspar == o.ore_veldspar
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [drone_mine, ore_arkonor, ore_bistot, ore_crokite, ore_dark_ochre, ore_gneiss, ore_harvestable_cloud, ore_hedbergite, ore_hemorphite, ore_ice, ore_jaspet, ore_kernite, ore_mercoxit, ore_omber, ore_plagioclase, ore_pyroxeres, ore_scordite, ore_spodumain, ore_veldspar].hash
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
