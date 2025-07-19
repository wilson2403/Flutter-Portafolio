class CertificateModel {
  final String name;
  final String nombre;
  final String organization;
  final String date;
  final String skills;
  final String credential;
  final String download;

  CertificateModel({
    required this.name,
    required this.nombre,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
    required this.download,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter: Your Complete Guide to iOS and Android',
    nombre: 'Flutter: Tu guía completa para iOS y Android',
    organization: 'Udemy',
    date: '07 2025',
    skills: 'Flutter . Dart',
    credential:  'http://ude.my/UC-dade71bc-22e0-4d4a-a270-341312f9644f',
    download: "assets/certifications/flutter.jpg"
  ),
  CertificateModel(
    name: 'Appvance Letter of Recommendation',
    nombre: 'Carta de Recomendación Appvance',
    organization: 'Recommendation',
    date: '10 2024',
    skills: 'Appium, Selenium Testing',
    credential:  'https://i.postimg.cc/Yq7MPg3g/Carta-Recomendacion-Wilson-Alfaro-Ingles-docx-1.png',
    download: "assets/certifications/Carta Recomendacion.jpg"
  ),
  CertificateModel(
    name: 'Android 12 Jetpack Compose Developer Course - from 0 to Hero',
    nombre: 'Desarrollo en Android 12 Jetpack Compose - desde 0 hasta Hero',
    organization: 'Udemy',
    date: '07 2022',
    skills: 'Kotlin . Jetpack Compose . Android Development',
    credential: "https://i.postimg.cc/c4jqyPjN/Android-12-Jetpack-Compose-Developer-Course-From-0-To-Hero.jpg",
    download:  'assets/certifications/Android 12 Jetpack Compose.png'
  ),
  CertificateModel(
    name: 'Modern Anxdroid app using Kotlin, MVVM, Dagger2, RxJava & more',
    nombre: 'Aplicación moderna para Android que utiliza Kotlin, MVVM, Dagger2, RxJava y más.',
    organization: 'Udemy',
    date: '08 2022',
    skills: 'Kotlin, MVVM, Dependency injections',
    credential:  'https://i.postimg.cc/T36PvyBx/Dependency-injections.jpg',
    download: "assets/certifications/Dependency injections.jpg"
  ),
  CertificateModel(
    name: 'Kotlin course in Spanish for Android | From zero to professional',
    nombre: 'Curso Kotlin en Español para Android | De Cero a Profesional',
    organization: 'Udemy',
    date: '07 2022',
    skills: 'Kotlin',
    credential:  'https://i.postimg.cc/KYvbNt39/Kotlin.jpg',
    download: "assets/certifications/Kotlin.jpg"
  ),
  CertificateModel(
    name: 'Liderando con Autoridad',
    nombre: 'Leading with authority',
    organization: 'CaesCR',
    date: '12 2021',
    skills: 'Leading Development',
    credential:  'https://i.postimg.cc/ZnpbvZXp/WILSON-ALFARO-BADILLA-Liderazgo.png',
    download: "assets/certifications/Liderazgo.png"
  ),
  CertificateModel(
    name: 'WhatsApp bots from scratch with Dialogflow and App Premium',
    nombre: 'Creación de bots para WhatsApp desde cero con Dialogflow y App Premium',
    organization: 'Udemy',
    date: '01 2021',
    skills: 'Dialogflow & Whatsapp',
    credential:  'https://i.postimg.cc/CLFcd736/Bots-Whatsapp.jpg',
    download: "assets/certifications/Bots Whatsapp.jpg"
  ),
    CertificateModel(
    name: 'ASP.NET Core 3.1 MVC C# SQL Server sales system course',
    nombre: 'Curso sistema de venta en ASP.NET Core 3.1 MVC C# SQL Server',
    organization: 'Udemy',
    date: '09 2020',
    skills: 'ASP.NET Core 3.1 MVC C# SQL Server',
    credential:  'https://i.postimg.cc/43sBr5Jg/MVC-Asp-CORE.jpg',
    download: "assets/certifications/MVC Asp .CORE.jpg"
  ),
  CertificateModel(
    name: 'Complete Android Jetpack Masterclass',
    nombre: 'Curso completo sobre Android Jetpack',
    organization: 'Udemy',
    date: '07 2020',
    skills: 'Kotlin',
    credential:  'https://i.postimg.cc/kgw3BDYW/Senior-Android-Developer-by-learning-the-Jetpack-Suite-using-ROOM-Palette-MVVM-Retrofit-Navigati.jpg',
    download: "assets/certifications/Senior Android Jetpack Suite.jpg"
  ),
  CertificateModel(
    name: 'Mobile Application Development for iOS/Android with C#.net and Xamarin',
    nombre: 'Desarrollo de Aplicaciones Móviles para IOS / Android con C#.net y Xamarin',
    organization: 'Cenfotec',
    date: '02 2017',
    skills: 'Xamarin',
    credential:  'https://i.postimg.cc/3NPrfWQk/Titulo-cenfotec-xamarin.jpg8',
    download: "assets/certifications/Titulo cenfotec xamarin.jpg"
  ),
  CertificateModel(
    name: 'Bachelor Degree in Computer Systems Engineering',
    nombre: 'Bachillerato en Ingenería de Sistema Informaticos',
    organization: 'Universidad Latina de Costa Rica',
    date: '04 2016',
    skills: 'Systems Engineering',
    credential:  'https://i.postimg.cc/xTDcPFft/Titulo-de-Ingeneria-en-Sistemas-Universidad-Latina.jpg',
    download: "assets/certifications/Titulo de Ingeneria.jpg"
  ),
];
