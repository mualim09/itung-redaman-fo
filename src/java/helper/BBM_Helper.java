/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

/**
 *
 * @author Lenovo
 */
public class BBM_Helper {

    String witel;
    String yyyymmdd;

    public BBM_Helper(String witel, String yyyymmdd) {
        this.witel = witel;
        this.yyyymmdd = yyyymmdd;
    }

    public String queryCalcJMLJamJalan(String node) {
        String query = "UPDATE stok_bbm_detail set jml_jam_jalan = jam_jalan_deg_bulan_ini - jam_jalan_deg_bulan_lalu "
                + "WHERE witel='" + witel + "' AND node='" + node + "' AND tanggal = '" + yyyymmdd + "';";
        return query;
    }

    public String queryCalcJumlahJamJalanDeg() {
        String query = "UPDATE stok_bbm_master "
                + "SET jumlah_jam_jalan_deg = (SELECT SUM(jml_jam_jalan) FROM stok_bbm_detail WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "') "
                + "WHERE witel='TASIKMALAYA' AND tanggal='" + yyyymmdd + "';";;
        return query;
    }

    public String queryCalcPemakaianSolar(String node) {
        String query = "UPDATE stok_bbm_detail set pemakaian_solar = ROUND(0.0233 * kapasitas_deg * jml_jam_jalan, 2) "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "' AND node='" + node + "';";
        return query;
    }

    public String queryCalcJumlahPemakaianSolar() {
        String query = "UPDATE stok_bbm_master "
                + "SET jumlah_pemakaian_solar = (SELECT SUM(pemakaian_solar) FROM stok_bbm_detail WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "') "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "';";
        return query;
    }

    public String queryCalcPersediaanSolar(String node) {
        String query = "UPDATE stok_bbm_detail set persediaan_solar = sisa_bulan_lalu_solar + penambahan_solar - pemakaian_solar "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "' AND node='" + node + "';";
        return query;
    }

    public String queryCalcJumlahPersediaanSolar() {
        String query = "UPDATE stok_bbm_master "
                + "SET jumlah_persediaan_solar = (SELECT SUM(persediaan_solar) FROM stok_bbm_detail WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "') "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "'; ";

        return query;
    }
    
    public String queryCalcJumlahPersediaanOli() {
        String query = "UPDATE stok_bbm_master "
                + "SET jumlah_persediaan_oli = (SELECT SUM(persediaan_oli) FROM stok_bbm_detail WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "') "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "'; ";

        return query;
    }

    public String calcBackupTime(String node) {
        String query = "UPDATE stok_bbm_detail set backup_time = ROUND( (persediaan_solar / (0.233 * kapasitas_deg)), 2 ) "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "' AND node='" + node + "'; ";
        return query;
    }

    public String calcJumlahSisaSolarBulanLalu() {
        String query = "UPDATE stok_bbm_master "
                + "SET jumlah_sisa_bulan_lalu_solar = (SELECT SUM(sisa_bulan_lalu_solar) FROM stok_bbm_detail WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "') "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "';";

        return query;
    }

    public String calcJumlahSisaOliBulanLalu() {
        String query = "UPDATE stok_bbm_master "
                + "SET jumlah_sisa_bulan_lalu_oli = (SELECT SUM(sisa_bulan_lalu_oli) FROM stok_bbm_detail WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "') "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "';";

        return query;
    }

    public String calcJumlahPemakaianOli() {
        String query = "UPDATE stok_bbm_master "
                + "SET jumlah_pemakaian_oli = (SELECT SUM(pemakaian_oli) FROM stok_bbm_detail WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "') "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "';";
        return query;
    }

    public String calcJumlahPenambahanSolar() {
        String query = "UPDATE stok_bbm_master "
                + "SET jumlah_penambahan_solar = (SELECT SUM(penambahan_solar) FROM stok_bbm_detail WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "') "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "';";

        return query;
    }
    
    public String calcJumlahPenambahanOli() {
        String query = "UPDATE stok_bbm_master "
                + "SET jumlah_penambahan_oli = (SELECT SUM(penambahan_oli) FROM stok_bbm_detail WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "') "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "';";

        return query;
    }

    public String calcJumlahTangki() {
        String query = "UPDATE stok_bbm_master "
                + "SET tangki_backup = tangki_backup_bulan_lalu - jumlah_penambahan_solar + pembelian_solar "
                + "WHERE witel='" + witel + "' AND tanggal='" + yyyymmdd + "';";
        return query;
    }
}
