package voter;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {
	Connection c=null;
	PreparedStatement pst=null;
	public AdminDAO() throws ClassNotFoundException, SQLException
	{
		c=DBconnection.getConnection();
	}
	
	public ResultSet showUnapproved() throws SQLException
	{
	String selectquery="select * from voter_registration where status=?";
	pst=c.prepareStatement(selectquery);
	pst.setString(1,"N");
	ResultSet rs=pst.executeQuery();
	return rs;
	}
	public void acceptUpdate(BigDecimal aadhar) throws SQLException
	{
		String selectquery="update voter_registration set status=? where voter_aadhar=?";
		pst=c.prepareStatement(selectquery);
		pst.setString(1,"Y");
		pst.setBigDecimal(2,aadhar);  
		pst.execute();
	}
	
public void statusApprove(Voter obj) throws SQLException
{
	PreparedStatement pst=c.prepareStatement("select max(voterid) from voter_registration");
	ResultSet rs=pst.executeQuery();
	int i=0;
	while(rs.next())
	{
		i=rs.getInt(1);
	}
	i+=1;
	BigInteger id=BigInteger.valueOf(i);
	String updatequery="update voter_registration set voterid=?,status=? where voter_aadhar=?";
	pst=c.prepareStatement(updatequery);
	pst.setObject(1,id);
	pst.setString(2,"Y");
	pst.setObject(3,obj.getV_aadhar());
	pst.execute();
}
public void statusReject(Voter obj) throws SQLException
{
	String updatequery="update voter_registration set status=? where voter_aadhar=?";
	pst=c.prepareStatement(updatequery);
	pst.setString(1,"R");
	pst.setObject(2,obj.getV_aadhar());
	pst.execute();
}
public void insertCandidateRecords(Candidate obj) throws SQLException
{
	String insertquery="insert into candidate values(?,?,?,?,?,?,?,?,?)";
	pst=c.prepareStatement(insertquery);
	pst.setObject(1,obj.getAadhar());
	pst.setString(2,obj.getName());
	pst.setInt(3,obj.getAge());
	pst.setObject(4,obj.getContact());
	pst.setString(5,obj.getParty());
	pst.setString(6,obj.getGender());
	pst.setString(7,obj.getAddress());
	pst.setString(8,obj.getState());
	pst.setString(9,obj.getCity());
	pst.execute();
}
public ResultSet displaycandidate() throws SQLException
{
pst=c.prepareStatement("select * from candidate");
ResultSet rs=pst.executeQuery();
return rs;
}
public void deletecandidate(Candidate obj) throws SQLException
{
pst=c.prepareStatement("delete from candidate where aadhar=?");
pst.setObject(1,obj.getAadhar());
pst.execute();
}
public ResultSet searchparty(Candidate obj) throws SQLException
{
	pst=c.prepareStatement("select distinct party from candidate where state=?");
	pst.setString(1,obj.getState());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet showpartycandidate(Candidate obj) throws SQLException
{
	pst=c.prepareStatement("select distinct city from candidate where party=? and state=?");
	pst.setString(1,obj.getParty());
	pst.setString(2,obj.getState());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet showpartybyaadhar(Candidate obj) throws SQLException
{
	pst=c.prepareStatement("select aadhar from candidate where party=? and state=?");
	pst.setString(1,obj.getParty());
	pst.setString(2,obj.getState());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet showbyboth(Candidate obj) throws SQLException
{
	pst=c.prepareStatement("select * from candidate where party=? and state=?");
	pst.setString(1,obj.getParty());
	pst.setString(2,obj.getState());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet showbycity(Candidate obj) throws SQLException
{
	pst=c.prepareStatement("select * from candidate where party=? and state=? and city=?");
	pst.setString(1,obj.getParty());
	pst.setString(2,obj.getState());
	pst.setString(3,obj.getCity());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet showbyaadhar(Candidate obj) throws SQLException
{
	pst=c.prepareStatement("select * from candidate where party=? and state=? and aadhar=?");
	pst.setString(1,obj.getParty());
	pst.setString(2,obj.getState());
	pst.setObject(3,obj.getAadhar());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet getpartycandidate(Candidate obj) throws SQLException
{
	pst=c.prepareStatement("select name,party from candidate where state=? and city=?");
	pst.setString(1,obj.getState());
	pst.setString(2,obj.getCity());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet getaadhar(Candidate obj) throws SQLException
{
	pst=c.prepareStatement("select aadhar,name from candidate where party=? and state=? and city=?");
	pst.setString(1,obj.getParty());
	pst.setString(2,obj.getState());
	pst.setString(3,obj.getCity());
	ResultSet rs=pst.executeQuery();
	return rs;
}

public ResultSet getcandidatedetail(Candidate obj) throws SQLException
{
	pst=c.prepareStatement("select aadhar,name,party from candidate where state=? and city=?");
	pst.setString(1,obj.getState());
	pst.setString(2,obj.getCity());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public void insertElectionRecord(Election obj) throws SQLException
{
	String insertquery="insert into election values(?,?,?,?,?,?,?)";
	pst=c.prepareStatement(insertquery);
	pst.setObject(1,obj.getVoterid());
	pst.setString(2,obj.getVotername());
	pst.setString(3,obj.getCity());
	pst.setString(4,obj.getState());
	pst.setString(5,obj.getCandidatename());
	pst.setObject(6,obj.getAadhar());
	pst.setString(7,obj.getParty());
	pst.execute();
}
public ResultSet getparty() throws SQLException
{
	String selectquery="select distinct party from candidate";
	pst=c.prepareStatement(selectquery);
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet p(Election obj) throws SQLException
{
	String selectquery="select party,count(party) as vote from election where party=? group by party";
	pst=c.prepareStatement(selectquery);
	pst.setString(1,obj.getParty());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet c(Election obj) throws SQLException
{
	String selectquery="select party,count(party) as vote from election where city=? group by party";
	pst=c.prepareStatement(selectquery);
	pst.setString(1,obj.getCity());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet cp(Election obj) throws SQLException
{
	String selectquery="select party,count(party) as vote from election where city=? and party=? group by party";
	pst=c.prepareStatement(selectquery);
	pst.setString(1,obj.getCity());
	pst.setString(2,obj.getParty());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet s(Election obj) throws SQLException
{
	String selectquery="select all party,count(party) as vote from election where state=? group by party";
	pst=c.prepareStatement(selectquery);
	pst.setString(1,obj.getState());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet sp(Election obj) throws SQLException
{
	String selectquery="select party,count(party) as vote from election where state=? and party=? group by party";
	pst=c.prepareStatement(selectquery);
	pst.setString(1,obj.getState());
	pst.setString(2,obj.getParty());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet sc(Election obj) throws SQLException
{
	String selectquery="select party,count(party) as vote from election where state=? and city=? group by party";
	pst=c.prepareStatement(selectquery);
	pst.setString(1,obj.getState());
	pst.setString(2,obj.getCity());
	ResultSet rs=pst.executeQuery();
	return rs;
}
public ResultSet scp(Election obj) throws SQLException
{
	String selectquery="select party,count(party) as vote from election where state=? and city=? and party=? group by party";
	pst=c.prepareStatement(selectquery);
	pst.setString(1,obj.getState());
	pst.setString(2,obj.getCity());
	pst.setString(3,obj.getParty());
	ResultSet rs=pst.executeQuery();
	return rs;
}
}