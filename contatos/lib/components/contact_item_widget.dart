import 'package:flutter/material.dart';

class ContactItemWidget extends StatefulWidget {
  const ContactItemWidget({super.key});

  @override
  State<ContactItemWidget> createState() => _ContactItemWidgetState();
}

class _ContactItemWidgetState extends State<ContactItemWidget> {

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.black,
          child: Text('M', style: TextStyle(fontSize: 25 ),),
        ),
        title: const Text('Name'),
        subtitle: const Text('Telephone'),
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
    );
  }
}