Feature: Añadir horarios de atención
 Como veterinaria o personal autorizado de la clínica veterinaria,
 Quiero poder añadir mis horarios de atención al usuario,
 Para evitar que mis clientes se acerquen en días no laborales de mi veterinaria.

 Scenario: Registro de horarios de atención
   Given el usuario está autenticado en la aplicación como veterinario/a o personal autorizado
   When se selecciona la opción de añadir horario de atención
   Then la aplicación le mostrará un apartado para que pueda ingresar el horario que brindará

 Scenario: Confirmación de registro de horario
   Given el usuario es una veterinaria o personal autorizado y ya ingresó su horario de atención
   When confirma el horario ingresado
   Then la aplicación muestra un mensaje de confirmación del horario regulado
     And el horario está listo para ser publicado

 Examples: Formato de horarios
   | dia_semana | hora_apertura | hora_cierre |
   | Lunes      | 08:00         | 18:00       |
   | Martes     | 08:00         | 18:00       |
   | Miércoles  | 08:00         | 18:00       |
   | Jueves     | 08:00         | 18:00       |
   | Viernes    | 08:00         | 18:00       |
   | Sábado     | 09:00         | 14:00       |
   | Domingo    | Cerrado       | Cerrado     |