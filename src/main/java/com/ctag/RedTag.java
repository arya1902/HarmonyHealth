package com.ctag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class RedTag extends BodyTagSupport {

	public int doStartTag() throws JspException {
		
		return EVAL_BODY_BUFFERED;
	}
	public int doAfterBody() throws JspException {
		
		String data = getBodyContent().getString();
		try {
			getBodyContent().getEnclosingWriter().print("<font color='red'>" + data + "</font>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	
	public int doEndTag() throws JspException {
		
		return EVAL_PAGE;
	}
}
