import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as html_parser;

class LinkPreviewWidget extends StatefulWidget {
  const LinkPreviewWidget({
    super.key,
    required this.link,
    required this.isSender,
  });
  final String link;
  final bool isSender;

  @override
  State<LinkPreviewWidget> createState() => _LinkPreviewWidgetState();
}

class _LinkPreviewWidgetState extends State<LinkPreviewWidget> {
  String title = '';
  String description = '';
  String imageUrl = '';

  @override
  void initState() {
    super.initState();
    _fetchMetadata();
  }

  Future<void> _fetchMetadata() async {
    try {
      final response = await http.get(Uri.parse(widget.link));
      if (response.statusCode == 200) {
        var document = html_parser.parse(response.body);

        // Extract Open Graph meta tags
        title = _getMetaTagContent(document, 'og:title') ?? _getTitle(document);
        description = _getMetaTagContent(document, 'og:description') ??
            _getMetaTagContent(document, 'description') ??
            '';
        imageUrl = _getMetaTagContent(document, 'og:image') ?? '';

        setState(() {});
      }
    } catch (e) {
      debugPrint('Error fetching metadata: $e');
    }
  }

  String? _getMetaTagContent(var document, String property) {
    return document
        .querySelector('meta[property="$property"]')
        ?.attributes['content'];
  }

  String _getTitle(var document) {
    return document.querySelector('title')?.text ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          width: double.infinity,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Text(description),
      ],
    );
  }
}
