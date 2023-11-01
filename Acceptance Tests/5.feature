Feature: US20: Recibir notificaciones relevantes como empleado de restaurante

    Como empleado de restaurante, quiero recibir notificaciones relevantes de trabajo para estar al tanto de mis responsabilidades.

#-------------------------------------------------------------
Scenario: E01-Recibir notificación de nuevo turno asignado

    Given Estoy logueado en la aplicación como empleado

    When Se me asigna un nuevo turno de trabajo

    Then Recibo una notificación indicando los detalles del nuevo turno


#-------------------------------------------------------------
Scenario: E02-Recibir recordatorio de turno próximo

    Given Estoy logueado en la aplicación como empleado

    When Mi turno está a punto de empezar

    Then Recibo una notificación recordatorio con los detalles del turno próximo


#-------------------------------------------------------------
Scenario: E03-Recibir notificación de cambios en el horario de trabajo

    Given Estoy logueado en la aplicación como empleado

    When Se realizan cambios en mi horario de trabajo

    Then Recibo una notificación indicando los detalles de los cambios en el horario


#-------------------------------------------------------------
Scenario: E04-Recibir notificación de tareas o responsabilidades asignadas

    Given Estoy logueado en la aplicación como empleado

    When Se me asignan nuevas tareas o responsabilidades

    Then Recibo una notificación indicando los detalles de las nuevas tareas o responsabilidades


#-------------------------------------------------------------
Scenario: E05-Recibir notificación de mensajes importantes del restaurante

    Given Estoy logueado en la aplicación como empleado

    When El restaurante envía mensajes importantes para el personal

    Then Recibo una notificación indicando los detalles del mensaje importante
