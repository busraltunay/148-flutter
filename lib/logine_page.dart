import 'package:flutter/material.dart';
 

class LoginePage extends StatefulWidget {
  const LoginePage({super.key});
 

  @override
  State<LoginePage> createState() => _LoginePageState();
}

class _LoginePageState extends State<LoginePage> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
        body:Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:20.0,right:20.0),
                child: TextFormField(
                  
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.pink),
                    ),
                    labelText: "KULANICI ADINIZ : ",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()
                    ),
                  validator: (String? value){
                    if (value != null && value.isEmpty) {
                      return "Kullanıcı Adınızı Giriniz";
                    }else {
                      return null;
                    }
                  },
                  
                ),
              )
            ],
          )
        ),
    );
  }
}

