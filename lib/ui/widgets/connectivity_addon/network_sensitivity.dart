import 'package:allenrealestateflutter/core/services/real_estate_service/connectivity_services/connectivity_service.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NetworkSensitive extends StatelessWidget {
  final Widget child;

  const NetworkSensitive({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get our connection status from the provider
    var connectionStatus = Provider.of<ConnectivityStatus>(context);
    if (connectionStatus == ConnectivityStatus.WiFi) {
      return child;
    }
    if (connectionStatus == ConnectivityStatus.Cellular) {
      return child;
    }
    if (connectionStatus == ConnectivityStatus.Offline) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Icon(
          Icons.wifi_off_outlined,
          size: 100,
        ),
      );
    }
    return child;
  }
}
