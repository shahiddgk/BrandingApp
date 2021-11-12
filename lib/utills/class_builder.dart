import 'package:flutter_smart_home_ui/Career/careers.dart';
import 'package:flutter_smart_home_ui/Contact/contacts.dart';
import 'package:flutter_smart_home_ui/Entrepreneur/entrepreneur.dart';
import 'package:flutter_smart_home_ui/Authentication/login.dart';
import 'package:flutter_smart_home_ui/Partnership/partnership.dart';
import 'package:flutter_smart_home_ui/Professional_Coaching/professional_coaching.dart';
import 'package:flutter_smart_home_ui/About/about.dart';
import 'package:flutter_smart_home_ui/Home/home.dart';
import 'package:flutter_smart_home_ui/Authentication/register.dart';
import 'package:flutter_smart_home_ui/Future_Goals/future_goals.dart';
import 'package:flutter_smart_home_ui/Experience/experience.dart';
import 'package:flutter_smart_home_ui/Biography/biography.dart';
import 'package:flutter_smart_home_ui/Achievement/achievement.dart';
import 'package:flutter_smart_home_ui/Testimonial/testimonials.dart';

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