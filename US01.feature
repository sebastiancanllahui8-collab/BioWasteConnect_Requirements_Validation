US01.feature - Registro de Empresa Generadora
Feature: Registro de nuevas empresas en la plataforma
    As a Representante de una Empresa Generadora de Residuos
    I want to Registrar mi organización en BioWasteConnect
    So that Puedo publicar mis excedentes orgánicos industriales.
Scenario: Registro exitoso de una empresa con RUC válido
    Given que el usuario se encuentra en la página de registro corporativo
    When ingresa un RUC válido de 11 dígitos, razón social, correo corporativo y contraseña
    And hace clic en el botón "Registrar Empresa"
    Then el sistema valida los datos con la base de datos de SUNAT
    And crea la cuenta de la organización
               And muestra el mensaje "Registro completado con éxito, bienvenido a BioWasteConnect". 
Examples:
 | ruc                          | razon_social           |               correo                   |   password         |
 | 20123456789         | Confecciones VES | ccoyllo@textilves.pe         |  Tela1234_VES | 
 | 20987654321         | BioAbono S.A.C.   | fnavarro@compostvmt.pe | Abono5678_     | 
Scenario: Intento de registro con RUC ya existente
    Given que el usuario está en el formulario de registro
    When ingresa un RUC que ya se encuentra registrado previamente en el sistema
    And presiona el botón "Registrar Empresa"
    Then el sistema bloquea la operación
    And muestra el mensaje de error "El RUC ingresado ya cuenta con una cuenta activa".
Examples:
 | ruc_duplicado |
 | 20123456789 | 
