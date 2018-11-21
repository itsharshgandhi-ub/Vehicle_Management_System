package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.bean.Admin;
import com.bean.Owner;
import com.bean.Vehicle;
import com.constants.Constants;
import com.util.DatabaseConnection;

import java.sql.Date;

public class VehichleManagementSystem {
	private ArrayList<Vehicle> vehicleList;
	private ArrayList<Owner> ownerList;

	public VehichleManagementSystem() {
		this.ownerList = new ArrayList<Owner>();
		this.vehicleList = new ArrayList<Vehicle>();
	}
	public boolean deleteByID(int vid){
		boolean status = false;
		if(checkIfVehicleExist(vid)){
//			present then delete
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			int updatedRows = 0;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection(Constants.URL,
						Constants.USERNAME, Constants.PASSWORD);
				ps = con.prepareStatement("delete from vehicle_1126007 where vehicleid=?");

				ps.setInt(1, vid);
				updatedRows = ps.executeUpdate();
				if (updatedRows > 0) {
					status = true;
				}

	
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DatabaseConnection.closeConnection(con);
				DatabaseConnection.closePrepareStatement(ps);
				DatabaseConnection.closeResultSet(rs);
			}
			
			
		}
		else{
			//alert box saying no vehicle with this id present
		}
		
		return status;
	}
	public boolean updateByID(Vehicle vehicle){
		boolean status = false;
		if(checkIfVehicleExist(Integer.parseInt(vehicle.getVehicleId()))){
//			present then delete
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			int updatedRows = 0;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection(Constants.URL,
						Constants.USERNAME, Constants.PASSWORD);
				ps = con.prepareStatement("update vehicle_1126007 set model=?,company=?,yop=?,dod=? where vehicleod=?");

				ps.setString(1, vehicle.getModelName());
				ps.setString(2, vehicle.getCompanyName());
				ps.setString(3, vehicle.getDateOfProducution());
				ps.setString(4, vehicle.getDateOfDispatch());
				ps.setInt(5, Integer.parseInt(vehicle.getVehicleId()));
				
				updatedRows = ps.executeUpdate();
				if (updatedRows > 0) {
					status = true;
				}

	
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DatabaseConnection.closeConnection(con);
				DatabaseConnection.closePrepareStatement(ps);
				DatabaseConnection.closeResultSet(rs);
			}
			
			
		}
		else{
			//alert box saying no vehicle with this id present
		}
		
		
		
		return status;
	}

	public boolean checkIfOwnerExist(int ownerid) {
		boolean status = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(Constants.URL,
					Constants.USERNAME, Constants.PASSWORD);
			ps = con.prepareStatement("select * from owner_1126007 where ownerid=?");
			ps.setInt(1, ownerid);
			rs = ps.executeQuery();
			while (rs.next()) {
				status = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
			DatabaseConnection.closePrepareStatement(ps);
			DatabaseConnection.closeResultSet(rs);
		}

		return status;
	}

	public boolean checkIfVehicleExist(int vehicleid) {
		boolean status = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(Constants.URL,
					Constants.USERNAME, Constants.PASSWORD);
			ps = con.prepareStatement("select * from vehicle_1126007 where vehicleid=?");
			ps.setInt(1, vehicleid);
			rs = ps.executeQuery();
			while (rs.next()) {
				status = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
			DatabaseConnection.closePrepareStatement(ps);
			DatabaseConnection.closeResultSet(rs);
		}

		return status;
	}

	public boolean adminLogin(Admin admin) {
		boolean status = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// con = DatabaseConnection.getConnection();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(Constants.URL,
					Constants.USERNAME, Constants.PASSWORD);
			ps = con.prepareStatement("select password from admin_1126007 where username=?");
			ps.setString(1, admin.getUserName());
			rs = ps.executeQuery();
			while (rs.next()) {
				if (rs.getString(1).equalsIgnoreCase(admin.getPassword())) {
					status = true;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
			DatabaseConnection.closePrepareStatement(ps);
			DatabaseConnection.closeResultSet(rs);
		}

		return status;
	}

	public boolean registerOwner(Owner owner) {
		boolean status = false;
//		boolean flag = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int updatedRows = 0;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(Constants.URL,
					Constants.USERNAME, Constants.PASSWORD);

			// ps = con.prepareStatement("select vid from vehicle where vid=?");
			// ps.setString(1, vehicle.getVehicleId());
			// rs = ps.executeQuery();
			// while (rs.next()) {
			// if (vehicle.getVehicleId().equalsIgnoreCase(
			// vehicle.getVehicleId())) {
			// flag = false;
			//
			// }
			// ps =
			// con.prepareStatement("insert into vehicle_1126007 values(2,'Nano','TATA','2014','2014-02-04',1)");

			ps = con.prepareStatement("insert into owner_1126007 values(?,?,?,?,?)");

			ps.setInt(1, owner.getOwnerId());
			ps.setString(2, owner.getFirstName());
			ps.setString(3, owner.getLastName());
			ps.setString(4, owner.getAddress());
			ps.setString(5, owner.getPhoneNumber());
			// ps.setDate(5, Date.valueOf(vehicle.getDateOfDispatch()));
			// ps.setInt(6, vehicle.getOwnerId());
			updatedRows = ps.executeUpdate();
			if (updatedRows > 0) {
				status = true;
			}

			// }

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
			DatabaseConnection.closePrepareStatement(ps);
			DatabaseConnection.closeResultSet(rs);

		}
		return status;
	}

	public boolean registerVehicle(Vehicle vehicle) {
		boolean status = false;
//		boolean flag = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int updatedRows = 0;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(Constants.URL,
					Constants.USERNAME, Constants.PASSWORD);

			// ps = con.prepareStatement("select vid from vehicle where vid=?");
			// ps.setString(1, vehicle.getVehicleId());
			// rs = ps.executeQuery();
			// while (rs.next()) {
			// if (vehicle.getVehicleId().equalsIgnoreCase(
			// vehicle.getVehicleId())) {
			// flag = false;
			//
			// }
			// ps =
			// con.prepareStatement("insert into vehicle_1126007 values(2,'Nano','TATA','2014','2014-02-04',1)");

			ps = con.prepareStatement("insert into vehicle_1126007 values(?,?,?,?,?,?)");

			ps.setString(1, vehicle.getVehicleId());
			ps.setString(2, vehicle.getModelName());
			ps.setString(3, vehicle.getCompanyName());
			ps.setString(4, vehicle.getDateOfProducution());
			ps.setString(5, vehicle.getDateOfDispatch());
			ps.setString(5,vehicle.getDateOfDispatch());
			ps.setInt(6, vehicle.getOwnerId());
			updatedRows = ps.executeUpdate();
			if (updatedRows > 0) {
				status = true;
			}

			// }

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
			DatabaseConnection.closePrepareStatement(ps);
			DatabaseConnection.closeResultSet(rs);

		}
		return status;
	}

	public Vehicle searchById(int vid) {
//		ArrayList<Vehicle> vList = new ArrayList<Vehicle>();
		Vehicle obj = null;
		// boolean flag = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		con = DatabaseConnection.getConnection();
		try {
			
			ps = con.prepareStatement("select * from vehicle_1126007 where vehicleid=?");
			ps.setString(1, String.valueOf(vid));
			rs = ps.executeQuery();
			while (rs.next()) {
				obj = new Vehicle(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs
								.getString(5), rs.getInt(6));
//				vList.add(obj);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			DatabaseConnection.closeConnection(con);
			DatabaseConnection.closePrepareStatement(ps);
			DatabaseConnection.closeResultSet(rs);

		}
		return obj;
	}

	public ArrayList<Vehicle> searchByDate(String date) {
		ArrayList<Vehicle> vList = new ArrayList<Vehicle>();
		Vehicle obj;
		// boolean flag = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		con = DatabaseConnection.getConnection();
		try {
			ps = con.prepareStatement("select * from vehicle_1126007 where dod=?");
			ps.setString(1, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				obj = new Vehicle(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4).toString(), rs
								.getString(5).toString(), rs.getInt(6));
				vList.add(obj);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
			DatabaseConnection.closePrepareStatement(ps);
			DatabaseConnection.closeResultSet(rs);

		}

		return vList;
	}

}
