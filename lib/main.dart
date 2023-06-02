import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{
  var count = 0.obs;
 
  void increment(){
    count.value++;
  }


}



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
MyApp({super.key});
  final CounterController counterController = Get.put(CounterController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
  
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
        title: const Text("Exemplo OBx getX"),
     
     ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Obx(() =>Text("Valor Incrementado: ${counterController.count}")),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: counterController.increment, 
              child: const Text("Incrementar"))
          ],
        ),
      ),
    ),
    );
  }
}



 