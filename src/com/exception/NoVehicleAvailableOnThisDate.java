package com.exception;

public class NoVehicleAvailableOnThisDate extends Exception {
	public NoVehicleAvailableOnThisDate(String str) {
		System.out.println(str);
	}
}
