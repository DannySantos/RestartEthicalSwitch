Given(/^there are some products$/) do
  @power = Product.create!(name: "Ethical Power")
  @super = Product.create!(name: "Ethical Super")
  @solar = Product.create!(name: "Ethical Solar")
  @homeloans = Product.create!(name: "Ethical Homeloans")
end

Given(/^there are some providers$/) do
  @powershop = Provider.create!(name: "Powershop")
  @diamond = Provider.create!(name: "Diamond")
  @good_super = Provider.create!(name: "Good Super")
  @future_super = Provider.create!(name: "Future Super")
  @australian_ethical = Provider.create!(name: "Australian Ethical")
  @shinehub = Provider.create!(name: "ShineHub")
  @ethical_homeloans = Provider.create!(name: "Ethical Homeloans")
end

Given(/^there are some states$/) do
  @vic = State.create!(name: "Victoria", abbr: "VIC")
  @nsw = State.create!(name: "New South Wales", abbr: "NSW")
  @sa = State.create!(name: "South Australia", abbr: "SA")
  @qld = State.create!(name: "Queensland", abbr: "QLD")
  @wa = State.create!(name: "Western Australia", abbr: "WA")
  @tas = State.create!(name: "Tasmania", abbr: "TAS")
  @act = State.create!(name: "Australian Capital Territory", abbr: "ACT")
  @nt = State.create!(name: "Northern Territory", abbr: "NT")
end

Given(/^there are some providers with products$/) do
  ProviderProduct.create!(provider_id: @powershop.id, product_id: @power.id)
  ProviderProduct.create!(provider_id: @diamond.id, product_id: @power.id)
  ProviderProduct.create!(provider_id: @good_super.id, product_id: @super.id)
  ProviderProduct.create!(provider_id: @future_super.id, product_id: @super.id)
  ProviderProduct.create!(provider_id: @australian_ethical.id, product_id: @super.id)
  ProviderProduct.create!(provider_id: @shinehub.id, product_id: @solar.id)
  ProviderProduct.create!(provider_id: @ethical_homeloans.id, product_id: @homeloans.id)
end

Given(/^there are some providers with states$/) do
  ProviderState.create!(provider_id: @powershop.id, state_id: @vic.id)
  ProviderState.create!(provider_id: @powershop.id, state_id: @nsw.id)
  ProviderState.create!(provider_id: @diamond.id, state_id: @vic.id)
  ProviderState.create!(provider_id: @diamond.id, state_id: @nsw.id)
  ProviderState.create!(provider_id: @diamond.id, state_id: @sa.id)
  ProviderState.create!(provider_id: @diamond.id, state_id: @qld.id)
  ProviderState.create!(provider_id: @good_super.id, state_id: @vic.id)
  ProviderState.create!(provider_id: @good_super.id, state_id: @nsw.id)
  ProviderState.create!(provider_id: @good_super.id, state_id: @sa.id)
  ProviderState.create!(provider_id: @good_super.id, state_id: @qld.id)
  ProviderState.create!(provider_id: @future_super.id, state_id: @vic.id)
  ProviderState.create!(provider_id: @future_super.id, state_id: @nsw.id)
  ProviderState.create!(provider_id: @future_super.id, state_id: @sa.id)
  ProviderState.create!(provider_id: @future_super.id, state_id: @qld.id)
  ProviderState.create!(provider_id: @australian_ethical.id, state_id: @vic.id)
  ProviderState.create!(provider_id: @australian_ethical.id, state_id: @nsw.id)
  ProviderState.create!(provider_id: @australian_ethical.id, state_id: @sa.id)
  ProviderState.create!(provider_id: @australian_ethical.id, state_id: @qld.id)
  ProviderState.create!(provider_id: @shinehub.id, state_id: @vic.id)
  ProviderState.create!(provider_id: @shinehub.id, state_id: @nsw.id)
  ProviderState.create!(provider_id: @shinehub.id, state_id: @sa.id)
  ProviderState.create!(provider_id: @shinehub.id, state_id: @qld.id)
  ProviderState.create!(provider_id: @ethical_homeloans.id, state_id: @vic.id)
  ProviderState.create!(provider_id: @ethical_homeloans.id, state_id: @nsw.id)
  ProviderState.create!(provider_id: @ethical_homeloans.id, state_id: @sa.id)
  ProviderState.create!(provider_id: @ethical_homeloans.id, state_id: @qld.id)
end

When(/^they select "([^"]*)" from "([^"]*)"$/) do |option, select_tag|
  select option, from: select_tag
end

When(/^they fill in the "([^"]*)" field with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^they click on "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^they should see relevant product results$/) do
  pending # Write code here that turns the phrase above into concrete actions
end