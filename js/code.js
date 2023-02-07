const urlBase = 'https://paradise4331.online/LAMPAPI';
const extension = 'php';

let userId = 0;
let firstName = "";
let lastName = "";

function doLogin()
{
	userId = 0;
	firstName = "";
	lastName = "";

	let Login = document.getElementById("loginName").value;
	let Password = document.getElementById("loginPassword").value;
	var hash = md5( Password );

	document.getElementById("loginResult").innerHTML = "";

	var tmp = {login:Login,password:hash};

	let jsonPayload = JSON.stringify( tmp );

	let url = urlBase + '/Login.' + extension;

	let xhr = new XMLHttpRequest();
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8");
	try
	{
		xhr.onreadystatechange = function()
		{
			if (this.readyState == 4 && this.status == 200)
			{
				let jsonObject = JSON.parse( xhr.responseText );
				userId = jsonObject.id;

				if( userId < 1 )
				{
					document.getElementById("loginResult").innerHTML = "User/Password combination incorrect";
					return;
				}

				firstName = jsonObject.firstName;
				lastName = jsonObject.lastName;

				saveCookie();
				window.location.href = "paradise.html";

			}
		};
		xhr.send(jsonPayload);
	}
	catch(err)
	{
		document.getElementById("loginResult").innerHTML = err.message;
	}

}

function doSignup()
{

	let Login = document.getElementById("LoginName").value;
	let Password = document.getElementById("LoginPassword").value;
	let FirstName = document.getElementById("FirstName").value;
	let LastName = document.getElementById("LastName").value;

	var hash = md5( Password );

	document.getElementById("signupResult").innerHTML = "";

	var tmp = {login:Login, password:hash, firstName: FirstName, lastName: LastName};

	let jsonPayload = JSON.stringify( tmp );

	let url = urlBase + '/Register.' + extension;

	let xhr = new XMLHttpRequest();

	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8");

	try
	{
		xhr.onreadystatechange = function()
		{

			if (this.readyState == 4 && this.status == 200)
			{
				document.getElementById("signupResult").innerHTML = "Signup successful! Go login";


				let jsonObject = JSON.parse(xhr.responseText);

				userId = jsonObject.id;
				firstName = jsonObject.firstName;
				lastName = jsonObject.lastName;

				saveCookie();
			}

			if (this.status == 403)
			{
				document.getElementById("signupResult").innerHTML = "This Username Already Exists";
				return;
			}

		};
		xhr.send(jsonPayload);
	}
	catch(err)
	{
		document.getElementById("signupResult").innerHTML = err.message;
	}

}

function saveCookie()
{
	let minutes = 20;
	let date = new Date();
	date.setTime(date.getTime()+(minutes*60*1000));
	document.cookie = "firstName=" + firstName + ",lastName=" + lastName + ",userId=" + userId + ";expires=" + date.toGMTString();
}

function readCookie()
{
	userId = -1;
	let data = document.cookie;
	let splits = data.split(",");
	for(var i = 0; i < splits.length; i++)
	{
		let thisOne = splits[i].trim();
		let tokens = thisOne.split("=");
		if( tokens[0] == "firstName" )
		{
			firstName = tokens[1];
		}
		else if( tokens[0] == "lastName" )
		{
			lastName = tokens[1];
		}
		else if( tokens[0] == "userId" )
		{
			userId = parseInt( tokens[1].trim() );
		}
	}

	if( userId < 0 )
	{
		window.location.href = "index.html";
	}
	else
	{
		document.getElementById("userName").innerHTML = "Welcome to Paradise! "+firstName + " " + lastName;
	}
}

function doLogout()
{
	userId = 0;
	firstName = "";
	lastName = "";
	document.cookie = "firstName= ; expires = Thu, 01 Jan 1970 00:00:00 GMT";
	window.location.href = "index.html";
}


function loadTable()
{

	var tmp = {userId:userId, search:""};

	let jsonPayload = JSON.stringify( tmp );

	let url = urlBase + '/SearchCont.' + extension;

	let xhr = new XMLHttpRequest();

	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8");


	try
	{
		xhr.onreadystatechange = function()
		{

			if (this.readyState == 4 && this.status == 200)
			{

				let jsonObject = JSON.parse( xhr.responseText );

					for( let i=0; i<jsonObject.results.length; i++ )
					{
              let num = i +1;
							markup = "<tr><td> " + num + " </td> " + "<td>" + jsonObject.results[i].FirstName + " </td>" + "<td> " + jsonObject.results[i].LastName + " </td>" + "<td> " + jsonObject.results[i].Phone + " </td>" + "<td> " + jsonObject.results[i].Email + " </td> " + "</tr>";
							tableBody = $("table tbody");
							tableBody.append(markup);
					}
			}
		};
		xhr.send(jsonPayload);
	}
	catch(err)
	{
		console.log(err.message);
	}
}


