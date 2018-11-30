Feature: Ingresar letra
    como un jugador
    deseo adivinar letra por letra
    para descifrar la palabra

Scenario: Se debe permitir ingresar letra por letra 
    Given Ingreso al juego
    When intento adivinar la palabra "sprint"
    And ingreso "r"
    Then Se muestran "_ _ r _ _"


   

#Scenario: Se debe permitir ingresar letra por letra 
 #   Given Ingreso al juego
 #   When intento adivinar la palabra "sprint"
 #   And ingreso "r"
  #  Then Se muestran "_ _ r _ _ _" 
