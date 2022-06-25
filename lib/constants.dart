library constants;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Navigation Bar
const DRAWER_HEADER_TITLE = 'Fitness App';

const DASHBOARD_DRAWER_TITLE = 'Dashboard';
const DASHBOARD_DRAWER_ICON = FontAwesomeIcons.idCardAlt;
const WORKOUT_DRAWER_TITLE = 'Workout';
const WORKOUT_DRAWER_ICON = FontAwesomeIcons.dumbbell;
const EXERCISES_DRAWER_TITLE = 'Exercises';
const EXERCISES_DRAWER_ICON = FontAwesomeIcons.walking;

const DRAWER_ITEMS = [
  [DASHBOARD_DRAWER_TITLE, DASHBOARD_DRAWER_ICON],
  [WORKOUT_DRAWER_TITLE, WORKOUT_DRAWER_ICON],
  [EXERCISES_DRAWER_TITLE, EXERCISES_DRAWER_ICON],
];

// Fragment Constants
const ERROR_FRAGMENT_MESSAGE = 'Fragment not found';
