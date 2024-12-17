part of mbc_wellness;

class WellnessDetailsScreen extends ConsumerStatefulWidget {
  final String systemId;
  final int index;
  const WellnessDetailsScreen(
      {super.key, required this.systemId, this.index = 0});

  @override
  ConsumerState<WellnessDetailsScreen> createState() =>
      _WellnessDetailsScreenState();
}

class _WellnessDetailsScreenState extends ConsumerState<WellnessDetailsScreen> {
  final List<bool> likedStatus = [];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final wellnessValue = ref
        .watch(wellnessViewModelProvider.select((state) => state.wellnessList));
    final wellnessItem = wellnessValue.value?[widget.index];
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstants.primaryBrandColor,
          appBar: kIsWeb
              ? NavBarWidget(
                  title: "Wellness Detail",
                  subtitle: "Back to Wellness List",
                  onBackPressed: () {
                    GoRouter.of(context).go("/");
                  },
                )
              : AppBar(
                  backgroundColor: ColorConstants.primaryBrandColor,
                  leading: IconButton(
                      onPressed: () {
                        if (kIsWeb) {
                          GoRouter.of(context).go("/");
                        } else {
                          Navigator.of(context).pop();
                        }
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                ),
          body: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0)),
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wellness Notes",
                        style: GoogleFonts.breeSerif(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -1,
                            height: 1.5,
                            color: ColorConstants.primaryBrandColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "General Information",
                        style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.5,
                            height: 1.5,
                            color: const Color(0xFF51534A)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Caregiver",
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.5,
                            height: 1.5,
                            color: const Color(0xFF51534A)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: const ImageWidget(
                                  url:
                                      "https://as2.ftcdn.net/v2/jpg/03/83/25/83/1000_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
                                  width: 48,
                                  height: 48,
                                )),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  wellnessItem!
                                      .wellnessItem.careGiver.firstName,
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.5,
                                      height: 1.5,
                                      color: ColorConstants.primaryBrandColor),
                                ),
                                Text(
                                  "Personal Support Worker",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.5,
                                      height: 1.5,
                                      color: const Color(0xFF51534A)),
                                ),
                                Text(
                                  "Speaks English and French",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.5,
                                      height: 1.5,
                                      color: const Color(0xFF51534A)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        "Details",
                        style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.5,
                            height: 1.5,
                            color: const Color(0xFF51534A)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "50 Bay ST S, Hamilton, ON L8P4V9 \nJan 28, 2022  01:00 - 03:00 pm",
                        style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.5,
                            height: 1.5,
                            color: ColorConstants.primaryBrandColor),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        "Photos (${wellnessItem.galleryItems.length})",
                        style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.5,
                            height: 1.5,
                            color: const Color(0xFF51534A)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 184,
                        child: CarouselSlider(
                          disableGesture: wellnessItem.galleryItems.length == 1,
                          items: wellnessItem.galleryItems.map((galleryItem) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => FullScreenImageView(
                                              imagePath:
                                                  galleryItem.photos[2].url),
                                        ),
                                      );
                                    },
                                    child: ImageWidget(
                                      url: galleryItem.photos[0].url,
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 400,
                            viewportFraction: 1.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: ColorConstants.primaryBrandColor,
                            size: 24,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: wellnessItem.galleryItems
                                  .asMap()
                                  .entries
                                  .map((entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      setState(() => currentIndex = entry.key),
                                  child: Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentIndex == entry.key
                                          ? ColorConstants.primaryBrandColor
                                          : Colors.grey,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
