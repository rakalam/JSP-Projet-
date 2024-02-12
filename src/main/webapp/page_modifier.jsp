<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import=" com.objet.Trano, com.traitement.CRUD_Classe,java.sql.Connection, java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet,java.util.ArrayList, java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MODIFIER APPARTEMENT</title>
 <link rel="stylesheet" href="folder_tols/bootstrap.min.css">
 <link rel="stylesheet" href="folder_tols/fontawesome-free-6.4.2-web/css/all.css">
</head>
  <style type="text/css">
    body{
	 background:url("photos_2.jpg");
	 background-size: cover;
    }
    html{
    font-size: 90%;user-select:none;
    overflow: hidden;
    
    }
    .borykely {
	  position: absolute;
	  content: '';
	  height: 500px;
	  width: 500px;
	  border-radius: 50%;
	  left:-12%;
	  top:-40%;
	  background: linear-gradient(105deg, #7f00ff, pink);
	  z-index: -2;
    }
      .borykely3 {
	  position: absolute;
	  content: '';
	  height: 10rem;
	  width: 10rem;
	  border-radius: 50%;
	  left:-3%;
	  top:69%;
	  background: linear-gradient(10deg, #7f00ff, pink);
	  z-index: -2;
    }
     .borykely2{
	  position: absolute;
	  content: '';
	  height: 4rem;
	  width: 4rem;
	  border-radius: 50%;
	  left:70%;
	  top:6%;
	  background: linear-gradient(10deg, #7f00ff, pink);
	  z-index: -2;
    }
 </style>
<body>
       <div class="borykely3"></div> <div class="borykely2"></div> <div class="borykely"></div> 
       
       <div class="col-4 p-5 text-center rounded" style="margin-left: 9.5em;margin-top: 7em; background-color:rgba(230, 186, 243, 0.229);">
       <a href="page_acceuille.jsp" class="btn btn-close mb-2" style="position: relative;top: -2em; left: 18em">
       </a>
       
         <div style="line-height: 3px;">
	           <p style=" color: rgb(113, 14, 135); font-size: 3em;"><i style="font-weight: 800; color: rgb(235, 77, 15);" class=" fab fa-java me-3"></i> 
	           <span>MODIFIER </span> <span style="font-family: impact;">APPARTEMENT </span></p>
	           <p class="" style="color:rgb(227, 178, 19); font-size: 2em; font-weight: 600;margin-left: 8.5em"> CRUD - MODIFIER </p>
        </div><br><br>
          <form action="back?choix=modifier_trano" method="post" id="mod">
                     <%
	                     String id =(String) request.getParameter("id_tr");
	        			 List<Trano> liste_tr = new ArrayList<Trano>();
	        			 liste_tr = CRUD_Classe.trouver_cette_trano(id);
		                   for(Trano tn : liste_tr){%>
		                	  
		            <input  type="hidden" style="border:none; border-bottom: 2px solid  rgb(235, 77, 15);background-color:rgb(232, 195, 247); outline: none; font-size: 15px" 
		          name="id_tr" value="<%=tn.getId() %>" class="form-control p-3 mb-3" required>
		           <input  type="text" style="border:none; border-bottom: 2px solid  rgb(235, 77, 15);background-color:rgb(232, 195, 247); outline: none; font-size: 15px" 
		          name="design" value="<%=tn.getDesign() %>" class="form-control p-3 mb-3" required>
		           
		              <input type="number"  style="border: none; background-color:rgb(232, 195, 247); outline: none;border-bottom: 2px solid  rgb(235, 77, 15);font-size: 15px" 
		              name="loyer" value="<%=tn.getLoyer() %>" class="form-control p-3 mb-3" required>
		              
                    <% } %>
		           <button class="btn btn text-white mt-3 p-3" style="background-color: rgb(235, 77, 15); border-bottom: 2px solid  rgb(113, 14, 135);">
		               <i class="fa fa-download me-2"></i> 
		           <b style="font-weight: 800;"> MODIFIER </b> </button> 
		        
          
          </form>
        
        </div>
        
         <div class=" rounded p-3 col-2 mt-3" style="background-color:rgba(230, 186, 243, 0.229); 
                                              color: rgb(235, 77, 15);
                                              margin-left: 9.5em;">
           <p style="font-family: sans-serif; font-weight: 800;"> Groupe 3: L3 IG </p> 

           <i style="font-size: 25px; color: rgb(235, 77, 15);" class="fab fa-java me-3"></i>
            <i style="font-size: 25px; color: rgb(235, 77, 15);" class="fab fa-node-js me-3"></i>
             <i style="font-size: 25px; color: rgb(235, 77, 15);" class="fab fa-react me-3"></i>
              <i style="font-size: 25px; color: rgb(235, 77, 15);" class="fab fa-bootstrap"></i>
          
       </div>
       
         
<script src="folder_tols/scrollreveal.min.js"></script>
<script src="folder_tols/jquery-3.2.0.min.js"></script>

<script type="text/javascript">
		ScrollReveal({
		    reset:true,
		    distance:'60px',
		    duration:2000,
		    deley:400
		});

		ScrollReveal().reveal('.borykely2, .borykely3', {deley: 100,origin: 'top', interval : 200});
		ScrollReveal().reveal('.bory, .borykely', {deley: 700,origin: 'bottom', interval : 900});
		
		$(document).on('keydown', function(e) {
	          
	        if (e.ctrlKey && e.altKey && e.key === 'm') {
               $('#mod').submit();
            }
	     });
		
</script>
</body>
</html>