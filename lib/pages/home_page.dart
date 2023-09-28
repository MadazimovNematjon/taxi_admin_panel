import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        child: GridView(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 20),
          children: [
            Container(
              color: Colors.black,
              child: const Center(
                child: Text("1",style: TextStyle(color: Colors.white),),
              ),
            ),
            Container(
              color: Colors.red,
              child: const Center(
                child: Text("1",style: TextStyle(color: Colors.white),),
              ),
            ),
            Container(
              color: Colors.black,

              child: const Center(
                child: Text("1",style: TextStyle(color: Colors.white),),
              ),
            ),
            Container(
              color: Colors.black,
              
              child: const Center(
                child: Text("1",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
