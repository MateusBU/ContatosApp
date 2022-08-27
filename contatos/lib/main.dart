import 'package:contatos/pages/contact_detail_page.dart';
import 'package:contatos/pages/contacts_overview_page.dart';
import 'package:flutter/material.dart';

import 'routes/routes_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppRoutes.HOME: (context) => ContactsOverviewPage(),
        AppRoutes.CONTACT_DETAIL: (context) => const ContactDetailPage(),
      },
    );
  }
}