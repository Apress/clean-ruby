class Car
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
  end

  def self.create
    current_year = Time.now.year
    new(current_year, make, model)
  end
end

car = Car.create('Nissan', 'Altima')
