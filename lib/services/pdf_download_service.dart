import 'dart:developer';
import 'package:universal_html/html.dart' as html;
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

class PdfDownloadService {
  static Future<void> downloadLocalPdf(String pdfPath, String fileName) async {
    try {
      // Load the PDF file as bytes
      ByteData data = await rootBundle.load(pdfPath);
      Uint8List bytes = data.buffer.asUint8List();

      // Create a Blob object with the correct MIME type
      final blob = html.Blob([bytes], 'application/pdf');

      // Create an Object URL for the Blob
      final url = html.Url.createObjectUrlFromBlob(blob);

      // Create an anchor element and trigger the download
      final anchor = html.AnchorElement(href: url);

      anchor
        ..setAttribute("download", fileName)
        ..click();

      // Revoke the Object URL to free memory
      html.Url.revokeObjectUrl(url);
    } catch (e) {
      log("Error downloading PDF: $e");
    }
  }
}
