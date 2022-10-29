// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_packages/i_packages.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';
import 'package:simple_quran/widgets/widgets.dart';

class ChapterPage extends StatefulWidget {
  static const routeName = 'chapter';

  final Chapter chapter;

  const ChapterPage({super.key, required this.chapter});

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VersesBloc()
        ..add(
          VersesEvent.getVerses(
            chapterNumber: widget.chapter.id ?? 1,
            edition: BlocProvider.of<SettingsCubit>(context).state.quranEdition,
          ),
        ),
      child: BlocListener<SettingsCubit, SettingsModel>(
        listenWhen: (previous, current) =>
            previous.quranEdition != current.quranEdition,
        listener: (context, state) => BlocProvider.of<VersesBloc>(context).add(
          VersesEvent.getVerses(
            chapterNumber: widget.chapter.id ?? 1,
            edition: state.quranEdition,
          ),
        ),
        child: Scaffold(
          body: Scrollbar(
            radius: const Radius.circular(4),
            controller: _scrollController,
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  floating: true,
                  leading: const CustomBackButton(),
                  title: Text(
                    '${widget.chapter.nameArabic}',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: FontFamily.isepMisbah,
                      fontSize: 26.sp,
                    ),
                  ),
                  actions: const [SettingsButton()],
                ),
                BlocBuilder<VersesBloc, VersesState>(
                  builder: (context, state) => state.maybeMap(
                    orElse: () => const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    loading: (value) => const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    loaded: (value) =>
                        BlocBuilder<SettingsCubit, SettingsModel>(
                      builder: (context, state) {
                        final verses = value.data.verses;

                        if (verses == null) {
                          return SliverFillRemaining(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Failed to load data - null'),
                                  const IGap(),
                                  OutlinedButton(
                                    onPressed: () =>
                                        BlocProvider.of<VersesBloc>(context)
                                            .add(
                                      VersesEvent.getVerses(
                                        chapterNumber: widget.chapter.id ?? 1,
                                        edition: state.quranEdition,
                                        force: true,
                                      ),
                                    ),
                                    child: const Text('Retry'),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }

                        var ayahs = List.generate(
                          verses.length,
                          (index) {
                            String? text = '';

                            switch (state.quranEdition) {
                              case QuranEdition.indopak:
                                text = verses[index].textIndopak;
                                break;
                              case QuranEdition.uthmani:
                                text = verses[index].textUthmani;
                                break;
                            }

                            return '$text ${(index + 1).toArabicDigits()}';
                          },
                        ).join(' ');

                        final basmalah = widget.chapter.bismillahPre == true
                            ? '$BASMALAH\n'
                            : '';

                        ayahs = basmalah + ayahs;

                        return SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: AnimatedDefaultTextStyle(
                              style: TextStyle(
                                height: 2.5,
                                fontFamily: FontFamily.isepMisbah,
                                fontSize: state.textSize.sp,
                                color: context.theme.colorScheme.onBackground,
                              ),
                              duration: const Duration(microseconds: 100),
                              child: SelectableText(
                                ayahs,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    error: (value) => SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Failed to load data - error'),
                            const IGap(),
                            OutlinedButton(
                              onPressed: () =>
                                  BlocProvider.of<VersesBloc>(context).add(
                                VersesEvent.getVerses(
                                  chapterNumber: widget.chapter.id ?? 1,
                                  edition:
                                      BlocProvider.of<SettingsCubit>(context)
                                          .state
                                          .quranEdition,
                                  force: true,
                                ),
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
      ),
    );
  }
}
