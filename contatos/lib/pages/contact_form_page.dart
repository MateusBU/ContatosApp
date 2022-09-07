

import 'package:flutter/material.dart';

import '../models/contact.dart';

class ContactFormPage extends StatefulWidget {
  

  const ContactFormPage({super.key});

  @override
  State<ContactFormPage> createState() => _ContactFormPageState();
}

class _ContactFormPageState extends State<ContactFormPage> {
  final _formKey = GlobalKey<FormState>();

  final _formData = <String, Object>{};

  static int quantityNumber = 1;

  @override
  void didChangeDependencies() {

    super.didChangeDependencies();

    if(_formData.isEmpty){
      final arg = ModalRoute.of(context)!.settings.arguments;

      if(arg != null){
        final contact = arg as Contact;

        _formData['id'] = contact.id;
        _formData['name'] = contact.name;
        _formData['number'] = contact.number;
      }
    }
  }

  List<Widget> _addNumber(){
    List<Widget> numberTextField = [];
    for (int i = 0; i< quantityNumber; i++){
      numberTextField.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TextFormField(
                initialValue: _formData['number']?.toString(),
                decoration: const InputDecoration(labelText: 'NUMBER'),
                textInputAction: TextInputAction.next,
              ),
            ),
            IconButton(
              onPressed: (){
                setState(() {
                  quantityNumber--;
                });
              },
              icon: const Icon(Icons.remove_circle_outline, color: Colors.red,),     
            ),
          ],
        ),
      );
    }
    return numberTextField;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insert a New Contact'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                initialValue: _formData['name']?.toString(),
                decoration: const InputDecoration(labelText: 'NAME'),
                textInputAction: TextInputAction.next,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('LIST OF NUMBERS'),
                        IconButton(
                          onPressed: (){
                            setState(() {
                              quantityNumber++;                        
                            });
                          },
                          icon: const Icon(Icons.add_circle_rounded, color: Colors.green,),                      
                        ),
                      ],
                    ),
                    ..._addNumber(),
                  ],
                ),
              ),                
            ],
          ),
        ),
      )
    );
  }
}