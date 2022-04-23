import 'package:flutter/material.dart';

class DesignedPage extends StatefulWidget {
  const DesignedPage({Key? key}) : super(key: key);

  @override
  _DesignedPageState createState() => _DesignedPageState();
}

class _DesignedPageState extends State<DesignedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.closed_caption_outlined,color: Colors.black,),
                    Text('Restaurant is close now,will be open at 9:00 am',style: TextStyle(
                      color: Colors.black,
                      fontSize: 12
                    ),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.emoji_food_beverage,size: 36,color: Colors.orange,),
                          Text(
                            'eFood',
                            style:
                                TextStyle(
                                    color: Colors.orangeAccent,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 24,
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text('All Categories', style: TextStyle(
                    fontSize: 14
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//sd
