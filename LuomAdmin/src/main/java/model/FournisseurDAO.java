package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class FournisseurDAO {
	public void save(Fournisseur obj) {

		try {

			if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE fournisseur set nom=?,del=? WHERE id=?");
				preparedStatement.setString(1,obj.getNom());
				preparedStatement.setBoolean(2,obj.isDel());
				preparedStatement.setInt(3,obj.getId());
				preparedStatement.executeUpdate();
			}else {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO fournisseur (nom,del) VALUES(?,?)");
				preparedStatement.setString(1,obj.getNom());
				preparedStatement.setBoolean(2,obj.isDel());
				preparedStatement.executeUpdate();
			}
			System.out.println("SAVED OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("SAVED NO");
		}

	}

	public Fournisseur getById(int id) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM fournisseur WHERE id=?");
			preparedStatement.setInt(1,id);

			ResultSet resultat=preparedStatement.executeQuery();

			resultat.next();
			Fournisseur u = new Fournisseur();

			u.setId(resultat.getInt( "id" ));
			u.setNom(resultat.getString( "nom" ));
			u.setDel(resultat.getBoolean( "del" ));

			return u;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	public ArrayList<Fournisseur> getAllAd() {
		ArrayList<Fournisseur> list = new ArrayList<Fournisseur>();
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM fournisseur");

			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Fournisseur o = new Fournisseur();
				o.setId(resultat.getInt( "id" ));
				o.setNom(resultat.getString( "nom" ));
				o.setDel(resultat.getBoolean( "del" ));
				list.add(o);
			}


			return list;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<Fournisseur> getAll() {
		ArrayList<Fournisseur> list = new ArrayList<Fournisseur>();
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM fournisseur WHERE del=0");

			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Fournisseur o = new Fournisseur();
				o.setId(resultat.getInt( "id" ));
				o.setNom(resultat.getString( "nom" ));
				o.setDel(resultat.getBoolean( "del" ));
				list.add(o);
			}


			return list;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	//si on avait limit� les produits du fournisseur il aurait fallut add and id_produit=? et passer l'id prod en param.
	
	public void hideById(int id) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE fournisseur set del=1 WHERE id=?");
			preparedStatement.setInt(1,id);
			preparedStatement.executeUpdate();

			System.out.println("HIDE OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("DELETED NO");
		}
	}
	
	public void DelById(int id) {
		try {
		            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE ees set id_fournisseur=1 WHERE id_fournisseur=?");
		            preparedStatement.setInt(1,id);
		           
		            preparedStatement.executeUpdate();
		            
		            PreparedStatement preparedStatement2  = Database.connexion.prepareStatement(" DELETE FROM fournisseur WHERE id=?");
		            preparedStatement2.setInt(1,id);
		           
		            preparedStatement2.executeUpdate();
		           
		            
		            System.out.println("TRUE DELETE OK");

			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("DELETED NO");
        }
	}

}
