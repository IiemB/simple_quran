// ignore_for_file: require_trailing_commas

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';
import 'package:simple_quran/widgets/widgets.dart';

class ChapterPage extends StatefulWidget {
  static const routeName = 'chapter';

  final int id;

  const ChapterPage({
    super.key,
    @pathParam required this.id,
  });

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => VersesBloc()
            ..add(
              VersesEvent.getVerses(
                chapterNumber: widget.id,
                edition:
                    BlocProvider.of<SettingsCubit>(context).state.quranEdition,
              ),
            ),
        ),
        BlocProvider(
          create: (context) =>
              ChapterBloc()..add(ChapterEvent.getChapter(id: widget.id)),
        ),
      ],
      child: BlocListener<SettingsCubit, SettingsModel>(
        listenWhen: (previous, current) =>
            previous.quranEdition != current.quranEdition,
        listener: (context, state) => BlocProvider.of<VersesBloc>(context).add(
          VersesEvent.getVerses(
            chapterNumber: widget.id,
            edition: state.quranEdition,
          ),
        ),
        child: Scaffold(
          body: BlocBuilder<ChapterBloc, ChapterState>(
            builder: (context, chapterState) => chapterState.maybeMap(
              orElse: () => const Center(child: CircularProgressIndicator()),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              loaded: (chapterLoaded) => Scrollbar(
                radius: const Radius.circular(4),
                controller: _scrollController,
                child: CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverAppBar(
                      floating: true,
                      leading: const CustomBackButton(),
                      title: Text(
                        '${chapterLoaded.data.nameArabic}',
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
                        loading: (_) => const SliverFillRemaining(
                          child: Center(child: CircularProgressIndicator()),
                        ),
                        loaded: (value) =>
                            BlocBuilder<SettingsCubit, SettingsModel>(
                          builder: (context, settingsModel) {
                            final verses = value.data.verses;

                            if (verses == null) {
                              return SliverFillRemaining(
                                child: _RetryButton(
                                  message: 'Failed to load data - error',
                                  onPressed: () =>
                                      BlocProvider.of<VersesBloc>(context).add(
                                    VersesEvent.getVerses(
                                      chapterNumber: widget.id,
                                      edition: settingsModel.quranEdition,
                                      force: true,
                                    ),
                                  ),
                                ),
                              );
                            }

                            var ayahs = List.generate(
                              verses.length,
                              (index) {
                                String? text = '';

                                switch (settingsModel.quranEdition) {
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

                            final basmalah =
                                chapterLoaded.data.bismillahPre == true
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
                                    fontSize: settingsModel.textSize.sp,
                                    color:
                                        context.theme.colorScheme.onBackground,
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
                        error: (_) => SliverFillRemaining(
                          child: _RetryButton(
                            message: 'Failed to load data - error',
                            onPressed: () =>
                                BlocProvider.of<VersesBloc>(context).add(
                              VersesEvent.getVerses(
                                chapterNumber: widget.id,
                                edition: BlocProvider.of<SettingsCubit>(context)
                                    .state
                                    .quranEdition,
                                force: true,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              error: (_) => _RetryButton(
                message: 'Failed to load data - error',
                onPressed: () => BlocProvider.of<ChapterBloc>(context)
                    .add(ChapterEvent.getChapter(id: widget.id)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _RetryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String message;

  const _RetryButton({
    Key? key,
    this.onPressed,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const Gap(),
          OutlinedButton(
            onPressed: onPressed,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
