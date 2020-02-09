import 'package:flutter/material.dart';
import 'package:green_farm/crop_details/cropdetailes.dart';

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Registrationform();
  }
}

class Registrationform extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: const SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: RegisterForm(),
        )));
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Firstname',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Firstname is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Last name',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Last name is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                // ignore: missing_return
                return 'Email is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Phone no',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Phone no is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'City',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'City is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Village',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Village detailes is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Panchayath',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Panchayath is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Landmark',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Landmark is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Aadhar no',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Aadhar no is required';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: _agreedToTOS,
                  onChanged: _setAgreedToTOS,
                ),
                GestureDetector(
                  onTap: () => _setAgreedToTOS(!_agreedToTOS),
                  child: const Text(
                    'I agree to the Terms of Services and Privacy Policy',
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              const Spacer(),
              OutlineButton(
                highlightedBorderColor: Colors.black,
                onPressed: _submittable()
                    ? _submit
                    : Navigator.of(context).push(MaterialPageRoute( builder: (context) => Cropdetailes())),
                child: const Text('Register'),
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
