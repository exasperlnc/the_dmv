require 'date'

class Vehicle
  attr_accessor :plate_type
  attr_reader :vin,
              :year,
              :make,
              :model,
              :engine,
              :registration_date
              # :plate_type

  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    @plate_type = vehicle_details[:plate_type]
    @registration_date = vehicle_details[:registration_date]
  end

  def register
    vehicle.registration_date = DateTime.now.strftime "%d/%m/%Y"
  end
  

  def antique?
    Date.today.year - @year > 25
  end

  def electric_vehicle?
    @engine == :ev
  end
end
