Feature: Editar información de la mascota
 Como propietario de una mascota,
 Quiero poder editar la información del perfil de mi mascota en la aplicación,
 Para mantener actualizada la información de mis mascotas.

 Scenario: Acceso al perfil de la mascota para editar
   Given el usuario se encuentra en el perfil de la mascota que desea editar
   When selecciona la opción de actualizar información
   Then aparece el formulario de edición de perfil

 Scenario: Edición de la información de la mascota
   Given el propietario de la mascota se encuentra en el formulario
   When modifica la información de su mascota y selecciona la opción guardar
   Then muestra un mensaje que la información del perfil de la mascota ha sido actualizada correctamente

 Scenario: Validación de datos al editar
   Given que el propietario de la mascota se encuentra en el formulario de edición de perfil
   When intenta guardar cambios con un campo obligatorio sin completar
   Then se muestra un mensaje de error indicando que es necesario completar todos los campos obligatorios antes de guardar los cambios

 Examples: Campos obligatorios para editar perfil de mascota
   | Nombre       | Fecha de nacimiento | Especie        | Raza           |
   | Rocky        | 01/01/2019          | Perro          | Labrador       |
   | Luna         | 01/01/2018          | Gato           | Siames         |
   