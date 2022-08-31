import 'dart:io';

import 'package:clean_arch_sample/core/arch/widget/common/toast.dart';
import 'package:clean_arch_sample/core/di/app.dart';
import 'package:clean_arch_sample/core/di/remote.dart';
import 'package:flutter/material.dart';

class QaUtils {
  static Widget buildCharlesProxyBtn(BuildContext context) {
    //TODO SHOW set proxy ONLY FOR QA BUILDS
    if (false /*FlavorConfig.I.flavor == Flavors.prod*/) {
      return const SizedBox();
    } else {
      if (!Platform.isAndroid) {
        return const SizedBox();
      }
      return ElevatedButton(
        onPressed: () {
          _setProps(context);
        },
        child: const Text('Set Proxy'),
      );
    }
  }

  static void _setProps(BuildContext context) {
    final userInfoKey = GlobalKey<FormState>();
    String? ip, port;
    var alert = AlertDialog(
      scrollable: true,
      title: const Text("Set CHARLES PROXY"),
      content: Form(
        key: userInfoKey,
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              decoration: const InputDecoration(hintText: "IP"),
              onChanged: (val) {
                ip = val;
              },
            ),
            TextFormField(
              autofocus: true,
              decoration: const InputDecoration(hintText: "PORT"),
              onChanged: (val) {
                port = val;
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            MaterialButton(
              elevation: 10.0,
              child: const Text(
                "Set proxy",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                if (ip != null && port != null) {
                  logger.d('value: $ip, port: $port');

                  apiClientJsonPlaceholder().attachCharlesProxy(ip, port);
                  Navigator.of(context, rootNavigator: true).pop(context);
                  CustomToast.showToast('DONE on $ip:$port');
                }
              },
            ),
            MaterialButton(
              elevation: 10.0,
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop(context);
              },
            ),
          ],
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (context) => alert,
    );
  }
}
