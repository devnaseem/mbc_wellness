part of mbc_wellness;


class WellnessDetailsScreen extends ConsumerStatefulWidget {
  final String systemId;
  const WellnessDetailsScreen({super.key, required this.systemId});

  @override
  ConsumerState<WellnessDetailsScreen> createState() => _WellnessDetailsScreenState();
}

class _WellnessDetailsScreenState extends ConsumerState<WellnessDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    final wellnessValue = ref
        .watch(wellnessViewModelProvider.select((state) => state.wellnessList));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: kIsWeb? NavBarWidget(
          title: "Wellness Detail",
          subtitle: "Back to Wellness List",
          onBackPressed: (){
            GoRouter.of(context).go("/");
          } ,
        ):  AppBar(
          backgroundColor: ColorConstants.primaryBrandColor,
          leading: IconButton(onPressed: (){
            GoRouter.of(context).go("/");
          }, icon: const Icon(Icons.arrow_back)),
          title: const  Text("Wellness Detail", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),),
        ),
        body: const Center(
          child: Text("You are in wellness detail screen", style: TextStyle(color: Colors.black),),
        )
           ,
      ),
    );
  }
}
