import 'package:flutter/material.dart';
class info{
  final String image, title, description;
  final int id, time;

  info({
    required this.time,
    required this.title,
    required this.description,
    required this.id,
    required this.image,
});
}

List<info> infos =[
  info(
    id: 1,
    title: 'Entertainment',
    description: 'Click this to check out how the news recap feed would look like.',
    image: 'Frame 1000002617.jpg',
    time: 3,
  ),
  info(
    id: 2,
    title: 'Entertainment',
    description: 'Click this to check out how the news recap feed would look like.',
    image: 'assets/Frame 1000002618.png',
    time: 3,
  ),
  info(
    id: 3,
    title: 'Good Mood',
    description: 'Click this to check out how the news recap feed would look like.',
    image: 'assets/Frame 1000002619.png',
    time: 3,
  ),
  info(
    id: 4,
    title: 'Movie',
    description: 'Click this to check out how the news recap feed would look like.',
    image: 'assets/Rectangle 18291.png',
    time: 3,
  ),
  info(
    id: 5,
    title: 'Cricket',
    description: 'Click this to check out how the news recap feed would look like.',
    image: 'assets/CSK-vs-GT-Dream11-Prediction 1.png',
    time: 3,
  ),
  info(
    id: 6,
    title: 'Entertainment',
    description: 'Click this to check out how the news recap feed would look like.',
    image: 'Frame 1000002617.jpg',
    time: 3,
  ),
];