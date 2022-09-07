
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/contact.dart';



class ContactDetailPage extends StatelessWidget {
  
  
  const ContactDetailPage();

  @override
  Widget build(BuildContext context) {
    final Contact contact = ModalRoute.of(context)!.settings.arguments as Contact;
    final c = Provider.of<Contact>(context,listen:false);
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white, Colors.indigo]
                )
              ),
              child:  Center(
                child: Text(contact.name),
              ),
            ),
          ),
          Container(
            height: 70,
            margin: const EdgeInsets.all(5), 
            child: Card(
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(contact.name, 
                      style: const TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child:  IconButton(
                      onPressed: (){
                        c.toggleFavorite();
                      },
                      icon: Icon(Icons.star,  color: contact.isFavorite ? Colors.amber : Colors.grey),
                      ),
                  ),
                ],
              )
            ),
          ),
          Expanded(
            child: 
              ListView.builder(
                itemCount: contact.number.length,
                itemBuilder: (
                  (ctx, index) => Card(
                    child: Center(
                      child: Text(contact.number[index], style: const TextStyle(fontSize: 20))
                    ),
                  )
                ),
              ),
            ),
        ],
      ),
    );
  }
}