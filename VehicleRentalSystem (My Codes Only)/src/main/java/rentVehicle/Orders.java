package rentVehicle;

public class Orders {

	private int rId;
	private String vName;
	private String vNum;
	private String vType;
	private int vRate;
	private String cusID;
	private String cusName;
	private int days;
	private int cost;

	public Orders(int rId, String vName, String vNum, String vType, int vRate, String cusID, String cusName, int days, int cost) {

		this.rId = rId;
		this.vName = vName;
		this.vNum = vNum;
		this.vType = vType;
		this.vRate = vRate;
		this.cusID = cusID;
		this.cusName = cusName;
		this.days = days;
		this.cost = cost;
	}

	public int getrId() {
		return rId;
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
	
	public int getvRate() {
		return vRate;
	}

	public String getCusID() {
		return cusID;
	}

	public String getCusName() {
		return cusName;
	}

	public int getDays() {
		return days;
	}

	public int getCost() {
		return cost;
	}
	
}
