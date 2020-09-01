class Character
  attr_reader :name,
              :role,
              :house,
              :patronus

  def initialize(attributes)
    @name       = attributes[:name]
    @role       = attributes[:role]
    @party      = attributes[:house]
    @district   = attributes[:patronus]
  end
end
