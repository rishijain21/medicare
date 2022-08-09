import 'package:flutter/material.dart';

class MedicineDetail extends StatelessWidget {

  final String MedicineImagePath;
  final String MedicineName;

  MedicineDetail({required this.MedicineImagePath, required this.MedicineName})

  {

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Column(
            children: [
              //medicine pic
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  MedicineImagePath,
                  height: 100,
                ),
              ),
              SizedBox(height: 10),
              //medicine name

              Text(MedicineName,
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
