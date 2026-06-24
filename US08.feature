US08.feature - Expiración Automática de Sesión (Seguridad) 
Feature: Control de tiempo de vida de la sesión activa 
    As a Jefe de Planta 
    I want to qué mi sesión expira automáticamente tras 15 minutos de inactividad
    So that evite que personal no autorizado realice transacciones a nombre de la fábrica. 

 Scenario: Cierre de sesión por inactividad prolongada 
    Given que el usuario ha iniciado sesión con un token JWT válido 
    When el frontend detecta una inactividad total en la interfaz durante 15 minutos 
    Then el sistema debe destruir el token activo en el servidor 
    And debe redirigir  automáticamente al usuario a la pantalla de login 
    And debe mostrar la alerta visual "Su sesión ha expirado por inactividad". 
