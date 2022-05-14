import 'package:flutter/material.dart';
import 'package:party_ui/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isLoggin=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/im_party.jpeg'),
          fit: BoxFit.cover,
        )),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.1),
          ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             FadeAnimation(1, const Text(
               'Find the best parties near you',
               style: TextStyle(
                   color: Colors.white,
                   fontSize: 40,
                   fontWeight: FontWeight.bold),
             ),),
              const SizedBox(
                height: 10,
              ),
             FadeAnimation(1.5,
               const Text('Let us find you a party for your interest',style: TextStyle(color: Colors.white,fontSize: 20),)


             ),
              const SizedBox(height: 150,),
              _isLoggin?
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text('Google button',style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ):
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text('Google button',style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
