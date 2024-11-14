import 'package:flutter/material.dart';
import 'package:mbc_common/mbc_common.dart';
import 'package:mbc_wellness/domain/model/wellness_item_model.dart';

class WellnessListWidget extends StatelessWidget{
  final List<WellnessItemModel> wellnessList;
  final VoidCallback onTap;
  const WellnessListWidget({super.key, required this.wellnessList, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.inverseTextColor,
      child: wellnessList.isEmpty
          ? const EmptyWellnessStatusWidget()
          : ListView.builder(
              itemCount: wellnessList.length,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: isSmallScreen(context) ? 16 : isMediumScreen(context) ? 25 : 40),
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                final item= wellnessList[index];
                return HoverableCard(
                  wellnessItem: item,
                  onTap: onTap,
                );
              },
            ),
    );
  }
}

class HoverableCard extends StatefulWidget {
  final WellnessItemModel wellnessItem;
  final VoidCallback onTap;

  const HoverableCard({
    super.key,
    required this.wellnessItem,
    required this.onTap,
  });

  @override
  _HoverableCardState createState() => _HoverableCardState();
}

class _HoverableCardState extends State<HoverableCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: AnimatedScale(
          scale: isHovered ? 1.04 : 1.0, // Slightly larger scale on hover
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          child: Card(
            elevation: isHovered ? 7 : 4, // Higher elevation on hover
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
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
                                "${widget.wellnessItem.careGiver.firstName} ${widget.wellnessItem.careGiver.lastNameInitial}",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${widget.wellnessItem.noteDescription}",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ]),
            ),
          ),
        ),
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


bool isSmallScreen(BuildContext context) =>
    MediaQuery.of(context).size.width < BreakPoint.tablet;

bool isMediumScreen(BuildContext context) =>
    MediaQuery.of(context).size.width >= BreakPoint.tablet &&
        MediaQuery.of(context).size.width < BreakPoint.desktop;

bool isLargeScreen(BuildContext context) =>
    MediaQuery.of(context).size.width > BreakPoint.desktop;


abstract class BreakPoint {
  static const double desktop = 900;
  static const double tablet = 600;
}
