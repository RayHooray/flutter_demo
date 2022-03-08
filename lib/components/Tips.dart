import 'package:flutter/material.dart';

class Tips {
  confirmTip(context, confirmMsg) {
    return showDialog(
        context: context,
        builder: (BuildContext context0) => AlertDialog(
              title: const Text('提示'),
              content: Text(confirmMsg),
              actions: <Widget>[
                TextButton(
                  child: const Text('取消'),
                  onPressed: () {
                    Navigator.of(context0).pop();
                    // return false;
                  },
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context0).pop();
                      // return true;
                    },
                    child: const Text('確定'))
              ],
            ));
  }
}
