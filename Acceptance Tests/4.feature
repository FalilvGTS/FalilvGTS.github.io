Feature: US19: Registrar ingredientes recibidos como empleado de restaurante

    Como empleado de restaurante, quiero registrar los ingredientes recibidos en la aplicación para mantener un registro preciso de los ingredientes que llegan al restaurante.

#-------------------------------------------------------------
Scenario: E01-Registrar ingredientes recibidos exitosamente

    Given Estoy en la sección de registro de ingredientes recibidos

    When Ingreso los detalles de los ingredientes recibidos
        | Nombre          | Cantidad  | Fecha de Recepción | Número de Lote |
        | Lechuga         | 10        | 2023-10-31         | L12345        |
        | Tomates         | 20        | 2023-10-31         | T67890        |
        | Papas           | 15        | 2023-10-31         | P54321        |

    Then Los ingredientes son registrados exitosamente


#-------------------------------------------------------------
Scenario: E02-Intento registrar ingredientes sin completar todos los campos

    Given Estoy en la sección de registro de ingredientes recibidos

    When Intento registrar ingredientes sin completar todos los campos requeridos

    Then Veo un mensaje indicando que algunos campos son obligatorios


#-------------------------------------------------------------
Scenario: E03-Intento registrar ingredientes con fecha de recepción inválida

    Given Estoy en la sección de registro de ingredientes recibidos

    When Ingreso una fecha de recepción inválida para un ingrediente
        | Nombre   | Cantidad  | Fecha de Recepción | Número de Lote |
        | Lechuga  | 10        | 2023-20-50         | L12345        |

    Then Veo un mensaje indicando que la fecha de recepción es inválida


#-------------------------------------------------------------
Scenario: E04-Visualizar historial de ingredientes recibidos

    Given Estoy en la sección de registro de ingredientes recibidos

    When Accedo al historial de ingredientes recibidos

    Then Puedo ver una lista detallada de todos los ingredientes registrados, incluyendo nombre, cantidad, fecha de recepción y número de lote
