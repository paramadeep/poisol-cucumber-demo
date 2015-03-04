require "poisol"
require "cucumber"
require "pry"
require "active_support"

Before do
  if $poisol_loaded.blank?     
    Poisol.start               
    Poisol.load "stubs/cost"
    Poisol.load "stubs/sms"
    Poisol.load "stubs/exchange"
    $poisol_loaded = true      
  end
  Poisol.reset_data            
end 

After do
  wastes = Poisol.wasted
  Kernel.puts 'Unused stubs in this test'
  wastes.each {|waste| Kernel.puts waste.request.to_s} 
end

at_exit do
  Poisol.stop
end 
