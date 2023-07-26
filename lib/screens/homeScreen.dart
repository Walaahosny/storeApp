import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(child: IconButton(onPressed: () async{
        http.Response response=await http.post(Uri.parse('https://fakestoreapi.com/products'),body: {

        "title": "test product",
       " price": "13.5",
        "description":" lorem ipsum set",
        "image": "https://i.pravatar.cc",
        "category": "electronic"
        },headers: {
          "Accept":"application/json",
          "Content-Type":"application/x-www-form-urlencoded",
          "Authorization":"Bearer "
        });
        print(response.body);

      }, icon: Text('post'),),),
    );
  }
}
