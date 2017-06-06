<cfcomponent extends="org.corfield.framework">
	<cfset Application.sessions=0>

    <!--- All of the Framework Variables are located in Application_Globals.cfm --->
    <cfinclude template="Application_Globals.cfm">


	<cffunction name="onSessionStart"  access="public"  returntype="void"  output="false"  hint="Runs when the session starts.">
        <!--- Store date the session was created. --->
		<cfset session.DateInitialized = Now() />

	    <!---set cfid/cftoken as non-persistent cookies so session ends on browser close --->
        <cfif not IsDefined("Cookie.CFID")>
            <cflock scope="session" type="readonly" timeout="5">
                <cfset session.SessionStartTime = Now() />
             	<cfset Application.sessions = Application.sessions + 1>
            </cflock>
        </cfif>

    </cffunction>

    <cffunction name="onApplicationStart">
        

    </cffunction>

	<cffunction name="onSessionEnd">
     	<cfargument name = "SessionScope" required=true/>

	    <cfif isdefined('SESSION.useremplid')>
	        <cfset StructClear(Session)>
		</cfif>
    </cffunction>

    <!--- FW1 Version of onRequestStart.   All actions go through here --->
	<cffunction name="setupRequest" access="public" returntype="void">
        <cfset sessionexpired = false>
		<cflock timeout="20" scope="Session" type="Exclusive">

	    	<cfif isDefined('Session.useremplid')>
				<cfset application.loginsuccessful = true>
			<cfelse>
				<cfset application.loginsuccessful = false>
			</cfif>
        </cflock>

	</cffunction>

	<cffunction name="onApplicationEnd" returnType="void">

	    <cfset StructClear(Application)>
	    <cflogout>

	</cffunction>

</cfcomponent>