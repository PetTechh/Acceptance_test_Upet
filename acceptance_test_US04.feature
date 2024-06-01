Feature: Cerrar sesión
  Como propietario de una mascota o administrador de una clínica veterinaria,
  Quiero tener la capacidad de cerrar sesión en la aplicación cuando haya terminado de utilizarla,
  Para garantizar la seguridad de mi información y proteger mi privacidad.

  Scenario: Cierre de sesión exitoso
    Given el usuario está autenticado en la aplicación
    When selecciona la opción "Cerrar sesión" desde la pantalla de inicio
    Then se cierra exitosamente la sesión del usuario
      And se redirige a la pantalla de inicio de sesión

  Examples: Tipos de usuario
    | tipo_usuario                |
    | Propietario de mascota      |
    | Veterinario                 |