class Project {
  final String name;
  final String description;
  final List<String> stack;
  final List<String> platforms;
  final String role;
  final String status;

  final String? githubUrl;
  final String? androidUrl;
  final String? iosUrl;
  final String? huaweiUrl;
  final String? websiteUrl;

  final bool featured;

  const Project({
    required this.name,
    required this.description,
    required this.stack,
    required this.platforms,
    required this.role,
    required this.status,
    this.githubUrl,
    this.androidUrl,
    this.iosUrl,
    this.huaweiUrl,
    this.websiteUrl,
    this.featured = false,
  });
}

final List<Project> projects = [
  Project(
    name: 'Gooolak',
    description:
        'GoOOolak is the easiest way to book a football pitch and find players to complete your team — whether you\'re playing 5v5, 6v6, 7v7, or 11v11.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'OneSignal',
      'Hive',
    ],
    platforms: ['Android', 'iOS', 'Huawei'],
    role: 'Flutter Developer',
    status: 'Published',
    androidUrl: 'https://play.google.com/store/apps/details?id=com.f.gooolak',
    iosUrl:
        'https://apps.apple.com/jo/app/gooolak-%D8%AC%D9%88%D9%84%D9%83/id6788761103',
    huaweiUrl: 'https://appgallery.huawei.com/#/app/C118358555',
    featured: true,
  ),
  Project(
    name: 'DeliverIt',
    description:
        'A modern food and grocery delivery app that connects customers with local stores and restaurants. Users can browse products, place orders, make secure payments, and track their deliveries in real time.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'Google Maps',
      'Stripe',
      'OneSignal',
      'Realm',
      'Login By Google',
      'Login By Apple',
    ],
    platforms: ['Android', 'iOS', 'Huawei'],
    role: 'Flutter Developer',
    status: 'Published',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.deliverit.deliverit_app',
    iosUrl: 'https://apps.apple.com/us/app/deliverit-app/id6743458816',
    huaweiUrl: 'https://appgallery.huawei.com/#/app/C113377315',
    featured: true,
  ),
  Project(
    name: 'DeliverIt Partner',
    description:
        'A merchant application designed to streamline store operations and order fulfillment. Partners can manage incoming orders, prepare customer orders, manage products, and efficiently handle day-to-day delivery operations.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'Google Maps',
      'OneSignal',
      'Realm',
    ],
    platforms: ['Android', 'iOS', 'Huawei'],
    role: 'Flutter Developer',
    status: 'Published',

    androidUrl:
        'https://play.google.com/store/apps/details?id=com.app.deliverit_store_app',
    iosUrl: '',
    huaweiUrl: 'https://appgallery.huawei.com/#/app/C113331941',

// iOS link not verified yet.
    featured: true,
  ),
  Project(
    name: 'DeliverIt Driver',
    description:
        'A driver-focused delivery application built to manage the complete delivery workflow. Drivers can receive and manage orders, navigate to destinations, update delivery status, receive real-time notifications, and share their location throughout the delivery process.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'Socket.IO',
      'Google Maps',
      'OneSignal',
      'Realm',
      'Login By Google',
      'Login By Apple',
    ],
    platforms: ['Android', 'iOS', 'Huawei'],
    role: 'Flutter Developer',
    status: 'Published',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.deliverit_driver.deliverit_driver_app',
    iosUrl: 'https://apps.apple.com/us/app/deliverit-driver-app/id6743770640',
    huaweiUrl: 'https://appgallery.huawei.com/#/app/C113357723',
    featured: true,
  ),
  Project(
    name: 'Dr.Service',
    description:
        'An on-demand roadside assistance platform that connects drivers with professional service providers when they need help on the road. Customers can request services such as vehicle unlocking, tire assistance, fuel delivery, battery support, and towing, while tracking the service request in real time.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'Socket.IO',
      'Google Maps',
      'Real-time Tracking',
      'Realm',
      'Login By Google',
      'Login By Apple',
    ],
    platforms: [
      'Android',
      'iOS',
    ],
    role: 'Flutter Developer',
    status: 'Published',

    androidUrl:
        'https://play.google.com/store/apps/details?id=com.d.doctor_service_app',
    iosUrl: 'https://apps.apple.com/jo/app/dr-service/id6754256812',

// iOS link not verified yet.
    featured: true,
  ),
  Project(
    name: 'Dr.Service Driver',
    description:
        'A professional roadside assistance app for service providers. Providers can receive nearby service requests, review customer and vehicle details, navigate to the customer location, manage the service lifecycle, and complete roadside assistance jobs.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'Socket.IO',
      'Google Maps',
      'Real-time Tracking',
      'Realm',
      'Login By Google',
      'Login By Apple',
    ],
    platforms: [
      'Android',
      'iOS',
    ],
    role: 'Flutter Developer',
    status: 'Published',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.d.dr_service_driver',
    iosUrl: 'https://apps.apple.com/jo/app/dr-service-driver/id6754193465',
    featured: true,
  ),
  Project(
    name: 'HiAiBox',
    description:
        'A community-driven mobile platform built for truck drivers to share real-world experiences, report truck-related issues, exchange knowledge, and connect with fellow drivers and mechanics for practical support on the road.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'Video Upload',
      'User Generated Content',
      'Realm',
      'Login By Google',
      'Login By Apple',
    ],
    platforms: [
      'Android',
      'iOS',
    ],
    role: 'Flutter Developer',
    status: 'Published',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.hiaibox.hiaibox',
    iosUrl: 'https://apps.apple.com/us/app/hiaibox/id6505112510',
    featured: true,
  ),
  Project(
    name: 'CleanOva',
    description:
        'A cleaning marketplace that brings multiple cleaning companies together in one platform.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'Socket.IO',
      'Google Maps',
      'Real-time Tracking',
      'Hive',
      'Login By Google',
      'Login By Apple',
    ],
    platforms: [
      'Android',
      'iOS',
    ],
    role: 'Flutter Developer',
    status: 'In Development',
    featured: true,
  ),
  Project(
    name: 'CleanOva Companies',
    description:
        'A company dashboard for managing cleaning services, bookings, staff, and operations.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'Socket.IO',
      'Google Maps',
      'Real-time Tracking',
      'Hive',
      'Login By Google',
      'Login By Apple',
    ],
    platforms: [
      'Android',
      'iOS',
    ],
    role: 'Flutter Developer',
    status: 'In Development',
    featured: true,
  ),
  Project(
    name: 'CleanOva Members'
        '',
    description:
        'A dedicated app for cleaning company members to manage assigned jobs and daily tasks.',
    stack: [
      'BLoC',
      'REST API',
      'Firebase',
      'Socket.IO',
      'Google Maps',
      'Real-time Tracking',
      'Hive',
    ],
    platforms: [
      'Android',
      'iOS',
    ],
    role: 'Flutter Developer',
    status: 'In Development',
    featured: true,
  ),
];
