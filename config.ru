# config.ru
require "roda"
require "geocoder"

class App < Roda
  plugin :render
  use Rack::Session::Cookie, :secret => ENV['SECRET']

  route do |r|
    # GET / request
    r.root do
      location=Hash.new 
      File.readlines('ips.txt').each do |line|
        line=line.chomp      
        if (Geocoder::IpAddress.new(line).valid?) 
          location[line]=Geocoder.coordinates(line)
        end       
      end

      view("index",:locals=>{:content => location})
    end
    # GET /about
    r.get "about" do
      view("about")
    end
  end
end
run App.freeze.app