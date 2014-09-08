package pkg;

public class article_init {
private String date1;
private String title;
private String content;
public String getDate1() {
	return date1;
}
public void setDate1(String date1) {
	this.date1 = date1;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public int post()
{
	article_Dao e=new article_Dao();
	int i=e.post(date1,title,content);
	//System.out.println(i);
	return i;
}
public int remove()
{
	article_Dao e=new article_Dao();
	int i=e.remove(date1);
	return i;
}
}
