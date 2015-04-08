	 <%
     int start = 1;
     int elementsLen = 6;
     int counter = 1;
     int noOfItemsInRow = 3; //set number of td you want in tr
     StringBuilder sb = new StringBuilder();
     noOfItemsInRow++;

     //start table
     out.println("<table>");
     while(start<=elementsLen){ 
        sb.append("<td>");
        sb.append("<img src = 'resources/images/book"+start+".jpg' border='3px' height='250' width='250'/>");
        sb.append("</td>");

        //check if noOfElemntsInRow elements is reached keep it in a new row
        if(++counter==noOfItemsInRow){
            out.println("<tr>");
            out.println(sb.toString());
            out.println("</tr>");
            sb.setLength(0);
            counter = 1;
        }
        start++;
     }
    //print remaining td elements in a new row
     if(sb.length()>1){
         out.println("<tr>");
         out.println(sb.toString());
         out.println("</tr>");
     }
    //close table
     out.println("</table>");
    %>
	
	<table alignment="center" width="100%" >
		<tr>
			<!-- <img alt="" src="" height="150" width="250"/> -->
		</tr>
		<tr>
			<td width="12%"> <font style="font-family: sans-serif;">
			Category </font></td>
			<td width="12%">
				<select name="cate" onchange="">
	    			<option style="font-family: sans-serif;" value="0">-Category-</option> 
	    								<% // for(int i=0;i<emptyp_cd.length;i++) %>
	    								<option style="font-family: sans-serif;" value="0" > Option 1</option>
	    								<option style="font-family: sans-serif;" value="1" > Option 2</option>
	    								<% // } %>
	    		</select>	
			</td>
			<td width="12%"> Type </td>
			<td width="12%"> 
				<select name="typ" onchange="">
	    			<option style="font-family: sans-serif;" value="0">-Type-</option> 
	    								<% // for(int i=0;i<emptyp_cd.length;i++) %>
	    			<option style="font-family: sans-serif;" value="0" > Type 1 </option>
	    			<option style="font-family: sans-serif;" value="2" > Type 2 </option>
	    								<% // } %>
	    		</select>
	    	</td>
	    	<td width="12%">Name</td>
			<td width="12%"> <input type="text" name="" value="">
			<td width="12%">Author</td>
			<td width="12%"> <input type="text" name="" value="">  </td>
		</tr>
		<tr>
			<td>	
				<input type="button" name="search" value="Search">
			</td>
			<td> 
				<input type="button" name="reset" value="Reset">
			</td>
		</tr>
		<tr>
			<img alt="search" src="resources/images/search.jpeg"/>
		</tr>
		
	</table>

