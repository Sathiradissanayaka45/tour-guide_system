package com.toursystem;

import java.sql.Connection;  

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDBUtil implements iCustomerDButil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	public static int cusID;
    //what data validate
	public  boolean validate (String userName, String password) 
	{
		
		//validate data
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//sql query for retrieve
			String sql = "select * from customer where username='"+userName+"' and password = '"+password+"'";
            rs = stmt.executeQuery(sql);
			
			//user name and password match if get data
			if(rs.next())
			{
			  cusID = rs.getInt(1);
			  isSuccess = true;	
			}else
			{
			  isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public List<Customer> getCustomer(String userName)
	{
		ArrayList<Customer> customer = new ArrayList();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username = '"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				//sent data to Customer constructor
				Customer cus = new Customer(id, name, email, phone, username,password);
				
				//sent data to arraylist
				customer.add(cus);
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return customer;
	}
	
	
	//Create
	public boolean insertcustomer(String name, String phone, String email, String username, String password)
	{
		boolean isSuccess = false;
		
		try 
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//insert data to database
			String sql = "insert into customer values(0, '"+name+"', '"+email+"', '"+phone+"', '"+username+"', '"+password+"')";
			int rs = stmt.executeUpdate(sql);
			//insert success out 1..unsuccess out 0
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
	public boolean updatecustomer(String id, String name, String email, String phone, String username, String password) {
		
		try {
			int ID=Integer.parseInt(id); 
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE customer SET name = ?, email = ? , phone = ?, username = ?, password = ? where id = ?";
			
			PreparedStatement statemnt = null;
			
			statemnt = con.prepareStatement(sql);
			statemnt.setString(1, name);
			statemnt.setString(2, email);
			statemnt.setString(3, phone);
			statemnt.setString(4, username);
			statemnt.setString(5, password);
			statemnt.setInt(6, ID);
			int rs = statemnt.executeUpdate();
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}

    public List<Customer> getCustomerDetails(String Id)
    {
    	int convertedID = Integer.parseInt(Id);
    	ArrayList<Customer> cus = new ArrayList<>();
    	try
    	{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where id = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			//check valid id 
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				//pass data to customer object
				Customer c = new Customer(id, name, email, phone, username, password);
				cus.add(c);
			}
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
    	return cus;
    }
    
    public boolean deleteCustomer(String id)
    {
    	int convId = Integer.parseInt(id);
    	
    	try
    	{
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from customer where id = '"+convId+"'";
            int r =stmt.executeUpdate(sql);
    	    
            if(r>0)
            {
            	isSuccess = true;
            }
            else {
            	isSuccess = false;
            }
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return isSuccess;
    }
    
    public boolean insertbooking(String date, String destination, String requests)
	{
		boolean isSuccess = false;
		
		try 
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//insert data to database

			String sql = "INSERT INTO booking(date, destination, request, id) VALUES ('"+date+"', '"+destination+"', '"+requests+"', '"+cusID+"')";
			


			int rs = stmt.executeUpdate(sql);
			//insert success out 1..unsuccess out 0
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
   
    
public List<Card> validate2(String cardnumber,String nameOfHolder){
		
		ArrayList<Card> crd=new ArrayList<>();
		
		//validate
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql="select * from carddetails where CardNumber='"+cardnumber+"' and NameofHolder= '"+nameOfHolder+"'"; 
			rs=stmt.executeQuery(sql);

			
			if(rs.next()) {
				int idcard = rs.getInt(1);
				String cardnumber1 = rs.getString(2);
				String nameofholder = rs.getString(3);
				String CVC = rs.getString(4);
				String expiredDate = rs.getString(5);
				
				
				Card c=new Card(idcard, cardnumber1,nameofholder,CVC,expiredDate);
				crd.add(c);
		
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		 
		
		return crd;
		
	}
	
	public boolean insertcard(String card_number,String cardholder_name,String CVC,String expiry_date ) {
		
		boolean isSuccess=false;

		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
        	
			String sql="insert into carddetails(CardNumber, NameofHolder, CVC, ExpiredDate, idcus) values('"+card_number+"','"+cardholder_name+"','"+CVC+"','"+expiry_date+"','"+cusID+"')";
			//"INSERT INTO booking(date, destination, request, id) VALUES ('"+date+"', '"+destination+"', '"+requests+"', '"+cusID+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			} else {
				isSuccess=false;
			}	
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}	
		
		return isSuccess;
	}
	
	public List<Booking> getBooking(int cusID)
	{
		ArrayList<Booking> booking = new ArrayList<Booking>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from booking where id = '"+cusID+"'";

			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int idbooking = rs.getInt(1);
				String date = rs.getString(2);
				String destination = rs.getString(3);
				String requests = rs.getString(4);
				
				
				Booking book = new Booking(idbooking, date, destination, requests);
				
				
				booking.add(book);
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return booking;
	}
	
public boolean updatebooking(String idbooking, String date, String destination, String requests) {
		
		try {
			int ID=Integer.parseInt(idbooking); 
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE booking SET  date= ?, destination = ? , request = ? where idbooking = ?";
			
			PreparedStatement statemnt = null;
			
			statemnt = con.prepareStatement(sql);
			
			statemnt.setString(1, date);
			statemnt.setString(2, destination);
			statemnt.setString(3, requests);
			statemnt.setInt(4, ID);
			
			
			int rs = statemnt.executeUpdate();
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}

public List<Booking> getBookingDetails(String Idbooking)
{
	int convertedID = Integer.parseInt(Idbooking);
	ArrayList<Booking> booking = new ArrayList<>();
	try
	{
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from booking where idbooking = '"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int idbooking = rs.getInt(1);
			String date = rs.getString(2);
			String destination = rs.getString(3);
			String requests = rs.getString(4);
			
			
			//pass data to customer object
			Booking book = new Booking(idbooking, date, destination, requests);
			booking.add(book);
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return booking;
}

public boolean deleteBooking(String idbooking)
{
	
	
	try
	{
		con = DBConnect.getConnection(); 
		stmt = con.createStatement();
		String sql = "delete from booking where idbooking = "+idbooking;
		System.out.println(sql);
        int r =stmt.executeUpdate(sql);
	    
        if(r>0)
        {
        	isSuccess = true;
        }
        else {
        	isSuccess = false;
        }
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return isSuccess;
}

public List<Card> getCard(int cusID)
{
	ArrayList<Card> card = new ArrayList<Card>();
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from carddetails where idcus = '"+cusID+"'";

		rs = stmt.executeQuery(sql);
		
		while(rs.next())
		{
			int idcard = rs.getInt(1);
			String CardNumber = rs.getString(2);
			String CardHolderName = rs.getString(3);
			String CVC = rs.getString(4);
			String ExpiredDate = rs.getString(5);
			
			//sent data to Customer constructor
			Card card1 = new Card(idcard, CardNumber, CardHolderName, CVC, ExpiredDate);
			
			//sent data to arraylist
			card.add(card1);
		}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return card;
}



public List<Card> getCardDetails(String Idcard)
{
	int convertedID = Integer.parseInt(Idcard);
	ArrayList<Card> card = new ArrayList<>();
	try
	{
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from carddetails where idcard = '"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		//check valid id 
		while(rs.next()) {
			int idcard = rs.getInt(1);
			String CardNumber = rs.getString(2);
			String CardHolderName = rs.getString(3);
			String CVC = rs.getString(4);
			String ExpiredDate = rs.getString(5);
			
			
			//pass data to customer object
			Card card1 = new Card(idcard, CardNumber, CardHolderName, CVC, ExpiredDate);
			card.add(card1);
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return card;
}

public boolean deletecard(String idcard)
{
	
	
	try
	{
		con = DBConnect.getConnection(); 
		stmt = con.createStatement();
		String sql = "delete from carddetails where idcard = "+idcard;
		System.out.println(sql);
        int r =stmt.executeUpdate(sql);
	    
        if(r>0)
        {
        	isSuccess = true;
        }
        else {
        	isSuccess = false;
        }
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return isSuccess;
}



public boolean updatecard(String idcard, String CardNumber, String CardHolderName, String CVC, String ExpiredDate) {
	
	try {
		int ID=Integer.parseInt(idcard); 
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "UPDATE carddetails SET  CardNumber= ?, NameofHolder = ? , CVC = ? , ExpiredDate = ? where idcard = ?";
		
		PreparedStatement statemnt = null;
		
		statemnt = con.prepareStatement(sql);
		
		statemnt.setString(1, CardNumber);
		statemnt.setString(2, CardHolderName);
		statemnt.setString(3, CVC);
		statemnt.setString(4, ExpiredDate);
		statemnt.setInt(5, ID);
		
		
		int rs = statemnt.executeUpdate();
		
		if(rs > 0)
		{
			isSuccess = true;
		}
		else
		{
			isSuccess = false;
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return isSuccess;
}

public boolean insertfeedback(String date, String username, String Feedback)
{
	boolean isSuccess = false;
	
	try 
	{
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		//insert data to database

		String sql = "INSERT INTO feedback(feedbackdate, feedbackName, feedback, cusid) VALUES ('"+date+"', '"+username+"', '"+Feedback+"', '"+cusID+"')";
		
		/*SELECT u.user_id, u.email, u.address, b.booking_id, b.price
		FROM user u
		JOIN booking b ON u.user_id = b.user_id;*/

		int rs = stmt.executeUpdate(sql);
		//insert success out 1..unsuccess out 0
		if(rs>0) {
			isSuccess = true;
		}else {
			isSuccess = false;
		}
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return isSuccess;
}

public List<Feedback> getFeedback(int cusID)
{
	ArrayList<Feedback> feedback1 = new ArrayList<Feedback>();
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from feedback";

		rs = stmt.executeQuery(sql);
		
		while(rs.next())
		{
			int idfeedback = rs.getInt(1);
			String feedbackdate = rs.getString(2);
			String feedbackName = rs.getString(3);
			String feedback = rs.getString(4);
			
			//sent data to Customer constructor
			Feedback feed = new Feedback(idfeedback, feedbackdate, feedbackName, feedback);
			
			//sent data to arraylist
			feedback1.add(feed);
		}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return feedback1;
}


/*public static boolean updatePassword(String email,String user_id, String new_password,String confirm_password) {
	
	boolean IsSuccess=false;
	//ArrayList<Customer> pwdDetails=new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update customer set password='"+new_password+"'where id='"+user_id+"' and email='"+email+"'";
				
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0) {
			IsSuccess= true;
		}
		else {
			IsSuccess= false;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}


   return IsSuccess;
}*/

public boolean updatePassword(String email,String passwordnew,String passwordnew1) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update customer set password='"+passwordnew+"'where email='"+email+"'";
				
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}


public  List<Customer> getCustomerpassword(String Email) {
	
	
	
	ArrayList<Customer> cus = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where email='"+Email+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email =rs.getString(3);
			String phone = rs.getString(4);
			String userName = rs.getString(5);
			String password = rs.getString(6);
			
			Customer c = new Customer(id, name, email, phone, userName, password);
			cus.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return cus;	
	
}
}










