import 'package:flutter/cupertino.dart';


void main() {
  runApp(

      CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp ({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('App'),
          trailing: CupertinoButton(child: Icon(CupertinoIcons.person, size: 20, color: CupertinoColors.activeBlue,),
              onPressed: (){

            showCupertinoDialog(context: context, builder: (context){
              return CupertinoAlertDialog(
                title: Text('List of Members'),
                content: Column(
                  children: [
                    ClipOval(child: Image.asset('images/sam.jpg', height: 50,)),
                    Text('Samuel Miranda'),
                    
                  ],
                ),
                actions: [
                  CupertinoButton(child: Text('Close', style: TextStyle(color: CupertinoColors.destructiveRed),), onPressed: (){
                    Navigator.pop(context);
                  })
                ],
              );

            });

          }),
          leading: Icon(CupertinoIcons.chevron_back, size: 20, color: CupertinoColors.activeBlue,),

        ),

        child: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(child: Image.asset('images/sam.jpg', height: 50,)),

              CupertinoPageScaffold(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text('Name: Samuel Miranda'),
                        Text('Email: sammiranda0004@gmail.com'),
                        Text('Address: San Joaquin Sta Ana'),

                      ],
                    ),
                  ],
                ),

              ),

            ],
          ),


    ],

      ),
    ),

    ));

  }
}
