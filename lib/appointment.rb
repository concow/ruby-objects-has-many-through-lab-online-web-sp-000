class Appointment
  attr_accessor :date, :doctor, :patient          #instance variables to create explicitly create appointments for doctor/patient
                                                  #these connect relationships to deliver information on these related objects
  @@all = []

  def initialize(patient, doctor, date)           #had to be in this order for it to work (patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    return @@all
  end
end
