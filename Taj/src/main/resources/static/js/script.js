function validation()
{
	var a = document.forms["Form"]["uname"].value;
	var b = document.forms["Form"]["pass"].value;
	if(a == "" || b == "")
	{
		alert("Please Fill All Required Fields!");
		return false;
	}
}
function validation1()
{
	var a = document.forms["Form"]["uname"].value;
	var b = document.forms["Form"]["pass"].value;
	var c = document.forms["Form"]["pass1"].value;
	var d = document.forms["Form"]["email"].value;
	var e = document.forms["Form"]["mobile"].value;
	var f = document.forms["Form"]["address"].value;
	if(a == "" || b == "" || c == "" || d == "" || e == "" || f == "")
	{
		alert("Please Fill All Required Fields!");
		return false;
	}
	else
	{
		if(b != c)
		{
			alert("Passwords not Matched!");
			return false;
		}
	}
}
