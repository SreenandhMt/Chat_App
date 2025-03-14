import 'dart:io';

String getFileType(File file) {
  String path = file.path;
  String extension = path.split('.').last.toLowerCase();

  if (['jpg', 'jpeg', 'png', 'gif'].contains(extension)) {
    return 'Image';
  } else if (['mp4', 'mkv', 'avi', 'mov'].contains(extension)) {
    return 'Video';
  } else if (['mp3', 'wav', 'aac'].contains(extension)) {
    return 'Audio';
  } else if (['pdf'].contains(extension)) {
    return 'PDF';
  } else if (['doc', 'docx', 'txt'].contains(extension)) {
    return 'Document';
  } else {
    return 'Unknown';
  }
}

String? getFileUrl(String type) {
  switch (type) {
    case "PDF":
      return "https://play-lh.googleusercontent.com/IkcyuPcrQlDsv62dwGqteL_0K_Rt2BUTXfV3_vR4VmAGo-WSCfT2FgHdCBUsMw3TPGU";
    default:
      return null;
  }
}
