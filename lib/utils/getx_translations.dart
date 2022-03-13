import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetTranslations extends Translations {
  static const Locale fallbackLocale = Locale('bn', 'BN');

  @override
  Map<String, Map<String, String>> get keys => const <String, Map<String, String>>{
        'bn_BN': <String, String>{
          'app.title': 'WATCHER',
          'app.movies.title': 'সিনেমা',
          'app.tv_series.title': 'নাটক',
          'movies.now_playing.icon': 'এখন চলছে',
          'movies.popular.icon': 'জনপ্রিয়',
          'movies.top_rated.icon': 'শীর্ষ তালিকা',
          'movies.upcoming.icon': 'শীঘ্রই আসছে',
          'tv_series.airing_today_tv.icon': 'সম্প্রচার',
          'tv_series.on_the_air_tv.icon': 'সম্প্রচাররত',
          'tv_series.popular_tv.icon': 'জনপ্রিয়',
          'tv_series.top_rated_tv.icon': 'শীর্ষ তালিকা',
          'details.widget.rating': 'রেটিং',
          'details.grade': 'গ্রেড',
          'details.more': 'আরও',
          'details.less': 'কম'
        },
        'en_US': <String, String>{
          'app.title': 'Watcher',
          'app.movies.title': 'Movies',
          'app.tv_series.title': 'Tv Series',
          'movies.now_playing.icon': 'Now Playing',
          'movies.popular.icon': 'Popular',
          'movies.top_rated.icon': 'Top Rated',
          'movies.upcoming.icon': 'Upcoming',
          'tv_series.airing_today_tv.icon': 'Airing Today',
          'tv_series.on_the_air_tv.icon': 'On The Air',
          'tv_series.popular_tv.icon': 'Popular',
          'tv_series.top_rated_tv.icon': 'Top Rated',
          'details.widget.rating': 'Rating',
          'details.grade': 'Grade',
          'details.more': 'More',
          'details.less': 'Less'
        },
      };
}
