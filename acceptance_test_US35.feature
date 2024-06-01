Feature: Ver detalles de cada veterinaria
 Como propietario/a de mascota autenticado y suscrito a un plan,
 Quiero poder visualizar la información de cada veterinaria,
 Para poder elegir con mayor eficacia la veterinaria acorde a mis necesidades

 Scenario: Visualización de detalles de veterinaria
   Given el usuario está autenticado como propietario/a en la versión gratuita o suscrito en la aplicación
   When desea visualizar los detalles de una veterinaria específica
   Then la aplicación muestra información detallada sobre la veterinaria seleccionada

 Scenario: Ver detalles de la veterinaria con filtros de búsqueda
   Given el usuario está autenticado como propietario/a en la versión gratuita o suscrito en la aplicación
   When desea ver los detalles de una veterinaria, pero tiene preferencias específicas, como los servicios ofrecidos
   Then la aplicación permite al usuario aplicar filtros de búsqueda
     And ver solo las veterinarias que cumplan con sus criterios específicos

 Examples: Detalles de veterinaria
   | Horario de atención | Servicios ofrecidos       | Especialidades     | Ubicación y contacto    | Calificación y reseñas |
   | Lunes a viernes     | Vacunación, cirugía, etc. | Dermatología, etc. | Av. Prado 12, 935279452 | 4.5/5, muy bueno       |
   | Sábado y domingo    | Spa, baños, etc.          | Cuidado canino     | Av. Lima 126, 935279452 | 4.0/5, bueno           |

 Examples: Filtros de búsqueda
   | filtro                   |
   | Servicio (vacunación, cirugía, etc.) |
   | Especialidad (dermatología, oftalmología, etc.) |
   | Ubicación                |
   | Calificación mínima      |