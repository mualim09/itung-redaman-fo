package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.*;
import dbcon.*;

public class inputFO extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet inputFO</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet inputFO at " + request.getContextPath() + "</h1>");
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
        
//        String nomor = request.getParameter("nomor");
        String lokasi_witel = request.getParameter("lokasi_witel");
        String lokasi_sto = request.getParameter("lokasi_sto");
        String core = request.getParameter("core");
        String pjg_kabel = request.getParameter("pjg_kabel");
        String tipe_kabel = request.getParameter("tipe_kabel");
        String jenis_kabel = request.getParameter("jenis_kabel");
        String tanggal = request.getParameter("tanggal");
        
        UserAccess access = new UserAccess();
        if (access.inputFO(lokasi_witel, lokasi_sto, core, pjg_kabel, tipe_kabel, jenis_kabel, tanggal)) {
            out.print("Behasil Insert");
            response.sendRedirect("index_sto.jsp?lokasi_sto="+lokasi_sto);
        } else {
            response.sendRedirect("inputFO.jsp");
            out.print("Gagal Insert");
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
