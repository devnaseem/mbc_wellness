import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbc_wellness/data/dto/wellness_list_response.dart';
import 'package:mbc_wellness/domain/model/wellness_item_model.dart';

final wellnessMapperProvider = Provider<WellnessMapper>((ref) {
  return WellnessMapper();
});

class WellnessMapper {
  List<WellnessItemModel> toDomain(
      List<WellnessListResponse> wellnessListResponse) {
    return wellnessListResponse.expand(toWellnessItemModel).toList();
  }

  List<WellnessItemModel> toWellnessItemModel(
      WellnessListResponse wellnessList) {
    return wellnessList.notes.map((notesData) {
      return WellnessItemModel(
        createdTime: notesData.createdTime,
        noteDescription: notesData.noteDescription,
        noteType: notesData.noteType,
        careGiver: CareGiverModel(
          careGiverId: notesData.careGiver.careGiverId ?? "",
          branchPhone: notesData.careGiver.branchPhone ?? "",
          branchEmail: notesData.careGiver.branchEmail ?? "",
          firstName: notesData.careGiver.firstName,
          lastNameInitial: notesData.careGiver.lastNameInitial,
          designation: notesData.careGiver.designation ?? "",
          jobTitle: notesData.careGiver.jobTitle ?? "",
          photo: PhotoModel(link: notesData.careGiver.photo.link ?? ""),
          languages: notesData.careGiver.languages
              .map((language) =>
                  LanguageModel(displayName: language.displayName))
              .toList(),
        ),
        procuraVisitId: notesData.procuraVisitId,
      );
    }).toList();
  }
}
