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
<form action="#buildURL('main.insert_friend')#" method="post" name="form1">
</cfoutput>
  <div class="form-group">
    <label for="Name">Name</label>
    <input type="text" class="form-control" name="name" style="width: 250px">
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="text" class="form-control" name="email" style="width: 250px">
  </div>
  <div class="form-group">
    <label for="age">Age</label>
    <input type="text" class="form-control" name="age" style="width: 250px">
  </div>
  <div class="form-group">
    <label for="favorite_color">Favorite Color</label>
    <input type="text" class="form-control" name="favorite_color" style="width: 250px">
  </div>
  <button type="submit" class="btn btn-default" style="width: 100px">Add</button>
</form>

