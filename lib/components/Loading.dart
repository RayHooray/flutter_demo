import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading {
  setLoading(args) {
    return Offstage(
        offstage: !args,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Container(
              alignment: Alignment.center,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(65, 0, 0, 0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Center(
                    child: SpinKitCubeGrid(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text('Loading',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  )
                ],
              ),
            ))
          ],
        ));
  }
}

class Uploading {
  setUploading(args) {
    return Offstage(
      offstage: !args,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Container(
            alignment: Alignment.topRight,
            decoration: const BoxDecoration(color: Color.fromARGB(0, 0, 0, 0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Center(
                  child: SpinKitPouringHourGlass(
                    color: Colors.blueGrey,
                    size: 30.0,
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
