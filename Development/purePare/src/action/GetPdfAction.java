package action;

import com.opensymphony.xwork2.ActionSupport;

public class GetPdfAction extends ActionSupport {
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String execute() {
		System.out.println("value of id="+id);
		return SUCCESS;
	}
}
