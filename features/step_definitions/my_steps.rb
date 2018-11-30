Given(/^Ingreso al juego$/) do
    visit '/index'
  end
  
  When(/^La palabra por adivinar es "([^"]*)"$/) do |palabra_oculta|
    visit '/index'
  end
  
  Then(/^Se muestran "([^"]*)" espacios de palabra$/) do |guiones|
    expect(page.body).to match /#{guiones}/m
  end

  When(/^intento adivinar la palabra "([^"]*)"$/) do |palabra_oculta|
    visit '/index'
  end
  
  When(/^ingreso "([^"]*)"$/) do |letra_intento|
    fill_in("letra_intento", :with => letra_intento)
    click_button("Enviar")
  end
  
  Then(/^Se muestran "([^"]*)"$/) do |casillas_palabra|
    expect(page.body).to match /#{casillas_palabra}/m
  end
