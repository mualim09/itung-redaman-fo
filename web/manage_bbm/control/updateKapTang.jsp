<%-- 
    Document   : updateKapTang
    Created on : Dec 10, 2018, 3:01:18 PM
    Author     : Lenovo
--%>

<%@page import="helper.BasicJson"%>
<%@page import="helper.BBM_Helper"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.Dummy"%>
<%@page import="helper.MySession"%>
<%
    String nik = (String) session.getAttribute(MySession.NIK);
    String tanggal = request.getParameter("tanggal");
    String node = request.getParameter("node");
    String lama = request.getParameter("lama");
    String baru = request.getParameter("baru");
    
    String witel = "TASIKMALAYA";
    
    String yyyymmdd = Dummy.getddmmyyyy(tanggal);
    MyConnector con = new MyConnector();
    con.createConnection();
    
    BBM_Helper bbm = new BBM_Helper(witel, yyyymmdd);
    
    String query = "UPDATE stok_bbm_detail set kapasitas_bbm = "+baru+" WHERE witel='"+witel+"' AND tanggal='"+yyyymmdd+"' AND node='"+node+"';";
    con.executeQuery(query);
    con.activitLog(nik, "stok_bbm_detail", "Mengganti data kapasitas tangki BBM (Liter) node "+node+" dari "+lama+" menjadi "+baru+" untuk laporan stok BBM bulan "+tanggal);
    con.closeConnection();
    
    out.print(new BasicJson().getBasicJson(true, "Data kapasitas BBM(Liter) untuk node "+node+" telah diperbarui").toString());
%>
