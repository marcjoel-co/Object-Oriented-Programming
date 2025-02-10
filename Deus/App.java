class App {
    public static void main(String[] args) {
        // Dihijay Grade ni John, jane, Joe ken jill
        int[]johnGrades = { 75, 75, 75, 75, 75};
        int[]janeGrades = { 80, 80, 80, 80, 80};
        int[]joeGrades =  {85, 85, 85, 85, 85};
        int[]jillGrades = {90, 90, 90, 90, 90};

        // Agiparang iti Grado ni John, Jane, Joe ken Jill
        GradeCalculator.displayReport(johnGrades, "John");
        GradeCalculator.displayReport(janeGrades, "Jane");
        GradeCalculator.displayReport(joeGrades, "Joe");
        GradeCalculator.displayReport(jillGrades, "Jill");


        // Code Submitted by Marc Joel B. Deus
        // Date: Feb 10. 2025
    }
}