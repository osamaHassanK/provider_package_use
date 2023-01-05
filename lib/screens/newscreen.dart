import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_use/providers/countprovider.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countProvider= Provider.of<CountProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(title: Text("hello")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(countProvider.count.toString(),style: TextStyle(fontSize: 80),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.safety_check),
      ),
    );
  }
}
