Given("visito la pagina del resultado") do
    visit '/resultado' # Write code here that turns the phrase above into concrete actions
  end

Then("vere la posicion con un el valor de {string} en la tabla") do |string|
  last_response.body.should =~ /#{string}/m # Write code here that turns the phrase above into concrete actions
  end