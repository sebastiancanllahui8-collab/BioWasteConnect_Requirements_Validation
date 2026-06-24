US04.feature - Búsqueda Avanzada y Filtro de Residuos (Base User Story)
Feature: Búsqueda y filtrado inteligente de subproductos
    As a Empresa Receptora/Procesadora de Residuos
    I want to Filtrar los residuos industriales por tipo, volumen y cercanía geográfica
    So that Puedo encontrar insumos óptimos para mi cadena de producción de forma rápida.
 
Scenario: Búsqueda de residuos con filtros aplicados exitosamente
    Given que la empresa receptora ha iniciado sesión y está en el panel de búsqueda
    When selecciona el filtro de tipo "Residuos Agropecuarios"
    And define un radio de distancia "Menor a 50 km"
    And hace clic en "Buscar"
    Then el sistema procesa los parámetros mediante el algoritmo de emparejamiento
    And despliega una lista de publicaciones activas que cumplen estrictamente con los criterios
    And ordena los resultados priorizando el menor costo de transporte.
Examples:
 |      tipo_residuo           |  distancia     | 
 | Residuos Agropecuarios      | Menor a 50 km  | 
 | Residuos Textiles           | Menor a 5 km   | 
