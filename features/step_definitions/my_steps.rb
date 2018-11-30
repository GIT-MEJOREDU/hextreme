Given(/^Ingreso al juego$/) do
    visit '/index'
  end
  
  When(/^La palabra por adivinar es "([^"]*)"$/) do |palabra_oculta|
    visit '/index'
  end
  
  Then(/^Se muestran "([^"]*)" espacios de palabra$/) do |guiones|
    expect(page.body).to match /#{guiones}/m
  end
