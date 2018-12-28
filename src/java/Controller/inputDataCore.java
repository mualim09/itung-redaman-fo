/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.*;
import dbcon.*;

public class inputDataCore extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet inpuDataCore</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet inpuDataCore at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    @SuppressWarnings("empty-statement")
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String lokasi = request.getParameter("lokasi_sto");
        String tanggal = request.getParameter("tanggal");
        String core = request.getParameter("core");
        String core_awal = request.getParameter("core_awal");
        String user = request.getParameter("user");
        String hasil_ukur = request.getParameter("hasil_ukur");
        String redaman = request.getParameter("redaman");
        String total_los = request.getParameter("total_los");
        String keterangan = request.getParameter("keterangan");

        UserAccess access = new UserAccess();
        if (access.inputDataCore(tanggal, core, core_awal, user, hasil_ukur, redaman, total_los, keterangan)) {
            response.sendRedirect("inputDataCore.jsp?tanggal="+tanggal+"&&lokasi_sto="+lokasi+"&&core=" +core+"&status=berhasil");
        } else {
            response.sendRedirect("inputDataCore.jsp?tanggal="+tanggal+"&&lokasi_sto="+lokasi+"&&core=" +core+"&status=gagal");
        }
    }

    public String getServletInfo() {
        return "Short description";
    }

}
