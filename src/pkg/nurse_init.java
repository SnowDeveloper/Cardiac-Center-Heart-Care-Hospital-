package pkg;

public class nurse_init {
	private String name;
	private int did;
	private String timing;
	private String info;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getTiming() {
		return timing;
	}
	public void setTiming(String timing) {
		this.timing = timing;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int register()
	{
		nurse_Dao e=new nurse_Dao();
		int i=e.register(name,did,timing,info);
		//System.out.println(i);
		return i;
	}
	public int remove()
	{
		nurse_Dao e=new nurse_Dao();
		int i=e.remove(did);
		return i;
	}

	
}
