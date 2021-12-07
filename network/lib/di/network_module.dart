import 'package:network/service/marvel_service.dart';
import 'package:shared/get_it_provider.dart';

void registerNetworkModule() {
  getIt.registerSingleton<MarvelService>(MarvelService());
}
