/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medi.docs.servlet;


import com.medi.docs.dao.DocumentDao;
import com.medi.docs.entities.Document;

import com.medi.docs.helper.ConnectionProvider;
import com.medi.docs.helper.Helper;
import com.medi.docs.helper.Message;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Windows
 */
@MultipartConfig
public class DocumentdetailServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DocumentdetailServlet</title>");            
            out.println("</head>");
            out.println("<body>");
         
            String patientname=request.getParameter("patname");
           Part part=request.getPart("uploadpic");
            
           String document_pic=part.getSubmittedFileName();
         // String document_pic=request.getParameter("uploadpic");
            String document_title=request.getParameter("doctitle");
            String adminname=request.getParameter("adminname");
            Integer departid=Integer.parseInt(request.getParameter("depart_cid"));
            String doctorname=request.getParameter("docname");
            //out.println(doctorname);
            
        
        
          
           DocumentDao dao=new DocumentDao(ConnectionProvider.getConnection());
           Document d=new Document(patientname,doctorname,departid,adminname,document_pic,document_title);  
          HttpSession s=request.getSession();
            
            if(dao.saveDocumentdetail(d)){
                
                 String path=request.getRealPath("/")+"pics"+File.separator+d.getDocumentpic();
                   if(Helper.saveFile(part.getInputStream(), path))
                    {
                        Message m=new Message("Profile Updated","success","alert-success");
                        s.setAttribute("msg",m);
                        response.sendRedirect("Adminhomepage.jsp");
                        
                    }
              out.println("done");
                
            }
            else
            {
                
                out.println("Not Done");
            }
            
            
            
                    
            
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

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
