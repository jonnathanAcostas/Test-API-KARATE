Feature: Get Tests on signUp.in

  Background:
    * def urlBaseSignUp = 'https://api.demoblaze.com/signup'
    * def urlBaseLogin = 'https://api.demoblaze.com/login'
    * def examples = read('classpath:users/examples.json')

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

    ## Scenarios a travez de un archivo .json

  Scenario: Crear nuevo  usuario en signup json
    Given url urlBaseSignUp
    And request examples.newUser
    When method POST
    Then status 200

  Scenario: Intentar crear el usuario ya existente json
    Given url urlBaseSignUp
    And request examples.existingUser
    When method POST
    Then status 200
    And match response == { errorMessage: 'This user already exist.' }

  Scenario: Usuario y password correcto en login json
    Given url urlBaseLogin
    And request examples.correctLogin
    When method POST
    Then status 200

  Scenario: Usuario y password incorrecto en login json
    Given url urlBaseLogin
    And request examples.incorrectLogin
    When method POST
    Then status 200

    ## Scenarios tipo Outline

  Scenario Outline: Crear un nuevo usuario en signup outline
    Given url urlBaseSignUp
    And request { username: '<username>', password: '<password>' }
    When method POST
    Then status <status>

    Examples:
      | username       | password     | status |
      | patito1        | newPassword  | 200    |
      | Jonna          | oldPassword  | 200    |

  Scenario Outline: Intentar crear un usuario ya existente outline
    Given url urlBaseSignUp
    And request { username: '<username>', password: '<password>' }
    When method POST
    Then status <status>
    And match response == { errorMessage: 'This user already exist.' }

    Examples:
      | username       | password     | status |
      | patito1        | newPassword  | 200    |

  Scenario Outline: Usuario y password correcto en login outline
    Given url urlBaseLogin
    And request { username: '<username>', password: '<password>' }
    When method POST
    Then status <status>

    Examples:
      | username       | password     | status |
      | patito1        | newPassword  | 200    |

  Scenario Outline: Usuario y password incorrecto en login outline
    Given url urlBaseLogin
    And request { username: '<username>', password: '<password>' }
    When method POST
    Then status <status>
    And match response == { "errorMessage": "Wrong password." }

    Examples:
      | username | password     | status |
      | xddd     | wrongPassword| 200    |