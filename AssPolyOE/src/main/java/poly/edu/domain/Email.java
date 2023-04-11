package poly.edu.domain;

public class Email {
	private String form, to, fromPassword, subject, content;

	public Email() {
	}

	public Email(String form, String to, String fromPassword, String subject, String content) {
		this.form = form;
		this.to = to;
		this.fromPassword = fromPassword;
		this.subject = subject;
		this.content = content;
	}

	public String getForm() {
		return form;
	}

	public void setForm(String form) {
		this.form = form;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getFromPassword() {
		return fromPassword;
	}

	public void setFromPassword(String fromPassword) {
		this.fromPassword = fromPassword;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}
