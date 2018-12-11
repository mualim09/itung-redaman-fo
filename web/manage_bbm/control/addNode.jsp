<%-- 
    Document   : deleteNode
    Created on : Dec 11, 2018, 11:26:27 AM
    Author     : Lenovo
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="helper.BasicJson"%>
<%@page import="helper.BBM_Helper"%>
<%@page import="dbcon.MyConnector"%>
<%@page import="helper.Dummy"%>
<%@page import="helper.MySession"%>
<%
    String nik = (String) session.getAttribute(MySession.NIK);
    String tanggal = request.getParameter("tanggal");
    String node = request.getParameter("node");

    String witel = "TASIKMALAYA";

    String yyyymmdd = Dummy.getddmmyyyy(tanggal);
    MyConnector con = new MyConnector();
    con.createConnection();

    String query = "SELECT node FROM stok_bbm_detail WHERE node='" + node + "' AND witel='" + witel + "' AND tanggal='" + yyyymmdd + "';";
    ArrayList<ArrayList<String>> arrData = con.getData(query);

    if (arrData.size() > 0) {
        out.print(new BasicJson().getBasicJson(false, node + " sudah ada dalam laporan!").toString());
        con.closeConnection();
        return;
    }

    query = "INSERT INTO stok_bbm_detail(witel, node, tanggal, kapasitas_deg, kapasitas_bbm, sisa_bulan_lalu_solar, sisa_bulan_lalu_oli, jam_jalan_deg_bulan_lalu, jam_jalan_deg_bulan_ini, jml_jam_jalan, pemakaian_solar, pemakaian_oli, penambahan_solar, penambahan_oli, persediaan_solar, persediaan_oli, backup_time, keterangan) "
            + "VALUES( '"+witel+"', '"+node+"' , '" + yyyymmdd + "', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '' )";
    con.executeQuery(query);
           

    con.activitLog(nik, "stok_bbm_detail", "Menambah node " + node + " ke laporan stok BBM bulan " + tanggal);
    con.closeConnection();

    out.print(new BasicJson().getBasicJson(true, "Node " + node + " telah ditambahkan ke laporan BBM bulan " + tanggal).toString());
%>