package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProduitDAO {
	public void save(Produit obj) {

		try {

			if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE produit set id_s_cat=?,titre=?,presentation=?,img=?,prix=?,stock=?,stock_minimum=?,del=? WHERE id=?");
				preparedStatement.setInt(1,obj.getId_s_cat());
				preparedStatement.setString(2,obj.getTitre());
				preparedStatement.setString(3,obj.getPresentation());
				preparedStatement.setString(4,obj.getImg());
				preparedStatement.setDouble(5,obj.getPrix());
				preparedStatement.setInt(6,obj.getStock());
				preparedStatement.setInt(7,obj.getStock_minimum());
				preparedStatement.setBoolean(8, obj.isDel());
				preparedStatement.setInt(9,obj.getId());
				preparedStatement.executeUpdate();
			}else {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO produit (id_s_cat,titre,presentation,img,prix,stock,stock_minimum,del) VALUES(?,?,?,?,?,?,?,?)");
				preparedStatement.setInt(1,obj.getId_s_cat());
				preparedStatement.setString(2,obj.getTitre());
				preparedStatement.setString(3,obj.getPresentation());
				preparedStatement.setString(4,obj.getImg());
				preparedStatement.setDouble(5,obj.getPrix());
				preparedStatement.setInt(6,obj.getStock());
				preparedStatement.setInt(7,obj.getStock_minimum());
				preparedStatement.setBoolean(8, obj.isDel());
				preparedStatement.executeUpdate();
			}
			System.out.println("SAVED OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("SAVED NO");
		}

	}

	public Produit getById(int id) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produit WHERE id=?");
			preparedStatement.setInt(1,id);

			ResultSet resultat=preparedStatement.executeQuery();

			resultat.next();
			Produit u = new Produit();

			u.setId(resultat.getInt( "id" ));
			u.setId_s_cat(resultat.getInt( "id_s_cat" ));
			u.setTitre(resultat.getString( "titre" ));
			u.setPresentation(resultat.getString( "presentation" ));
			u.setImg(resultat.getString( "img" ));
			u.setPrix(resultat.getDouble( "prix" ));
			u.setStock(resultat.getInt( "stock" ));
			u.setStock_minimum(resultat.getInt( "stock_minimum" ));
			u.setDel(resultat.getBoolean( "del" ));

			return u;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}


	public ArrayList<Produit> hideAllByIdCat(int id_cat) {
        ArrayList<Produit> list = new ArrayList<Produit>();

        CategorieDAO cdao = new CategorieDAO();
        Categorie c = cdao.getById(id_cat);
        ArrayList<Souscategorie> sscat = c.ciblesscat();
        for(Souscategorie ssc:sscat) {
            int id_s_cat = ssc.getId();

        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produit WHERE del=0 AND id_s_cat=?");
            preparedStatement.setInt(1,id_s_cat);

            ResultSet resultat=preparedStatement.executeQuery();

            while(resultat.next()) {


                int id = resultat.getInt( "id" );
                try {

                    PreparedStatement preparedStatementbis  = Database.connexion.prepareStatement("UPDATE produit set del=1 WHERE id=? ");
                    preparedStatementbis.setInt(1,id);
                    preparedStatementbis.executeUpdate();

                }catch(Exception ex) {
                    ex.printStackTrace();
                }

            }


        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
        }
        return list;
    }
	
	public ArrayList<Produit> getAll() {
		ArrayList<Produit> list = new ArrayList<Produit>();
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produit WHERE del=0");

			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit o = new Produit();
				o.setId(resultat.getInt( "id" ));
				o.setId_s_cat(resultat.getInt( "id_s_cat" ));
				o.setTitre(resultat.getString( "titre" ));
				o.setPresentation(resultat.getString( "presentation" ));
				o.setImg(resultat.getString( "img" ));
				o.setPrix(resultat.getDouble( "prix" ));
				o.setStock(resultat.getInt( "stock" ));
				o.setStock_minimum(resultat.getInt( "stock_minimum" ));
				o.setDel(resultat.getBoolean( "del" ));
				list.add(o);
			}


			return list;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<Produit> getAllAd() {
		ArrayList<Produit> list = new ArrayList<Produit>();
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produit ORDER BY id DESC");

			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit o = new Produit();
				o.setId(resultat.getInt( "id" ));
				o.setId_s_cat(resultat.getInt( "id_s_cat" ));
				o.setTitre(resultat.getString( "titre" ));
				o.setPresentation(resultat.getString( "presentation" ));
				o.setImg(resultat.getString( "img" ));
				o.setPrix(resultat.getDouble( "prix" ));
				o.setStock(resultat.getInt( "stock" ));
				o.setStock_minimum(resultat.getInt( "stock_minimum" ));
				o.setDel(resultat.getBoolean( "del" ));
				list.add(o);
			}


			return list;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<Produit> getAllAdCrit() {
		ArrayList<Produit> list = new ArrayList<Produit>();
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produit");

			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit o = new Produit();
				o.setId(resultat.getInt( "id" ));
				o.setId_s_cat(resultat.getInt( "id_s_cat" ));
				o.setTitre(resultat.getString( "titre" ));
				o.setPresentation(resultat.getString( "presentation" ));
				o.setImg(resultat.getString( "img" ));
				o.setPrix(resultat.getDouble( "prix" ));
				o.setStock(resultat.getInt( "stock" ));
				o.setStock_minimum(resultat.getInt( "stock_minimum" ));
				o.setDel(resultat.getBoolean( "del" ));
				
				int st = resultat.getInt( "stock" );
				int crit = resultat.getInt( "stock_minimum" );
				if(st<crit) {
					list.add(o);
				}
				
			}


			return list;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<Produit> getAllByCat(int id_cat) {
		ArrayList<Produit> list = new ArrayList<Produit>();
		
		CategorieDAO cdao = new CategorieDAO();
		Categorie c = cdao.getById(id_cat);
		ArrayList<Souscategorie> sscat = c.ciblesscat();
		for(Souscategorie ssc:sscat) {
			int id_s_cat = ssc.getId();
		
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produit WHERE del=0 AND id_s_cat=?");
			preparedStatement.setInt(1,id_s_cat);
			
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit o = new Produit();
				o.setId(resultat.getInt( "id" ));
				o.setId_s_cat(resultat.getInt( "id_s_cat" ));
				o.setTitre(resultat.getString( "titre" ));
				o.setPresentation(resultat.getString( "presentation" ));
				o.setImg(resultat.getString( "img" ));
				o.setPrix(resultat.getDouble( "prix" ));
				o.setStock(resultat.getInt( "stock" ));
				o.setStock_minimum(resultat.getInt( "stock_minimum" ));
				o.setDel(resultat.getBoolean( "del" ));
				list.add(o);
			}


		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
		}
		return list;
	}
	
	public ArrayList<Produit> getAllBySCat(int id_s_cat) {
		ArrayList<Produit> list = new ArrayList<Produit>();
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produit WHERE del=0 AND id_s_cat=?");
			preparedStatement.setInt(1,id_s_cat);
			
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit o = new Produit();
				o.setId(resultat.getInt( "id" ));
				o.setId_s_cat(resultat.getInt( "id_s_cat" ));
				o.setTitre(resultat.getString( "titre" ));
				o.setPresentation(resultat.getString( "presentation" ));
				o.setImg(resultat.getString( "img" ));
				o.setPrix(resultat.getDouble( "prix" ));
				o.setStock(resultat.getInt( "stock" ));
				o.setStock_minimum(resultat.getInt( "stock_minimum" ));
				o.setDel(resultat.getBoolean( "del" ));
				list.add(o);
			}


			return list;

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<Produit> Rechercher(String mot) {
		ArrayList<Produit> list = new ArrayList<Produit>();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produit WHERE Titre like ? or presentation like ? AND del=0");
				preparedStatement.setString(1,"%"+mot+"%");
				preparedStatement.setString(2,"%"+mot+"%");
				ResultSet resultat=preparedStatement.executeQuery();

				while(resultat.next()) {
					Produit u = new Produit();
					u.setId(resultat.getInt( "id" ));
					u.setTitre(resultat.getString( "titre" ));
					u.setPresentation(resultat.getString( "presentation" ));
					u.setPrix(resultat.getDouble( "prix" ));
					u.setStock(resultat.getInt( "stock" ));
					u.setStock_minimum(resultat.getInt( "stock_minimum" ));
					u.setImg(resultat.getString( "img" ));
					u.setId_s_cat(resultat.getInt( "id_s_cat" ));
					u.setDel(resultat.getBoolean( "del" ));
					
					list.add(u);
				}
				return list;
			
		} catch (Exception ex) {
	    	ex.printStackTrace();
	    	
	    }
		return list;
	}
	
	public void hideById(int id) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE produit set del=1 WHERE id=?");
			preparedStatement.setInt(1,id);
			preparedStatement.executeUpdate();

			System.out.println("HIDE OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("DELETED NO");
		}
	}
	
	public void hide(int idscat) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE produit set del=1 WHERE id_s_cat=?");
            preparedStatement.setInt(1,idscat);
            preparedStatement.executeUpdate();

            System.out.println("HIDE OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }

	public void deleteById(int id) {
		try {
			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM produit WHERE id=?");
			preparedStatement.setInt(1,id);
			preparedStatement.executeUpdate();

			System.out.println("DELETED OK");

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("DELETED NO");
		}
	}
	
	public int getCountProduitsById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.
				prepareStatement("SELECT stock FROM produit WHERE id=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				resultat.next();

				int nbr = resultat.getInt( "stock" );
				return nbr;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return 0;
        }
	}
	
	public int getCountProduits() {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.
				prepareStatement("SELECT COUNT(*) as nbr FROM produit");
				
				ResultSet resultat=preparedStatement.executeQuery();
				resultat.next();

				int nbr = resultat.getInt( "nbr" );
				return nbr;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return 0;
        }
	}
	
	public ArrayList<Produit> unhideAllByIdCat(int id_cat) {
        ArrayList<Produit> list = new ArrayList<Produit>();

        CategorieDAO cdao = new CategorieDAO();
        Categorie c = cdao.getById(id_cat);
        ArrayList<Souscategorie> sscat = c.ciblesscat();
        for(Souscategorie ssc:sscat) {
            int id_s_cat = ssc.getId();

        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produit WHERE del=1 AND id_s_cat=?");
            preparedStatement.setInt(1,id_s_cat);

            ResultSet resultat=preparedStatement.executeQuery();

            while(resultat.next()) {


                int id = resultat.getInt( "id" );
                try {

                    PreparedStatement preparedStatementbis  = Database.connexion.prepareStatement("UPDATE produit set del=0 WHERE id=? ");
                    preparedStatementbis.setInt(1,id);
                    preparedStatementbis.executeUpdate();

                }catch(Exception ex) {
                    ex.printStackTrace();
                }

            }


        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
        }
        return list;
    }
	
	public void delById(int idscat) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE produit set id_s_cat=13 WHERE id_s_cat=?");
            preparedStatement.setInt(1,idscat);
            preparedStatement.executeUpdate();

            System.out.println("HIDE OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }
public void showById(int idscat) {
        try {

            PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE produit set del=0 WHERE id_s_cat=?");
            preparedStatement.setInt(1,idscat);
            preparedStatement.executeUpdate();

            System.out.println("HIDE OK");

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("DELETED NO");
        }
    }

}
