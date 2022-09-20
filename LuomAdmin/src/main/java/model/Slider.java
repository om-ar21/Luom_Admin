package model;

public class Slider {
	private int id;
	private String titre;
	private String img;
	private String lien;
	private boolean del;
	
	public boolean isDel() {
		return del;
	}
	public void setDel(boolean del) {
		this.del = del;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getLien() {
		return lien;
	}
	public void setLien(String lien) {
		this.lien = lien;
	}
	
	@Override
	public String toString() {
		return "Slider [id=" + id + ", titre=" + titre + ", img=" + img + ", lien=" + lien + ", del=" + del + "]";
	}
	
	public Slider() {
		
	}
	
	public Slider(int id, String titre, String img, String lien) {
		this.id = id;
		this.titre = titre;
		this.img = img;
		this.lien = lien;
	}
	
	public Slider(String titre, String img, String lien) {
		this.titre = titre;
		this.img = img;
		this.lien = lien;
	}
	
	public Slider(String titre, String img, boolean del) {
		this.titre = titre;
		this.img = img;
		this.del = del;
	}
	
	public Slider(String titre, String img, String lien, boolean del) {
		this.titre = titre;
		this.img = img;
		this.lien = lien;
		this.del = del;
	}
	
}
