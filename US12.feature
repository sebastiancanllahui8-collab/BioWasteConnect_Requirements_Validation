US12.feature - Validaciones y Mensajes de Error Claros (Usabilidad) 
Validación dinámica de campos de registro 
    As a Jefe de Planta 
    I want to que las validaciones y mensajes de error al registrar un lote sean claros 
    So that puedo identificar de inmediato qué dato corregir sin duplicar el trabajo. 

Scenario:Intento de envío de formulario con formato inválido 
    Given que el usuario está llenando el formulario de registro de lote 
    When ingresa una cantidad con texto en el campo numérico "Volumen Disponible" 
    Then el sistema debe pintar una alerta visual dinámica de color rojo a su costado 
    And debe deshabilitar inmediatamente el botón "Enviar" And debe mostrar el mensaje      
          descriptivo 
    "El campo volumen debe contener solo valores numéricos enteros". 
