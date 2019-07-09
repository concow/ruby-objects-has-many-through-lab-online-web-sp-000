class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self               #Adds each instance to an array upon each creation of itself
  end

  def self.all
    return @@all
  end

  def new_appointment(patient, date)    #given a date and a patient, creates a new appointment
    Appointment.new(patient, self, date)    #Appointment knows it belongs to the Doctor (self)
  end

  def appointments                      #Class Doctor HAS MANY appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map(&:patient)
  end
end
