import 'package:contatos/pages/contact_detail_page.dart';
import 'package:contatos/pages/contact_form_page.dart';
import 'package:contatos/pages/contacts_overview_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/contact_list.dart';
import 'routes/routes_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ContactList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: (Colors.indigo),
          fontFamily: 'Lato',
        ),
        routes: {
          AppRoutes.HOME: (context) => const ContactsOverviewPage(),
          AppRoutes.CONTACT_DETAIL: (context) =>  const ContactDetailPage(),
          AppRoutes.CONTACT_FORM: (context) => ContactFormPage(),
        },
      ),
    );
  }
}