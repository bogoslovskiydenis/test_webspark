import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';
  final TextEditingController controller = TextEditingController();


  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) =>  HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME SCREEN'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15 ,bottom: 15),
            child: Text(
              'Set valid API URL in order to continue',
             textAlign: TextAlign.start,
            ),
          ),
           TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Enter Api',
              prefixIcon: Icon(Icons.compare_arrows_rounded),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          //TODO: add press
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                ),
                child:  const Text('Start counting process'),
              ),
          ),
        ],
      ),
    );
  }
}
