package com.project.furniture.model;

import org.springframework.stereotype.Component;

@Component("addr")
public class Address {
	private int pincode;
	private String address;
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Address [pincode=" + pincode + ", address=" + address + "]";
	}
	public void add()
	{
		System.out.println("in address");
	}
}
