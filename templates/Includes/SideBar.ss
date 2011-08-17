<div id="SideBar" >
  <div id="section-$Level(1).URLSegment" >
 		<h3>
			<% control Level(1) %>
				$Title
			<% end_control %>
  		</h3>
  		
  		<ul id="Menu2">
		  	<% control Menu(2) %>
  	    		<% if Children %>
			  	    <li class="$LinkingMode"><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode levela"><span>$MenuTitle.XML</span></a>
	  	    	<% else %>
		  			<li><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode levela"><span>$MenuTitle.XML</span></a>
				<% end_if %>	  
	  		
	  			<% if LinkOrSection = section %>
	  				<% if Children %>
						<ul class="sub">
							<li>
								<ul>
									<% control Children %>
										<li><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode levelb"><span>$MenuTitle.XML</span></a></li>
									<% end_control %>
								</ul>
							</li>
						</ul>
			 		 <% end_if %>
				<% end_if %> 
			</li> 
  			<% end_control %>
  		</ul>
    </div>
</div>
  