import 'package:flutter/material.dart';
import 'package:mbc_common/mbc_common.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbc_wellness/presentation/state/wellness_state.dart';
import 'package:mbc_wellness/presentation/ui/widgets/gallery_full_Screen.dart';
import 'package:mbc_wellness/presentation/ui/widgets/image_widget.dart';
import 'package:intl/intl.dart';

class WellnessListWidget extends StatelessWidget {
  final List<WellnessGalleryItem> wellnessList;
  final Function(int) onTap;
  final ScrollController scrollController;
  const WellnessListWidget(
      {super.key,
      required this.wellnessList,
      required this.onTap,
      required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = isSmallScreen(context)
        ? 20.0
        : isMediumScreen(context)
            ? 25.0
            : 40.0;
    return Container(
      color: ColorConstants.inverseTextColor,
      child: wellnessList.isEmpty
          ? const EmptyWellnessStatusWidget()
          : ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              controller: scrollController,
              children: [
                ListView.builder(
                  itemCount: wellnessList.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: horizontalPadding,
                      right: horizontalPadding - 5,
                      top: 5,
                      bottom: 24),
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = wellnessList[index];
                    final wellnessItem = item.wellnessItem;
                    final month =
                        DateFormat('y MMMM').format(wellnessItem.createdTime);
                    String header = "";
                    if (index == 0) {
                      header = month;
                    } else {
                      final previousItemMonth = DateFormat('y MMMM').format(
                          wellnessList[index - 1].wellnessItem.createdTime);
                      if (previousItemMonth != month) {
                        header = month;
                      }
                    }

                    return HoverableCard(
                      wellnessGalleryItem: item,
                      index: index,
                      headerMonth: header,
                      onTap: (index) {
                        onTap(index);
                      },
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Wellness notes do not replace the care or service plan and is not considered medical advice. Please reach out directly to your care manager if you have questions.",
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: const Color(0xFF51534A),
                        height: 1.3,
                        letterSpacing: -0.5),
                  ),
                ),
                const SizedBox(
                  height: 150,
                )
              ],
            ),
    );
  }
}

class HoverableCard extends StatefulWidget {
  final WellnessGalleryItem wellnessGalleryItem;
  final Function(int) onTap;
  final int index;
  final String headerMonth;

  const HoverableCard({
    super.key,
    required this.wellnessGalleryItem,
    required this.onTap,
    required this.index,
    required this.headerMonth,
  });

  @override
  HoverableCardState createState() => HoverableCardState();
}

class HoverableCardState extends State<HoverableCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final wellnessItem = widget.wellnessGalleryItem.wellnessItem;
    final galleryItems = widget.wellnessGalleryItem.galleryItems;
    final List<Widget> wellnessPhotos = galleryItems
        .map((galleryItem) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => FullScreenImageView(
                            imagePath: galleryItem.photos[2].url),
                      ),
                    );
                  },
                  child: ImageWidget(
                    url: galleryItem.photos[0].url,
                    height: 58,
                    width: 58,
                  ),
                ),
              ),
            ))
        .toList();

    if (wellnessPhotos.length > 3) {
      wellnessPhotos.removeRange(3, wellnessPhotos.length);
      wellnessPhotos.removeAt(2);
      wellnessPhotos.add(
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: SizedBox(
              height: 58,
              width: 58,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ImageWidget(
                    url: galleryItems[2].photos[0].url,
                    height: 58,
                    width: 58,
                  ),
                  Container(
                    height: 58,
                    width: 58,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "+${galleryItems.length - 2} More",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.white,
                          height: 1.3,
                          letterSpacing: -0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    final weekDay = DateFormat('EEE').format(wellnessItem.createdTime);
    final day = DateFormat('d').format(wellnessItem.createdTime);

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: InkWell(
        onTap: () {
          widget.onTap(widget.index);
        },
        child: AnimatedScale(
          scale: isHovered ? 1.04 : 1.0, // Slightly larger scale on hover
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          child: Column(
            children: [
              if (widget.headerMonth.isNotEmpty)
                Row(
                  children: [
                    Text(
                      widget.headerMonth,
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xFF51534A),
                          height: 1.3,
                          letterSpacing: -0.5),
                    ),
                  ],
                ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Column(
                      children: [
                        Text(
                          weekDay.toUpperCase(),
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color(0xFF51534A),
                              height: 1.3,
                              letterSpacing: -0.5),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          day,
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black,
                              height: 1.5,
                              letterSpacing: -0.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromRGBO(0, 0, 0, 0.1),
                            width: 0.5,
                          ),
                          color: Colors.white, // over
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: Offset(1.0, 1.0),
                            ),
                          ]),
                      child: Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.65,
                                child: Text(
                                  wellnessItem.noteDescription,
                                  maxLines: 2,
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: const Color(0xFF51534A),
                                      height: 1.5,
                                      letterSpacing: -0.5),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: wellnessPhotos,
                              ),
                              if (wellnessPhotos.isNotEmpty)
                                const SizedBox(
                                  height: 8,
                                ),
                              Text(
                                wellnessItem.careGiver.firstName,
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color(0xFF51534A),
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.chevron_right_sharp,
                                color: ColorConstants.primaryBrandColor,
                              )),
                          const SizedBox(
                            width: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
