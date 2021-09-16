package Map_process;

public class TelInfoVO {
private String local;
private String link;
private String pic;




public TelInfoVO(String local, String link, String pic) {
	this.local = local;
	this.link = link;
	this.pic = pic;

}




public String getPic() {
	return pic;
}

public void setPic(String pic) {
	this.pic = pic;
}

public String getLink() {
	return link;
}

public void setLink(String link) {
	this.link = link;
}

public String getLocal() {
	return local;
}

public void setLocal(String local) {
	this.local = local;
}
}
