import 'package:flutter/material.dart';
//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarCodeScanner extends StatefulWidget {
  BarCodeScanner({Key key}) : super(key: key);

  @override
  _BarCodeScannerState createState() => _BarCodeScannerState();
}

class _BarCodeScannerState extends State<BarCodeScanner> {
  String _cnt, scannedCode ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan code'),
      ),
      body: (Center(child: Text('$scannedCode'),)),
      floatingActionButton: FloatingActionButton(
        onPressed: _scanCode,
        backgroundColor: Colors.blue,
        child: Icon(Icons.settings_overscan) ,
      ),
    );
  }
  Future _scanCode() async {
   // _cnt = await FlutterBarcodeScanner.scanBarcode('#004297', 'Cancel', true, ScanMode.BARCODE);

    setState(() {
     // scannedCode = _cnt;
    });
  }
}
