Given(/^a US dollar is rated at (\d+) rupees for (.*?)$/) do |rate,date|
  RupeeValue.new.for_date(date).has_rates(rate).build
end

Given(/^the rates for (.*?) is not available$/) do |date|
  RupeeValue.new.for_date(date).status(404).build
end

Given(/^cost of a soap is (\d+) US dollar$/) do |soap_cost|
 SoapCost.new.has_cost(soap_cost).build
end

Given(/^(\d+) is a valid number$/) do |number|
 Sms.new.for_number(number).build
end
Given(/^(\d+) is a invalid number$/) do |number|
 Sms.new.for_number(number).status(404).build
end

Given(/^sms server fails for long messages$/) do
 Sms.new.by_message("12345678901234567890").status(404).build
end

