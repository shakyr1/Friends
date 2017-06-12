<cfoutput>
<a href="#buildURL('main.add')#">Add New Friend</a><br/><br/>
</cfoutput>

<table id="tbl_view" class="table">
  <thead>
  <tr bgcolor='#CCCCCC'>
    <td>Friend Name</td>
    <td>Email Address</td>
    <td>Age</td>
    <td>Favorite Color</td>
    <td>Action</td>
  </tr>
  </thead>
  <tbody>
  <cfloop query="rc.friend_list">
    <tr>
      <td><cfoutput>#rc.friend_list.FRIENDNAME#</cfoutput></td>
      <td><cfoutput>#rc.friend_list.EMAILADDR#</cfoutput></td>
      <td><cfoutput>#rc.friend_list.AGE#</cfoutput></td>
      <td><cfoutput>#rc.friend_list.FAVORITECOLOR#</cfoutput></td>
      
      <td><cfoutput><a href="#buildURL('main.edit?friend_id=#rc.friend_list.FRIENDID#')#" class="btn btn-primary btn-xs">Update</a></cfoutput> | <cfoutput><a href="#buildURL('main.delete_friend?friend_id=#rc.friend_list.FRIENDID#')#" onclick="return confirm('Are you sure you want to delete');" class="btn btn-primary btn-xs" >Delete</a></cfoutput></td>
      
    </tr>
  </cfloop>
  </tbody>  
</table>

