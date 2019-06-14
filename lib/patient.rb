<<<<<<< HEAD
class Patient 
  
  attr_accessor :name 
  
  @@all = []
  
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
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.map(&:doctor)
=======
class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
>>>>>>> 711e7ac00ddf7f29859773eca9678d4634ce4ac9
  end
end