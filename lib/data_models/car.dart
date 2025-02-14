class Car {
  final String model;
  final num distance;
  final num fuelCapacity;
  final num pricePerHour;

  Car({required this.model, required this.distance, required this.fuelCapacity, required this.pricePerHour});

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      model: json['model'],
      distance: json['distance'],
      fuelCapacity: json['fuelCapacity'],
      pricePerHour: json['pricePerHour'],
    );
  }

  Map<String, dynamic> toJson() => {
        'model': model,
        'distance': distance,
        'fuelCapacity': fuelCapacity,
        'pricePerHour': pricePerHour,
      };
}
