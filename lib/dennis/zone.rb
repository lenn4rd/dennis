module Dennis
  class Zone
    def initialize(*options, &block)
      @name, _ = options

      raise ArgumentError, "Zone definition expects a zone name" unless @name
      raise ArgumentError, "Zone definition expects a block" unless block_given?

      @records = []
    end
  end
end
