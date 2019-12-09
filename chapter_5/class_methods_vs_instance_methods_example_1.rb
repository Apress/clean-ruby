class Car
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
  end
end

def create_car(make, model)
  current_year = Time.now.year
  Car.new(current_year, make, model)
end

car = create_car('Nissan', 'Altima')
