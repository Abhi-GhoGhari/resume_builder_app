import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../utils/global_utils.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  Future<Uint8List> getPDF() async {
    pw.Document pdf = pw.Document();
    ByteData byteData = await rootBundle.load("lib/assets/profile/abhi.jpg");

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Column(
          children: [
            pw.Column(
              children: [
                pw.Container(
                  height: 150,
                  width: double.infinity,
                  decoration: pw.BoxDecoration(
                    color: PdfColors.grey,
                    borderRadius: pw.BorderRadius.circular(3),
                  ),
                  child: pw.Row(
                    children: [
                      pw.Container(
                        height: 100,
                        width: 100,
                        margin: const pw.EdgeInsets.all(15),
                        decoration: pw.BoxDecoration(
                          color: PdfColors.red,
                          borderRadius: const pw.BorderRadius.all(
                            pw.Radius.circular(50),
                          ),
                          image: pw.DecorationImage(
                            image: pw.MemoryImage(
                              (Global.global.image != null)
                                  ? Global.global.image!.readAsBytesSync()
                                  : byteData.buffer.asUint8List(),
                            ),
                            fit: pw.BoxFit.cover,
                          ),
                        ),
                      ),
                      pw.SizedBox(
                        height: 50,
                      ),
                      pw.Text(
                        Global.global.name.toString().replaceFirst(
                              Global.global.name.toString()[0],
                              Global.global.name.toString()[0].toUpperCase(),
                            ),
                        style: pw.TextStyle(
                          fontSize: 30,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                pw.Row(
                  children: [
                    pw.Container(
                      height: 548,
                      width: 190,
                      child: pw.Column(
                        children: [
                          //Personal Info
                          pw.Align(
                            alignment: pw.Alignment.centerLeft,
                            child: pw.Text(
                              'CONTACT',
                              style: pw.TextStyle(
                                fontSize: 19,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 15),
                          pw.Align(
                            alignment: pw.Alignment.centerLeft,
                            child: pw.Text(
                              Global.global.phone.toString(),
                              style: const pw.TextStyle(
                                fontSize: 19,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerLeft,
                            child: pw.Text(
                              Global.global.email.toString(),
                              style: const pw.TextStyle(
                                fontSize: 20,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerLeft,
                            child: pw.Text(
                              Global.global.address.toString(),
                              style: const pw.TextStyle(
                                fontSize: 20,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),

                          //AboutMe
                          pw.SizedBox(height: 10),
                          pw.Divider(),
                          pw.SizedBox(height: 10),
                          pw.Align(
                            alignment: pw.Alignment.centerLeft,
                            child: pw.Text(
                              'ABOUT ME',
                              style: pw.TextStyle(
                                fontSize: 19,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Text(
                            'A multitasking, adaptable individual '
                            'with a passion for work, gaming, travelling, '
                            '& Flutter development. ',
                            style: const pw.TextStyle(
                              fontSize: 18,
                            ),
                          ),

                          //Technical Skill
                          pw.SizedBox(height: 5),
                          pw.Divider(),
                          pw.SizedBox(height: 5),
                          pw.Align(
                            alignment: pw.Alignment.centerLeft,
                            child: pw.Text(
                              "TECHNICAL SKILL's",
                              style: pw.TextStyle(
                                fontSize: 19,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          ...List.generate(
                            Global.skillcontroller.length,
                            (index) => pw.Align(
                              alignment: pw.Alignment.centerLeft,
                              child: pw.Text(
                                '- ${Global.skillcontroller[index].text}',
                                style: const pw.TextStyle(fontSize: 18),
                              ),
                            ),
                          ),

                          //Hobbies
                          pw.SizedBox(height: 5),
                          pw.Divider(),
                          pw.SizedBox(height: 5),
                          pw.Align(
                            alignment: pw.Alignment.centerLeft,
                            child: pw.Text(
                              "HOBBIES",
                              style: pw.TextStyle(
                                fontSize: 19,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          ...List.generate(
                            Global.hobbiecontroller.length,
                            (index) => pw.Align(
                              alignment: pw.Alignment.centerLeft,
                              child: pw.Text(
                                '- ${Global.hobbiecontroller[index].text}',
                                style: const pw.TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Education
                    pw.Container(
                      height: 548,
                      width: 280,
                      // color: PdfColors.grey,
                      child: pw.Column(
                        children: [
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '\t\t\tEDUCATION',
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.course_degree}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.school_college_insitute}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.s_c_i_persentage}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.passing_year}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),

                          //Experience
                          pw.SizedBox(height: 5),
                          pw.Divider(
                            indent: 50,
                            endIndent: 30,
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '\t\t\tEXPERIENCE',
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.compony_name}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.quality_test_engineer}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.role}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.employee_status}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),

                          //Project
                          pw.SizedBox(height: 5),
                          pw.Divider(
                            indent: 50,
                            endIndent: 30,
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "\t\t\tPROJECT DETAIL's",
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.project_title}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          // pw.Align(
                          //   alignment: pw.Alignment.center,
                          //   child: pw.Text(
                          //     '- ${Global.global.language}',
                          //     style: const pw.TextStyle(
                          //       fontSize: 17,
                          //       // fontWeight: pw.FontWeight.bold,
                          //     ),
                          //     textAlign: pw.TextAlign.left,
                          //   ),
                          // ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.roles}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.technologies}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              '- ${Global.global.project_description}',
                              style: const pw.TextStyle(
                                fontSize: 17,
                                // fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.left,
                            ),
                          ),

                          //Certified Course
                          pw.SizedBox(height: 5),
                          pw.Divider(
                            indent: 50,
                            endIndent: 30,
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "\t\t\t\tCERTIFIED COURSE's",
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          ...List.generate(
                            Global.certfcontroller.length,
                            (index) => pw.Align(
                              alignment: pw.Alignment.center,
                              child: pw.Text(
                                '- ${Global.certfcontroller[index].text}',
                                style: const pw.TextStyle(fontSize: 18),
                              ),
                            ),
                          ),

                          //Achievements
                          pw.SizedBox(height: 10),
                          pw.Divider(
                            indent: 50,
                            endIndent: 30,
                          ),
                          pw.Align(
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "\t\t\t\tACHIEVEMENT's",
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          ...List.generate(
                            Global.achicontroller.length,
                            (index) => pw.Align(
                              alignment: pw.Alignment.center,
                              child: pw.Text(
                                '- ${Global.achicontroller[index].text}',
                                style: const pw.TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text("PDF Page"),
      ),
      backgroundColor: const Color(0xffF6D776),
      body: PdfPreview(
        pdfFileName: "RESUME_${Global.global.name?.toUpperCase() ?? "FN_LN"}",
        build: (format) => getPDF(),
      ),
    );
  }
}
