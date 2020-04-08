class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_appointment(date, patient)
    Appointment.new (date, patient, self)
  end
  def patients
    Appointment.select {|x|
    if x.doctor == self
      return x.patient
    end
    }
  end
  
end