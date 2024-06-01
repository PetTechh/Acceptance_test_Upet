Feature: Ver planes disponibles de suscripción
 Como propietario/a de mascota sin suscripción,
 Quiero poder visualizar los planes disponibles de suscripción,
 Para comparar y decidir la elección de un plan que se ajuste a mis necesidades.

 Scenario: Visualización de los planes de suscripción
   Given el usuario está en la versión gratuita de la aplicación como propietario/a de mascota sin suscripción
   When el usuario requiere la información de los planes a los que puede acceder
   Then el usuario obtiene la información sobre los beneficios de los planes de suscripción

 Scenario: Acceso al detalle de un plan de suscripción
   Given el usuario está en la versión gratuita de la aplicación como propietario/a de mascota sin suscripción
   When el usuario requiere la información más detallada de un plan que se ajuste a sus necesidades
   Then el usuario obtiene información más detallada sobre los beneficios del plan seleccionado

 Examples: Planes de suscripción
   | plan          | precio_mensual | beneficios_clave                                        |
   | Plan Básico   | $4.99          | Acceso a historial de citas, recordatorios de vacunas   |
   | Plan Familiar | $9.99          | Todo lo del Plan Básico + descuentos en clínicas        |
   | Plan Premium  | $14.99         | Todo lo del Plan Familiar + servicio de doctor en línea |