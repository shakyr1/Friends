<cfoutput>
<a href="#buildURL('main')#">Home</a>
</cfoutput>
    <br/><br/>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script>
  $(document).ready(function(){
  $("form").submit(function(){
     alert("Submitted");
  });
});
</script>

<cfoutput>
<form action="#buildURL('main.edit_friend?friend_id=#rc.friend_record.FRIENDID#')#" method="post" name="form_edit">
</cfoutput>
  <div class="form-group">
    <label for="Name">Name</label>
    <cfoutput><input type="text" class="form-control" name="name" style="width: 250px" value="#rc.friend_record.FRIENDNAME#"></cfoutput>
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <cfoutput><input type="text" class="form-control" name="email" style="width: 250px" value="#rc.friend_record.EMAILADDR#"></cfoutput>
  </div>
  <div class="form-group">
    <label for="age">Age</label>
    <cfoutput><input type="text" class="form-control" name="age" style="width: 250px" value="#rc.friend_record.AGE#"></cfoutput>
  </div>
  <div class="form-group">
    <label for="favorite_color">Favorite Color</label>
    <cfoutput><input type="text" class="form-control" name="favorite_color" style="width: 250px" value="#rc.friend_record.FAVORITECOLOR#"></cfoutput>
  </div>
  <button type="submit" class="btn btn-default" style="width: 100px">Edit</button>
</form>


<!--- <cfoutput>
<form action="#buildURL('main.edit_friend?friend_id=#rc.friend_record.FRIENDID#')#" method="post" name="form_edit">
</cfoutput>
    <table width="350px" border="0">
        <tr> 
            <td>Name</td>
            <td><cfoutput><input type="text" name="name" value="#rc.friend_record.FRIENDNAME#"></cfoutput></td>
        </tr>
        <tr> 
            <td>Email</td>
            <td><cfoutput><input type="text" name="email" value="#rc.friend_record.EMAILADDR#"></cfoutput></td>
        </tr>
        <tr> 
            <td>Age</td>
            <td><cfoutput><input type="text" name="age" value="#rc.friend_record.AGE#"></cfoutput></td>
        </tr>
        <tr> 
            <td>Favorite Color</td>
            <td><cfoutput><input type="text" name="favorite_color" value="#rc.friend_record.FAVORITECOLOR#"></cfoutput></td>
        </tr>
        <tr> 
            <td></td>
            <td><input type="submit" name="Submit" value="Edit"></td>
        </tr>
    </table>
</form> --->