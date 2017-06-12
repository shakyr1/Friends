<cfcomponent  extends="friends.config.autoload.db_friends" output="false">

	<!-------------------------------------------------------------------------------------------------------------------------->
	<!---  INITIALIZE FOR FW/1 MEHTOD ACCESS  --->
	<!-------------------------------------------------------------------------------------------------------------------------->

	<cfset variables.fw = '' />

	<!-------------------------------------------------------------------------------------------------------------------------->
	<!---  INITIALIZE FOR FW/1 MEHTOD ACCESS  --->
	<!-------------------------------------------------------------------------------------------------------------------------->

	<cffunction name="init" access="public" returntype="void">
	    <cfargument name="fw" type="any" required="yes" />

	    <cfset variables.fw = arguments.fw />
	    
	</cffunction>


	<!--- Get the friends list --->
	<cffunction name="get_friends" access="public" returntype="query">
		<cfquery name="qget_friends" datasource="#DATASOURCE#">
	        SELECT  *
	        FROM FRIENDS
	        ORDER BY FRIENDNAME ASC
	    </cfquery>
		<cfreturn qget_friends>
	</cffunction>         

	<cffunction name="add_record" access="public" returntype="boolean">
		<cfargument name="rc" type="any" required="yes">
		<cftry> 
			<cfquery name="qInsertRecord" datasource="#DATASOURCE#">
                insert into FRIENDS(
                					FRIENDNAME, 
									EMAILADDR, 
									AGE, 
									FAVORITECOLOR
									) 
			    values(
				<cfqueryparam value='#rc.name#' cfsqltype='CF_SQL_VARCHAR'>,
				<cfqueryparam value='#rc.email#' cfsqltype='CF_SQL_VARCHAR'>,
				<cfqueryparam value='#rc.age#' cfsqltype='CF_SQL_NUMERIC'>,
				<cfqueryparam value='#rc.favorite_color#' cfsqltype='CF_SQL_VARCHAR'>
				)
		    </cfquery>
			<!--- specify the type of error for which we search ---> 
    		<cfcatch type = "Database"> 
    			<!--- the message to display ---> 
        		<h3>You've Thrown a Database <b>Error</b></h3>
        		<cfreturn false> 
        	</cfcatch> 
        	
		</cftry>
		<cfreturn true>
	</cffunction>
	<!--- <cffunction name="add_record" access="public" returntype="boolean">
		<cfargument name="rc" type="any" required="yes">
		<cftry> 
			<cfquery name="qInsertRecord" datasource="#DATASOURCE#">
                insert into FRIENDS(FRIENDID,
                					FRIENDNAME, 
									EMAILADDR, 
									AGE, 
									FAVORITECOLOR
									) 
			    values(FRIENDS_AUTO_INCR.NEXTVAL,
				<cfqueryparam value='#rc.name#' cfsqltype='CF_SQL_VARCHAR'>,
				<cfqueryparam value='#rc.email#' cfsqltype='CF_SQL_VARCHAR'>,
				<cfqueryparam value='#rc.age#' cfsqltype='CF_SQL_NUMERIC'>,
				<cfqueryparam value='#rc.favorite_color#' cfsqltype='CF_SQL_VARCHAR'>
				)
		    </cfquery>
			<!--- specify the type of error for which we search ---> 
    		<cfcatch type = "Database"> 
    			<!--- the message to display ---> 
        		<h3>You've Thrown a Database <b>Error</b></h3>
        		<cfreturn false> 
        	</cfcatch> 
        	
		</cftry>
		<cfreturn true>
	</cffunction> --->

	<cffunction name="delete_record" access="public" returntype="boolean">
		<cfargument name="friend_id" type="string" required="yes">
		
		<cftry>
			<cfquery name="qdeleteRecord" datasource="#DATASOURCE#">
				delete from FRIENDS 
					where FRIENDID = #friend_id#
			</cfquery>
			<cfcatch type = "Database">
				<cfdump var = "#cfcatch.queryError#"/><cfabort> 
    			<!--- the message to display ---> 
        		<h3>You've Thrown a Database <b>Error</b></h3>
        		<cfreturn false> 
        	</cfcatch> 
		</cftry>
			<cfreturn true>	
	</cffunction>

	<cffunction name="get_record" access="public" returntype="query">
		<cfargument name="friend_id" type="string" required="yes">
		
		<cftry>
			<cfquery name="qgetRecord" datasource="#DATASOURCE#">
				select * from FRIENDS 
					where FRIENDID = #friend_id#
			</cfquery>
			<cfcatch type = "Database">
				<cfdump var = "#cfcatch.queryError#"/><cfabort> 
    			<!--- the message to display ---> 
        		<h3>You've Thrown a Database <b>Error</b></h3>
        		<cfreturn ""> 
        	</cfcatch> 
		</cftry>
			<cfreturn qgetRecord>	
	</cffunction>	

	<cffunction name="edit_record" access="public" returntype="boolean">
		<cfargument name="rc" type="any" required="yes">
		<cftry> 
			<cfquery name="qEditRecord" datasource="#DATASOURCE#">
                UPDATE FRIENDS 
                SET FRIENDNAME = <cfqueryparam value='#rc.name#' cfsqltype='CF_SQL_VARCHAR'>,
                EMAILADDR = <cfqueryparam value='#rc.email#' cfsqltype='CF_SQL_VARCHAR'>,
                AGE = <cfqueryparam value='#rc.age#' cfsqltype='CF_SQL_NUMERIC'>,
                FAVORITECOLOR = <cfqueryparam value='#rc.favorite_color#' cfsqltype='CF_SQL_VARCHAR'>
                WHERE FRIENDID = <cfqueryparam value='#rc.friend_id#' cfsqltype='CF_SQL_NUMERIC'>
		    </cfquery>
			<!--- specify the type of error for which we search ---> 
    		<cfcatch type = "Database"> 
    			<!--- the message to display ---> 
        		<h3>You've Thrown a Database <b>Error</b></h3>
        		<cfreturn false> 
        	</cfcatch> 
        	
		</cftry>
		<cfreturn true>
	</cffunction>

</cfcomponent>