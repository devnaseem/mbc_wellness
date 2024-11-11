import 'package:mbc_wellness/data/dto/wellness_list_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import 'package:mbc_core/mbc_core.dart';

part 'wellness_api.g.dart';

final wellnessApiProvider = Provider<WellnessApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return WellnessApi(dio);
});

@RestApi(
  parser: Parser.FlutterCompute,
)
abstract class WellnessApi {
  factory WellnessApi(Dio dio) => _WellnessApi(dio);

  @GET('/clients/{clientId}/wellnessStatus')
  Future<List<WellnessListResponse>> getWellnessStatusList(
    @Query('startDate') String startDate,
    @Query('endDate') String endDate,
    @Path('clientId') String clientId,
  );
}
