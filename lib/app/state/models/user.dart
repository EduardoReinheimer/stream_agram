import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class StreamgramUser {
  const StreamgramUser({
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.profilePhoto,
    required this.profilePhotoResized,
    required this.profilePhotoThumbnail,
  });

  factory StreamgramUser.fromMap(Map<String, dynamic> map) {
    return StreamgramUser(
      firstName: map['first_name'] as String,
      lastName: map['last_name'] as String,
      fullName: map['full_name'] as String,
      profilePhoto: map['profile_photo'] as String?,
      profilePhotoResized: map['profile_photo_resized'] as String?,
      profilePhotoThumbnail: map['profile_photo_thumbnail'] as String?,
    );
  }

  factory StreamgramUser.fromJson(String source) =>
      StreamgramUser.fromMap(jsonDecode(source) as Map<String, dynamic>);

  final String firstName;
  final String lastName;
  final String fullName;
  final String? profilePhoto;
  final String? profilePhotoResized;
  final String? profilePhotoThumbnail;

  StreamgramUser copyWith(
      {String? firstName,
      String? lastname,
      String? fullName,
      String? profilePhoto,
      String? profilePhotoResized,
      String? profilePhotoThumbnail}) {
    return StreamgramUser(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        fullName: fullName ?? this.fullName,
        profilePhoto: profilePhoto ?? this.profilePhoto,
        profilePhotoResized: profilePhotoResized ?? this.profilePhotoResized,
        profilePhotoThumbnail:
            profilePhotoThumbnail ?? this.profilePhotoThumbnail);
  }

  Map<String, dynamic> toMap() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'full_name': fullName,
      'profile_photo': profilePhoto,
      'profile_photo_resized': profilePhotoResized,
      'profile_photo_thumbnail': profilePhotoThumbnail,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return '''UserData(firstName: $firstName, lastName: $lastName, fullName: $fullName, profilePhoto: $profilePhoto, profilePhotoResized: $profilePhotoResized, profilePhotoThumbnail: $profilePhotoThumbnail)''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StreamgramUser &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.fullName == fullName &&
        other.profilePhoto == profilePhoto &&
        other.profilePhotoResized == profilePhotoResized &&
        other.profilePhotoThumbnail == profilePhotoThumbnail;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        fullName.hashCode ^
        profilePhoto.hashCode ^
        profilePhotoResized.hashCode ^
        profilePhotoThumbnail.hashCode;
  }
}
