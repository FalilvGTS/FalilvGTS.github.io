Feature: US08: Configurar estándares de calidad de ingredientes como gerente/administrador de restaurante

    Como gerente/administrador de restaurante, quiero poder configurar los estándares de calidad de los ingredientes en la aplicación para garantizar un mejor servicio.

#-------------------------------------------------------------
Scenario: E01-Acceder a la configuración de estándares de calidad

    Given Estoy logueado en la aplicación como gerente/administrador

    When Accedo a la configuración de estándares de calidad

    Then Veo un panel interactivo con opciones para configurar los estándares de calidad


#-------------------------------------------------------------
Scenario: E02-Configurar estándares de calidad de ingredientes

    Given Estoy en la configuración de estándares de calidad

    When Establezco los estándares de calidad para diferentes tipos de ingredientes

    Then Los estándares de calidad se guardan y quedan reflejados en la aplicación


#-------------------------------------------------------------
Scenario: E03-Editar estándares de calidad de ingredientes

    Given Estoy en la configuración de estándares de calidad

    When Modifico los estándares de calidad previamente establecidos

    Then Los cambios se guardan y se aplican a los ingredientes correspondientes


#-------------------------------------------------------------
Scenario: E04-Restaurar estándares de calidad predeterminados

    Given Estoy en la configuración de estándares de calidad

    When Restauro los estándares de calidad a los valores predeterminados

    Then Los estándares de calidad vuelven a los valores predeterminados de fábrica


#-------------------------------------------------------------
