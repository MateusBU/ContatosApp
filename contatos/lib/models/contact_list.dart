import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

import 'contact.dart';

class ContactList with ChangeNotifier{

  final List<Contact> _items = dummyContact;
  List<Contact> get items => [..._items];//retorna um clone dos items

  void addContact(Contact contact){
    _items.add(contact);
    notifyListeners();
  }

}