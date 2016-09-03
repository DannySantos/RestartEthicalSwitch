Feature: Product search

  @wip
  Scenario: a visitor searches by product and postcode
    Given there are some products
      And there are some providers
      And there are some states
      And there are some providers with products
      And there are some providers with states
      And they are on the home page
    When they select "Ethical Power" from "product[name]"
      And they fill in the "postcode" field with "3068"
      And they click on "Find Out Now"
    Then they should see relevant product results