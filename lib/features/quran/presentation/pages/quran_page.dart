import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_packages/i_packages.dart';
import 'package:simple_quran/features/about/presentation/pages/about_page.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';

class QuranPage extends StatefulWidget {
  static const routeName = 'quran';

  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ChaptersBloc()..add(const ChaptersEvent.getChapters()),
        ),
      ],
      child: Scaffold(
        drawer: const AboutPage(),
        body: Scrollbar(
          radius: const Radius.circular(4),
          controller: _scrollController,
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                centerTitle: false,
                title: Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: Text(
                        'القرآن الكريم',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: FontFamily.isepMisbah,
                          fontSize: 26.sp,
                        ),
                      ),
                    );
                  },
                ),
                actions: const [SettingsButton()],
              ),
              BlocBuilder<ChaptersBloc, ChaptersState>(
                builder: (context, state) => state.maybeMap(
                  orElse: () => const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  loading: (value) => const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  loaded: (value) {
                    final chapters = value.data.chapters;

                    if (chapters == null) {
                      return SliverFillRemaining(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Failed to load data - null'),
                              const IGap(),
                              OutlinedButton(
                                onPressed: () =>
                                    BlocProvider.of<ChaptersBloc>(context).add(
                                  const ChaptersEvent.getChapters(force: true),
                                ),
                                child: const Text('Retry'),
                              ),
                            ],
                          ),
                        ),
                      );
                    }

                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => ChapterCard(
                          chapter: chapters[index],
                          chapterNumber: index + 1,
                        ),
                        childCount: chapters.length,
                      ),
                    );
                  },
                  error: (value) => SliverFillRemaining(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Failed to load data - error'),
                          const IGap(),
                          OutlinedButton(
                            onPressed: () =>
                                BlocProvider.of<ChaptersBloc>(context).add(
                              const ChaptersEvent.getChapters(force: true),
                            ),
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
