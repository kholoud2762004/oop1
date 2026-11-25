class Holiday {
  String name;
  int day;
  String month;
  Holiday(this.name, this.day, this.month);
  static bool inSameMonth(Holiday h1, Holiday h2) {
    return h1.month == h2.month;
  }
  static double avgDate(List<Holiday> holidays) {
    int sum = 0;
    for (int i = 0; i < holidays.length; i++) {
      sum += holidays[i].day;
    }
    return sum / holidays.length;
  }
}
void main() {
  Holiday h1 = Holiday("Independence Day", 4, "July");
  Holiday h2 = Holiday("Holiday 2", 10, "July");
  Holiday h3 = Holiday("Holiday 3", 16, "December");

  print(Holiday.inSameMonth(h1, h2));
  List<Holiday> holidays = [h1, h2, h3];
  print(Holiday.avgDate(holidays));
}