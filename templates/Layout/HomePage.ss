	

<div id="HomeContent">

<div id="Buttons">
<ul>
  <li><a href="browse/"><img src="themes/blackloyalist/images/browse-the-loyalists.png" width="381" height="103" alt="Browse the Black Loyalists" /></a></li>
    <li><a href="events/"><img src="themes/blackloyalist/images/browse-the-events.png" width="381" height="103" alt="Browse the Black Loyalists" /></a></li>

  <li><a href="sources/"><img src="themes/blackloyalist/images/browse-the-sources.png" width="381" height="103" alt="Browse the Sources" /></a></li>
    <li class="SearchForm">$PeopleSearchForm</li>

</ul>
</div>

    <div id="Intro">
    <img src="themes/blackloyalist/images/bon-cover-sample.png" width="675" height="158" alt="Book of Negreo's" /> 
    
    	$Content 
        
     </div>

<% control FeaturedPerson %>

<div id="FeaturedPerson">

<h2 class="FeaturedPerson">Featured Person</h2>
          <% if CustomImage %>
              <% control CustomImage %>
                      <% control SetWidth(245)  %>
                               <img src="$URL" alt="Icon from $Top.Name"  alt="$Top.Name" class="FeaturedImage"/>
                      <% end_control %>
                <% end_control %>
          <% end_if %>
  
                                
<div class="FeaturedDetails><% if CustomImage %> withimage <% end_if %>">
       <h2>$Name</h2>
    
        <p>$Remarks.FirstParagraph</p>
     
                  <p><a href="person/display/$ID" class="MoreInfo">More about $Name</a></p>

   
     
    </div>
</div>

<% end_control %>

<div id="OtherContent">
$ContentBelow
</div>

<!--
<div id="Eventtime">
<h3> Timeline of the major events</h3>
<% include  EventTimeline %>
 


<script type="text/javascript"> var myData = 

		<% include  EventJson %>

</script> 

<script type="text/javascript">
   
        window.database = Exhibit.Database.create();
        window.database.loadData(myData);
        window.exhibit = Exhibit.create();
        window.exhibit.configureFromDOM();
   
		
</script>   -->
                
</div>

		$Form
		$PageComments
	
</div>
	
	
	