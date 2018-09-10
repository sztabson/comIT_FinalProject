package webapp;

import java.io.Serializable;

public class Client implements Serializable
{
	private int id;
	private String username;
	private String wo;
	private String address;
	private String phone ;
	private String mileage;
	
	public Client (String username, String wo, String address, String phone, String mileage)
	{
		this.username = username;
		this.wo = wo;
		this.address = address;
		this.phone = phone;
		this.mileage = mileage;
	}
	

	public Client (int id, String username, String wo, String address, String phone, String mileage)
	{
		this.id = id;
		this.username = username;
		this.wo = wo;
		this.address = address;
		this.phone = phone;
		this.mileage = mileage;
	}

	public int getID()
	{
		return id;
	}
	public String getUsername()
	{
		return username;
	}
	
	public String getWO()
	{
		return wo;
	}
	
	public String getAddress()
	{
		return address;
	}
	
	public String getPhone()
	{
		return phone;
	}
	
	public String getMileage()
	{
		return mileage;
	}
	public void setID(int id)
	{
		this.id = id;
	}
	public void setuserName(String username)
	{
		this.username = username;
	}
	public void setWO(String wo)
	{
		this.wo = wo;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public void setMileage(String mileage)
	{
		this.mileage = mileage;
	}
}