function doAddContact()
{
	let First = document.getElementById("First").value;
	let Last = document.getElementById("Last").value;
	let Phone = document.getElementById("Phone").value;
	let Email = document.getElementById("Email").value;


	var tmp = {firstName:First, lastName:Last, phone:Phone, email:Email, userId:userId};

	let jsonPayload = JSON.stringify( tmp );

	let url = urlBase + '/AddContact.' + extension;


	let xhr = new XMLHttpRequest();
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8");
	try
	{
		xhr.onreadystatechange = function()
		{
			if (this.readyState == 4 && this.status == 200)
			{
				console.log("Contact added");

				window.location.href = "paradise.html";

			}
		};
		xhr.send(jsonPayload);
	}
	catch(err)
	{
		console.log(err.message);
	}

}

function doDeleteContact()
{

	let Phone = document.getElementById("Phone").value;

	var tmp = {phone:Phone, userId:userId};

	let jsonPayload = JSON.stringify( tmp );

	let url = urlBase + '/DeleteContact.' + extension;

	let xhr = new XMLHttpRequest();
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8");
	try
	{
		xhr.onreadystatechange = function()
		{
			if (this.readyState == 4 && this.status == 200)
			{
				console.log("Contact deleted");
				window.location.href = "paradise.html";
			}
		};
		xhr.send(jsonPayload);
	}
	catch(err)
	{
		console.log(err.message);
	}
}

function searchSpecificContact()
{
	let Phone = document.getElementById("SearchPhone").value;

	document.getElementById("First").innerHTML = "";
	document.getElementById("Last").innerHTML = "";
	document.getElementById("Phone").innerHTML = "";
	document.getElementById("Email").innerHTML = "";
	document.getElementById("ID").innerHTML = "";
	document.getElementById("SearchResult").innerHTML = "";

	let user = "";

	let tmp = {phone:Phone,userId:userId};
	let jsonPayload = JSON.stringify( tmp );

	let url = urlBase + '/searchSpecificCont.' + extension;

	let xhr = new XMLHttpRequest();
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8");
	try
	{
		xhr.onreadystatechange = function()
		{
			if (this.readyState == 4 && this.status == 200)
			{
				document.getElementById("SearchResult").innerHTML = "User has been retrieved";
				let jsonObject = JSON.parse( xhr.responseText );

				for( let i=0; i<jsonObject.results.length; i++ )
				{
					user += jsonObject.results[i];
				}

				console.log(jsonObject.results[0].FirstName);
				document.getElementById("First").value = jsonObject.results[0].FirstName;
				document.getElementById("Last").value = jsonObject.results[0].LastName;
				document.getElementById("Phone").value = jsonObject.results[0].Phone;
				document.getElementById("Email").value = jsonObject.results[0].Email;
				document.getElementById("ID").value = jsonObject.results[0].ID;
			}
			if (this.status == 403)
			{
					document.getElementById("SearchResult").innerHTML = "Contact not found";
					return;
			}
		};
		xhr.send(jsonPayload);
	}
	catch(err)
	{
		document.getElementById("colorSearchResult").innerHTML = err.message;
	}
}

function doEditContact()
{
	
	let First = document.getElementById("First").value;
	let Last = document.getElementById("Last").value;
	let Phone = document.getElementById("Phone").value;
	let Email = document.getElementById("Email").value;
	let Id = document.getElementById("ID").value;


	let tmp = {firstName:First, lastName:Last, phone:Phone, email:Email, id:Id};

	let jsonPayload = JSON.stringify( tmp );

	let url = urlBase + '/EditCont.' + extension;


	let xhr = new XMLHttpRequest();
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8");
	try
	{
		xhr.onreadystatechange = function()
		{
			if (this.readyState == 4 && this.status == 200)
			{
				console.log("Contact Edited");

				window.location.href = "paradise.html";

			}
		};
		xhr.send(jsonPayload);
	}
	catch(err)
	{
		console.log(err.message);
	}

}
