package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ContactDAO {
	public void save(Contact obj) {

		try {

			if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE contact set id_user=?,sujet=?,msg=?,email=? WHERE id=?");
				preparedStatement.setInt(1,obj.getId_user());
				preparedStatement.setString(2,obj.getSujet());
				preparedStatement.setString(3,obj.getMsg());
				preparedStatement.setString(4,obj.getEmail());
				preparedStatement.setInt(5,obj.getId());
				preparedStatement.executeUpdate();
			}else {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO contact (id_user,sujet,msg,email) VALUES(?,?,?,?)");
				preparedStatement.setInt(1,obj.getId_user());
				preparedStatement.setString(2,obj.getSujet());
				preparedStatement.setString(3,obj.getMsg());
				preparedStatement.setString(4,obj.getEmail());
				preparedStatement.executeUpdate();
			}
			System.out.println("SAVED OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("SAVED NO");
		}

	}

	public Contact getById(int id) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM contact WHERE id=?");
			preparedStatement.setInt(1,id);

			ResultSet resultat=preparedStatement.executeQuery();

			resultat.next();
			Contact u = new Contact();

			u.setId(resultat.getInt( "id" ));
			u.setId_user(resultat.getInt( "id_user" ));
			u.setSujet(resultat.getString( "sujet" ));
			u.setMsg(resultat.getString( "msg" ));
			u.setEmail(resultat.getString( "email" ));
			u.setEtat(resultat.getBoolean( "etat" ));
			u.setDel(resultat.getBoolean( "del" ));

			return u;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}


	public ArrayList<Contact> getAllHidden() {
		ArrayList<Contact> list = new ArrayList<Contact>();
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM contact WHERE del=1 ORDER BY id DESC");

			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Contact o = new Contact();
				o.setId(resultat.getInt( "id" ));
				o.setId_user(resultat.getInt( "id_user" ));
				o.setSujet(resultat.getString( "sujet" ));
				o.setMsg(resultat.getString( "msg" ));
				o.setEmail(resultat.getString( "email" ));
				o.setEtat(resultat.getBoolean( "etat" ));
				o.setDel(resultat.getBoolean( "del" ));
				list.add(o);
			}


			return list;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<Contact> getAll() {
		ArrayList<Contact> list = new ArrayList<Contact>();
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM contact WHERE del=0 ORDER BY id DESC");

			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Contact o = new Contact();
				o.setId(resultat.getInt( "id" ));
				o.setId_user(resultat.getInt( "id_user" ));
				o.setSujet(resultat.getString( "sujet" ));
				o.setMsg(resultat.getString( "msg" ));
				o.setEmail(resultat.getString( "email" ));
				o.setEtat(resultat.getBoolean( "etat" ));
				o.setDel(resultat.getBoolean( "del" ));
				list.add(o);
			}


			return list;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<Contact> getAllAd() {
		ArrayList<Contact> list = new ArrayList<Contact>();
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM contact");

			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Contact o = new Contact();
				o.setId(resultat.getInt( "id" ));
				o.setId_user(resultat.getInt( "id_user" ));
				o.setSujet(resultat.getString( "sujet" ));
				o.setMsg(resultat.getString( "msg" ));
				o.setEmail(resultat.getString( "email" ));
				o.setEtat(resultat.getBoolean( "etat" ));
				o.setDel(resultat.getBoolean( "del" ));
				list.add(o);
			}


			return list;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public void Lu(int id) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE contact set etat=1 WHERE id=?");
			preparedStatement.setInt(1,id);
			preparedStatement.executeUpdate();

			System.out.println("HIDE OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("DELETED NO");
		}
	}
	
	public void NotLu(int id) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE contact set etat=0 WHERE id=?");
			preparedStatement.setInt(1,id);
			preparedStatement.executeUpdate();

			System.out.println("HIDE OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("DELETED NO");
		}
	}
	
	public void hideById(int id) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE contact set del=1 WHERE id=?");
			preparedStatement.setInt(1,id);
			preparedStatement.executeUpdate();

			System.out.println("HIDE OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("DELETED NO");
		}
	}
	
	public void unhideById(int id) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE contact set del=0 WHERE id=?");
			preparedStatement.setInt(1,id);
			preparedStatement.executeUpdate();

			System.out.println("UNHIDE OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("DELETED NO");
		}
	}

	public void deleteById(int id) {
		try {
			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM contact WHERE id=?");
			preparedStatement.setInt(1,id);
			preparedStatement.executeUpdate();

			System.out.println("DELETED OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("DELETED NO");
		}
	}
	
	public int getCountContacts() {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.
				prepareStatement("SELECT COUNT(*) as nbr FROM contact WHERE etat=0 AND del=0");
				
				ResultSet resultat=preparedStatement.executeQuery();
				resultat.next();

				int nbr = resultat.getInt( "nbr" );
				return nbr;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return 0;
        }
	}
	
	public int getCountAllContacts() {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.
				prepareStatement("SELECT COUNT(*) as nbr FROM contact");
				
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
