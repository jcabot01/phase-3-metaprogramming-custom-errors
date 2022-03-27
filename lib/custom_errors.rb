class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      begin 
        raise PartnerError #first we raise the error class
      rescue PartnerError => error  #then we rescue the error by creating an instance of PartnerError; which returns (puts) error.message from below
        puts error.message
      end 
    end 
  end

  # create an error handling class, assuming the scope of Standard Error messages (a hierachy of message types)
  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end 
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




