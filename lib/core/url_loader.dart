import 'package:html/parser.dart' as html_parser;
import 'package:http/http.dart' as http;

class UrlPreviewLoader {
  // Future<> _fetchMetadata() async {
  //   try {

  //       // Extract Open Graph meta tags
  //       title = _getMetaTagContent(document, 'og:title') ?? _getTitle(document);
  //       description = _getMetaTagContent(document, 'og:description') ??
  //           _getMetaTagContent(document, 'description') ??
  //           '';
  //       imageUrl = _getMetaTagContent(document, 'og:image') ?? '';

  //       setState(() {});
  //     }
  //   } catch (e) {
  //     debugPrint('Error fetching metadata: $e');
  //   }
  // }

  static String getDomain(String url) {
    Uri uri = Uri.parse(url);
    return uri.host;
  }

  static Future<String?> getMetaTagContent(String url, String property) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var document = html_parser.parse(response.body);
      return document
          .querySelector('meta[property="$property"]')
          ?.attributes['content'];
    }
    return null;
  }

  static Future<String?> getTitle(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var document = html_parser.parse(response.body);
      return document.querySelector('title')?.text ?? '';
    }
    return null;
  }
}
