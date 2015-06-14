class BusesController < ApplicationController
  def index
    departures = HTTParty.get('http://api.bart.gov/api/sched.aspx?cmd=depart&orig=ASHB&dest=CIVC&date=now&key=MW9S-E7SL-26DU-VV8V&b=2&a=2&l=1')
    @parsed = Crack::XML.parse(departures.body)
  end
end
