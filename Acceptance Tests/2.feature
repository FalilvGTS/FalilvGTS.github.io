Feature: US05: Visualizar inventario detallado como gerente/administrador de restaurante

    Como gerente/administrador de restaurante, quiero visualizar un inventario detallado en la aplicación para estar al tanto de la disponibilidad y fecha de vencimiento de los ingredientes.

#-------------------------------------------------------------
Scenario: E01-Visualizar inventario detallado con ingredientes disponibles

    Given Estoy en la sección de inventario

    When Visualizo la lista de ingredientes

    Then Veo un listado detallado con la disponibilidad y fecha de vencimiento de cada ingrediente


#-------------------------------------------------------------
Scenario: E02-Visualizar inventario detallado sin ingredientes disponibles

    Given Estoy en la sección de inventario

    When No hay ingredientes disponibles

    Then Veo un mensaje indicando que no hay ingredientes disponibles en el inventario


#-------------------------------------------------------------
Scenario: E03-Visualizar fecha de vencimiento próxima de los ingredientes

    Given Estoy en la sección de inventario

    When Visualizo la lista de ingredientes

    Then Veo la fecha de vencimiento más próxima para cada ingrediente


#-------------------------------------------------------------
Scenario: E04-Visualizar detalles específicos de un ingrediente en el inventario

    Given Estoy en la sección de inventario

    When Selecciono un ingrediente específico

    Then Veo los detalles detallados de ese ingrediente, incluyendo disponibilidad y fecha de vencimiento

#-------------------------------------------------------------
