import 'package:zanis_task/modules/home/data/dto/home_dto.dart';

abstract class HomeRepositoryInterface {
  Future<HomeDTO> fetchCurrentTime();
  Stream<String> fetchUSBDataStream();
}
