US 07.feature - Almacenamiento Encriptado de Documentos (Seguridad) 
Feature: Encriptación en la persistencia de datos 
    As a administrador de la plataforma
    I want to que las fichas técnicas de los residuos se almacenan encriptadas
    So that evite la filtración de información confidencial entre empresas competidoras. 

Scenario: Verificación de cifrado AES-256 en carga de documentos 
    Given que el Jefe de Planta ha subido una ficha técnica "ficha_residuos_textiles.pdf" 
    When el sistema procesa el archivo para su almacenamiento en el Cloud Storage 
    Then el backend debe aplicar el algoritmo de encriptación AES-256 antes de guardarlo 
    And el estado del archivo temporal en el servidor debe ser "Eliminado automáticamente". 
