class UserModels {
  final String uid;
  final String phoneNumber;
  final String name;
  final String about;
  final String status;
  final String lastSeen;
  final String? imageUrl;
  final Map<String, dynamic>? contacts;

  UserModels({
    required this.uid,
    required this.phoneNumber,
    required this.name,
    required this.about,
    required this.status,
    required this.lastSeen,
    required this.imageUrl,
    this.contacts,
  });

  factory UserModels.fromJson(Map<String, dynamic> json) {
    return UserModels(
        uid: json['uid'],
        phoneNumber: json['phone-number'],
        name: json['user-name'],
        about: json['about'],
        status: json['status'],
        lastSeen: json['lastSeen'],
        imageUrl: json['profile-image'],
        contacts: json["contacts"]);
  }
}
