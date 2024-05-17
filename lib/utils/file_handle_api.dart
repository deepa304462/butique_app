import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class FileHandleApi {
  // save pdf file function
  static Future<dynamic> saveDocument({
    required String name,
    required pw.Document pdf,
  }) async {
    if (!kIsWeb) {
      final bytes = await pdf.save();
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$name');
      await file.writeAsBytes(bytes);
      openFile(file);
    } else {
      await Printing.layoutPdf(
          onLayout: (PdfPageFormat format) async => pdf.save());
      await Printing.sharePdf(bytes: await pdf.save(), filename: "report.pdf");

      /* html.AnchorElement(
          href:
          "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}")
        ..setAttribute("download", "report.pdf")
        ..click();*/
    }
  }

  // open pdf file function
  static Future openFile(File file) async {
    final url = file.path;
    await OpenFilex.open(url);
  }
}
