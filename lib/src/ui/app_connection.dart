import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';

typedef AppConnectionBuilder = Widget Function(BuildContext context, ConnectivityStatus? status);

/// [AppConnection] is deprecated since 0.2.0 and will be removed in next version.
@Deprecated('Use [AcConnectionBuilder] instead. [AppConnection] will be removed in next version.')
class AppConnection extends StatelessWidget {
  final AppConnectionBuilder builder;
  final AppConnectionBuilder errorBuilder;

  const AppConnection({required this.builder, required this.errorBuilder, super.key});

  @override
  Widget build(BuildContext context) {
    return ConnectivityBuilder(
      builder: (BuildContext context, bool? isConnected, ConnectivityStatus? status) {
        if (isConnected == true) {
          return builder(context, status);
        } else {
          return errorBuilder(context, status);
        }
      },
    );
  }
}
