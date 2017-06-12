<cfcomponent displayname="local" output="false"  >
	<cfif #cgi.server_name# eq 'apps.ess.unlv.edu'>
		<!--- <cfset DATASOURCE = "cf_cohen">
		<cfset DATASOURCE_AUTH = "cf_authorize">
		<cfset DATASOURCE_PS = "warehousep"> --->
	<cfelseif #cgi.server_name# eq 'dev.ess.unlv.edu'>
		<cfset DATASOURCE = "ronish">
		<!--- <cfset DATASOURCE_AUTH = "cf_authorize_cluster">
		<cfset DATASOURCE_PS = "warehousep"> --->
	<cfelse>
		<!--- <cfset DATASOURCE = "cohen_cf_cluster">
		<cfset DATASOURCE_AUTH = "cf_authorize_cluster">
		<cfset DATASOURCE_PS = "warehousep"> --->
	</cfif>

</cfcomponent>