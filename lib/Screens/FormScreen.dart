import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  final _nameFocusNode = FocusNode();
  final _ageFocusNode = FocusNode();
  final _imageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fill these details'),
      ),
      body: Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration:
            const InputDecoration(labelText: 'Name'),
            keyboardType: TextInputType.name,
            focusNode: _nameFocusNode,
            onFieldSubmitted: (_) {
              FocusScope.of(context)
                  .requestFocus(_ageFocusNode);
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter your name';
              }
              return null;
            },
            onSaved: (value) {
            },
          ),
          SizedBox(height:10),
          TextFormField(
            decoration:
            const InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
            focusNode: _ageFocusNode,
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter your age';
              }
              return null;
            },
            onSaved: (value) {
            },
          ),
       const SizedBox(height: 10,),
        ],
      ),

      )
    );
  }
}
