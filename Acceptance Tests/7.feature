Feature: US27: Proporcionar una interfaz interactiva para asesorar a los gerentes

    Como asesor de gestión alimentaria y soluciones tecnológicas, quiero proporcionar una interfaz interactiva para facilitar la interacción y asesoramiento efectivo de los gerentes.

#-------------------------------------------------------------
Scenario: E01-Acceder a la interfaz de asesoramiento

    Given Estoy logueado en la aplicación como asesor

    When Accedo a la interfaz de asesoramiento

    Then Veo un panel interactivo con opciones para asesorar a los gerentes


#-------------------------------------------------------------
Scenario: E02-Seleccionar un restaurante para asesorar

    Given Estoy en la interfaz de asesoramiento

    When Selecciono un restaurante específico para asesorar

    Then Accedo a la información y configuraciones de ese restaurante


#-------------------------------------------------------------
Scenario: E03-Proporcionar recomendaciones de gestión alimentaria

    Given Estoy asesorando a un restaurante

    When Proporciono recomendaciones de gestión alimentaria

    Then Las recomendaciones se registran y se muestran al gerente


#-------------------------------------------------------------
Scenario: E04-Ofrecer soluciones tecnológicas para mejorar la eficiencia

    Given Estoy asesorando a un restaurante

    When Ofrezco soluciones tecnológicas para mejorar la eficiencia

    Then Las soluciones tecnológicas se registran y se muestran al gerente


#-------------------------------------------------------------
Scenario: E05-Visualizar historial de asesoramiento

    Given Estoy en la interfaz de asesoramiento

    When Accedo al historial de asesoramiento

    Then Puedo ver un registro detallado de todas las interacciones y asesoramientos previos
