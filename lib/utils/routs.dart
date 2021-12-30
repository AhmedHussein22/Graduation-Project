import 'package:flutter/material.dart';
import 'package:tot/ui/views/chat/chat_view.dart';
import 'package:tot/ui/views/login/login_view.dart';
import 'package:tot/ui/views/notifications/notifications_view.dart';
import 'package:tot/ui/views/offers/offers_view.dart';
import 'package:tot/ui/views/reviews/add_review_view.dart';
import 'package:tot/ui/views/reviews/reviews_view.dart';
import 'package:tot/ui/views/settings/settings.dart';
import 'package:tot/ui/views/student/account/account_view.dart';
import 'package:tot/ui/views/student/all_teachers/all_teacher_view.dart';
import 'package:tot/ui/views/student/home/home_view.dart';
import 'package:tot/ui/views/student/search/filter_view.dart';
import 'package:tot/ui/views/student/search/search_by_level_view.dart';
import 'package:tot/ui/views/student/search/search_by_material.dart';
import 'package:tot/ui/views/student/search/search_by_teacher_view.dart';
import 'package:tot/ui/views/student/search/search_resultes_view.dart';
import 'package:tot/ui/views/student/search/search_view.dart';
import 'package:tot/ui/views/student/services/services_view.dart';
import 'package:tot/ui/views/student/teacher_in_details/teacher_in_details_view.dart';
import 'package:tot/ui/views/teacher/add_offer/add_offer_view.dart';
import 'package:tot/ui/views/teacher/home/teacher_homeView.dart';
import 'package:tot/ui/views/teacher/services/teacher_services_view.dart';
import 'package:tot/ui/views/teacher/teacher_profile/personal_information_view.dart';
import 'package:tot/ui/widgets/shared_widgets/successful_view.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = {
    "/login": (context) => LoginView(),
    "/home": (context) => HomeView(),
    "/search": (context) =>SearchView(),
    "/chat": (context) =>ChatView(),
    "/service": (context) =>ServicesView(),
    "/account": (context) =>AccountView(),
    "/Offers": (context) =>OfferView(),
    "/AllTeachers": (context) =>AllTeachersView(),
    "/TeacherInDetailsView": (context) =>TeacherInDetailsView(),
    "/ReviewView": (context) =>ReviewView(),
    "/AddReviewView": (context) =>AddReviewView(),
    "/SuccessfulView": (context) =>SuccessfulView(),
    "/NotificationsView": (context) =>NotificationsView(),
    "/TeacherHomeView": (context) =>TeacherHomeView(),
    "/AddOffer": (context) =>AddOfferView(),
    "/SearchByTeacherView": (context) =>SearchByTeacherView(),
    "/SearchByMaterialView": (context) =>SearchByMaterialView(),

    "/SearchByLevelView": (context) =>SearchByLevelView(),
    "/SearchResultesView": (context) =>SearchResultesView(),
    "/FilterView": (context) =>FilterView(),
    "/SettingsView": (context) =>Settigs(),
    "/PersonalInformationView": (context) =>PersonalInformationView(),
    "/TeacherServicesView": (context) =>TeacherServicesView(),
  };
}
