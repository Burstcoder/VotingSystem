package voter;

import java.math.BigInteger;

public class Election {
 BigInteger voterid;
 public BigInteger getVoterid() {
	return voterid;
}
public void setVoterid(BigInteger voterid) {
	this.voterid = voterid;
}
public String getVotername() {
	return votername;
}
public void setVotername(String votername) {
	this.votername = votername;
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
public String getCandidatename() {
	return candidatename;
}
public void setCandidatename(String candidatename) {
	this.candidatename = candidatename;
}
public String getParty() {
	return party;
}
public void setParty(String party) {
	this.party = party;
}
public BigInteger getAadhar() {
	return aadhar;
}
public void setAadhar(BigInteger aadhar) {
	this.aadhar = aadhar;
}
String votername;
 String city;
 String state;
 String candidatename;
 String party;
 BigInteger aadhar;
}
