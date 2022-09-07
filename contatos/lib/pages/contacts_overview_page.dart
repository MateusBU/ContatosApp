import 'package:contatos/components/contact_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/contact.dart';
import '../models/contact_list.dart';
import '../routes/routes_app.dart';

class ContactsOverviewPage extends StatelessWidget {
  const ContactsOverviewPage({super.key});


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ContactList>(context);
    final List<Contact> contacts = provider.items;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed(
                AppRoutes.CONTACT_FORM,
              );
            },
            icon: const Icon(Icons.add_circle_outline),
          ),
        ],
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
                (ctx, index) => ChangeNotifierProvider.value(
                  value: contacts[index],
                  child: ContactItemWidget(),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}