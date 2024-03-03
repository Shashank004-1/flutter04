import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 125),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {

                        },
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter email' : null;
                        },
                      ),
                    ),

                    const SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 125),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your Password',
                          border: OutlineInputBorder(),



                        ),
                        onChanged: (String value){
                        },
                        )
                      ),


                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 500),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {},
                        color: Colors.indigo,
                        textColor: Colors.white,
                        child: const Text('Login'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}