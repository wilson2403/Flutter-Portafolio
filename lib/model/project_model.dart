class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Ins 24/7 Android',
    'INS 24/7 is a mobile app designed for our insured clients by CRM and Sharepoint services, allowing them to quickly request roadside and home assistance services.',
    'assets/projects/Ins 24_7.png',
    'https://play.google.com/store/apps/details?id=com.insservicios.appclientes&hl=es_419',
  ),
 Project(
    'INSpectores Android',
    'It allows for the assignment and monitoring of cases for the handling of claims related to INS automobile policies through the service provided by the INS Group for Costa Rica.',
    'assets/projects/Inspectores.jpg',
    'https://apps.apple.com/cr/app/inspectores/id1448766924',
  ),
  Project(
    'Aliados Android',
    'It allows for the assignment and monitoring of assistance services provided to our policyholders through the INS Groups network of strategic partners in Costa Rica.',
    'assets/projects/Aliados.jpg',
    'https://apps.apple.com/cr/app/aliados-ins-servicios/id1290523486',
  ),
];
