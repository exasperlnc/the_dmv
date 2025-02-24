require 'date'

class Vehicle
  attr_accessor :plate_type,
                :registration_date
                
  attr_reader :vin,
              :year,
              :make,
              :model,
              :engine,
              :registration_date

  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    @plate_type = vehicle_details[:plate_type]
    @registration_date = vehicle_details[:registration_date]
  end

  def antique?
    Date.today.year - @year > 25
  end

  def electric_vehicle?
    @engine == :ev
  end
end
