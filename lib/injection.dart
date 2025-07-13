
import 'package:figmatoflutter/presentation/providers/crudproviders/crud_providers.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
void init(){
  sl.registerLazySingleton(()=>CrudProviders());
}