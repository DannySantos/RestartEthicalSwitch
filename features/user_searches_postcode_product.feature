  Feature: Visitor searches by Postcode and Product

  Background:
  Given a visitor is on the home page

Scenario:
  When they enter their postcode
    And select a product
  Then they should see a region-specific product page