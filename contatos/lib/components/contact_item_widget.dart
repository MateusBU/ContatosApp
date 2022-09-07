import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/contact.dart';
import '../routes/routes_app.dart';

class ContactItemWidget extends StatefulWidget {

  @override
  State<ContactItemWidget> createState() => _ContactItemWidgetState();
}

class _ContactItemWidgetState extends State<ContactItemWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final contact = Provider.of<Contact>(context,listen:false);
    return  Card(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.black,
              child: Text('M', style: TextStyle(fontSize: 25 ),),
            ),
            title: Text(contact.name),
            subtitle: Text(contact.number[0]),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                _isExpanded = !_isExpanded;              
                });
              }, 
              icon: _isExpanded 
                ? const Icon(Icons.expand_less_outlined)
                : const Icon(Icons.expand_more_outlined),
            ),
          ),
          if(_isExpanded)
            SizedBox(
              width: double.infinity,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            AppRoutes.CONTACT_DETAIL,
                            arguments: contact,
                          );
                        },
                        iconSize: 35,
                        icon: const Icon(Icons.info_outline,color: Colors.blue,)
                      ),
                      const Text('Info'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        iconSize: 35,
                        icon: const Icon(Icons.delete_outline, color: Colors.orange)
                      ),
                      const Text('Delete'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        iconSize: 35,
                        icon: const Icon(Icons.call_outlined, color: Colors.green)
                      ),
                      const Text('Call'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        iconSize: 35,
                        icon: const Icon(Icons.message_outlined, color: Colors.grey)
                      ),
                      const Text('Message'),
                    ],
                  ),
                ]
              ),
            ),
        ],
      ),
    );
  }
}