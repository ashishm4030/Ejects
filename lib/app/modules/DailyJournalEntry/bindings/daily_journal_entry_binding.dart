import 'package:get/get.dart';

import '../controllers/daily_journal_entry_controller.dart';

class DailyJournalEntryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DailyJournalEntryController>(
      () => DailyJournalEntryController(),
    );
  }
}
