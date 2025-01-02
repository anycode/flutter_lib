import 'package:flutter/material.dart';

/// [Loader] is deprecated since 0.2.0 and will be removed in next version.
@Deprecated('Use AcLoader instead. Loader will be removed in next version.')
class Loader extends StatelessWidget {
  final String? title;

  const Loader({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircularProgressIndicator(),
        if (title != null) Text(title!),
      ],
    );
  }
}
