import 'package:rentapp/data/data_sources/firebase_car_data_source.dart';
import 'package:rentapp/data/models/car.dart';
import 'package:rentapp/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource _firebaseCarDataSource;

  CarRepositoryImpl(this._firebaseCarDataSource);

  @override
  Future<List<Car>> fetchCars() {
    return _firebaseCarDataSource.getCars();
  }
}
