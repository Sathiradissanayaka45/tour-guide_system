package com.toursystem;

public class Feedback {
	
	private int idfeedback;
	private String feedbackdate;
	private String feedbackName;
	private String feedback;

	
	public Feedback(int idfeedback, String feedbackdate, String feedbackName, String feedback)
	{
		this.idfeedback = idfeedback;
		this.feedbackdate = feedbackdate;
		this.feedbackName = feedbackName;
		this.feedback = feedback;
	}


	public int getIdfeedback() {
		return idfeedback;
	}

	public String getFeedbackdate() {
		return feedbackdate;
	}

	public String getFeedbackName() {
		return feedbackName;
	}

	public String getFeedback() {
		return feedback;
	}

}
