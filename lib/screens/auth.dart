import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
final _firebase = FirebaseAuth.instance;

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
 final  _form = GlobalKey<FormState>();
  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredPass = '';


  void _submit() async {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
       
   return ; 
    }
    _form.currentState!.save();
    if (_isLogin) {

    }else {
    
     final userCredentials = await _firebase.createUserWithEmailAndPassword(email: _enteredEmail, password: _enteredPass);
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                /*margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                  left: 20,
                  right: 20,
                ), */
                width: double.infinity,
                child: Image.asset('assets/images/pxfuel.jpg'),
              ), 
              Card(
                margin: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Form(
                        key: _form,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Email Address'),
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              textCapitalization: TextCapitalization.none,
                              validator: (value) {
                                if(value == null){return 'Enter Email adress';}
                                return null;
                              },
                              onSaved: (newValue) => _enteredEmail = newValue!,
                            ),
                            TextFormField(
                              decoration:
                                  const InputDecoration(labelText: 'Password'),
                              obscureText: true,
                              validator: (value) {
                                if(value == null || value.trim().length < 4){return 'Password must be at least 4 characters';}
                                return null;
                              },
                               onSaved: (newValue) => _enteredPass = newValue!,
                            ),
                            const SizedBox(height: 12),
                            ElevatedButton(
                              onPressed: _submit,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                              child: Text(_isLogin ? 'Login' : 'Signup'),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _isLogin = !_isLogin;
                                });
                              },
                              child: Text(_isLogin
                                  ? 'Create an account'
                                  : 'I already have an account'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
