public class GradeCalculator {
    // digijay Variables tayo
    public static boolean passed;
    public static int sum = 0, average = 0;
    public static int passing_rate = 60;
    

    // digijay Method tayo
    // Method nga agiparang if naka pasa wenno saan
    public static String isPassing(int[]grade) {
        calculateAverage(grade);
        if (sum >= 60){
            return "PASSED";
        } else {
            return "FAILED";
        }

    }

    // Ag calculate iti Average
    public static int calculateAverage(int[]grade){
        sum = 0;
        for (int i = 0 ; i < grade.length; i++){ 
            sum += grade[i];
        }
        average = sum / grade.length;
        return average;
    }
    // Agi Display iti report nu sino ti naka pasa wenno saan ken 
    public static void displayReport(int[]grades, String studentName ){
        System.out.println("Student Name: " + studentName);          // nagan iti estudyante
        System.out.println("Average: " + calculateAverage(grades));  // average ti estudyante
        System.out.println("Passed: " + isPassing(grades));          // naka pasa wenno saan
    }

    // Jay static kenni asla lang mangi bagbagga nga "Saan Kaylangan agaramid ti method to Perform the following"
    // mayat gumana uray awan object nga naaramid
    
    // Code Submitted by Marc Joel B. Deus
}