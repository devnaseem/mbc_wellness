import 'package:mbc_common/mbc_common.dart';
import 'package:mbc_wellness/data/repository/iwelness_repository.dart';
import 'package:mbc_wellness/data/repository/wellness_repository_impl.dart';
import 'package:mbc_wellness/domain/model/wellness_item_model.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_wellness_list_usecase.g.dart';

@Riverpod(keepAlive: true)
GetWellnessListUseCase getWellnessListUseCase(GetWellnessListUseCaseRef ref) {
  final wellnessRepository = ref.watch(wellnessRepositoryImplProvider);
  return GetWellnessListUseCase(wellnessRepository);
}

class GetWellnessListUseCase {
  final IWellnessRepository _wellnessRepository;

  const GetWellnessListUseCase(this._wellnessRepository);

  Future<Result<List<WellnessItemModel>, Failure>> call(
      String clientId, String startDate, String endDate) async {
    try {
      final wellnessList = await _wellnessRepository.getWellnessStatusList(
          clientId, startDate, endDate);
      return Success(wellnessList);
    } catch (error, stackTrace) {
      return Error(Failure(
        message: error.toString(),
        stackTrace: stackTrace,
      ));
    }
  }
}
