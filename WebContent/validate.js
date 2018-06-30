function setRange(start,end)
{
   var i;
   for(i=start;i<=end;i++)
{
	document.write('<option value='+i+'>'+i+'</option>');
}
}

function setdays()
{
 var myear=document.getElementById("year");
 var mmon=document.getElementById("mon");
 var mday=document.getElementById("day");
 mday.innerHTML="<option value=-1>--select--</option>";
 if(mmon.value==2)
	 {
	 if((myear.value%100==0 && myear.value%400==0)||(myear.value%100!=0 && myear.value%4==0))
		 {
		 for(i=1;i<=29;i++)
			 mday.innerHTML+="<option value="+i+">"+i+"</option>";
		 }
	 else
		 {
		 for(i=1;i<=28;i++)
		 mday.innerHTML+="<option value="+i+">"+i+"</option>";
		 }
	}

else if(mmon.value==1 || mmon.value==3 || mmon.value==5 || mmon.value==7 || mmon.value==8 || mmon.value==10 || mmon.value==12)
{
	for(i=1;i<=31;i++)
	mday.innerHTML+="<option value="+i+">"+i+"</option>";
}
else
	{
	for(i=1;i<=30;i++)
    mday.innerHTML+="<option value="+i+">"+i+"</option>";
	}
}

function checkAdd()
{
  var valid= true;
  if(document.frmadd.txtform.value==""||document.frmadd.txtform.value==null)
	  {
	  alert("Please enter form number");
	  valid=false;
	  }
  else if(document.frmadd.txtfname.value==""||document.frmadd.txtfname.value==null)
  {
  alert("Please enter first name");
  valid=false;
  }
  else if(document.frmadd.txtlname.value==""||document.frmadd.txtlname.value==null)
  {
  alert("Please enter last name");
  valid=false;
  }
  else if(document.frmadd.cmbday.value==-1)
  {
  alert("Please select day");
  valid=false;
  }
  else if(document.frmadd.cmbmonth.value==-1)
  {
  alert("Please select month");
  valid=false;
  }
  else if(document.frmadd.cmbyear.value==-1)
  {
  alert("Please select year");
  valid=false;
  }
  else if(document.frmadd.txtadd.value==""||document.frmadd.txtadd.value==null)
  {
  alert("Please enter addresss");
  valid=false;
  }
  else if(document.frmadd.cmbcourse.value=="-1")
  {
  alert("Please select course");
  valid=false;
  }
  else if(document.frmadd.txtcont.value==""||document.frmadd.txtcont.value==null)
  {
  alert("Please enter contact number");
  valid=false;
  }
  else if(document.frmadd.txtemail.value==""||document.frmadd.txtemail.value==null)
  {
  alert("Please enter email address");
  valid=false;
  }
return valid;
}

function checklogin()
{
	if(document.frmlogin.txtuser.value==""||document.frmlogin.txtuser.value==null)
	{
		alert("Please enter username");
	    valid=false;
	}
	else if(document.frmlogin.txtpass.value==""||document.frmlogin.txtpass.value==null)
	{
		alert("Please enter password");
		valid=false;
	}
	return valid;
}

var img1=new Image();
img1.src="Images/n1.jpg";
var img2=new Image();
img2.src="Images/n2.jpg";
var img3=new Image();
img3.src="Images/n3.jpg";
var steps=1;

function slideImage()
{
if(steps<3)
	++steps;
else
	steps=1;
document.frmhome.MyImage.src=eval("img"+steps+".src");
setTimeout(slideImage,1000);
}

function displayTime()
{
var timeElement=document.getElementById('mytime');
var mydate=new Date();
var day=mydate.getDate();
var month=mydate.getMonth()+1;
var year=mydate.getFullYear();
var hours=mydate.getHours();
var min=mydate.getMinutes();
var sec=mydate.getSeconds();
if(day<10)
	day="0"+day;

if(month<10)
	month="0"+month;

if(hours<10)
	day="0"+hours;

if(min<10)
	min="0"+min;

if(sec<10)
	sec="0"+sec;
var fulldate= day+"/"+month+"/"+year+" "+hours+":"+min+":"+sec;
timeElement.innerHTML=fulldate;
setTimeout(displayTime,1000);
}

function start()
{
displayTime();
slideImage();
}
window.onload=start;