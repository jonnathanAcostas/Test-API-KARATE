Feature: Get Tests on signUp.in

  Background:
    * def urlBaseSignUp = 'https://api.demoblaze.com/signup'
    * def urlBaseLogin = 'https://api.demoblaze.com/login'

  Scenario: Crear un nuevo usuario en signup
    Given url urlBaseSignUp
    And request { username: 'newUserxdddd', password: 'newPassword' }
    When method POST
    Then status 200

  Scenario: Intentar crear un usuario ya existente
    Given url urlBaseSignUp
    And request { username: 'newUserxdddd', password: 'newPassword' }
    When method POST
    Then status 200
    And match response == { errorMessage: 'This user already exist.'}


  Scenario: Usuario y password correcto en login
    Given url urlBaseLogin
    And request { username: 'newUserxdddd', password: 'newPassword' }
    When method POST
    Then status 200



  Scenario: Usuario y password incorrecto en login
    Given url urlBaseLogin
    And request { username: 'user', password: 'wrongPassword' }
    When method POST
    Then status 200
    And match response == { "errorMessage": "Wrong password."}
