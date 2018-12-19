
package database;

import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.*;
import database.DatabaseAccess;
import java.io.InputStream;

public class UserAccess {

    public boolean inputFO(String lokasi_witel, String lokasi_sto, String core, String pjg_kabel, String tipe_kabel, String jenis_kabel, String tanggal) {
        boolean inputFO = false;

        DatabaseAccess access;

        try {
            access = DatabaseAccess.getInstance();
            Connection conn = access.getConnection();
            PreparedStatement pFO = conn.prepareStatement("INSERT INTO tb_lokasi(lokasi_witel, lokasi_sto, core, pjg_kabel, tipe_kabel, jenis_kabel, tanggal) VALUES(?,?,?,?,?,?,?)");
            pFO.setString(1, lokasi_witel);
            pFO.setString(2, lokasi_sto);
            pFO.setString(3, core);
            pFO.setString(4, pjg_kabel);
            pFO.setString(5, tipe_kabel);
            pFO.setString(6, jenis_kabel);
            pFO.setString(7, tanggal);
            pFO.executeUpdate();

            return true;

        } catch (SQLException e) {
            System.out.println("SQL error error at : " + e.getMessage());
            return false;
        }
    }

    public boolean inputDataCore(String tanggal, String core, String core_awal, String user, String hasil_ukur, String redaman, String total_los, String keterangan) {
        boolean inputDataCore = false;

        DatabaseAccess access;

        try {
            access = DatabaseAccess.getInstance();
            Connection conn = access.getConnection();
            PreparedStatement pDataCore = conn.prepareStatement("INSERT INTO tb_data(tanggal, core, core_awal, user, hasil_ukur, redaman, total_los, keterangan) VALUES(?, ?,?,?,?,?,?,?)");
            pDataCore.setString(1, tanggal);
            pDataCore.setString(2, core);
            pDataCore.setString(3, core_awal);
            pDataCore.setString(4, user);
            pDataCore.setString(5, hasil_ukur);
            pDataCore.setString(6, redaman);
            pDataCore.setString(7, total_los);
            pDataCore.setString(8, keterangan);
            pDataCore.executeUpdate();
            return true;

        } catch (SQLException e) {
            System.out.println("SQL error error at : " + e.getMessage());
            return false;
        }
    }

}
