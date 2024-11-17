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
        ref
            .read(wellnessViewModelProvider.notifier)
            .getWellnessStatusList(context.loc?.locale.languageCode ?? 'en', widget.systemId);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final wellnessValue = ref
        .watch(wellnessViewModelProvider.select((state) => state.wellnessList));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: kIsWeb? NavBarWidget(
          title: "Wellness History",
          subtitle: "Back to Dashboard",
          onBackPressed : (){
            if(kIsWeb) {
              dispatchBackPressedEvent();
            }
          }
        ):  AppBar(
          backgroundColor: ColorConstants.primaryBrandColor,
          title: const  Text("Wellness Status", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),),
        ),
        body:
           wellnessValue.when(
           loading: () => const WellnessLoadingWidget(),
           data: (wellnessList) => WellnessListWidget(wellnessList: wellnessList, onTap: (){
             GoRouter.of(context).go("/wellnessDetails");
           },),
           error: (error, stackTrace) => Text(error.toString()),
        ),
      ),
    );
  }
}
