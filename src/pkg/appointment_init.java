package pkg;

public class appointment_init {
private String pname;
private String email;
private String phonenum;
private String addr;
private String appointdate;
private String doctor;
private String age;
private String refn;
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhonenum() {
	return phonenum;
}
public void setPhonenum(String phonenum) {
	this.phonenum = phonenum;
}
public String getAddr() {
	return addr;
}
public void setAddr(String addr) {
	this.addr = addr;
}
public String getAppointdate() {
	return appointdate;
}
public void setAppointdate(String appointdate) {
	this.appointdate = appointdate;
}
public String getDoctor() {
	return doctor;
}
public void setDoctor(String doctor) {
	this.doctor = doctor;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getRefn() {
	return refn;
}
public void setRefn(String refn) {
	this.refn = refn;
}
public int remove()
{
	appointment_Dao e=new appointment_Dao();
	int i=e.remove(refn);
	return i;
}
}
