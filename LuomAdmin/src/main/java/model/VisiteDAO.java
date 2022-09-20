package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class VisiteDAO {
	public void save(Visite obj) {
		
		
		try {
			
		
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO visite (id_produit,id_user,datev) VALUES(?,?,?)");
				preparedStatement.setInt(1, obj.getId_produit());
			    preparedStatement.setInt(2, obj.getId_user());
	            preparedStatement.setDate(3, obj.getDatev());
	            preparedStatement.executeUpdate();
				
	            
			
			System.out.println("SAVED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("SAVED NO");
        }
	
}
	
	
	public Visite getById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM visite WHERE id=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				
				Visite u = new Visite();
				while(resultat.next()) {
					u.setId(resultat.getInt( "id" ));
					u.setId_produit(resultat.getInt( "id_produit" ));
					u.setId_user(resultat.getInt( "id_user" ));
					u.setDatev(resultat.getDate( "datev" ));
					
					
				}
				return u;
			
		} catch (Exception ex) {
	    	ex.printStackTrace();
	    	return null;
	    }
	}
	
	public ArrayList<Visite> getAll() {
		ArrayList<Visite> list = new ArrayList<Visite>();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM visite ORDER BY id DESC");
				
				ResultSet resultat=preparedStatement.executeQuery();

				while(resultat.next()) {
					Visite u = new Visite();
					u.setId(resultat.getInt( "id" ));
					u.setId_produit(resultat.getInt( "id_produit" ));
					u.setId_user(resultat.getInt( "id_user" ));
					u.setDatev(resultat.getDate("datev"));
					
					list.add(u);
				}
				
				
				return list;
			
		} catch (Exception ex) {
	    	ex.printStackTrace();
	    	return null;
	    }
	}
	
	public ArrayList<Visite> getAllByUserId(int userid) {
		ArrayList<Visite> list = new ArrayList<Visite>();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM visite WHERE id_user=? ORDER BY id DESC");
				preparedStatement.setInt(1,userid);
				ResultSet resultat=preparedStatement.executeQuery();

				while(resultat.next()) {
					Visite u = new Visite();
					u.setId(resultat.getInt( "id" ));
					u.setId_produit(resultat.getInt( "id_produit" ));
					u.setId_user(resultat.getInt( "id_user" ));
					u.setDatev(resultat.getDate("datev"));
					
					list.add(u);
				}
				
				
				return list;
			
		} catch (Exception ex) {
	    	ex.printStackTrace();
	    	return null;
	    }
	}
	
	public ArrayList<Visite> getAllByProductId(int productid) {
		ArrayList<Visite> list = new ArrayList<Visite>();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM visite WHERE id_produit=?");
				preparedStatement.setInt(1,productid);
				ResultSet resultat=preparedStatement.executeQuery();

				while(resultat.next()) {
					Visite u = new Visite();
					u.setId(resultat.getInt( "id" ));
					u.setId_produit(resultat.getInt( "id_produit" ));
					u.setId_user(resultat.getInt( "id_user" ));
					u.setDatev(resultat.getDate("datev"));
					
					list.add(u);
				}
				
				
				return list;
			
		} catch (Exception ex) {
	    	ex.printStackTrace();
	    	return null;
	    }
	}
	
	public int CountAllByProductId(int productid) {
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT COUNT(*)as total FROM visite WHERE id_produit=?");
				preparedStatement.setInt(1,productid);
				ResultSet resultat=preparedStatement.executeQuery();

				resultat.next();

                int total = resultat.getInt( "total" );
                return total;
				
			
		} catch (Exception ex) {
	    	ex.printStackTrace();
	    	return 0;
	    }
	}
	
	public int getCountProduitsById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.
				prepareStatement("SELECT COUNT(*) as nbr FROM visite WHERE id_produit=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				resultat.next();

				int nbr = resultat.getInt( "nbr" );
				return nbr;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return 0;
        }
	}
}
