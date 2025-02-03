public class Main {
    /* 
     * This is the main method which makes use of Tv class. the tv having the following methods
     * - turnOn toggles a boolean value to true
     * -turnoff toggles a voolean value to false
     * -increaseVolume increments the volume by 1 but not more than 100
     * -decreaseVolume decrements volume by -1  but not less than 0
     * -setVolume set the volume to a specific value between 0 and 100
     * -selectChannel selects a channel based on the input
     */
    public static void main(String[] args) {

        // New tv object created
        Tv samsungSmartFridge = new Tv();
		samsungSmartFridge.turnOn();

        // Turned off
		System.out.println(samsungSmartFridge.isTurnedOn);
		samsungSmartFridge.turnOff();
        System.out.println(samsungSmartFridge.isTurnedOn);

        // Selectchannel
		samsungSmartFridge.selectChannel(3);
        samsungSmartFridge.selectChannel(2);

        // Volume
        System.out.println(samsungSmartFridge.volume);
        samsungSmartFridge.increaseVolume(); 
        System.out.println(samsungSmartFridge.volume);

        // Set Volumet to a specific value
        samsungSmartFridge.setVolume(5);
		System.out.println(samsungSmartFridge.volume);
		System.out.println(samsungSmartFridge.isTurnedOn);

        // Code submitted by Marc Joel B. Deus
        // Date: 2025-01-27

		
    }
}

