module Dennis
  class Record
    attr_accessor :name, :resolves_to

    def initialize(*options)
      @type, @attributes = options

      raise ArgumentError, "Record expects a type" unless @type
      raise ArgumentError, "Record expects resource attributes" unless @attributes

      @name = @attributes.delete(:name)
      @resolves_to = @attributes.delete(:to)
    end
  end
end
