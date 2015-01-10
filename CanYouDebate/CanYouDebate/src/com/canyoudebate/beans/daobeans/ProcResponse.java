package com.canyoudebate.beans.daobeans;



public class ProcResponse 
{
	public  static int success     = 1000;
	public  static int error      = 999;
	
	private String responseCode   = "";
	private String responseMessage;
	private Object responseOutput ;
	private Object responseOutput2;
	private Object responseOutput3;
	private Object responseOutput4;
    public String getResponseCode() {
		return responseCode;
	}
	public void setResponseCode(String responseCode) {
		this.responseCode = responseCode;
	}
	public String getResponseMessage() {
		return responseMessage;
	}
	public void setResponseMessage(String responseMessage) {
		this.responseMessage = responseMessage;
	}
	public Object getResponseOutput() {
		return responseOutput;
	}
	public void setResponseOutput(Object responseOutput1) {
		this.responseOutput = responseOutput1;
	}
	
	
	public Object getResponseOutput2() {
		return responseOutput2;
	}
	public void setResponseOutput2(Object responseOutput2) {
		this.responseOutput2 = responseOutput2;
	}
	
	public Object getResponseOutput3() {
		return responseOutput3;
	}
	public void setResponseOutput3(Object responseOutput3) {
		this.responseOutput3 = responseOutput3;
	}
	
	
	public Object getResponseOutput4() {
		return responseOutput4;
	}
	public void setResponseOutput4(Object responseOutput4) {
		this.responseOutput4 = responseOutput4;
	}
	public static String responseCodeToString(String responseInt)
    {
    	Long code = Long.parseLong(responseInt+"");
    	if(code == ProcResponse.success)
    	{
    		return ResponseCode.SUCCESS.getStatus();
    	}
    	else if(code == ProcResponse.error)
    	{
    		return ResponseCode.ERROR.getStatus();
    	}
    	return ResponseCode.SUCCESS.getStatus();
    }
	
	public static ServiceOutputVO generateServiceoutOutputVO(ProcResponse response)
    {
		ServiceOutputVO outputVO = new ServiceOutputVO();
		if(response != null)
		{
			outputVO.setResponseCode(ProcResponse.responseCodeToString(response.getResponseCode() + ""));
			outputVO.setResponseMessage(response.getResponseMessage());
		}
		return outputVO;
    }
}
