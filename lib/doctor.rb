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
  def new_appointment(patient,date)
    Appointment.new (patient, self, date)
  end
  def patients
    Appointment.select {|x|
    if x.doctor == self
      return x.patient
    end
    }
  end
  
end