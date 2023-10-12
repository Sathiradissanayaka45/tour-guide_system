package com.toursystem;

import java.util.List;

public interface iCustomerDButil {
	
	public  boolean validate (String userName, String password) ;
	
	public List<Customer> getCustomer(String userName);
	
	public boolean insertcustomer(String name, String phone, String email, String username, String password);
	
	public boolean updatecustomer(String id, String name, String email, String phone, String username, String password);
	
	public List<Customer> getCustomerDetails(String Id);
	
	public boolean deleteCustomer(String id);
	
	public boolean insertbooking(String date, String destination, String requests);
	
	public List<Card> validate2(String cardnumber,String nameOfHolder);
	
	public boolean insertcard(String card_number,String cardholder_name,String CVC,String expiry_date );
	
	public List<Booking> getBooking(int cusID);
	
	public boolean updatebooking(String idbooking, String date, String destination, String requests);
	
	public List<Booking> getBookingDetails(String Idbooking);
	
	public boolean deleteBooking(String idbooking);
	
	public List<Card> getCard(int cusID);
	
	public List<Card> getCardDetails(String Idcard);
	
	public boolean deletecard(String idcard);
	
	public boolean updatecard(String idcard, String CardNumber, String CardHolderName, String CVC, String ExpiredDate);
	
	public boolean insertfeedback(String date, String username, String Feedback);
	
	public List<Feedback> getFeedback(int cusID);
	
	public boolean updatePassword(String email,String passwordnew,String passwordnew1);
	
	public  List<Customer> getCustomerpassword(String Email);
	
}
