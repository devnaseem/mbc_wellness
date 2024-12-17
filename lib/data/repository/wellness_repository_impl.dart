import 'package:mbc_common/mbc_common.dart';
import 'package:mbc_wellness/data/api/wellness_api.dart';
import 'package:mbc_wellness/data/dto/wellness_list_response.dart';
import 'package:mbc_wellness/data/repository/iwelness_repository.dart';
import 'package:mbc_wellness/domain/mappers/wellness_mapper.dart';
import 'package:mbc_wellness/domain/model/wellness_item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/foundation.dart';
part 'wellness_repository_impl.g.dart';

@Riverpod(keepAlive: true)
WellnessRepositoryImpl wellnessRepositoryImpl(WellnessRepositoryImplRef ref) {
  final wellnessApiService = ref.watch(wellnessApiProvider);
  final wellnessMapper = ref.watch(wellnessMapperProvider);
  return WellnessRepositoryImpl(wellnessApiService, wellnessMapper);
}

class WellnessRepositoryImpl
    with DioExceptionMixin
    implements IWellnessRepository {
  final WellnessApi _wellnessApiService;
  final WellnessMapper _wellnessMapper;
  WellnessRepositoryImpl(this._wellnessApiService, this._wellnessMapper);

  @override
  Future<List<WellnessItemModel>> getWellnessStatusList(
    String clientId,
    String startDate,
    String endDate,
  ) async {
    final wellnessListResponse = await callApi<List<WellnessListResponse>>(
        () => _wellnessApiService.getWellnessStatusList(
              startDate,
              endDate,
              clientId,
            ));

    final galleryList = compute(
      _wellnessMapper.toDomain,
      wellnessListResponse,
    );
    return galleryList;
  }
}
