import 'package:flutter/material.dart';
import 'package:green_farm/form/Login.dart';
import 'package:green_farm/form/sidebar.dart';

class Cropdetailes extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Crop_detailes();
  }
}



class Crop_detailes extends State<Cropdetailes> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: const Text('Crop Detailes'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
              child: cropdetailes(),
            )

        )
    );
  }
}

class cropdetailes extends StatefulWidget {
  const cropdetailes({Key key}) : super(key: key);

  @override

  crop_detailesState createState() => crop_detailesState();
}





class crop_detailesState extends State<cropdetailes> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;

  @override
  Widget build(BuildContext context) {
    return
      Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'crop name',
            ),
            validator: (String value) {
              if (value
                  .trim()
                  .isEmpty) {
                return 'crop is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'area of cultivation',
            ),
            validator: (String value) {
              if (value
                  .trim()
                  .isEmpty) {
                return 'area of cultivation  is required';
              }
            },
          ),


          Row(
            children: <Widget>[
              const Spacer(),
              OutlineButton(
                highlightedBorderColor: Colors.black,
                onPressed: _submittable() ? _submit : Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>Login())),
                child: const Text('Submit'),
              ),
            ],
          ),
        ],
      ),
    );
  }


  bool _submittable() {
    return _agreedToTOS;
  }

  void _submit() {
    _formKey.currentState.validate();
    print('Form submitted');

  }

  void _setAgreedToTOS(bool newValue) {
    setState(() {
      _agreedToTOS = newValue;
    });
  }
}








