import 'package:date_time_app/date_utils.dart';
import 'package:date_time_app/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time in detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(title: 'Problem', date: now.toString()),
              const Divider(),
              const Text('Custom Date'),
              TextWidget(title: 'Date & Time Format', date: DatesUtils().dateFormatYMDKKMM()),
              TextWidget(
                  title: 'Date',
                  date: "${DateFormat.y().format(now)}:${DateFormat.M().format(now)}:${DateFormat.d().format(now)}"),
              TextWidget(
                  title: 'Date',
                  date: "${DateFormat.y().format(now)}-${DateFormat.M().format(now)}-${DateFormat.d().format(now)}"),
              TextWidget(
                  title: 'Date',
                  date: "${DateFormat.y().format(now)}/${DateFormat.M().format(now)}/${DateFormat.d().format(now)}"),
              TextWidget(
                  title: 'Date DMY',
                  date: "${DateFormat.d().format(now)}/${DateFormat.M().format(now)}/${DateFormat.y().format(now)}"),
              const Divider(),
              TextWidget(title: 'Date', date: DateFormat.d().format(DateTime.now())),
              TextWidget(title: 'Day name', date: DateFormat.EEEE().format(DateTime.now())),
              TextWidget(title: 'Short day name', date: DateFormat.E().format(DateTime.now())),
              const Divider(),
              TextWidget(title: 'Month', date: DateFormat.M().format(DateTime.now())),
              TextWidget(title: 'Month name', date: DateFormat.LLLL().format(DateTime.now())),
              TextWidget(title: 'Short month name', date: DateFormat.LLL().format(DateTime.now())),
              const Divider(),
              TextWidget(title: 'Year', date: DateFormat.y().format(DateTime.now())),
              const Divider(),
              TextWidget(title: 'Hour', date: DateFormat.H().format(DateTime.now())),
              TextWidget(title: '24 hour time format', date: DateFormat.Hm().format(DateTime.now())),
              TextWidget(title: 'Time in AM', date: DateFormat.jm().format(DateTime.now().copyWith(hour: 10))),
              TextWidget(title: 'Time in PM', date: DateFormat.jm().format(DateTime.now())),
              const Divider(),
              const Text(
                'Day ago:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "${DatesUtils().daysAgo(DateTime.now().microsecondsSinceEpoch.toString())},${DatesUtils().daysAgo(DateTime(now.year, now.month, now.day - 1).microsecondsSinceEpoch.toString())},${DatesUtils().daysAgo(DateTime(now.year, now.month, now.day - 2).microsecondsSinceEpoch.toString())},${DatesUtils().daysAgo(DateTime(now.year, now.month, now.day - 3).microsecondsSinceEpoch.toString())}",
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const Divider(),
              const Text(
                'Minutes, hours & weeks ago:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "${DatesUtils().timesAndMinutesAgo(DateTime(2023, 06, 18, 15, 20).microsecondsSinceEpoch.toString())},${DatesUtils().timesAndMinutesAgo(DateTime(2023, 06, 18, 10, 20).microsecondsSinceEpoch.toString())},${DatesUtils().timesAndMinutesAgo(DateTime(2023, 06, 12, 15, 20).microsecondsSinceEpoch.toString())},${DatesUtils().timesAndMinutesAgo(DateTime(2023, 06, 01, 15, 20).microsecondsSinceEpoch.toString())}"),
              const Divider(),
              const Text('Previous date Days compare to current date:'),
              TextWidget(
                  title: 'Today date',
                  date: DatesUtils().compareTimesForSevenDays(DateTime.now().microsecondsSinceEpoch.toString())),
              TextWidget(
                  title: 'Yesterday',
                  date: DatesUtils()
                      .compareTimesForSevenDays(DateTime(now.year, now.month, now.day - 1).microsecondsSinceEpoch.toString())),
              TextWidget(date: DatesUtils().compareTimesForSevenDays(DateTime(2023, 06, 16).microsecondsSinceEpoch.toString())),
              TextWidget(date: DatesUtils().compareTimesForSevenDays(DateTime(2023, 06, 15).microsecondsSinceEpoch.toString())),
              TextWidget(date: DatesUtils().compareTimesForSevenDays(DateTime(2023, 06, 14).microsecondsSinceEpoch.toString())),
              TextWidget(date: DatesUtils().compareTimesForSevenDays(DateTime(2023, 06, 13).microsecondsSinceEpoch.toString())),
              TextWidget(date: DatesUtils().compareTimesForSevenDays(DateTime(2023, 06, 12).microsecondsSinceEpoch.toString())),
              TextWidget(date: DatesUtils().compareTimesForSevenDays(DateTime(2023, 06, 11).microsecondsSinceEpoch.toString())),
              TextWidget(date: DatesUtils().compareTimesForSevenDays(DateTime(2023, 06, 10).microsecondsSinceEpoch.toString())),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
