<form id="logform" method="post">
<div>Search Term: <input type="text" name="search"><div>
</select>
<div class="full-width"></br>
  <button type="submit">Search</button>
</div>
</form>
<?php
if(isset($_POST['search'])) {
  $searchterm=$_POST['search'];
  echo "<div>";
  echo "<h1>Searchterm:" . $searchterm . "</h1>";
  echo "</div>";

  echo "<pre>";
  passthru("cat /usr/share/wordlists/rockyou.txt | grep " . $searchterm);
  echo "</pre>";
}
?>
