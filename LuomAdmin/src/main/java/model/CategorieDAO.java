package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CategorieDAO {

public void save(Categorie obj) {
		
		try {
			
			if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE cat set titre=?, del=? WHERE id=?");
				preparedStatement.setString(1,obj.getTitre());
				preparedStatement.setBoolean(2,obj.isDel());
				preparedStatement.setInt(3,obj.getId());
	            preparedStatement.executeUpdate();
			}else {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO cat (titre,del) VALUES(?,?)");
				preparedStatement.setString(1,obj.getTitre());
				preparedStatement.setBoolean(2,obj.isDel());
	            preparedStatement.executeUpdate();
			}
			System.out.println("SAVED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("SAVED NO");
        }
	
}

public Categorie getById(int id) {
	
	try {
	
			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM cat WHERE id=?");
			preparedStatement.setInt(1,id);
			
			ResultSet resultat=preparedStatement.executeQuery();
			
			Categorie u = new Categorie();
			while(resultat.next()) {
				u.setId(resultat.getInt( "id" ));
				u.setTitre(resultat.getString( "titre" ));
				u.setDel(resultat.getBoolean( "del" ));
				
				
			}
			return u;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}
public ArrayList<Categorie> getAll() {
	ArrayList<Categorie> list = new ArrayList<Categorie>();
	
	try {
		
			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM cat WHERE id != 6");
			
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Categorie o = new Categorie();
				o.setId(resultat.getInt( "id" ));
				o.setTitre(resultat.getString( "titre" ));
				o.setDel(resultat.getBoolean( "del" ));
				
				list.add(o);
			}
			
			
			return list;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}

public void hideById(int id) {
    try {

        PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE cat set del=1 WHERE id=?");
        preparedStatement.setInt(1,id);
        preparedStatement.executeUpdate();

        System.out.println("HIDE OK");

    } catch (Exception ex) {
        ex.printStackTrace();
        System.out.println("DELETED NO");
    }
}

public void deleteById(int id) {
    try {

        PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM cat WHERE id=?");
        preparedStatement.setInt(1,id);
        preparedStatement.executeUpdate();

        System.out.println("delete OK");

    } catch (Exception ex) {
        ex.printStackTrace();
        System.out.println("DELETED NO");
    }
}
	
public void unhideById(int id) {
    try {

        PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE cat set del=0 WHERE id=?");
        preparedStatement.setInt(1,id);
        preparedStatement.executeUpdate();

        System.out.println("HIDE OK");

    } catch (Exception ex) {
        ex.printStackTrace();
        System.out.println("DELETED NO");
    }
}
}
