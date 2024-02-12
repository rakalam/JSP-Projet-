package com.traitement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.objet.Trano;

public class CRUD_Classe {
		public static Connection creeConnection() {
			Connection con = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
			    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/appartement", "root", "");
			 
			}catch(Exception e) {
				System.out.println(e);
			}
			
			return con;
			
		}
		//lister personne
		public static List<Trano> lister_des_donnes() {
	       String rq1 = "SELECT * FROM appa";
	       List<Trano> listes = new ArrayList<Trano>();
	       Connection con = null;
			
			try {
				 con = creeConnection();
				 PreparedStatement ps = (PreparedStatement) con.prepareStatement(rq1);
				 ResultSet rs = ps.executeQuery();
	 			while(rs.next()) {
	 				Trano p = new Trano();
	 				p.setId(rs.getInt("id"));
	 				p.setDesign(rs.getString("design"));
	 				p.setLoyer(rs.getInt("loyer"));
	 				p.setObs(rs.getString("obs"));
	 	
	 				listes.add(p);
	 				
	 			}
	 			con.close();
	 
			} catch (Exception e) {
				System.out.println(e);
				
			}
			return listes;
			
		}
		 //ajouter trano
		public  static int ajouter_cette_trano(Trano p) {
			int succes = 0;
			try {
				Connection con = creeConnection();
				PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO appa (design, loyer, obs)VALUES (?, ?, ?)");
				ps.setString(1, p.getDesign());
				ps.setInt(2, p.getLoyer());
				ps.setString(3, p.getObs());
				succes = ps.executeUpdate();
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
			return succes;
			
		}
		//suprime trano
		public static int suprimer_tran (String id ) {
			
			int succes = 0;
			String rq = "DELETE FROM appa WHERE id = "+id;
			try {
				Connection con = creeConnection();
				PreparedStatement ps = (PreparedStatement)con.prepareStatement(rq);
				succes=ps.executeUpdate();
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
			
			return succes;
		}
		
		public static List<Trano> trouver_cette_trano(String id) {
		       String rq1 = "SELECT * FROM appa WHERE id="+id;
		       List<Trano> listes = new ArrayList<Trano>();
		       Connection con = null;
				
				try {
					 con = creeConnection();
					 PreparedStatement ps = (PreparedStatement) con.prepareStatement(rq1);
					 ResultSet rs = ps.executeQuery();
		 			while(rs.next()) {
		 				Trano p = new Trano();
		 				p.setId(rs.getInt("id"));
		 				p.setDesign(rs.getString("design"));
		 				p.setLoyer(rs.getInt("loyer"));
		 				p.setObs(rs.getString("obs"));
		 	
		 				listes.add(p);
		 				
		 			}
		 			con.close();
		          
				} catch (Exception e) {
					System.out.println(e);
					
				}
			
				return listes;
				
			}
		public static String trouver_design(String id) {
		       String rq1 = "SELECT design FROM appa WHERE id="+id;
		       String des = null;
		       Connection con = null;
		      
				
				try {
					 con = creeConnection();
					 PreparedStatement ps = (PreparedStatement) con.prepareStatement(rq1);
					 ResultSet rs = ps.executeQuery();
		 			while(rs.next()) {
		 				des = rs.getString("design");
		 				
		 			}
		 			con.close();
		          
				} catch (Exception e) {
					System.out.println(e);
					
				}
			    System.out.println(des);
				return des;
				
			}
		
		public static int modifier_cette_trano( Trano p ) {
			
			int succes = 0;
		
				try {
					Connection con = creeConnection();
					PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE appa SET design = '"+p.getDesign()+"', loyer = '"+p.getLoyer()+"', obs = '"+p.getObs()+"' WHERE id = "+p.getId());
					succes = ps.executeUpdate();

				} catch (Exception e) {
					System.out.println(e);
				}
			
			return succes;
			
		}
		
        public static int maximum() {
			
			int maxx = 0;
		
				try {
					Connection con = creeConnection();
					PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT MAX(loyer) AS loyer_max FROM appa");
					ResultSet rs = ps.executeQuery();
					while (rs.next()) {
						maxx = rs.getInt("loyer_max");
						
					}

				} catch (Exception e) {
					System.out.println(e);
				}
			
			return maxx;
			
		}
       public static int minimum() {
			
			int minn = 0;
		
				try {
					Connection con = creeConnection();
					PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT MIN(loyer) AS loyer_min FROM appa");
					ResultSet rs = ps.executeQuery();
					while (rs.next()) {
						minn = rs.getInt("loyer_min");
						
					}

				} catch (Exception e) {
					System.out.println(e);
				}
			
			return minn;
			
		}
       public static int total_employer() {
			
			int tot = 0;
		
				try {
					Connection con = creeConnection();
					PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT SUM(loyer) AS total FROM appa");
					ResultSet rs = ps.executeQuery();
					while (rs.next()) {
						tot = rs.getInt("total");
						
					} 

				} catch (Exception e) {
					System.out.println(e);
				}
			
			return tot;
			
		}
       public static void test() {
			
			int j=1; int i;
			for(i=1; i<=9; i++) {
				System.out.print(i+";");
				if(j==3) {
					System.out.println();
					j=0;
				}
				j++;
			}
			
			
		
		}
		
		
}
