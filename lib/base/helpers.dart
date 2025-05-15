import 'package:get_it/get_it.dart';

T get<T extends Object>({
  String? instanceName,
  // ignore: avoid_annotating_with_dynamic
  dynamic param1,
  // ignore: avoid_annotating_with_dynamic
  dynamic param2,
}) {
  return GetIt.I.get<T>(
    instanceName: instanceName,
    param1: param1,
    param2: param2,
  );
}