import 'package:mbc_wellness/domain/model/wellness_item_model.dart';

abstract interface class IWellnessRepository {
  Future<List<WellnessItemModel>> getWellnessStatusList(
    String clientId,
    String startDate,
    String endDate,
  );
}
