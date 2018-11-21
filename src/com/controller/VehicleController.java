package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Admin;
import com.bean.Owner;
import com.bean.Vehicle;
import com.dao.VehichleManagementSystem;

/**
 * Servlet implementation class VehicleController
 */
@WebServlet("/VehicleController")
public class VehicleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VehicleController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// creating object and variables
		VehichleManagementSystem vms = new VehichleManagementSystem();
		String source = request.getParameter("source");
		if (source.equals("home")) {
			response.sendRedirect("adminLogin.jsp");
		} else if (source.equals("adminlogin")) {
			// response.sendRedirect("registerVehicle.jsp");
			// System.out.println(request.getParameter("username"));
			Admin admin = new Admin(
					request.getParameter("username").toString(), request
							.getParameter("pass").toString());
			if (vms.adminLogin(admin)) {
				response.sendRedirect("registerVehicle.jsp");
			} else {
				PrintWriter out = response.getWriter();
				// pw.println("<html><body onload=\"alert('Incorrect Password and Username')\"></body></html>");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Incorrect Username and Password');");
				out.println("location = \"adminLogin.jsp\"");
				out.println("</script>");
				// response.sendRedirect("index.jsp");
			}
		} else if (source.equals("registrationform")) {
			if (vms.checkIfOwnerExist(Integer.parseInt(request
					.getParameter("ownerid")))) {
				Vehicle vehicle = new Vehicle(request.getParameter("vid"),
						request.getParameter("model"),
						request.getParameter("company"),
						request.getParameter("yop"),
						request.getParameter("dod"), Integer.parseInt(request
								.getParameter("ownerid")));
				request.setAttribute("vehicleobject", vehicle);
				request.getRequestDispatcher("registrationConfirmation.jsp")
						.forward(request, response);
			} else {
				// PrintWriter out = response.getWriter();
				//
				// String ownerid = request.getParameter("ownerid");
				// request.setAttribute("ownerid", ownerid);
				//
				// out.println("<script type=\"text/javascript\">");
				// out.println("alert('Owner with id provided does not exist');");
				// out.println("location = \"registerOwner.jsp\"");
				// out.println("</script>");

				String ownerid = request.getParameter("ownerid");
				request.setAttribute("ownerid", ownerid);
				request.getRequestDispatcher("registerOwner.jsp").forward(
						request, response);
				System.out.println(ownerid);
				response.sendRedirect("index.jsp");
			}

		} else if (source.equals("registrationconfirm")) {
			Vehicle vehicle = new Vehicle(request.getParameter("vid"),
					request.getParameter("model"),
					request.getParameter("company"),
					request.getParameter("yop"), request.getParameter("dod"),
					Integer.parseInt(request.getParameter("ownerid")));
			// System.out.println(vehicle.getCompanyName()
			// +" "+vehicle.getDateOfDispatch()
			// +" "+vehicle.getDateOfProducution()+" "+vehicle.getModelName()+" "+vehicle.getOwnerId()+" "+vehicle.getVehicleId());
			if (vms.checkIfVehicleExist(Integer.parseInt(vehicle.getVehicleId()))) {
				PrintWriter out = response.getWriter();

				// request.setAttribute("vehicleid", vehicle.getVehicleId());
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Vehicle with id provided already exist');");
				out.println("location = \"registerVehicle.jsp\"");
				out.println("</script>");

			} else {

				if (vms.registerVehicle(vehicle)) {
					// System.out.println("Successful");
					request.setAttribute("vehicleobject", vehicle);
					request.getRequestDispatcher("vehicledisplay.jsp").forward(
							request, response);

				} else {
					System.out.println("Unsuccessful");
				}

			}

		} else if (source.equals("ownerconfirmation")) {
			Owner owner = new Owner(Integer.parseInt(request
					.getParameter("ownerid")), request.getParameter("fname"),
					request.getParameter("lname"),
					request.getParameter("address"),
					request.getParameter("pnum"));
			if (vms.checkIfOwnerExist(Integer.parseInt(request
					.getParameter("ownerid")))) {
				// owner exist
			} else {
				// owner does not exist
				if (vms.registerOwner(owner)) {
					// added successfully
					request.setAttribute("ownerobject", owner);
					request.getRequestDispatcher("ownerdisplay.jsp").forward(
							request, response);

				} else {
					// error in adding owner

					System.out.println("Unsuccessful");

				}

			}
		} else if (source.equals("ownerregistration")) {
			Owner owner = new Owner(Integer.parseInt(request
					.getParameter("ownerid")), request.getParameter("fname"),
					request.getParameter("lname"),
					request.getParameter("address"),
					request.getParameter("pnum"));
			request.setAttribute("ownerobject", owner);
			request.getRequestDispatcher("ownerConfirmation.jsp").forward(
					request, response);
		} else if (source.equals("searchbyid")) {
			response.sendRedirect("SearchByID.jsp");

		} else if (source.equals("searchbydate")) {
			response.sendRedirect("SearchByDate.jsp");

		} else if (source.equals("rvform")) {
			response.sendRedirect("registerVehicle.jsp");
		}
		else if(source.equals("delete")){
			response.sendRedirect("deletebyid.jsp");
		}
		else if(source.equals("update")){
			response.sendRedirect("updatebyid.jsp");
		}

		else if (source.equals("roform")) {
			response.sendRedirect("registerOwner.jsp");
		} else if (source.equals("searchbyiddisplay")) {
			// response.sendRedirect("SearchByDate.jsp");

			int vid = Integer.parseInt(request.getParameter("vid"));
			if (vms.checkIfVehicleExist(vid)) {
				// display vehicle
//				System.out.println("display");
				Vehicle vehicle = vms.searchById(vid);
				request.setAttribute("vehicleobject", vehicle);
				request.getRequestDispatcher("vehicledisplay.jsp").forward(
						request, response);

				// System.out.println("coming here");
			} else {
				// alert and redirect to add vehicle
				// response.sendRedirect("SearchByDate.jsp");
				System.out.println("Do not Display");

			}
			
		}
		else if(source.equals("searchbydatedisplay")){
		ArrayList<Vehicle> vlist = vms.searchByDate(request.getParameter("dod"));
//			ArrayList<Vehicle> vlist = vms.searchByDate("2001-02-02");
			for(Vehicle v:vlist){
				System.out.println(v.getVehicleId());
			}
			
			request.setAttribute("vehiclelist", vlist);
		request.getRequestDispatcher("displayvehiclebydate.jsp").forward(
				request, response);

		}

		// else if(source.equals(" ")){
		//
		// }

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// doGet(request, response);
	}

}
