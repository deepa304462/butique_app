import 'package:butique_app/utils/file_handle_api.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;
import 'models/add_customer_measurments_model.dart';

class MeasurementGenerator {
  static Future<dynamic> generate(
      AddMeasurementsModel addMeasurementsModel, Map<String, dynamic>? customerData) async {
    final pdf = pw.Document();

    pdf.addPage(pw.MultiPage(
        pageTheme: const pw.PageTheme(margin: pw.EdgeInsets.all(16)),
        mainAxisAlignment: pw.MainAxisAlignment.center,
        build: (context) {
          return [
            pw.Container(
              decoration: pw.BoxDecoration(
                  border: pw.Border.all(color: PdfColors.black, width: 2)),
              child: pw.Column(
                children: [
                  pw.Row(
                    children: [
                      pw.Expanded(
                        child: pw.Container(
                          height: 40,
                          width: 400,
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Center(
                              child: pw.Text(
                            "Shirt",
                            style: pw.TextStyle(
                                fontSize: 24, fontWeight: pw.FontWeight.bold),
                          )),
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          height: 40,
                          width: 400,
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Center(
                              child: pw.Text(
                            "Pant/Plazo",
                            style: pw.TextStyle(
                                fontSize: 24, fontWeight: pw.FontWeight.bold),
                          )),
                        ),
                      ),
                      pw.Expanded(
                          child: pw.Container(
                        height: 40,
                        width: 400,
                        decoration: pw.BoxDecoration(border: pw.Border.all()),
                        child: pw.Center(
                            child: pw.Text(
                          "Gown/Frock",
                          style: pw.TextStyle(
                              fontSize: 24, fontWeight: pw.FontWeight.bold),
                        )),
                      )),
                      pw.Expanded(
                          child: pw.Container(
                        height: 40,
                        width: 400,
                        decoration: pw.BoxDecoration(border: pw.Border.all()),
                        child: pw.Center(
                            child: pw.Text(
                          "",
                          style: pw.TextStyle(
                              fontSize: 24, fontWeight: pw.FontWeight.bold),
                        )),
                      ))
                    ],
                  ),
                  pw.Container(
                    decoration: pw.BoxDecoration(
                        border:
                            pw.Border.all(color: PdfColors.black, width: 1)),
                  ),
                  pw.Row(
                    children: [
                      pw.Expanded(
                        child: pw.Container(
                          width: 400,
                          height: 650,
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "L/P",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.lpShirt
                                                          .toString() ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "L/S",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.lsShirt
                                                          .toString() ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "L/CH",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.lchShirt
                                                          .toString() ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "U.C.",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.ucShirt
                                                          .toString() ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "C",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.cShirt
                                                          .toString() ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "W",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.wShirt
                                                          .toString() ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "H",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.hShirt
                                                          .toString() ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "Sh",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.shShirt
                                                          .toString() ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 8, right: 8),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "SL-SM",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.SizedBox(
                                        height: 40,
                                        child: pw.Column(
                                          children: [
                                            pw.Row(
                                              children: [
                                                pw.SizedBox(
                                                  width: 30,
                                                ),
                                                pw.Padding(
                                                  padding: const pw.EdgeInsets.only(
                                                      right: 35),
                                                  child: pw.Text(
                                                    "L",
                                                    style: pw.TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                pw.Text(
                                                  "R",
                                                  style: pw.TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            pw.Row(
                                              children: [
                                                pw.SizedBox(
                                                  width: 30,
                                                ),
                                                pw.Padding(
                                                  padding: const pw.EdgeInsets.only(
                                                      right: 16),
                                                  child: pw.Text(
                                                    "(${addMeasurementsModel.slSmShirtL ?? ""}  )",
                                                    style: pw.TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                pw.Text(
                                                  "(${addMeasurementsModel.slSmShirtR ?? ""}  )",
                                                  style: pw.TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            pw.SizedBox(
                                                width: 100,
                                                child: pw.Divider(
                                                  height: 1,
                                                ))
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 8, right: 8),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "E/B",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.SizedBox(
                                        height: 40,
                                        child: pw.Column(
                                          children: [
                                            pw.Row(
                                              children: [
                                                pw.SizedBox(
                                                  width: 60,
                                                ),
                                                pw.Padding(
                                                  padding: const pw.EdgeInsets.only(
                                                      right: 16),
                                                  child: pw.Text(
                                                    "(${addMeasurementsModel.ebShirtL ?? ""}  )",
                                                    style: pw.TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                pw.Text(
                                                  "(${addMeasurementsModel.ebShirtR ?? ""}  )",
                                                  style: pw.TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            pw.Padding(
                                              padding:
                                                  const pw.EdgeInsets.only(top: 15),
                                              child: pw.Expanded(
                                                child: pw.SizedBox(
                                                    width: 100,
                                                    child: pw.Divider(
                                                      height: 1,
                                                    )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 8, right: 8),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "3/4",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.SizedBox(
                                        height: 40,
                                        child: pw.Column(
                                          children: [
                                            pw.Row(
                                              children: [
                                                pw.SizedBox(
                                                  width: 60,
                                                ),
                                                pw.Padding(
                                                  padding: const pw.EdgeInsets.only(
                                                      right: 16),
                                                  child: pw.Text(
                                                    "(${addMeasurementsModel.tfShirtL ?? ""}  )",
                                                    style: pw.TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                pw.Text(
                                                  "(${addMeasurementsModel.tfShirtR ?? ""}  )",
                                                  style: pw.TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            pw.Padding(
                                              padding:
                                                  const pw.EdgeInsets.only(top: 15),
                                              child: pw.Expanded(
                                                child: pw.SizedBox(
                                                    width: 100,
                                                    child: pw.Divider(
                                                      height: 1,
                                                    )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "Full",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .fullShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "A/h",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .ahShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "A",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.aShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "D.P.",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .dpShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "F.C.",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .fcShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "B.C.",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .bcShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "N",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.nShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "B.N.",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .bnShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "CK",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .ckShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "Ghera",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .gheraShirt ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          width: 400,
                          height: 650,
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "L",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.lPant ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "W",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.wPant ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "H",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.hPant ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "Th",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.thPant ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "K",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.kPant ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "Mori",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .moriPant ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Center(
                                  child: pw.Text(
                                "SALWAR",
                                style: pw.TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),

                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "L",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .lSalwar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "M",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .mSalwar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "W",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .wSalwar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "H",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .hSalwar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Center(
                                  child: pw.Text(
                                "Churidar",
                                style: pw.TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "L",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .lChuridar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "W",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .wChuridar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "H",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .hChuridar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "Th",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .thChuridar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ), //ndlksnln
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "K",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .kChuridar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "Mori",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .moriChuridar ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Center(
                                  child: pw.Text(
                                "Lehnga",
                                style: pw.TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "L",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .lLehnga ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "W",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .wLehnga ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "H",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .hLehnga ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          width: 400,
                          height: 650,
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "L",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.lGown ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "B.L.",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel.blGown ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Center(
                                  child: pw.Text(
                                "Blouse",
                                style: pw.TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "L",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .lBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "D.P.",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .dpBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "U.C.",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .ucBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "C",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .cBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "W",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .wBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "Sh",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .shBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding:
                                    const pw.EdgeInsets.only(left: 8, right: 8),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "SL-SM",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.SizedBox(
                                        height: 40,
                                        child: pw.Column(
                                          children: [
                                            pw.Row(
                                              children: [
                                                pw.SizedBox(
                                                  width: 30,
                                                ),
                                                pw.Padding(
                                                  padding:
                                                      const pw.EdgeInsets.only(
                                                          right: 35),
                                                  child: pw.Text(
                                                    "L",
                                                    style: pw.TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                pw.Text(
                                                  "R",
                                                  style: pw.TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            pw.Row(
                                              children: [
                                                pw.SizedBox(
                                                  width: 30,
                                                ),
                                                pw.Padding(
                                                  padding:
                                                      const pw.EdgeInsets.only(
                                                          right: 16),
                                                  child: pw.Text(
                                                    "( ${addMeasurementsModel.slSmBlouseL ?? ""} )",
                                                    style: pw.TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                pw.Text(
                                                  "(${addMeasurementsModel.slSmBlouseR ?? ""}  )",
                                                  style: pw.TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            pw.SizedBox(
                                                width: 100,
                                                child: pw.Divider(
                                                  height: 1,
                                                ))
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding:
                                    const pw.EdgeInsets.only(left: 8, right: 8),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "A",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.SizedBox(
                                        height: 40,
                                        child: pw.Column(
                                          children: [
                                            pw.Row(
                                              children: [
                                                pw.SizedBox(
                                                  width: 60,
                                                ),
                                                pw.Padding(
                                                  padding:
                                                      const pw.EdgeInsets.only(
                                                          right: 16),
                                                  child: pw.Text(
                                                    "( ${addMeasurementsModel.aBlouseL ?? ""} )",
                                                    style: pw.TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                pw.Text(
                                                  "(${addMeasurementsModel.aBlouseR ?? ""}  )",
                                                  style: pw.TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            pw.Padding(
                                              padding:
                                                  const pw.EdgeInsets.only(top: 15),
                                              child: pw.Expanded(
                                                child: pw.SizedBox(
                                                    width: 100,
                                                    child: pw.Divider(
                                                      height: 1,
                                                    )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "A/h",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .ahBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "F.C",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .fcBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "B.C.",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .bcBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "N",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .nBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      "B.N",
                                      style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    pw.Expanded(
                                      child: pw.Padding(
                                        padding:
                                            const pw.EdgeInsets.only(top: 15),
                                        child: pw.SizedBox(
                                            width: 100,
                                            child: pw.Column(
                                              children: [
                                                pw.Text(
                                                  addMeasurementsModel
                                                          .bnBlouse ??
                                                      "",
                                                ),
                                                pw.Divider(
                                                  height: 1,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.Center(
                                  child:pw.Padding(
                                    padding: const pw.EdgeInsets.all(4),
                                      child: pw.Column(children: [
                                        pw.Text(
                                          "Remarks",
                                          style: pw.TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        pw.Text(addMeasurementsModel
                                            .remark ??
                                            "",)
                                      ])
                                  )),
                            ],
                          ),
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          width:300,
                        height: 650,
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.center,
                            crossAxisAlignment: pw.CrossAxisAlignment.center,
                            children: [
                              pw.Text(
                                customerData?['name'],
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              pw.SizedBox(
                                height: 20
                              ),
                              pw.Text(
                                customerData?['phone'],
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              pw.SizedBox(
                                  height: 20
                              ),
                              pw.Text(
                                customerData?['address'],
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ];
        }));

    return FileHandleApi.saveDocument(name: 'measurement.pdf', pdf: pdf);
  }

}
