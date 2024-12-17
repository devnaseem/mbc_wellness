part of mbc_wellness;

class WellnessScreen extends ConsumerStatefulWidget {
  final String systemId;
  const WellnessScreen({super.key, required this.systemId});

  @override
  ConsumerState<WellnessScreen> createState() => _WellnessScreenState();
}

class _WellnessScreenState extends ConsumerState<WellnessScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(wellnessViewModelProvider.notifier).getWellnessStatusList(
            context.loc?.locale.languageCode ?? 'en', widget.systemId);
      },
    );
  }

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final wellnessValue = ref
        .watch(wellnessViewModelProvider.select((state) => state.wellnessList));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: kIsWeb
            ? NavBarWidget(
                title: "Wellness History",
                subtitle: "Back to Dashboard",
                onBackPressed: () {
                  if (kIsWeb) {
                    dispatchBackPressedEvent();
                  }
                })
            : WellnessAppBarWidget(onSeeTodayPressed: () {
                scrollController.animateTo(
                  0.0, // Offset to scroll to
                  duration:
                      const Duration(milliseconds: 500), // Animation duration
                  curve: Curves.easeInOut, // Animation curve
                );
              }),
        body: wellnessValue.when(
          loading: () => const WellnessLoadingWidget(),
          data: (wellnessList) => WellnessListWidget(
            wellnessList: wellnessList,
            scrollController: scrollController,
            onTap: (index) {
              if (kIsWeb) {
                GoRouter.of(context).go("/wellnessDetails");
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => WellnessDetailsScreen(
                          systemId: "",
                          index: index,
                        )));
              }
            },
          ),
          error: (error, stackTrace) => Text(error.toString()),
        ),
      ),
    );
  }
}
