import 'package:flutter/material.dart';
import 'package:rentapp/data_models/car.dart';
import 'package:rentapp/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<Car> cars = [
    Car(model: 'Audi A8', distance: 100, fuelCapacity: 50, pricePerHour: 100),
    Car(model: 'BMW X7', distance: 200, fuelCapacity: 60, pricePerHour: 120),
    Car(model: 'Mercedes S-Class', distance: 150, fuelCapacity: 55, pricePerHour: 110),
    Car(model: 'Lamborghini Aventador', distance: 50, fuelCapacity: 40, pricePerHour: 200),
    Car(model: 'Ferrari 488', distance: 70, fuelCapacity: 45, pricePerHour: 180),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) => CarCard(
          car: cars[index],
        ),
      ),
    );
  }
}
