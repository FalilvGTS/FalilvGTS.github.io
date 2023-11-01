Feature: US01: Registro en la aplicación FoodSaver como gerente/administrador de restaurante

    Como gerente/administrador de restaurante, quiero crear mi propia cuenta en la aplicación
    FoodSaver para comenzar a utilizarla, de manera que pueda gestionar eficientemente mi restaurante.

#-------------------------------------------------------------
Scenario: E01-Registrarme con una cuenta de Google como gerente/administrador de restaurante

    Given Estoy en la página de registro

    When Hago clic en "Registrarme con Google"

        And Selecciono mi cuenta de Google

        And Otorgo los permisos necesarios

    Then Aparece la ventana de confirmación de cuenta creada

#-------------------------------------------------------------
Scenario: E02-Registrarme con una cuenta de Apple como gerente/administrador de restaurante

    Given Estoy en la página de registro

    When Hago clic en "Registrarme con Apple"

        And Selecciono mi cuenta de Apple

        And Otorgo los permisos necesarios

    Then Aparece la ventana de confirmación de cuenta creada

#-------------------------------------------------------------
Scenario: E03-Registrarme con mi correo como gerente/administrador de restaurante

    Given Estoy en la página de registro

    When Ingreso mi correo y contraseña válidos
        | Datos Válidos |
        | true          |

        And Hago clic en "Registrarme"

        And Otorgo los permisos necesarios

    Then Aparece la ventana de confirmación de cuenta creada

#-------------------------------------------------------------
Scenario: E04-Intento registrarme con un correo inválido como gerente/administrador de restaurante

    Given Estoy en la página de registro

    When Ingreso un correo inválido y una contraseña válida
        | Datos Válidos |
        | false         |

        And Hago clic en "Registrarme"

    Then Aparece un mensaje indicando que el correo no es válido

#-------------------------------------------------------------