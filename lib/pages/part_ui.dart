import 'package:flutter/material.dart';
import 'package:party_ui/animation/FadeAnimation.dart';

class PartUI extends StatefulWidget {
  const PartUI({Key? key}) : super(key: key);
  static const String id = 'part_ui';

  @override
  State<PartUI> createState() => _PartUIState();
}

class _PartUIState extends State<PartUI> {
  final bool _isLoggin=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
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
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.2),
          ])),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
            children:[
              FadeAnimation(1, const Text(
                'Find the best',
                style: TextStyle(color: Colors.yellow, fontSize: 40),
                textAlign: TextAlign.center,
              ),),
              FadeAnimation(1,  const Text(
                'parties near you',
                style: TextStyle(color: Colors.yellow, fontSize: 40),
                textAlign: TextAlign.center,
              ),),
             FadeAnimation(1.2,  Text(
               'Let us find you a tutorial for',
               style: TextStyle(color: Colors.green.shade700, fontSize: 27),
               textAlign: TextAlign.center,
             ),),
             FadeAnimation(1.2,Text(
               'you interest',
               style: TextStyle(color: Colors.green.shade700, fontSize: 27),
               textAlign: TextAlign.center,
             ),),
              const SizedBox(height: 400,),
              _isLoggin?
              Container(
                height: _isLoggin?50:0,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.orange.shade600
                ),
                child: const Center(
                  child: Text('Start',style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ):

              Row(
                children: [
                  Expanded(child: Container(
                    height:_isLoggin? 50:0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red
                    ),
                    child: const Center(
                      child: Text('Google',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ), ),
                  const SizedBox(width: 10,),
                  Expanded(child: Container(
                    height:_isLoggin? 50:0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue
                    ),
                    child: const Center(
                      child: Text('Facebook',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ), ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
