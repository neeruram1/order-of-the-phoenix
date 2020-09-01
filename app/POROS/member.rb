class Member
  attr_reader :name,
              :role,
              :house,
              :patronus

  def initialize(attributes)
    @name       = attributes[:name]
    @role       = attributes[:role]
    @house      = attributes[:house]
    @patronus   = attributes[:patronus]
  end

  def has_role?
    @role.nil? == false
  end

  def has_patronus?
    @patronus.nil? == false
  end
end
