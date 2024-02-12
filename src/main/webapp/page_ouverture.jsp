<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BIENVENUE DANS APPARTEMENT PROJET</title>
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
    }
    .bor {
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
       <div class="borykely3"></div> <div class="borykely2"></div> <div class="bor"></div> 
       <div class=" d-grid p-5 rounded-3" id="wrap" style="margin-left: 8%; margin-top: 10%; width: 40%; background-color:rgba(230, 186, 243, 0.229);">
         <div style="line-height: 3px;">
           <p style=" color: rgb(113, 14, 135); font-size: 3.5em;"><i style="font-weight: 800; color: rgb(235, 77, 15);" class=" fab fa-java me-3"></i> 
           <span>PROJET 5 :</span> <span style="font-family: impact;">APPARTEMENT </span></p>
           <p class="" style="color:rgb(227, 178, 19); font-size: 2em; font-weight: 600;margin-left: 13em"> CRUD - SIMPLE </p>
        </div>
        
        <div style="text-align: center; color: rgb(98, 96, 98); margin-top: 3em">
           <p style="font-size: 15px; font-family: sans-serif;">Developpement et conception d'une application permettant,<br>
           d'ajouter des données dans une table Appartement. <br>
           
           </p>
        </div>
        <div class="mt-3" style="margin-left: 5.2em">
          <div>
              <p class="text-danger mb-2" id="err"> </p>
          </div>
              <form action="" name="F">
              
		          <div class="d-flex align-items-center">
		           <input type="password" style="width: 55%; border: none; background-color:rgb(232, 195, 247); outline: none;" 
		           placeholder="Clé administrateur " name="cle" class="form-control p-3 me-3" required>
		           <span onclick="soumetresss();" class="btn btn text-white" style="background-color: rgb(235, 77, 15); padding: 0.9em;">
		           <i class="fab fa-firefox-browser me-2"></i> <b style="font-weight: 800;"> CONNECTER </b> </span> 
		          </div>
              </form>
              
          
     
        
        </div>
       
       
       </div>
       
       <div id="ip" class=" rounded p-3 col-2 mt-3" style="background-color:rgba(230, 186, 243, 0.229); 
                                              color: rgb(235, 77, 15);
                                              margin-left: 8%;">
           <p style="font-family: sans-serif; font-weight: 800;"> Groupe 3: L3 IG </p> 

           <i style="font-size: 25px; color: rgb(235, 77, 15);" class="fab fa-java me-3"></i>
            <i style="font-size: 25px; color: rgb(235, 77, 15);" class="fab fa-node-js me-3"></i>
             <i style="font-size: 25px; color: rgb(235, 77, 15);" class="fab fa-react me-3"></i>
              <i style="font-size: 25px; color: rgb(235, 77, 15);" class="fab fa-bootstrap"></i>
          
       </div>
        
<script src="folder_tols/scrollreveal.min.js"></script>
<script src="anim.js"></script>

<script type="text/javascript">

   

		ScrollReveal({
		    reset:true,
		    distance:'60px',
		    duration:2000,
		    deley:400
		});
		
		
		ScrollReveal().reveal('#wrap , .bor, .borykely2, .borykely3, #wrap div, #ip, #ip i,   form input, form button', {deley: 700,origin: 'bottom', interval : 200});

		
		function soumetresss() {
		  var cle = document.F.cle.value;
		
		   if(cle == "mot de passe") {
			   window.location.href = "page_acceuille.jsp";
			   
		   }else if(cle == ""){
			   document.getElementById("err").innerHTML = "Veuillez remplir le champ !!";
		   }else{
			   document.getElementById("err").innerHTML = "Clé Administrateur incorect!!";
		   }
		
		}
		 
		
</script>
         
        
</body>
</html>