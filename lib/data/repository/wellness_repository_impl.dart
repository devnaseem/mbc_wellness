import 'dart:isolate';

import 'package:mbc_common/mbc_common.dart';
import 'package:mbc_wellness/data/api/wellness_api.dart';
import 'package:mbc_wellness/data/dto/wellness_list_response.dart';
import 'package:mbc_wellness/data/repository/iwelness_repository.dart';
import 'package:mbc_wellness/domain/model/wellness_item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'wellness_repository_impl.g.dart';

@Riverpod(keepAlive: true)
WellnessRepositoryImpl wellnessRepositoryImpl(WellnessRepositoryImplRef ref) {
  final wellnessApiService = ref.watch(wellnessApiProvider);
  return WellnessRepositoryImpl(wellnessApiService);
}

class WellnessRepositoryImpl
    with DioExceptionMixin
    implements IWellnessRepository {
  final WellnessApi _wellnessApiService;
  WellnessRepositoryImpl(this._wellnessApiService);

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
    // final wellnessList = await Isolate.run(
    //   () => _mapToWellnessModel(
    //     wellnessListResponse[0].notes,
    //   ),
    // );

    final wellnessList = _mapToWellnessModel(
        wellnessListResponse[0].notes,
    );
    return wellnessList;
  }

  List<WellnessItemModel> _mapToWellnessModel(
    List<Note> data,
  ) {
    final result = data
        .map(
          (e) => WellnessItemModel(
            createdTime: e.createdTime,
            noteDescription: e.noteDescription,
            noteType: e.noteType,
            careGiver: const CareGiverModel(
              careGiverId: "",//e.careGiver!=null?e.careGiver?.careGiverId ?? "": "",
              branchPhone: "",//e.careGiver!=null?e.careGiver?.branchPhone ?? "": "",
              branchEmail: "",//e.careGiver!=null?e.careGiver?.branchEmail ?? "": "",
              firstName: "",//e.careGiver!=null?e.careGiver?.firstName ??"": "",
              lastNameInitial: "",//e.careGiver!=null?e.careGiver?.lastNameInitial ?? "": "",
              designation: "",//e.careGiver!=null?e.careGiver?.designation ?? "": "",
              jobTitle: "",//e.careGiver!=null? e.careGiver?.jobTitle ?? "" : "",
              photo: const PhotoModel(link: ""),
              languages: [],// e.careGiver!=null? e.careGiver!.languages
                  //.map((e) => LanguageModel(displayName: e.displayName?? ""))
                 // .toList():[],
            ),
            procuraVisitId: e.procuraVisitId ?? "",
          ),
        )
        .toList();

    return result;
  }
}
