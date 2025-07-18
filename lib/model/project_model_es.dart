class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

// ignore: non_constant_identifier_names
List<Project> projectList_spanish = [
  Project(
    'Ins 24/7 Android',
    'INS 24/7 es una app móvil para nuestros asegurados por CRM y servicios Sharepoint, que les permite solicitar de forma rápida servicios de asistencia en carretera y hogar.',
    'assets/projects/Ins 24_7.png',
    'https://play.google.com/store/apps/details?id=com.insservicios.appclientes&hl=es_419',
  ),
  Project(
    'INSpectores Android',
    'Permite la asignación y monitoreo de casos para la atención de siniestros relacionados a las pólizas de automóviles del INS por medio al servicio brindado del Grupo INS para Costa Rica.',
    'assets/projects/Inspectores.jpg',
    'https://apps.apple.com/cr/app/inspectores/id1448766924',
  ),
  Project(
    'Aliados Android',
    'Permite la asignación y monitoreo de los servicios de asistencia brindados a nuestros asegurados por medio de la red de aliados estratégicos del Grupo INS para Costa Rica.',
    'assets/projects/Aliados.jpg',
    'https://apps.apple.com/cr/app/aliados-ins-servicios/id1290523486',
  ),
];
