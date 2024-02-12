
<%@ page import=" com.objet.Trano, com.traitement.CRUD_Classe,java.sql.Connection, java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet,java.util.ArrayList, java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="folder_tols/bootstrap.min.css">
 <link rel="stylesheet" href="folder_tols/fontawesome-free-6.4.2-web/css/all.css">
<title>ACCEUILLE APARTEMENT</title>
</head>
<style type="text/css">
    .bory {
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
     html{
    user-select:none;
    overflow: hidden;
    
    }
    table{
	    text-align: center;
	    padding: 5px;
	    color: rgb(98, 96, 98);
	    font-weight: 800;
	    
    }
    thead{
    border-bottom: 4px solid rgb(227, 178, 19);
    color: white;
    text-align: center;
    background-color: rgb(113, 14, 135);
    border-radius :2em 2em 0 0;
    
    height: 4em
    }
    thead th{
    padding: 5px;
    width: 20rem;
    
    }
    tr{
    border-bottom: 1px solid rgb(227, 178, 19);
    padding: 5px
    }
    td{
    padding: 5px;
    }
      .borykely {
	  position: absolute;
	  content: '';
	  height: 8rem;
	  width: 8rem;
	  border-radius: 50%;
	  left:71%;
	  top:69%;
	  background: linear-gradient(-105deg, #7f00ff, pink);
	  z-index: -2;
    }
    .borykely2 {
	  position: absolute;
	  content: '';
	  height: 4rem;
	  width: 4rem;
	  border-radius: 50%;
	  left:67%;
	  top:31%;
	  background: linear-gradient(-165deg, #7f00ff, pink);
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
    .hist_cont.active{
       top: 50%;
       transition: 2s;
    }
  
</style>
<body>
   

<div class="bory"></div>
<div class="borykely"></div>
<div class="borykely2"></div>
<div class="borykely3"></div>
<div  class="p-3" style="background-color: #8000ff72;">
         <i style="font-size: 25px; color: white;" class="fab fa-java me-3"></i>
          <span style="position: relative; top: -1em" class="text-white"> <b>APPARTEMENT </b> Project </span>
          <div class="float-end ">
          <button id="rc" class="btn btn-warning text-white" style="border: none;"> <i class="fa fa-bars me-2"></i> <b>RACCOURCIE</b></button>
          <button  onclick="document.getElementById('decc').style.display = 'block'" class="btn btn-outline-warning text-white" style="border: none;"> <i class="fa fa-sign-out me-2"></i> <b>DECONNEXION</b></button>
          
          </div>
          
</div>
   <%    
   
		
		   String identifiant = (String) request.getAttribute("id_trano"); 
           String condition = (String) request.getAttribute("condition"); 
           String des = (String) request.getAttribute("des"); 

		 if( condition == "oui") {%>

          <div class="er" style=" position: fixed; /* Stay in place */
													  z-index: 2; /* Sit on top */
													  left: 0;
													  top: 0;
													
													  width: 100%; /* Full width */
													  height: 100%; /* Full height */
													  overflow: auto; /* Enable scroll if needed */
													  background-color: rgb(0,0,0); /* Fallback color */
													  background-color: rgba(0, 0, 0, 0.719); /* Black w/ opacity */
													  padding-top: 60px;">
										 
										     <div  style="background: rgba(230, 186, 243, 0.229);
														  width: 25%;
														  position:absolute;
														  left:50%; top:50%;
														  transform:translate(-50%, -50%);
														  padding: 1em;
														  border-radius: 10px;">
														  
													<div>
														    <div><i style="font-size: 25px; color: white;" class="fab fa-java me-3 mb-3"></i>
								                            <span style="position: relative; top: -1em; color: white;"> <b>MESSAGE </b> Project </span></div>
								                            <div style="background-color: white; height: 1px"></div>
								                          
								                                   
														<p class="text-white mt-3 text-center"> <i>Voulez-vous vraiment suprimer l'appartement <b style="color: rgb(227, 178, 19); font-weight: 800"><%=des%></b> ?</i> </p>
														  
														<form action="back?choix=suprime_trano" class="float-end" method="post">
														  <input type="hidden" value="<%=identifiant %>" name="id_s">
														  <button type="submit" class="btn btn text-white" style="background-color: rgb(113, 14, 135);font-weight: 800">  OK</button> 
														  <a href="page_acceuille.jsp" id="an" class="btn btn text-white" style="background-color:  rgb(235, 77, 15);font-weight: 800"> <i class="fa fa-close me-2"></i> Annuler</a>
														</form>
										              </div>
														  
										     
										 </div>
				</div>

     <% } %>


		 <div class="d-drid col-12 p-3  me-3">
		     <div class=" p-4 col-9 rounded" style="background-color: rgba(230, 186, 243, 0.229); margin-left: 12%">
				    <h1 class="mb-2" style="color:  rgb(227, 178, 19);"> <b style="color: rgb(250, 247, 246);">LISTES D</b>ES APPARTEMENTS</h1>
				    <div class=" d-flex aling-items-center">
				    
					     <a href="page_ajout.jsp" class="btn btn-sm text-white text-end mb-2 me-3" style="background-color: rgb(235, 77, 15); ">
			                    <i class="fa fa-add me-2"></i> <b style="font-weight: 800;"> AJOUTER </b>
			             </a> 
			             <a href="#" id="bt_h"  class="btn btn-sm text-white text-end mb-2" style="background-color: rgb(235, 77, 15); ">
			                    <i class="fa fa-dashboard me-2"></i> <b style="font-weight: 800;"> HISTOGRAMME </b>
			             </a> 
			             
			             
			         
			           
			                 <input type="search" id="search-input" style="width: 35%; border: none; background-color:rgb(232, 195, 247); outline: none;margin-left: 39%" 
		                    placeholder="Clé administrateur ..." name="cle" class="form-control me-1 mb-2 pl-5" required>
		                   <button class="btn btn text-white mb-2" style="background-color: rgb(235, 77, 15);"> <i class="fa fa-search"></i> </button>
			       

			            
		            
				    </div>
		          
		            
		             <div id="ms" style="color:rgb(227, 178, 19); margin-left: 40%">
			                  <h5> ${mes} </h5>
			            </div>
		           
		             <table>
		                <thead>
		                   <th>ID</th>
		                   <th>DESIGN</th>
		                   <th>LOYER</th>
		                   <th>OBSERVATION</th>
		                   <th>ACTION</th>
		                </thead>
		                <%
		                   List<Trano> l = new ArrayList<Trano>();
		                   l = CRUD_Classe.lister_des_donnes();
		                   int i= 1;
		                   for(Trano tn : l){
		                	  request.setAttribute("id", tn.getId());
		                	  request.setAttribute("design", tn.getDesign());
		                	  request.setAttribute("loyer", tn.getLoyer());
		                	  request.setAttribute("obs", tn.getObs());
		                   
		                %>
		                <tr class="cherchable-row'">
		                   <td><%=i %></td>
		                   <td>${design }</td>
		                   <td>${loyer } Ariary</td>
		                   <td style="color:rgb(235, 77, 15);">${obs }</td>
		                   <td>
		                       <a href="page_modifier.jsp?id_tr=${id}" class="btn btn-outline-warning" title="modifier"> <i class="fa fa-pen"></i> </a>
		                       <a href="back?choix=affiche_sup&id_tr=${id}" class="btn btn-outline-danger" title="suprimer" id="sup"> <i class="fa fa-trash"></i> </a>
		                       		
		                       
		                   </td>
		                </tr>
		                <% 
		                 i++;
		                } %>
		                
		             </table>
		     </div>
		     
		     <div class="d-flex  mt-3" style="margin-left: 12%">
		     
		     <%
		        int max = CRUD_Classe.maximum(); int min = CRUD_Classe.minimum();int total = CRUD_Classe.total_employer();
		        request.setAttribute("max", max); request.setAttribute("min", min);request.setAttribute("total", total);
		     
		     %>
		       <div class=" p-2 shadow-lg rounded-2 text-white me-3" style="  background: linear-gradient(20deg, #7f00ff, pink); border-bottom: 5px solid  rgb(235, 77, 15);">
		           <p class= "" style="font-weight: 800; font-size: 19px">Loyer max :${max} Ariary</p>
		       </div>
		        <div class=" p-2 shadow-lg rounded-2 text-white me-3" style="  background: linear-gradient(20deg, #7f00ff, pink); border-bottom: 5px solid  rgb(235, 77, 15);">
		           <p class= "" style="font-weight: 800; font-size: 19px">Loyer min : ${min} Ariary</p>
		       </div>
		       <div class=" p-2 shadow-lg rounded-2 text-white" style="  background: linear-gradient(5deg, #7f00ff, pink);  border-bottom: 5px solid  rgb(235, 77, 15);">
		           <p class= "" style="font-weight: 800; font-size: 19px"> TOTAL LOYER : ${total} Ariary</p>
		       </div>
		     
		     </div>
		 
		 
		 
		 </div>
		
   <div id="decc" style=" position: fixed; /* Stay in place */
													  z-index: 2; /* Sit on top */
													  left: 0;
													  top: 0;
													  display: none;
													  width: 100%; /* Full width */
													  height: 100%; /* Full height */
													  overflow: auto; /* Enable scroll if needed */
													  background-color: rgb(0,0,0); /* Fallback color */
													  background-color: rgba(0, 0, 0, 0.719); /* Black w/ opacity */
													  padding-top: 60px;">
										 
										     <div  style="background: rgba(230, 186, 243, 0.229);
														  width: 25%;
														  position:absolute;
														  left:50%; top:50%;
														  transform:translate(-50%, -50%);
														  padding: 1em;
														  border-radius: 10px;">
														  
													<div>
														    <div><i style="font-size: 25px; color: white;" class="fab fa-java me-3 mb-3"></i>
								                            <span style="position: relative; top: -1em; color: white;"> <b>MESSAGE </b> Project </span></div>
								                            <div style="background-color: white; height: 1px"></div>
								                          
								                                   
														<p class="text-white mt-3 text-center"> <i>Voulez-vous vraiment deconnecter ?</i> </p>
														  
													    <div class="float-end">
													     <a href="page_ouverture.jsp" id="an" class="btn btn text-white" style="background-color: rgb(113, 14, 135);font-weight: 800">  OK</a>
														  <button onclick="document.getElementById('decc').style.display = 'none'" class="btn btn text-white" style="background-color:  rgb(235, 77, 15);font-weight: 800"><i class="fa fa-close me-2"></i>  Annuler</button> 
														
													    </div>
														 
										              </div>
														  
										     
										 </div>
				</div>

  
<div id="hist" style=" position: fixed; /* Stay in place */
													  z-index: 2; /* Sit on top */
													  left: 0;
													  top: 0;
													  display: none;
													  width: 100%; /* Full width */
													  height: 100%; /* Full height */
													  overflow: auto; /* Enable scroll if needed */
													  background-color: rgb(0,0,0); /* Fallback color */
													  background-color: rgba(0, 0, 0, 0.719); /* Black w/ opacity */
													  padding-top: 60px;">
										 
										     <div class="hist_cont"  style="background: white;
														  width: 50%;
														  position:absolute;
														  left:50%; top:-50%;
														  transform:translate(-50%, -50%);
														  padding: 1em;
														  
														  border-radius: 10px;">
														  
														  <a href="page_acceuille.jsp"  class="btn btn-close float-end"></a>
														  
											      <div class="place" >
												    <canvas id="histogramChart"></canvas>
												  </div>
														  
										     
										 </div>
				</div>

  <div class="p-3 rounded text-center" id="div_racc" 
   style="position: absolute; top :9.5%; left: 105%; background: linear-gradient(225deg, #7f00ff, pink); width: 20%">
     <span  id="cl" class="btn btn-close float-end text-white"></span>
       <p class="h5 text-white" style="font-weight: 800"> LISTE DES RACCOURCIES</p>
       <div class="d-flex align-items-center mb-2 text-white">
          <button class="btn btn-warning me-1 text-white">Ctr</button>
        
          <button class="btn btn-danger me-3 text-white">A</button>
          <label> <b>page ajout </b></label>
       </div>
    
       <div class="d-flex align-items-center mb-2 text-white">
          <button class="btn btn-warning me-1 text-white">Ctr</button>
          <button class="btn btn-danger me-1 text-white">Alt</button>
          <button class="btn btn-danger me-3 text-white">A</button>
          <label> <b>soumetre ajout </b></label>
       </div>
       <div class="d-flex align-items-center mb-2 text-white">
          <button class="btn btn-warning me-1 text-white">Ctr</button>
          <button class="btn btn-danger me-1 text-white">Alt</button>
          <button class="btn btn-danger me-3 text-white">M</button>
          <label> <b>soumetre modifier </b></label>
       </div>
       
       
  </div>

<script src="folder_tols/jquery-3.2.0.min.js"></script>
<script src="folder_tols/scrollreveal.min.js"></script>
<script src="folder_tols/Chart.min.js"></script>
<script src="anim.js"></script>
<script type="text/javascript">
ScrollReveal({
    reset:true,
    distance:'60px',
    duration:2000,
    deley:400
});



ScrollReveal().reveal('.borykely2, .borykely3', {deley: 100,origin: 'top', interval : 200});
ScrollReveal().reveal('.bory, .borykely', {deley: 700,origin: 'bottom', interval : 900});

 var data = {
	      labels: ['Loyer Maximal', 'Loyer Minimal'],
	      datasets: [{
	        label: 'histogramme',
	        backgroundColor: ['rgb(113, 14, 135)','rgb(235, 77, 15)'],
	     
	      
	        data: [${max} , ${min} , 2] // Remplacez ces valeurs par vos données
	      }]
	    };

	    // Options de l'histogramme
	    var options = {
	      scales: {
	        y: {
	          beginAtZero: true
	        }
	      }
	    };

	    // Création de l'histogramme
	    var ctx = document.getElementById('histogramChart').getContext('2d');
	    var histogramChart = new Chart(ctx, {
	      type: 'bar',
	      data: data,
	      options: options
	    });
	   
	    $(document).ready(function(){
            $('#bt_h').on('click', function(){
            	$('#hist').css('display', 'block');
            	$('.hist_cont').animate({top:'70%'}, 400);
            	$('.hist_cont').animate({top:'30%'}, 400);
            	$('.hist_cont').animate({top:'60%'}, 400);
            	$('.hist_cont').animate({top:'40%'}, 400);
            	$('.hist_cont').animate({top:'55%'}, 400);
            	$('.hist_cont').animate({top:'45%'}, 300);
            	$('.hist_cont').animate({top:'52%'}, 300);
            	$('.hist_cont').animate({top:'47%'}, 300);
            	$('.hist_cont').animate({top:'51%'}, 300);
            	$('.hist_cont').animate({top:'49%'}, 200);
            	$('.hist_cont').animate({top:'50%'}, 200);
          
            	
            
 
            	
            });
            $('#rc').click(function(){
            	$(this).slideUp();
            	$('#div_racc').animate({left:'68%'}, 500);
            	$('#div_racc').animate({left:'82%'}, 400);
            	$('#div_racc').animate({left:'75%'}, 400);
            	$('#div_racc').animate({left:'80%'}, 400);
            	$('#div_racc').animate({left:'77%'}, 400);
            	$('#div_racc').animate({left:'78%'}, 400);
            });
            
            $('#cl').click(function(){
            	$('#rc').slideDown();
            	$('#div_racc').animate({left:'105%'}, 500);
            	
            });
            
            $('#ms').fadeOut(3000);

        });
	    
	    $(document).on('keydown', function(e) {
	          
	        if (e.ctrlKey && e.key === 'a') {
               window.location.href = 'page_ajout.jsp';
            }
	     });
           
           
        
</script>
</body>
</html>