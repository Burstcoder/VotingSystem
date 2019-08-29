package voter;
import java.math.BigInteger;
import java.sql.Date;
public class Voter {
	BigInteger voter_id;
	public BigInteger getVoter_id() {
		return voter_id;
	}
	public void setVoter_id(BigInteger voter_id) {
		this.voter_id = voter_id;
	}
	private BigInteger v_id;
	private String v_name;
	private BigInteger v_aadhar;
	private String password;
	private Date dob;
	private BigInteger contact;
	private String gender;
	private String email;
	private String v_add;
	private String city;
	private String state;
	private String s_que;
	private String s_ans;
	public BigInteger getV_id() {
		return v_id;
	}
	public void setV_id(BigInteger v_id) {
		this.v_id = v_id;
	}
	public String getV_name() {
		return v_name;
	}
	public void setV_name(String v_name) {
		this.v_name = v_name;
	}
	public BigInteger getV_aadhar() {
		return v_aadhar;
	}
	public void setV_aadhar(BigInteger v_aadhar) {
		this.v_aadhar = v_aadhar;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = Date.valueOf(dob);
	}
	public BigInteger getContact() {
		return contact;
	}
	public void setContact(BigInteger contact) {
		this.contact = contact;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getV_add() {
		return v_add;
	}
	public void setV_add(String v_add) {
		this.v_add = v_add;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getS_que() {
		return s_que;
	}
	public void setS_que(String s_que) {
		this.s_que = s_que;
	}
	public String getS_ans() {
		return s_ans;
	}
	public void setS_ans(String s_ans) {
		this.s_ans = s_ans;
	}
	
	

}
