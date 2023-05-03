package rentVehicle;

public class Vehicles {

	private int vId;
	private String vName;
	private String vNum;
	private String vType;
	private String vColor;
	private int vRate;

	/**
	 * @param vId
	 * @param vName
	 * @param vNum
	 * @param vType
	 * @param vColor
	 * @param vRate
	 */
	public Vehicles(int vId, String vName, String vNum, String vType, String vColor, int vRate) {
		super();
		this.vId = vId;
		this.vName = vName;
		this.vNum = vNum;
		this.vType = vType;
		this.vColor = vColor;
		this.vRate = vRate;
	}

	public int getvId() {
		return vId;
	}

	public String getvName() {
		return vName;
	}

	public String getvNum() {
		return vNum;
	}

	public String getvType() {
		return vType;
	}

	public String getvColor() {
		return vColor;
	}

	public int getvRate() {
		return vRate;
	}

	
}
