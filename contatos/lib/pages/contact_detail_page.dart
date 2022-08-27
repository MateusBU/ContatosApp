import 'package:flutter/material.dart';

import '../models/contact.dart';



class ContactDetailPage extends StatelessWidget {
  
  
  const ContactDetailPage();

  @override
  Widget build(BuildContext context) {
    final Contact contact = ModalRoute.of(context)!.settings.arguments as Contact;
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Container(
        child:  Center(
          child: Text(contact.name),
        ),
      ),
    );
  }
}