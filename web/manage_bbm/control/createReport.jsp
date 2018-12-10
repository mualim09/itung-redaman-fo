<%-- 
    Document   : createReport
    Created on : Dec 4, 2018, 11:17:23 AM
    Author     : Lenovo
--%>

<%@page import="helper.MySession"%>
<%@page import="java.util.ArrayList"%>
<%@page import="helper.BasicJson"%>
<%@page import="org.json.JSONObject"%>
<%@page import="helper.Dummy"%>
<%@page import="dbcon.MyConnector"%>
<%
    String tanggal = request.getParameter("tanggal");
    String[] bulan_tahun = tanggal.split(" ");
    bulan_tahun[0] = Dummy.getMonthNumber(bulan_tahun[0], true);

    String numericTanggal = bulan_tahun[0] + " " + bulan_tahun[1];

    MyConnector con = new MyConnector();
    con.createConnection();

    JSONObject json = null;
    BasicJson basj = new BasicJson();

    String query = "SELECT tanggal FROM stok_bbm_master WHERE date_format(tanggal, '%m %Y') = '" + numericTanggal + "' AND witel='TASIKMALAYA';";
    if (con.getData(query).size() > 0) {
        json = basj.getBasicJson(false, "Maaf, laporan untuk bulan " + tanggal + " sudah sedia ada.");
        json.put("bulan_tahun", numericTanggal);
        out.print(json.toString());
        con.closeConnection();
        return;
    }

    String y_m_d = bulan_tahun[1] + "-" + bulan_tahun[0] + "-01";
    query = "SELECT tanggal FROM stok_bbm_master WHERE witel='TASIKMALAYA' AND tanggal= DATE_SUB('" + y_m_d + "', INTERVAL 1 MONTH);";
    ArrayList<ArrayList<String>> arrData = con.getData(query);

    query = "INSERT INTO stok_bbm_master(witel, tanggal) VALUES('TASIKMALAYA', '" + y_m_d + "' );";
    con.executeQuery(query);

    if (arrData.size() < 1) {
        query = "INSERT INTO stok_bbm_detail(witel, node, tanggal, kapasitas_deg, kapasitas_bbm, sisa_bulan_lalu_solar, sisa_bulan_lalu_oli, jam_jalan_deg_bulan_lalu, jam_jalan_deg_bulan_ini, jml_jam_jalan, pemakaian_solar, pemakaian_oli, penambahan_solar, penambahan_oli, persediaan_solar, persediaan_oli, backup_time, keterangan) "
                + "SELECT 'TASIKMALAYA', `name`, '" + y_m_d + "', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '' "
                + "FROM node WHERE witel='TASIKMALAYA';";
        con.executeQuery(query);

        query = "UPDATE stok_bbm_master set jumlah_sisa_bulan_lalu_solar=0, jumlah_sisa_bulan_lalu_oli=0, jumlah_jam_jalan_deg=0, jumlah_pemakaian_solar=0, jumlah_pemakaian_oli=0, "
                + "jumlah_penambahan_solar=0, jumlah_penambahan_oli=0, jumlah_persediaan_solar=0, jumlah_persediaan_oli=0, tangki_backup_bulan_lalu=0, tangki_backup=0, "
                + "pembelian_solar=0, pembelian_oli=0 WHERE witel='TASIKMALAYA' AND tanggal='" + y_m_d + "';";
        con.executeQuery(query);
        String nik = (String) session.getAttribute(MySession.NIK);
        con.activitLog(nik, "stok_bbm_master, stok_bbm_detail", "Membikin laporan stok BBM untuk bulan " + tanggal);
        con.closeConnection();

        json = basj.getBasicJson(true, "Laporan kosong telah dibikin. Silahkan isi data-datanya.");
        json.put("bulan_tahun", numericTanggal);
        out.print(json.toString());
        return;
    }

    String bulan_lalu = arrData.get(0).get(0);
    query = "INSERT INTO stok_bbm_detail(witel, node, tanggal, kapasitas_deg, kapasitas_bbm, sisa_bulan_lalu_solar, sisa_bulan_lalu_oli, jam_jalan_deg_bulan_lalu, jam_jalan_deg_bulan_ini, jml_jam_jalan, pemakaian_solar, pemakaian_oli, penambahan_solar, penambahan_oli, persediaan_solar, persediaan_oli, backup_time, keterangan) "
            + "SELECT witel, node, '" + y_m_d + "', kapasitas_deg, kapasitas_bbm, persediaan_solar, persediaan_oli, jam_jalan_deg_bulan_ini, jam_jalan_deg_bulan_ini, 0, 0, 0, 0, 0, persediaan_solar, persediaan_oli, backup_time, '' "
            + "FROM stok_bbm_detail "
            + "WHERE witel='TASIKMALAYA' AND tanggal='" + bulan_lalu + "';";
    con.executeQuery(query);

    query = "REPLACE INTO stok_bbm_master(witel, tanggal, jumlah_jam_jalan_deg, jumlah_sisa_bulan_lalu_solar, jumlah_sisa_bulan_lalu_oli, jumlah_pemakaian_solar, jumlah_pemakaian_oli, "
            + "jumlah_penambahan_solar, jumlah_penambahan_oli, jumlah_persediaan_solar, jumlah_persediaan_oli, pembelian_solar, pembelian_oli, "
            + "tangki_backup_bulan_lalu, tangki_backup ) "
            + "SELECT bm.witel, '" + y_m_d + "', 0, SUM(bd.persediaan_solar), SUM(bd.persediaan_oli), 0, 0, 0, 0, SUM(bd.persediaan_solar), SUM(bd.persediaan_oli), "
            + "0, 0, bm.tangki_backup, bm.tangki_backup "
            + "FROM stok_bbm_master bm "
            + "JOIN stok_bbm_detail bd ON bm.witel=bd.witel AND bm.tanggal=bd.tanggal "
            + "WHERE bm.witel='TASIKMALAYA' AND bm.tanggal=DATE_SUB('" + y_m_d + "', INTERVAL 1 MONTH);";
    con.executeQuery(query);
    String nik = (String) session.getAttribute(MySession.NIK);
    con.activitLog(nik, "stok_bbm_master, stok_bbm_detail", "Membikin laporan stok BBM untuk bulan " + tanggal);
    con.closeConnection();

    json = basj.getBasicJson(true, "Laporan berdasarkan laporan bulan lalu telah dibikin. Silahkan edit seperlunya.");
    json.put("bulan_tahun", numericTanggal);
    out.print(json.toString());
    
%>
