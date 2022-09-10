import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class AppRouter {
static Route? onGenerateRote(RouteSettings settings) {
print('The Route is: ${settings.name}');

switch (settings.name) {
case '/':
return HomeScreen.route();

default:
return _errorRoute();
}
}

static Route _errorRoute() {
return MaterialPageRoute(
builder: (_) => Scaffold(appBar: AppBar(title: const Text('error'))),
settings: const RouteSettings(name: '/error'),
);
}
}