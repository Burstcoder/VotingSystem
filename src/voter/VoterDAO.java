package voter;
import java.math.BigInteger;
import java.sql.*;
import java.util.concurrent.TimeUnit;

import org.omg.CORBA.TIMEOUT;
public class VoterDAO {
	Connection c=null;
	PreparedStatement pst=null;
	public VoterDAO() throws ClassNotFoundException, SQLException
	{
		c=DBconnection.getConnection();
	}
	public void insertVoterRegistration(Voter obj) throws SQLException,IllegalArgumentException
	{
		String insertquery="insert into voter_registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		pst=c.prepareStatement(insertquery);
		pst.setObject(1,obj.getV_id());
		pst.setString(2,obj.getV_name());
		pst.setObject(3,obj.getV_aadhar());
		pst.setString(4,obj.getPassword());
		pst.setDate(5,obj.getDob());
		pst.setString(6,obj.getGender());
		pst.setObject(7,obj.getContact());
		pst.setString(8,obj.getEmail());
		pst.setString(9,obj.getV_add());
		pst.setString(10,obj.getCity());
		pst.setString(11,obj.getS_que());
		pst.setString(12,obj.getS_ans());
		pst.setString(13,obj.getState());
		pst.setString(14,"N");
		pst.setString(15,"N");
		pst.execute();
	}
	
	public boolean validateVoterLogin(Voter obj) throws SQLException
	{
		String selectquery="select password from voter_registration where voter_aadhar=?";
		pst=c.prepareStatement(selectquery);
		pst.setObject(1,obj.getV_aadhar());
		ResultSet rs=pst.executeQuery();
		String str=null;
		while(rs.next())
		{
			str=rs.getString(1);
		}
		String str1=obj.getPassword();
		if(str1.equals(str))
		{
			return true;
		}
		return false;
	}
	public String recoverPassword(Voter obj) throws SQLException
	{
		String selectquery="select password from voter_registration where voter_aadhar=? and secret_question=? and answer=?";
		pst=c.prepareStatement(selectquery);
		pst.setObject(1,obj.getV_aadhar());
		pst.setString(2,obj.getS_que());
		pst.setString(3,obj.getS_ans());
		ResultSet rs=pst.executeQuery();
		String str="np";
			while(rs.next())
			{
				str=rs.getString(1);
			}
		return str;
	}

	public ResultSet getRecord(Voter obj) throws SQLException
	{
		String selectquery="select contact,address,city,password from voter_registration where voter_aadhar=?";
		pst=c.prepareStatement(selectquery);
		pst.setObject(1,obj.getV_aadhar());
		ResultSet rs=pst.executeQuery();
		return rs;
	}
	public String getName(Voter obj) throws SQLException//return only name
	{
		String selectquery="select voter_name from voter_registration where voter_aadhar=?";
		pst=c.prepareStatement(selectquery);
		pst.setObject(1,obj.getV_aadhar());
		ResultSet rs=pst.executeQuery();
		String str=null;
		while(rs.next())
		{
			str=rs.getString(1);
		}
		return str;
	}
	public boolean updateAddress(Voter obj) throws SQLException
	{
		String updatequery="update voter_registration set contact=?,address=?,city=?,password=? where voter_aadhar=?";
		pst=c.prepareStatement(updatequery);
		
		pst.setObject(1,obj.getContact());
		pst.setString(2,obj.getV_add());
		pst.setString(3,obj.getCity());
		pst.setString(4,obj.getPassword());
		pst.setObject(5,obj.getV_aadhar());
        pst.execute();
        return true;
	}	
	public ResultSet checkVoterStatus(Voter obj) throws SQLException
	{
		PreparedStatement pst=c.prepareStatement("select status from voter_registration where voter_aadhar=?");
		pst.setObject(1,obj.getV_aadhar());
		ResultSet rs=pst.executeQuery();
		return rs;
	}
	public BigInteger showVoterId(Voter obj) throws SQLException
	{
		PreparedStatement pst=c.prepareStatement("select voterid from voter_registration where voter_aadhar=?");
		pst.setObject(1,obj.getV_aadhar());
		ResultSet rs=pst.executeQuery();
		String str=null;
		while(rs.next())
		{
		    str=rs.getString(1);
		}
		BigInteger id=new BigInteger(str);
		return id;
	}
	public void deleteRecord(Voter obj) throws SQLException, InterruptedException
	{
		String deletequery="delete from voter_registration where voter_aadhar=?";
		PreparedStatement pst=c.prepareStatement(deletequery);
		pst.setObject(1,obj.getV_aadhar());
		pst.execute();
	}

	public boolean validateVoterid(Voter obj) throws SQLException
	{
		String selectquery="select password from voter_registration where voterid=?";
		pst=c.prepareStatement(selectquery);
		pst.setObject(1,obj.getVoter_id());
		ResultSet rs=pst.executeQuery();
		String str=null;
		while(rs.next())
		{
			str=rs.getString(1);
		}
		String str1=obj.getPassword();
		if(str1.equals(str))
		{
			return true;
		}
		return false;
	}
	public ResultSet getstatecity(Voter obj) throws SQLException
	{
		String selectquery="select state,city from voter_registration where voter_aadhar=?";
		pst=c.prepareStatement(selectquery);
		pst.setObject(1,obj.getV_aadhar());
		ResultSet rs=pst.executeQuery();
		return rs;
	}
	public ResultSet setelectiondetails(Voter obj) throws SQLException
	{
		String selectquery="select voterid,voter_name,city,state from voter_registration where voter_aadhar=?";
		pst=c.prepareStatement(selectquery);
		pst.setObject(1,obj.getV_aadhar());
		ResultSet rs=pst.executeQuery();
		return rs;
	}
	public ResultSet getcity() throws SQLException
	{
		String selectquery="select distinct city from candidate";
		pst=c.prepareStatement(selectquery);
		ResultSet rs=pst.executeQuery();
		return rs;
	}
	public ResultSet getstate() throws SQLException
	{
		String selectquery="select distinct state from candidate";
		pst=c.prepareStatement(selectquery);
		ResultSet rs=pst.executeQuery();
		return rs;
	}
	public ResultSet getresult_status(Voter obj) throws SQLException
	{
		String selectquery="select result_status from voter_registration where voter_aadhar=?";
		pst=c.prepareStatement(selectquery);
		pst.setObject(1,obj.getV_aadhar());
		ResultSet rs=pst.executeQuery();
		return rs;
	}
	public void publish_result() throws SQLException
	{
		pst=c.prepareStatement("update voter_registration set result_status='Y'");
		pst.execute();
	}
	public void unpublish_result() throws SQLException
	{
		pst=c.prepareStatement("update voter_registration set result_status='N'");
		pst.execute();
	}
	public void deleteelection_result() throws SQLException
	{
		pst=c.prepareStatement("delete from election");
		pst.execute();
	}
	public String getemailid(Voter obj) throws SQLException
	{
		String selectquery="select email from voter_registration where voter_aadhar=? and secret_question=? and answer=?";
		pst=c.prepareStatement(selectquery);
		pst.setObject(1,obj.getV_aadhar());
		pst.setString(2,obj.getS_que());
		pst.setString(3,obj.getS_ans());
		ResultSet rs=pst.executeQuery();
		String str="np";
			while(rs.next())
			{
				str=rs.getString(1);
			}
		return str;
	}

}