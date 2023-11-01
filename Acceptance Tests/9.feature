Feature: US13: Programar donaciones de alimentos a organizaciones benéficas como gerente/administrador de restaurante

    Como gerente/administrador de restaurante, quiero poder programar donaciones de alimentos a organizaciones benéficas a través de la aplicación para contribuir a la comunidad.

#-------------------------------------------------------------
Scenario: E01-Acceder a la programación de donaciones

    Given Estoy logueado en la aplicación como gerente/administrador

    When Accedo a la sección de programación de donaciones

    Then Veo un panel interactivo con opciones para programar donaciones


#-------------------------------------------------------------
Scenario: E02-Programar una donación de alimentos

    Given Estoy en la sección de programación de donaciones

    When Programo una donación de alimentos con los siguientes detalles
        | Tipo de Alimento | Cantidad  | Fecha de Recolección | Destinatario             |
        | Frutas           | 50        | 2023-11-10           | Organización Benéfica A |

    Then La donación se programa con éxito y queda registrada en la aplicación


#-------------------------------------------------------------
Scenario: E03-Editar detalles de una donación programada

    Given Estoy en la sección de programación de donaciones

    When Modifico los detalles de una donación previamente programada

    Then Los cambios se guardan y se aplican a la donación correspondiente


#-------------------------------------------------------------
Scenario: E04-Cancelar una donación programada

    Given Estoy en la sección de programación de donaciones

    When Cancelo una donación previamente programada

    Then La donación se cancela y se elimina de la programación


#-------------------------------------------------------------
