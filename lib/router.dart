import 'package:campus_buddy/features/auth/screen/login_screen.dart';
import 'package:campus_buddy/features/community/screens/add_mod_screen.dart';
import 'package:campus_buddy/features/community/screens/create_community_screen.dart';
import 'package:campus_buddy/features/community/screens/edit_community_screen.dart';
import 'package:campus_buddy/features/community/screens/mod_tools_screen.dart';
import 'package:campus_buddy/features/home/screens/home_screen.dart';
import 'package:campus_buddy/features/post/add_post_type_screen.dart';
import 'package:campus_buddy/features/user_profile/screens/comment_screen.dart';
import 'package:campus_buddy/features/user_profile/screens/edit_profile_screen.dart';
import 'package:campus_buddy/features/user_profile/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'features/community/screens/community_screen.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
  '/create-community': (_) =>
      const MaterialPage(child: CreateCommunityScreen()),
  '/y/:name': (route) => MaterialPage(
        child: CommunityScreen(
          name: route.pathParameters['name']!,
        ),
      ),
  '/mod-tools/:name': (routeData) => MaterialPage(
        child: ModToolsScreen(
          name: routeData.pathParameters['name']!,
        ),
      ),
  '/edit-community/:name': (routeData) => MaterialPage(
        child: EditCommunityScreen(
          name: routeData.pathParameters['name']!,
        ),
      ),
  '/add-mods/:name': (routeData) => MaterialPage(
        child: AddModsScreen(
          name: routeData.pathParameters['name']!,
        ),
      ),
  '/u/:uid': (routeData) => MaterialPage(
        child: UserProfileScreen(
          uid: routeData.pathParameters['uid']!,
        ),
      ),
  '/edit-profile/:uid': (routeData) => MaterialPage(
        child: EditProfileScreen(
          uid: routeData.pathParameters['uid']!,
        ),
      ),
  '/add-post/:type': (routeData) => MaterialPage(
        child: AddPostTypeScreen(
          type: routeData.pathParameters['type']!,
        ),
      ),
  '/post/:postId/comments': (routeData) => MaterialPage(
        child: CommentsScreen(
          postId: routeData.pathParameters['postId']!,
        ),
      ),
});
