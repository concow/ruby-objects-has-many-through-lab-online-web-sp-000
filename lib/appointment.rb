class Appointment
  attr_accessor :date, :doctor, :patient          #instance variables to create explicitly create appointments for doctor/patient
                                                  #these connect relationships to deliver information on these related objects
  @@all = []

  def initialize(date)
    @date = date
    @@all << self
  end

  def self.all
    return @@all
  end
end
