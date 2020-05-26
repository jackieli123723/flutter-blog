// 小于 5 小时则展示为 "N 小时/分钟前"
const int oneMinute = 60 * 1000;
const int oneHour = 60 * oneMinute;
const int minDeltaTimeToShowRelative = 12 * oneHour;

String formatToRelative(int timestampInSeconds) {
  DateTime d = DateTime.fromMillisecondsSinceEpoch(timestampInSeconds * 1000);
  DateTime now = DateTime.now();
  int relativeMillsecond =
      now.millisecondsSinceEpoch - d.millisecondsSinceEpoch;

  if (relativeMillsecond < oneMinute) return '刚刚';

  if (relativeMillsecond < oneHour) {
    int m = (relativeMillsecond / oneMinute).floor();
    return '${m.toString()}分钟前';
  }

  if (relativeMillsecond < minDeltaTimeToShowRelative) {
    int h = (relativeMillsecond / oneHour).floor();
    return '${h.toString()}小时前';
  }

  // 展示绝对时间
  bool shouldShowYear = d.year != now.year;
  return '${shouldShowYear ? d.year : ''}${shouldShowYear ? '-' : ''}${leftpad(d.month)}-${leftpad(d.day)} ${leftpad(d.hour)}:${leftpad(d.minute)}';
}

String leftpad(int num) {
  if (num < 10) return '0$num';

  return '$num';
}
