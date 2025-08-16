import 'package:flutter/material.dart';
import 'package:showcase/themes/styles/app_themes.dart';
import 'package:showcase/ui/pages/dashboard/sections/footer/footer_section_provider.dart';
import 'package:showcase/utils/ui_utils.dart';
import 'package:provider/provider.dart';

class FooterSectionWidget extends StatelessWidget {
  const FooterSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final section = context.watch<FooterSectionProvider>().section;
    final isMobile = getIsMobile(context);

    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: AppColorsDark.surfaceDim,
          ),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 32),

            // Social Media Links
            ...section.socialMediaList.map(
              (item) => HoverLink(
                label: item.label,
                url: item.cta,
              ),
            ),
            const SizedBox(height: 32),

            // Contact Links
            ...section.contacts.map(
              (item) => HoverLink(
                label: item.label,
                url: item.cta,
              ),
            ),

            const SizedBox(height: 24),

            // Divider line
            const Divider(color: Colors.white, thickness: 1),

            const SizedBox(height: 24),

            // Signature Text
            Center(
              child: Text(section.signature,
                  style: Theme.of(context).textTheme.bodySmall),
            ),

            const SizedBox(height: 24),
          ],
        ),

        // Positioned Memoji
        Positioned(
          left: isMobile ? 16 : 150,
          bottom: 0,
          child: Image.asset(
            section.imagePath,
            height: isMobile ? 150 : 300,
          ),
        ),
      ],
    );
  }
}

class HoverLink extends StatefulWidget {
  const HoverLink({required this.label, required this.url, super.key});

  final String label;
  final String url;

  @override
  State<HoverLink> createState() => _HoverLinkState();
}

class _HoverLinkState extends State<HoverLink> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = getIsMobile(context);
    final paddingH = isMobile ? 16.0 : 150.0;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: paddingH),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            if (widget.url.isNotEmpty) {
              launchWebUrl(Uri.parse(widget.url), context);
            }
          },
          child: Text(
            widget.label,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  decoration: _isHovering
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ),
          ),
        ),
      ),
    );
  }
}
