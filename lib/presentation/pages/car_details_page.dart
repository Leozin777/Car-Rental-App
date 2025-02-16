import 'package:flutter/material.dart';
import 'package:rentapp/presentation/pages/maps_details_page.dart';
import 'package:rentapp/presentation/widgets/car_card.dart';
import 'package:rentapp/presentation/widgets/more_card.dart';

import '../../data/models/car.dart';

class CarDatailPage extends StatefulWidget {
  final Car car;

  const CarDatailPage({super.key, required this.car});

  @override
  State<CarDatailPage> createState() => _CarDatailPageState();
}

class _CarDatailPageState extends State<CarDatailPage> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });

    _controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
    //_controller!.forward();
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text("Information"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarCard(
                car: Car(
                    model: widget.car.model,
                    distance: widget.car.distance,
                    fuelCapacity: widget.car.fuelCapacity,
                    pricePerHour: widget.car.pricePerHour)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)],
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/user.png"),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Jane Cooper",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$4.253",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => MapsDetailsPage(car: widget.car)));
                      },
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Transform.scale(
                            scale: _animation!.value,
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/maps.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  MoreCard(
                      car: Car(
                          model: widget.car.model + "-1",
                          distance: widget.car.distance,
                          fuelCapacity: widget.car.fuelCapacity,
                          pricePerHour: widget.car.pricePerHour + 10)),
                  SizedBox(
                    height: 5,
                  ),
                  MoreCard(
                      car: Car(
                          model: widget.car.model + "-2",
                          distance: widget.car.distance,
                          fuelCapacity: widget.car.fuelCapacity,
                          pricePerHour: widget.car.pricePerHour + 20)),
                  SizedBox(
                    height: 5,
                  ),
                  MoreCard(
                      car: Car(
                          model: widget.car.model + "-3",
                          distance: widget.car.distance,
                          fuelCapacity: widget.car.fuelCapacity,
                          pricePerHour: widget.car.pricePerHour + 30)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
