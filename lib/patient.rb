class Patient
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def new_appointments(doctor, date)      #creates a new appointment belonging to that patient
    Appointment.new(self, doctor, date)
  end

  def appointments

  end

  def doctors

  end
end
