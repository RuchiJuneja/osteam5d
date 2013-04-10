package action;

import com.opensymphony.xwork2.ActionSupport;

public class PlanAction extends ActionSupport {
	public String regularPlan(){
		return SUCCESS;
	}
	public String peakPlan(){
		return SUCCESS;
	}
	public String happyPlan(){
		return SUCCESS;
	}
}
