import 'dart:developer';

import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
 
   const TextFormFieldWidget({super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {

final GlobalKey<FormState>_formState =GlobalKey();            //içinde stateler tutabiliyor //projeyi ilk açtığında auto validate kapalı olur

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Form(
                key: _formState,
                autovalidateMode: AutovalidateMode.disabled,          // uyarıyı ekrana veriyor
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                    validator:(value){
                      return value!.isEmpty ? 'This area is not empty' : null ;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0,),),labelText: 'Hello',
                      counterText: '15',
                      helperText: 'Telefon Giriniz',
                    
                      suffixIcon: const Icon(Icons.flag_circle),
                      
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 15.0),
                    TextFormField(
                validator:(value){
                  return value!.isEmpty ? 'This area is not empty' : null ;
                },
                decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0,),),labelText: 'Hello',
                      counterText: '15',
                      icon: const Icon(Icons.monetization_on),
                      hintText: 'İsim Giriniz',
                    ),
                    
                ),
                TextFormField(
                validator:(value){
                  return value!.length > 5 ? null : 'Have error' ;
                },
                decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0,),),labelText: 'Hello',
                      counterText: '15',
                      helperText: 'Telefon Giriniz'
                    ),
                ),
                ElevatedButton(onPressed: (){
                  if(_formState.currentState!.validate()){
                    log('hello');
                  }
                  else{
                    log('error');
                  }
                }, child: const Icon(Icons.ac_unit_outlined))
                  ],
                ),
                
              ),
            ),
          )
        ],
      )
    );
  }
}
