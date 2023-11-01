Feature: US21: Reportar ingredientes de baja calidad como empleado de restaurante

    Como empleado de restaurante, quiero tener la capacidad de reportar ingredientes que no cumplen con los estándares de calidad definidos para mantener un control y asegurar un buen servicio.

#-------------------------------------------------------------
Scenario: E01-Reportar ingrediente de baja calidad exitosamente

    Given Estoy logueado en la aplicación como empleado

    When Identifico un ingrediente de baja calidad

        And Reporto el ingrediente de baja calidad con los siguientes detalles
        | Nombre          | Número de Lote | Fecha de Vencimiento |
        | Lechuga         | L12345        | 2023-11-15          |

    Then Recibo una confirmación de que el ingrediente ha sido reportado con éxito


#-------------------------------------------------------------
Scenario: E02-Intento reportar un ingrediente sin completar todos los campos

    Given Estoy logueado en la aplicación como empleado

    When Intento reportar un ingrediente sin completar todos los campos requeridos

    Then Recibo un mensaje indicando que algunos campos son obligatorios


#-------------------------------------------------------------
Scenario: E03-Intento reportar un ingrediente con fecha de vencimiento inválida

    Given Estoy logueado en la aplicación como empleado

    When Intento reportar un ingrediente con una fecha de vencimiento en el pasado
        | Nombre   | Número de Lote | Fecha de Vencimiento |
        | Lechuga  | L12345        | 2023-10-31          |

    Then Recibo un mensaje indicando que la fecha de vencimiento es inválida


#-------------------------------------------------------------
Scenario: E04-Visualizar historial de ingredientes reportados de baja calidad

    Given Estoy logueado en la aplicación como empleado

    When Accedo al historial de ingredientes reportados de baja calidad

    Then Puedo ver una lista detallada de los ingredientes reportados, incluyendo nombre, número de lote y fecha de vencimiento
