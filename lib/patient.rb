class Patient
  attr_accessor

  @@all = []
  def initialize(name)
    @name = name

  end

  def self.all
    return @@all
  end

  def appointments

  end

  def doctors

  end
end
