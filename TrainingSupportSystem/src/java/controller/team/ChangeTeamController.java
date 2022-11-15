/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.team;

import dal.TeamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Team_member;

/**
 *
 * @author Admin
 */
public class ChangeTeamController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet ChangeTeamController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangeTeamController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    TeamDAO t = new TeamDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       String changemile= request.getParameter("changemile");
       String teamchange= request.getParameter("teamchange");
       String user_id = request.getParameter("user_id");
       String team_old = t.getTeamOldByMileStone(changemile, user_id);
       String teamcc = request.getParameter("teamcc");
       t.EditTeamId(teamchange, user_id,team_old);
       response.sendRedirect("list_of_team");
       
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       String milestone = request.getParameter("changemile");
       String class_id = request.getParameter("class");
       List<String> list= t.getTeamByMilestone(milestone);
        List<String> list4= t.getSubmitBymilestone(milestone);
       List<Team_member> list2 = new ArrayList<>();
       List<Team_member> list3 = new ArrayList<>();
        for (int i = 0; i < list4.size(); i++) {
            t.deleteSubmit(Integer.parseInt(list4.get(i)));
        }
        for (int i = 0; i < list.size(); i++) {
           
            list3 = t.getTeamMemberByTeam(list.get(i));
            for (int j = 0; j < list3.size(); j++) {
                list2.add(list3.get(j));
            }
            
        }
        for (int i = 0; i < list2.size(); i++) {
            t.deleteTeamMember(list2.get(i));
        }
        for (int i = 0; i < list.size(); i++) {
            t.deleteTeam(list.get(i));
        }
        response.sendRedirect("list_of_team");
        
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
