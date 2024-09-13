 Feature: Login mercado libre
 
  Background:
    Given que el usuario está en la página de inicio de sesión de Mercado Libre

  # Escenario de inicio de sesión exitoso
  Scenario: Usuario ingresa correctamente a su cuenta
    When el usuario ingresa su correo electrónico "usuario@ejemplo.com"
    And el usuario ingresa su contraseña "contraseña123"
    And hace clic en el botón "Ingresar"
    And el usuario deja el campo de contraseña en blanco
    Then el usuario debería ver la página principal de su cuenta con el mensaje "¡Bienvenido, usuario!"

  # Escenario de error con credenciales incorrectas
  Scenario: Usuario intenta ingresar con credenciales incorrectas
    When el usuario ingresa su correo electrónico "usuario@ejemplo.com"
    And el usuario ingresa una contraseña incorrecta "contraseñaIncorrecta"
    And hace clic en el botón "Ingresar"
    Then el usuario debería ver un mensaje de error "Usuario o contraseña incorrecta"

  # Escenario de campos vacíos
  Scenario: Usuario intenta ingresar dejando campos vacíos
    When el usuario deja el campo de correo electrónico en blanco
    And el usuario deja el campo de contraseña en blanco
    And hace clic en el botón "Ingresar"
    Then el usuario debería ver un mensaje de advertencia "Por favor, complete ambos campos"

  # Escenario de validación de formato de correo electrónico
  Scenario: Usuario ingresa un correo electrónico con formato inválido
    When el usuario ingresa un correo electrónico "usuario@ejemplo"
    And el usuario ingresa su contraseña "contraseña123"
    And hace clic en el botón "Ingresar"
    Then el usuario debería ver un mensaje de error "Formato de correo electrónico inválido"