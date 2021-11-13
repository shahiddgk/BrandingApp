
import 'package:flutter_smart_home_ui/Pages/About/about.dart';
import 'package:flutter_smart_home_ui/Pages/Achievement/achievement.dart';
import 'package:flutter_smart_home_ui/Pages/Authentication/login.dart';
import 'package:flutter_smart_home_ui/Pages/Authentication/register.dart';
import 'package:flutter_smart_home_ui/Pages/Biography/biography.dart';
import 'package:flutter_smart_home_ui/Pages/Career/careers.dart';
import 'package:flutter_smart_home_ui/Pages/Contact/contacts.dart';
import 'package:flutter_smart_home_ui/Pages/Entrepreneur/entrepreneur.dart';
import 'package:flutter_smart_home_ui/Pages/Experience/experience.dart';
import 'package:flutter_smart_home_ui/Pages/Future_Goals/future_goals.dart';
import 'package:flutter_smart_home_ui/Pages/Home/home.dart';
import 'package:flutter_smart_home_ui/Pages/Partnership/partnership.dart';
import 'package:flutter_smart_home_ui/Pages/Professional_Coaching/professional_coaching.dart';
import 'package:flutter_smart_home_ui/Pages/Testimonial/testimonials.dart';

typedef T Constructor<T>();

final Map<String, Constructor<Object>> _constructors = <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor;
}

class ClassBuilder {
  static void registerClasses() {
    register<Home>(() => Home());
    register<About>(() => About());
    register<Biography>(() => Biography());
    register<Achievement>(() => Achievement());
    register<FutureGoals>(() => FutureGoals());
    register<Experience>(() => Experience());
    register<Testimonials>(() => Testimonials());
    register<ProfessionalCoaching>(() => ProfessionalCoaching());
    register<Entrepreneur>(() => Entrepreneur());
    register<Partnership>(() => Partnership());
    register<Career>(() => Career());
    register<LogIn>(() => LogIn());
    register<Register>(() => Register());
    register<Contacts>(() => Contacts());
  }

  static dynamic fromString(String type) {
    return _constructors[type]();
  }
}