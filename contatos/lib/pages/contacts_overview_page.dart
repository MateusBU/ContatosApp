import 'package:contatos/components/contact_item_widget.dart';
import 'package:flutter/material.dart';

class ContactsOverviewPage extends StatelessWidget {
  const ContactsOverviewPage({super.key});

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
              itemCount: 5,
              itemBuilder: (
                (ctx, index) => const ContactItemWidget()
              ),
            ),
          ),
        ],
      ),
    );
  }
}