package com.traitement;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.objet.Trano;
import com.traitement.CRUD_Classe;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/back")

public class controller extends HttpServlet{
	 @Override
	protected void service(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		 String choix =(String) req.getParameter("choix");
		 String mes = null;
		 switch (choix) {
		 case "tratra": {
				String cle = (String)req.getParameter("cle");
				String message = null;
				System.out.println(cle);
				if(cle.equalsIgnoreCase("mot de passe")) {
					
					getServletContext().getRequestDispatcher("/page_acceuille.jsp").forward(req, rep);
				}else {
					message = "Clé administrateur incorrect!!";
					req.setAttribute("message", message);
					getServletContext().getRequestDispatcher("/page_ouverture.jsp").forward(req, rep);
				}
				break;
			} 
		 
		case "ajout_trano": {
		    Trano p = new Trano();
            String obs = null;
            int loy = Integer.parseInt(req.getParameter("loyer"));
            if(loy < 1000) { obs = "bas"; }
            else if(loy >= 1000 && loy <= 5000) { obs = "moyen"; }
            else { obs = "élévé" ;}
            p.setDesign(req.getParameter("design"));
            p.setLoyer(loy);
            p.setObs(obs);
            
            int s = CRUD_Classe.ajouter_cette_trano(p);
            if(s>0) {
				mes = "Ajout avec succes";
				req.setAttribute("mes", mes);
				getServletContext().getRequestDispatcher("/page_acceuille.jsp").forward(req, rep);
			}else {
				System.out.println("erreur d'ajout");
			}
			
			break;
		}
		case "affiche_sup": {
			String id =(String) req.getParameter("id_tr");
			req.setAttribute("id_trano", id);
			req.setAttribute("condition", "oui");
			String des = CRUD_Classe.trouver_design(id);
			req.setAttribute("des", des);
			getServletContext().getRequestDispatcher("/page_acceuille.jsp").forward(req, rep);
			
			break;
		}
		case "suprime_trano": {
			String id =(String) req.getParameter("id_s");
			int s = CRUD_Classe.suprimer_tran(id);
			if(s>0) {

				mes = "supression terminer";
				req.setAttribute("mes", mes);
				getServletContext().getRequestDispatcher("/page_acceuille.jsp").forward(req, rep);
			}else {
				System.out.println("erreur de supression");
			}
			break;
		}
		case "modifier_trano": {

			 Trano p = new Trano();
			 String obs = null;
        	 int loy = Integer.parseInt(req.getParameter("loyer"));
             if(loy < 1000) { obs = "bas"; }
             else if(loy >= 1000 && loy <= 5000) { obs = "moyen"; }
             else { obs = "élévé" ;}
             
             p.setId(Integer.parseInt(req.getParameter("id_tr")));
             p.setDesign(req.getParameter("design"));
             p.setLoyer(loy);
             p.setObs(obs);
             
             int s = CRUD_Classe.modifier_cette_trano(p);
		
             
             if(s>0) {
				mes = "modification terminer";
				req.setAttribute("mes", mes);
				getServletContext().getRequestDispatcher("/page_acceuille.jsp").forward(req, rep);
			}else {
				System.out.println("erreur de modification");
			}
			
			break;
			 
		}
		
	
		default:
			throw new IllegalArgumentException("Unexpected value: " + choix);
		}
	}
	
}
    

    

