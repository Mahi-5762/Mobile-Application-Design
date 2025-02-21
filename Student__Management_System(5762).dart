//at first we define a Student class
class Student {
  String name;
  int id;
  Map<String, double> grades = {}; // It stores course grades

  // Constructor
  Student(this.name, this.id);

  // This method to enroll and assign grade
  void enroll(String course, double grade) {
    grades[course] = grade;
    print("Enrolled in: $course");
  }

  // This method to drop a course
  void drop(String course) {
    if (grades.containsKey(course)) {
      grades.remove(course);
      print("Dropped: $course");
    }
  }

  // Here we calculate GPA
  double calculateGPA() {
    if (grades.isEmpty) return 0.0;
    double total = grades.values.reduce((a, b) => a + b);
    return total / grades.length;
  }

  // It display student details
  void displayStudentDetails() {
    print("Student Name: $name");
    print("Student ID: $id");
    print("Courses: ${grades.keys.toList()}");
    print("GPA: ${calculateGPA().toStringAsFixed(2)}");
  }
}

// Main function to test the Student class
void main() {
  Student student = Student("Khairul Bashar Mahi", 5762);

  student.enroll("Artifical intiligence", 4.0);
  student.enroll("Computer Architecture", 4.0);
  student.enroll("Compiler Design", 3.75);
  student.enroll("Mobile Appllication", 4.0);
  student.enroll("Math", 3.5);
  student.drop("Math");

  student.displayStudentDetails();
}
