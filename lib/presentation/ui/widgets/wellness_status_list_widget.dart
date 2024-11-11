import 'package:flutter/material.dart';
import 'package:mbc_common/mbc_common.dart';
import 'package:mbc_wellness/domain/model/wellness_item_model.dart';

class WellnessListWidget extends StatelessWidget {
  final List<WellnessItemModel> wellnessList;
  const WellnessListWidget({super.key, required this.wellnessList});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.inverseTextColor,
      child: wellnessList.isEmpty
          ? const EmptyWellnessStatusWidget()
          : ListView.builder(
              itemCount: wellnessList.length,
              itemBuilder: (context, index) {
                return Column(children: [
                  Row(
                    children: <Widget>[
                      // PersonImageWidget(
                      //   imageUrl: wellnessList[index]
                      //       .careGiver!
                      //       .photo
                      //       ?.link ??
                      //       "",
                      //   fullName:
                      //   "${wellnessList[index].careGiver!.firstName} ${wellnessList[index].careGiver!.lastNameInitial}",
                      //   cornerRadius: 10,
                      //   height: 32,
                      //   width: 32,
                      //   fontSize: 15,
                      // ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "${wellnessList[index].careGiver.firstName} ${wellnessList[index].careGiver.lastNameInitial}",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    color: ColorConstants.dividerColor,
                    width: double.infinity,
                    height: 1,
                  ),
                ]);
              },
            ),
    );
  }
}

class EmptyWellnessStatusWidget extends StatelessWidget {
  const EmptyWellnessStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        color: ColorConstants.inverseTextColor,
        width: double.infinity,
        child: Text(
          "${AppLocalizations.of(context)!.translate("text_no_wellness_status_recorded")}",
        ),
      ),
    );
  }
}

class WellnessLoadingWidget extends StatelessWidget {
  const WellnessLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          SkeletonItemLoader(),
          const SizedBox(
            height: 16,
          ),
          SkeletonItemLoader(),
        ],
      ),
    );
  }
}
