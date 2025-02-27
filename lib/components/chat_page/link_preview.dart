import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:http/http.dart' as http;

import '../../core/colors.dart';

class LinkPreviewWidget extends StatefulWidget {
  const LinkPreviewWidget({
    super.key,
    required this.link,
    required this.isSender,
    this.isGroup = false,
  });
  final String link;
  final bool isSender;
  final bool isGroup;

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

  String getDomain(String url) {
    Uri uri = Uri.parse(url);
    return uri.host;
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
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.chatColor(context, widget.isSender),
        borderRadius: BorderRadius.circular(17),
      ),
      constraints: BoxConstraints(
        minHeight: 65,
        maxWidth: size.width * 0.79,
        minWidth: size.width * 0.3,
      ),
      margin: widget.isGroup ? null : EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title.isEmpty && imageUrl.isEmpty && description.isEmpty)
                  SizedBox.shrink()
                else
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.grey(context)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (imageUrl.isNotEmpty)
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.network(
                              imageUrl,
                              width: double.infinity,
                            ),
                          ),
                        if (title.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                          ),
                        if (description.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 5, left: 10, right: 10),
                            child: Text(description),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, top: 0, left: 10, right: 10),
                          child: Text(
                            getDomain(widget.link),
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.link,
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 5,
              children: [
                if (widget.isSender)
                  Icon(
                    Icons.check,
                    size: 13,
                    color: Colors.blue,
                  ),
                Text(
                  "10:00 AM",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
