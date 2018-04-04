function Validate()
{
	var inputtxt = document.register.no.value;
	
	if(inputtxt.length!=10)
    {
		alert("NOT A VALID MOBILE NUMBER");
        return false;
    }
	
	if(isNaN(inputtxt))
    {
		alert("Enter only numbers");
        return false;
    }
	
	var name = document.register.First_name.value;
	if(name=="")
    {
        alert("First Name should not be empty");
		return false;
    }
	
	var mail = document.register.email.value;
	var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	if(mailformat.test(mail)==false)
	{
		alert("You have entered an invalid email address!");
		return false;
    }
	
	var last = document.register.Last_name.value;
	if(last=="")
    {
        alert("Last Name should not be empty");
		return false;
    }
	
	var colg = document.register.College.value;
	if(colg=="")
    {
        alert("College Name should not be empty");
		return false;
    }
	
        return true;
}
