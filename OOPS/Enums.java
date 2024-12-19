package OOPS;

public class Enums {

    // With Basic Example
    public static void main(String[] args) {
        enum Days {
            SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
        }
        Days day = Days.MONDAY;
        System.out.println("Today is " + day);

        // With Numeric Value Default is 0
        enum Day {
            SUNDAY(1), MONDAY(2), TUESDAY(3), WEDNESDAY(4), THURSDAY(5), FRIDAY(6), SATURDAY(7);

            private final int dayNumber;

            Day(int dayNumber) {
                this.dayNumber = dayNumber;
            }

            public int getDayNumber() {
                return this.dayNumber;
            }

            public boolean isWeekend() {
                return this == SUNDAY || this == SATURDAY;
            }
        }
        Day today = Day.MONDAY;
        System.out.println("Today is: " + today + ", Day number: " + today.getDayNumber());
        System.out.println(today + " is a weekend: " + today.isWeekend());

    }

}
