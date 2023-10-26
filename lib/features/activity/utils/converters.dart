import 'package:flutter/material.dart';

IconData activityIcon(String activityType) {
  switch (activityType) {
    case 'education':
      return Icons.menu_book;
    case 'recreational':
      return Icons.sentiment_very_satisfied_outlined;
    case 'social':
      return Icons.people_outline;
    case 'diy':
      return Icons.person_outline_rounded;
    case 'charity':
      return Icons.volunteer_activism_outlined;
    case 'cooking':
      return Icons.food_bank_outlined;
    case 'relaxation':
      return Icons.park_outlined;
    case 'music':
      return Icons.music_note_outlined;
    case 'busywork':
      return Icons.event_busy_outlined;
    default:
      return Icons.menu;
  }
}

String activityImage(String activityType) {
  switch (activityType) {
    case 'education':
      return 'assets/images/education.jpg';
    case 'recreational':
      return 'assets/images/recreational.jpg';
    case 'social':
      return 'assets/images/social.jpg';
    case 'diy':
      return 'assets/images/diy.jpg';
    case 'charity':
      return 'assets/images/charity.jpg';
    case 'cooking':
      return 'assets/images/cooking.jpg';
    case 'relaxation':
      return 'assets/images/relaxation.jpg';
    case 'music':
      return 'assets/images/music.jpg';
    case 'busywork':
      return 'assets/images/busywork.jpg';
    default:
      return 'assets/images/social.jpg';
  }
}

String capitalizeFirstLetter(String? text) {
  if (text == null || text.isEmpty) {
    return text!;
  }
  return text[0].toUpperCase() + text.substring(1).toLowerCase();
}

int converterDoubleValue(double value){
  return (value * 10).ceilToDouble().toInt();
}