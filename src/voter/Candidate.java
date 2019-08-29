package voter;

import java.math.BigInteger;

public class Candidate {
BigInteger aadhar;
String name;
 int age;
BigInteger contact;
public BigInteger getAadhar() {
	return aadhar;
}
public void setAadhar(BigInteger aadhar) {
	this.aadhar = aadhar;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public BigInteger getContact() {
	return contact;
}
public void setContact(BigInteger contact) {
	this.contact = contact;
}
public String getParty() {
	return party;
}
public void setParty(String party) {
	this.party = party;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
String party;
String gender;
String address;
String state;
String city;
}