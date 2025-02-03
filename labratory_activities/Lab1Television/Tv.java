public class Tv {
    // instance variables
    public int channel;
	public int volume = 50;
	public boolean isTurnedOn = false;
    
    // methods
	public void turnOn() {
		this.isTurnedOn = true;
	}

	public void turnOff() {
		this.isTurnedOn = false;
    }

    public void increaseVolume() {
        if (isTurnedOn && this.volume < 100) {
            this.volume += 1;
        }
    }

    public void decreaseVolume() {
        if (isTurnedOn && this.volume > 0) {
            this.volume -= 1;
        }
    }

    public void setVolume(int volume) {
        if (isTurnedOn && volume >= 0 && volume <= 100) {
            this.volume = volume;
        }
    }

    public void selectChannel(int channel) {
		
        if (!isTurnedOn) {
            System.out.println("red Light!");
            System.out.println("Tv is off");
            return;
        }   

        switch (channel) {
        case 1:
            System.out.println("You're now watching the news");
            break;

        case 2:
            System.out.println("can you find where the bag is?");
            break;

        case 3:
            System.out.println("TITItitiTitiTI ni dora ");
            break;

        default:
            System.out.println("Channel not available");
            break;

        }

        
	}
}