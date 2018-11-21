package com.exception;

public class VehicleNotFoundException extends Exception {
	VehicleNotFoundException(String str){
		System.out.println(str);
	}

}
