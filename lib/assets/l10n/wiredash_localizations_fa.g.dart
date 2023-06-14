import 'wiredash_localizations.g.dart';

/// The translations for Persian (`fa`).
class WiredashLocalizationsFa extends WiredashLocalizations {
  WiredashLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get feedbackStep1MessageTitle => 'نظرات خود را برای ما ارسال کنید';

  @override
  String get feedbackStep1MessageBreadcrumbTitle => 'نوشتن پیام';

  @override
  String get feedbackStep1MessageDescription =>
      'توضیح کوتاهی از آنچه با آن برخورد کردید اضافه کنید';

  @override
  String get feedbackStep1MessageHint =>
      'وقتی می‌خواهم آواتارم را تغییر دهم یک خطای ناشناخته وجود دارد...';

  @override
  String get feedbackStep1MessageErrorMissingMessage =>
      'لطفا یک پیام اضافه کنید';

  @override
  String get feedbackStep2LabelsTitle =>
      'کدام برچسب بهترین بازخورد شما را نشان می دهد؟';

  @override
  String get feedbackStep2LabelsBreadcrumbTitle => 'برچسب ها';

  @override
  String get feedbackStep2LabelsDescription =>
      'انتخاب دسته مناسب به ما کمک می کند تا مشکل را شناسایی کرده و بازخورد شما را به واحد مرتبط هدایت کنیم';

  @override
  String get feedbackStep3ScreenshotOverviewTitle =>
      'برای زمینه بهتر اسکرین شات اضافه شود؟';

  @override
  String get feedbackStep3ScreenshotOverviewBreadcrumbTitle => 'اسکرین شات ها';

  @override
  String get feedbackStep3ScreenshotOverviewDescription =>
      'می‌توانید برنامه را پیمایش کنید و انتخاب کنید چه زمانی اسکرین شات بگیرید';

  @override
  String get feedbackStep3ScreenshotOverviewSkipButton => 'پرش کنید';

  @override
  String get feedbackStep3ScreenshotOverviewAddScreenshotButton =>
      'اضافه کردن اسکرین شات';

  @override
  String get feedbackStep3ScreenshotBarNavigateTitle => 'اسکرین شات بگیرید';

  @override
  String get feedbackStep3ScreenshotBarDrawTitle =>
      'برای اضافه کردن نکات برجسته روی صفحه بکشید';

  @override
  String get feedbackStep3ScreenshotBarDrawUndoButton => 'واگرد';

  @override
  String get feedbackStep3ScreenshotBarCaptureButton => 'گرفتن';

  @override
  String get feedbackStep3ScreenshotBarSaveButton => 'صرفه جویی';

  @override
  String get feedbackStep3ScreenshotBarOkButton => 'خوب';

  @override
  String get feedbackStep3GalleryTitle => 'اسکرین شات های پیوست شده';

  @override
  String get feedbackStep3GalleryBreadcrumbTitle => 'اسکرین شات ها';

  @override
  String get feedbackStep3GalleryDescription =>
      'می‌توانید اسکرین‌شات‌های بیشتری اضافه کنید تا به ما در درک بهتر مشکل شما کمک کند.';

  @override
  String get feedbackStep4EmailTitle =>
      'به‌روزرسانی‌های ایمیلی درباره مشکل خود دریافت کنید';

  @override
  String get feedbackStep4EmailBreadcrumbTitle => 'مخاطب';

  @override
  String get feedbackStep4EmailDescription =>
      'آدرس ایمیل خود را در زیر اضافه کنید یا خالی بگذارید';

  @override
  String get feedbackStep4EmailInvalidEmail =>
      'این آدرس ایمیل معتبری به نظر نمی رسد. می توانید آن را خالی بگذارید.';

  @override
  String get feedbackStep4EmailInputHint => 'mail@example.com';

  @override
  String get feedbackStep6SubmitTitle => 'بازخورد ارائه دهید';

  @override
  String get feedbackStep6SubmitBreadcrumbTitle => 'ارسال';

  @override
  String get feedbackStep6SubmitDescription =>
      'لطفا تمام اطلاعات را قبل از ارسال بررسی کنید.\nبرای تنظیم بازخورد خود در هر زمان می توانید به عقب برگردید.';

  @override
  String get feedbackStep6SubmitSubmitButton => 'ارسال';

  @override
  String get feedbackStep6SubmitSubmitShowDetailsButton => 'نمایش جزئیات';

  @override
  String get feedbackStep6SubmitSubmitHideDetailsButton => 'پنهان کردن جزئیات';

  @override
  String get feedbackStep6SubmitSubmitDetailsTitle => 'جزئیات بازخورد';

  @override
  String get feedbackStep7SubmissionInFlightMessage =>
      'در حال ارسال بازخورد شما';

  @override
  String get feedbackStep7SubmissionSuccessMessage => 'با تشکر از بازخورد شما!';

  @override
  String get feedbackStep7SubmissionErrorMessage => 'ارسال بازخورد انجام نشد';

  @override
  String get feedbackStep7SubmissionOpenErrorButton =>
      'برای مشاهده جزئیات خطا کلیک کنید';

  @override
  String get feedbackStep7SubmissionRetryButton => 'دوباره امتحان کنید';

  @override
  String feedbackStepXOfY(int current, int total) {
    return 'مرحله $current از $total';
  }

  @override
  String get feedbackDiscardButton => 'رد کردن بازخورد';

  @override
  String get feedbackDiscardConfirmButton => 'مطمیئنی؟';

  @override
  String get feedbackNextButton => 'ادامه';

  @override
  String get feedbackBackButton => 'بازگشت';

  @override
  String get feedbackCloseButton => 'بستن';

  @override
  String get promoterScoreStep1Question => 'چقدر احتمال دارد به ما توصیه کنید؟';

  @override
  String get promoterScoreStep1Description =>
      '0 = غیر محتمل، 10 = به احتمال زیاد';

  @override
  String get promoterScoreStep2MessageTitle =>
      'چقدر احتمال دارد که ما را به دوستان و خانواده خود معرفی کنید؟';

  @override
  String promoterScoreStep2MessageDescription(int rating) {
    return 'ممکن است کمی بیشتر در مورد دلیل انتخاب $rating به ما بگویید؟ این مرحله اختیاری است.';
  }

  @override
  String get promoterScoreStep2MessageHint =>
      'خیلی خوبه اگه بتونی پیشرفت کنی...';

  @override
  String get promoterScoreStep3ThanksMessagePromoters =>
      'با تشکر از امتیاز شما!';

  @override
  String get promoterScoreStep3ThanksMessagePassives =>
      'با تشکر از امتیاز شما!';

  @override
  String get promoterScoreStep3ThanksMessageDetractors =>
      'با تشکر از امتیاز شما!';

  @override
  String get promoterScoreNextButton => 'بعد';

  @override
  String get promoterScoreBackButton => 'بازگشت';

  @override
  String get promoterScoreSubmitButton => 'ارسال';

  @override
  String get backdropReturnToApp => 'بازگشت به برنامه';
}
