package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SouscategorieDAO {

	public void save(Souscategorie obj) {
		
		try {
			
			if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE s_cat set titre=?,id_cat=?,del=? WHERE id=?");
				preparedStatement.setString(1,obj.getTitre());
				preparedStatement.setInt(2,obj.getId_cat());
				preparedStatement.setBoolean(3,obj.isDel());
				preparedStatement.setInt(4,obj.getId());
				
	            preparedStatement.executeUpdate();
			}else {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO s_cat (titre,id_cat,del) VALUES(?,?,?)");
				preparedStatement.setString(1,obj.getTitre());
				preparedStatement.setInt(2,obj.getId_cat());
				preparedStatement.setBoolean(3,obj.isDel());
	            preparedStatement.executeUpdate();
			}
			System.out.println("SAVED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("SAVED NO");
        }
	
}
	
	public Souscategorie getById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM s_cat WHERE id=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				
				Souscategorie u = new Souscategorie();
				while(resultat.next()) {
					u.setId(resultat.getInt( "id" ));
					u.setTitre(resultat.getString( "titre" ));
					u.setId_cat(resultat.getInt( "id_cat" ));
				}
				return u;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	
	public ArrayList<Souscategorie> getAllById(int idcat) {
		ArrayList<Souscategorie> list = new ArrayList<Souscategorie>();
		CategorieDAO p = new CategorieDAO();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM s_cat WHERE id_cat=? AND del=0");
				preparedStatement.setInt(1,idcat);
				ResultSet resultat=preparedStatement.executeQuery();
	
				while(resultat.next()) {
					Souscategorie u = new Souscategorie ();
					u.setId(resultat.getInt( "id" ));
					u.setId_cat(resultat.getInt( "id_cat" ));
					u.setTitre(resultat.getString("titre"));
					list.add(u);
				}
				
				
				return list;
			
		} catch (Exception ex) {
	    	ex.printStackTrace();
	    	return null;
	    }
	}
	public ArrayList<Souscategorie> getAll() {
		CategorieDAO p = new CategorieDAO();
		ArrayList<Souscategorie> list = new ArrayList<Souscategorie>();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM s_cat WHERE id != 13");
				
				ResultSet resultat=preparedStatement.executeQuery();

				while(resultat.next()) {
					Souscategorie u = new Souscategorie();
					u.setId(resultat.getInt( "id" ));
					u.setId_cat(resultat.getInt( "id_cat" ));
					u.setTitre(resultat.getString("titre"));
					u.setDel(resultat.getBoolean("del"));
					
					list.add(u);
				}
				
				
				return list;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	
	public void hide(int id) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE s_cat set del=1 WHERE id=?");
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();

            System.out.println("HIDE OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }
	
	public void hideById(int idcat) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE s_cat set del=1 WHERE id_cat=?");
            preparedStatement.setInt(1,idcat);
            preparedStatement.executeUpdate();

            System.out.println("HIDE OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }
	
	public void HideById(int idcat) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE s_cat set id_cat=6 WHERE id_cat=?");
            preparedStatement.setInt(1,idcat);
            preparedStatement.executeUpdate();

            System.out.println("HIDE OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }
	
	public void deleteById(int idcat) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE s_cat set id_cat=6 WHERE id_cat=?");
            preparedStatement.setInt(1,idcat);
            preparedStatement.executeUpdate();

            System.out.println("HIDE OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }
	
	public void unhideById(int idcat) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE s_cat set del=0 WHERE id_cat=?");
            preparedStatement.setInt(1,idcat);
            preparedStatement.executeUpdate();

            System.out.println("HIDE OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }
	
	public void delete(int id) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM s_cat WHERE id=?");
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();

            System.out.println("delete OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }
	
	public void showById(int idcat) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE s_cat set del=0 WHERE id=?");
            preparedStatement.setInt(1,idcat);
            preparedStatement.executeUpdate();

            System.out.println("HIDE OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }
}
