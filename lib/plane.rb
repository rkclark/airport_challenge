class Plane
  attr_reader :airborne

  def initialize(airborne=true)
    @airborne = airborne
  end

  def land(airport)
    raise "Cannot land - already landed!" unless airborne?
    raise "Cannot land - weather is stormy!" unless sunny?
    set_airborne(false)
    "Plane has landed in sunny weather at #{airport.airport_name}"
  end

  def take_off(airport)
    raise "Cannot take off - already airborne!" if airborne?
    raise "Cannot take off - weather is stormy!" unless sunny?
    set_airborne(true)
    "Plane has taken off from #{airport.airport_name}"
  end

  private

  def airborne?
    self.airborne
  end

  def set_airborne(status)
    @airborne = status
  end

  def sunny?
    Weather.sunny?
  end

end
