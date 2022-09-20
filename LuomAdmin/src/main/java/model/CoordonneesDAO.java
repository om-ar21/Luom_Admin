package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Coordonnees;
import model.Database;

public class CoordonneesDAO {
	
	
	public void save(Coordonnees obj) {

		try {

			if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE coordonnees set nom=?,adresse=?,tel=?,email=?,logo=? WHERE id=?");
				preparedStatement.setString(1,obj.getNom());
				preparedStatement.setString(2,obj.getAdresse());
				preparedStatement.setString(3,obj.getTel());
				preparedStatement.setString(4,obj.getEmail());
				preparedStatement.setString(5,obj.getLogo());
				preparedStatement.setInt(6,obj.getId());
				preparedStatement.executeUpdate();
			}else {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO coordonnees (nom,adresse,tel,email,logo) VALUES(?,?,?,?,?)");
				preparedStatement.setString(1,obj.getNom());
				preparedStatement.setString(2,obj.getAdresse());
				preparedStatement.setString(3,obj.getTel());
				preparedStatement.setString(4,obj.getEmail());
				preparedStatement.setString(5,obj.getLogo());
				preparedStatement.executeUpdate();
			}
			System.out.println("SAVED OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("SAVED NO");
		}

	}
	
	public ArrayList<Coordonnees> getAll() {
		ArrayList<Coordonnees> list = new ArrayList<Coordonnees>();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM coordonnees WHERE del=0");
				
				ResultSet resultat=preparedStatement.executeQuery();

				while(resultat.next()) {
					Coordonnees o = new Coordonnees();
					o.setId(resultat.getInt( "id" ));
					o.setNom(resultat.getString( "nom" ));
					o.setAdresse(resultat.getString("adresse"));
					o.setTel(resultat.getString("tel"));
					o.setEmail(resultat.getString("email"));
					o.setLogo(resultat.getString("logo"));
					list.add(o);
				}
				
				
				return list;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	public Coordonnees getById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM coordonnees WHERE id=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				
				Coordonnees u = new Coordonnees();
				while(resultat.next()) {
					u.setId(resultat.getInt( "id" ));
					u.setNom(resultat.getString( "nom" ));
					u.setAdresse(resultat.getString("adresse"));
					u.setTel(resultat.getString("tel"));
					u.setEmail(resultat.getString("email"));
					u.setLogo(resultat.getString("logo"));
				}
				return u;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	

}
