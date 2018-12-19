<%@page import="dbcon.MyConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.*"%>
<%@page import="Model.*"%>
<%@page import="Controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
       
        <%
            String a = request.getParameter("core_awal");
            String b = request.getParameter("user");
            String c = request.getParameter("hasil_ukur");
            String d = request.getParameter("redaman");
            String e = request.getParameter("total_los");
            String f = request.getParameter("keterangan");

            String core = request.getParameter("core");
            String y = request.getParameter("tanggal");
            String lokasi = request.getParameter("lokasi_sto");

            System.out.println(request.getParameterMap());
            
            Connection connection = null;
            Statement statement = null;
            MyConnector connector = new MyConnector();
            connector.createConnection();
            connection = connector.getConnection();
            statement = connection.createStatement();
            PreparedStatement ps = null; 
            
            int updateQuery = 0;
            if (a != null && y != null) {
                if (a != "" && y != "" ) {
                    try {
                        String query = "UPDATE tb_data SET core_awal=?, user=?, hasil_ukur=?, redaman=?, total_los=?, keterangan=? where core_awal = '" + a + "' and tanggal = '" + y + "' ";
                        System.out.println(query);
                        ps = connection.prepareStatement(query);
                        ps.setString(1, a);
                        ps.setString(2, b);
                        ps.setString(3, c);
                        ps.setString(4, d);
                        ps.setString(5, e);
                        ps.setString(6, f);

                        updateQuery = ps.executeUpdate();
                        if (updateQuery != 0) {
                            out.println("Updated");
                            response.sendRedirect("dataCore.jsp?core="+core+"&&lokasi_sto="+lokasi+" ");
                        }
                    } catch (Exception ex) {
                        out.println("Koneksi bermasalah " + ex.getMessage());
                    } finally {
                        ps.close();
                        connection.close();
                    }
                }
            }
        %> 
