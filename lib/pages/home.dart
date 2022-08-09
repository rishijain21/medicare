import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'medicine_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Welvome To MediCare', textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        SizedBox(height: 8),
                        Text('Seach Your medicines here',
                            style: TextStyle(fontSize: 24.0)),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 25),

            //Caard
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    //animation pic

                    Container(
                        height: 100,
                        width: 100,
                        child: Lottie.network(
                            'https://assets4.lottiefiles.com/packages/lf20_zmywgnrb.json')),
                    SizedBox(
                      width: 20,
                    ),
                    //how to your feel

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Feeling Conscious about Your Medicine?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(
                            height: 11,
                          ),
                          Text('Search Your Medicine and Stay updated',
                              style: TextStyle(fontSize: 13)),
                          SizedBox(
                            height: 11,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.deepPurple[300],
                            ),
                            child: Center(
                                child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),

            //search bar

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Search your Medicine Here',
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            //medicines Lists

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Medicines',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Paracetamol',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Paracetamol',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Paracetamol',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Paracetamol',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Paracetamol',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Paracetamol',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Paracetamol',
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
