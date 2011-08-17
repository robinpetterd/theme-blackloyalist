	<% if Menu(2) %>
		<% include SideBar %>
	<% end_if %>

    		<div id="Content">
			
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
    
		<h2>$Title</h2>
		$Content
		$Form
		$PageComment
        
        
    <% if Results %>
	    <ul id="SearchResults">
	      <% control Results %>
	        <li>
                <a href="source-image-display/display/$ID">
             <% control Image %>
              <% control SetWidth(40)  %>
               <img src="$URL" alt="Thumbnail of $Name" width="$Image.Width" height="$Image.Height" />
              <% end_control %>
             <% end_control %>
			</a>
           
           <h4> $mySource.Name</h4>
        
			  <% if Transcript %>
	          	 $Transcript.FirstParagraph(html)
			  <% end_if %>
               <p><a href="source-image-display/display/$ID" class="MoreInfo">Browse this page</a></p>
	        </li>
	      <% end_control %>
	    </ul>
	  <% else %>
	    <p>Sorry, your search query did not return any results.</p>
	  <% end_if %>




	  <% if Results.MoreThanOnePage %>
	    <div id="PageNumbers">
	      <% if Results.NotLastPage %>
	        <a class="next" href="$Results.NextLink" title="View the next page">Next</a>
	      <% end_if %>
	      <% if Results.NotFirstPage %>
	        <a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
	      <% end_if %>
	      <span>
	        <% control Results.SummaryPagination(5) %>
	          <% if CurrentBool %>
	            $PageNum
	          <% else %>
	            <a href="$Link" title="View page number $PageNum">$PageNum</a>
	          <% end_if %>
	        <% end_control %>
	      </span>
      
	    </div>
	 <% end_if %>

	
</div>
	
	
	