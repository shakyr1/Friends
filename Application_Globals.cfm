<!-------------------------------------------------------------------------------------------------------------------------->
<!---  Internal Application Variables --->
<!---
	IMPORTANT - Change the application and framework variables below.
	Variables marked * Required must be changed by the developer.
--->
<!-------------------------------------------------------------------------------------------------------------------------->

<cfset this.name = 'friends'>
<cfset this.LoginStorage="session" />
<cfset this.SessionManagement=true />
<cfset this.SetClientCookies = false />
<cfset this.setDomainCookies = false />
<cfset this.Sessiontimeout=CreateTimeSpan(0,2,0,0) />
<cfset this.Applicationtimeout=CreateTimeSpan(0,2,0,0) />

<cfset APPLICATION.APPLICATIONNAME = "friends"> <!--- * Required --->

<!--- Get expanded path of the BASE path. --->
<cfset strPath = ExpandPath( "./" ) />
<cfset Application.GLOBAL_SitePath = "/#this.name#">
<cfset Application.SSLHTTP = false>
<cfset application.APPLICATIONNAME = "/#this.name#">

<cfif Application.SSLHTTP>
	<cfset Application.GLOBAL_ServerAddress = "https://#cgi.server_name#">
<cfelse>
	<cfset Application.GLOBAL_ServerAddress = "http://#cgi.server_name#">
</cfif>

<cfset application.baseurl = '#Application.GLOBAL_ServerAddress#/#this.name#'>

<!-------------------------------------------------------------------------------------------------------------------------->
<!---  FRAMEWORK - Variables --->
<!-------------------------------------------------------------------------------------------------------------------------->

<cfset application.APPLICATION.NAME = '#this.name#'>
<cfset variables.framework.trace = false>
<cfset variables.framework.error = 'main.error'>
<cfset variables.framework.reload = 'reload'>
<cfset variables.framework.reloadApplicationOnEveryRequest = true>
<cfset variables.framework.generateSES = false>

<cfset Application.availableResources=0>
<cfset Application.sessions=0>
<cfset Application.LOGIN_IDLETIMEOUT = "5"> <!--- in seconds --->

<!-------------------------------------------------------------------------------------------------------------------------->
<!---  Recaptcha - Variables --->
<!-------------------------------------------------------------------------------------------------------------------------->
<cfset Application.CFSETTING_SHOWDEBUGOUTPUT="Yes"> <!--- can be "Yes"/"No" --->
<cfset Application.RECAPTCHA_PUBLIC_KEY = "6LfrOuASAAAAAF5dapbbYi8pSoA9u1_SoBNtRnIl">
<cfset Application.RECAPTCHA_PRIVATE_KEY = "6LfrOuASAAAAAMb-gHSxdFsBuI02HiJfbTJr_JHI">

<!-------------------------------------------------------------------------------------------------------------------------->
<!---  UNLV Authentication Variables --->
<!-------------------------------------------------------------------------------------------------------------------------->

<cfset Application.AUTH_TYPE = "ST">
<cfset Application.APP_TYPE = "ENRLVERF">
<cfset Application.AUTH_KEY = "ued9FY2UrxmRSgMxbRSR">

<!-------------------------------------------------------------------------------------------------------------------------->
<!---  Authorize.NET Variables - Required if this application accepts payment --->
<!-------------------------------------------------------------------------------------------------------------------------->

<cfset session.amount = ''>
<cfset Application.GLOBAL_AUTHORIZE_URL="https://secure.authorize.net/gateway/transact.dll">
<cfset Application.GLOBAL_AUTHORIZE_APILOGINID="">
<cfset Application.GLOBAL_AUTHORIZE_TRANSACTIONKEY="">
<cfset Application.GLOBAL_AUTHORIZE_HASHVALUE="">
<cfset Application.GLOBAL_AUTHORIZE_RELAYURL="">
<cfset Application.GLOBAL_AUTHORIZE_REDIRECTURL="">
<cfset Application.GLOBAL_AUTHORIZE_GATEWAY="">
