<cfcomponent>
	<!--- Initialize framework one variable --->
	<cfset variables.fw = '' />

	<cffunction name="init" output="false">
		<cfargument name="fw" />
		<cfset variables.fw = arguments.fw />
	</cffunction>

	<!--- Default Action --->
  <cffunction name="default" access="public" returntype="void">
    <cfargument name="rc" type="struct" required="yes" />
    	<!--- <cfdump var = "default"/><cfabort> --->
    	<!--- Call get_friends from dbmain model --->
    	<cfinvoke method="get_friends" component="friends.model.dbmain" returnvariable="qget_friends">		        			
	    </cfinvoke>   

	    <!--- <cfdump var = "#qget_friends.EMAILADDR#"/><cfabort>     --->
	    <cfset rc.friend_list = qget_friends>  
	   <!---  <cfloop query="rc.friend_list">
  			<cfoutput>#rc.friend_list.FRIENDNAME#</cfoutput>

		</cfloop> --->
  
   </cffunction>

   <!-------------------------------------------------------------------------------------------------------------------------->
	<!---  Add a friend  --->
	<!-------------------------------------------------------------------------------------------------------------------------->

	<cffunction name="add" access="public" returntype="any">
		<cfargument name="rc" type="struct" required="yes" />
			<!--- <cfdump var = "#rc.nsheid#"/><cfabort> --->
			<!--- <cfdump var = "add"/><cfabort> 			 --->
	</cffunction>

	<cffunction name="edit" access="public" returntype="any">
		<cfargument name="rc" type="struct" required="yes" />
		<!--- <cfdump var="#rc.friend_id#"/><cfabort> --->
		<cfinvoke method="get_record" component="friends.model.dbmain" returnvariable="qgetRecord">		
			<cfinvokeargument name="friend_id" value="#rc.friend_id#">        			
	    </cfinvoke>
	    <cfset rc.friend_record = qgetRecord/>
	</cffunction>	

	<cffunction name="insert_friend" access="public" returntype="any">
		<cfargument name="rc" type="struct" required="yes" />
			<!--- <cfdump var = "#rc.name#"/><cfabort> 	 --->
			<cfif len(trim("#rc.name#")) EQ 0>
				<cfdump var = "name is empty"/><cfabort>
			</cfif>
			<cfinvoke method="add_record" component="friends.model.dbmain" returnvariable="bool_val">		
				<cfinvokeargument name="rc" value="#rc#">        			
	    	</cfinvoke> 

			<!--- <cfdump var = "#bool_val#"/><cfabort>	 --->
			<cfset fw.redirect('main.default')>

	</cffunction>

	<cffunction name="delete_friend" access="public" returntype="any">
		<cfargument name="rc" type="struct" required="yes"/>
			<!--- <cfdump var="inside delete friend"/><cfabort> --->
			<cfif len(trim("#rc.friend_id#")) EQ 0>
				<cfdump var="inside if"/><cfabort>
				<cfoutput>No value passed!</cfoutput>
			<cfelse>
				<!--- <cfdump var="#rc.friend_id#"/><cfabort> --->
				<!--- call model to delete the friend --->
				<cfinvoke method="delete_record" component="friends.model.dbmain" returnvariable="bool_val">		
					<cfinvokeargument name="friend_id" value="#rc.friend_id#">        			
	    		</cfinvoke> 

			<!--- <cfdump var = "#bool_val#"/><cfabort>	 --->
			</cfif>

			
			<cfset fw.redirect('main.default')>				
	</cffunction>	

	<cffunction name="edit_friend" access="public" returntype="any">
		<cfargument name="rc" type="struct" required="yes" />
			<!--- <cfdump var = "#rc.friend_id#"/><cfabort> 	 --->
			<cfif len(trim("#rc.name#")) EQ 0>
				<cfdump var = "name is empty"/><cfabort>
			</cfif>
			<cfinvoke method="edit_record" component="friends.model.dbmain" returnvariable="bool_val">		
				<cfinvokeargument name="rc" value="#rc#">        			
	    	</cfinvoke> 

			<!--- <cfdump var = "#bool_val#"/><cfabort>	 --->
			<cfset fw.redirect('main.default')>

	</cffunction>

</cfcomponent>
