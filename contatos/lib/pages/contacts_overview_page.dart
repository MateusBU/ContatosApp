import 'package:contatos/components/contact_item_widget.dart';
import 'package:contatos/data/dummy_data.dart';
import 'package:flutter/material.dart';

import '../models/contact.dart';

class ContactsOverviewPage extends StatelessWidget {
  ContactsOverviewPage({super.key});

  final List<Contact> contacts = dummyContact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Column(
        children: [
          Container(
          decoration: const BoxDecoration(
            color: Colors.green
          ),
            height: 100,
            width: double.infinity,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (
                (ctx, index) => ContactItemWidget(contacts[index])
              ),
            ),
          ),
        ],
      ),
    );
  }
}