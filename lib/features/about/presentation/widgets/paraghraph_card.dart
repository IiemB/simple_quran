import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:i_packages/utils/extensions.dart';

class ParagraphCard extends StatelessWidget {
  final LicenseEntry licenseEntry;
  final int pargraphIndex;
  const ParagraphCard({
    Key? key,
    required this.licenseEntry,
    required this.pargraphIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Center(
            child: Text(
              '# ${pargraphIndex + 1}',
              style: context.theme.textTheme.displayLarge?.copyWith(
                color: context.theme.textTheme.displayLarge?.color
                    ?.withOpacity(0.2),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: licenseEntry.paragraphs.map(
              (paragraph) {
                if (paragraph.indent == LicenseParagraph.centeredIndent) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: SelectableText(
                      paragraph.text,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                } else {
                  assert(paragraph.indent >= 0);
                  return Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 8.0,
                      start: 16.0 * paragraph.indent,
                    ),
                    child: SelectableText(paragraph.text),
                  );
                }
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
