
function greet()
{
	var time=new Date().getHours();
	if(time<12)
		alert("亲爱的北理工人，早上好");
	else if(time<18)
		alert("亲爱的北理工人，下午好");
	else
		alert("亲爱的北理工人，晚上好");
}