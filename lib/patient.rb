class Patient
  
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  def appointments
    Appointment.select {|x| x.patient == self}
  end
  def doctors
    self.appointments.each {|x| return x.doctor}
  end
  
end