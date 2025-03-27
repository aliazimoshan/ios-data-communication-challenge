import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanis_task/modules/home/data/dto/home_dto.dart';
import 'package:zanis_task/modules/home/data/home_repository.dart';
import 'package:zanis_task/modules/home/domain/home_repository_interface.dart';

final homeRepositoryProvider = Provider<HomeRepositoryInterface>((ref) {
  return HomeRepository();
});

final homeDTOProvider = FutureProvider.autoDispose<HomeDTO>((ref) async {
  final repo = ref.read(homeRepositoryProvider);
  return repo.fetchCurrentTime();
});

final usbStreamProvider = StreamProvider.autoDispose<String>((ref) {
  final repo = ref.read(homeRepositoryProvider);
  return repo.fetchUSBDataStream();
});
