Feature: US14: Visualizar informe de donaciones y mantener registro completo como gerente/administrador de restaurante

    Como gerente/administrador de restaurante, quiero visualizar un informe de donaciones y mantener un registro completo de las donaciones del restaurante.

#-------------------------------------------------------------
Scenario: E01-Visualizar informe de donaciones con donaciones registradas

    Given Estoy en la sección de informe de donaciones

    When Visualizo la lista de donaciones registradas

    Then Veo un informe detallado de las donaciones, incluyendo montos y fechas


#-------------------------------------------------------------
Scenario: E02-Visualizar informe de donaciones sin donaciones registradas

    Given Estoy en la sección de informe de donaciones

    When No hay donaciones registradas

    Then Veo un mensaje indicando que no hay donaciones registradas


#-------------------------------------------------------------
Scenario: E03-Agregar una nueva donación al registro

    Given Estoy en la sección de informe de donaciones

    When Agrego una nueva donación con los siguientes detalles
        | Monto     | Fecha       |
        | $100.00   | 2023-10-31  |

    Then Veo un mensaje indicando que la donación ha sido registrada exitosamente


#-------------------------------------------------------------
Scenario: E04-Editar detalles de una donación registrada

    Given Estoy en la sección de informe de donaciones

    When Selecciono una donación específica para editar

    Then Puedo modificar los detalles de la donación, como el monto y la fecha


#-------------------------------------------------------------
Scenario: E05-Eliminar una donación registrada

    Given Estoy en la sección de informe de donaciones

    When Selecciono una donación específica para eliminar

    Then La donación es eliminada del registro y veo un mensaje de confirmación
