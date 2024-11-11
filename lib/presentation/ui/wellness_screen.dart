part of mbc_wellness;

class WellnessScreen extends ConsumerStatefulWidget {
  const WellnessScreen({super.key});

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
            .getWellnessStatusList(context.loc?.locale.languageCode ?? 'en');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final wellnessValue = ref
        .watch(wellnessViewModelProvider.select((state) => state.wellnessList));

    return SafeArea(
      child: Scaffold(
        body:
           wellnessValue.when(
           loading: () => const Center(child: CircularProgressIndicator()),
           data: (wellnessList) => WellnessListWidget(wellnessList: wellnessList),
           error: (error, stackTrace) => Text(error.toString()),
        ),
      ),
    );
  }
}
