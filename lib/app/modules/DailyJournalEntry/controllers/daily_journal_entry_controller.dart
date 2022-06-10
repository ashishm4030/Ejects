import 'package:get/get.dart';

class DailyJournalEntryController extends GetxController {
  List question = [
    '1.When you are in a bad mood,what can you do to turn your day around?',
    '2.Make a list of the 10 best moments of your life.',
    '3.what do you think are the most important things to learn about oneself?',
    '4.Do you get enough sleep? What is your mood when you usually wake up?',
    '5.What makes you happy about the place live?',
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
