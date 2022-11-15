/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.team;

import static controller.team.NewTeamController.readExcel;
import dal.TeamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Class_user;
import model.Team;
import model.Team_member;

/**
 *
 * @author Admin
 */
public class CreateTeamByUploadController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CreateTeamByUploadController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateTeamByUploadController at " + request.getContextPath() + "</h1>");
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
    TeamDAO t = new TeamDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String milestone_id = request.getParameter("changemile");
       String team_id = request.getParameter("teamchange");
       List<Team_member> list = t.getTeamMemberByTeam(team_id);
//       int teamLast = t.countTeamInSubmit(milestone_id);
        String teamLast = t.getTeamidOfWT(milestone_id);
       String submit = t.getOneSubmitBymilestone(milestone_id, team_id);
        for (int i = 0; i < list.size(); i++) {
           t.EditTeamId(teamLast+"",list.get(i).getUser().getUser_id()+"", list.get(i).getTeam().getTeam_id()+"");
        }
        t.deleteSubmit(Integer.parseInt(submit));
        t.deleteTeam(team_id);
        response.sendRedirect("list_of_team");
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    List<Team> list2 = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String class_id = request.getParameter("class");
         String milestone = request.getParameter("milestone");
        TeamDAO t = new TeamDAO();
        int countTeam =t.countTeam();
        int x =countTeam;
        int counsubmit = t.countSubmit();
        int y = counsubmit;
        
        HttpSession session = request.getSession();
        List<Team> list1 = (List<Team>) session.getAttribute("list_team_upload");
        
        
        int total = t.getTotalMember(class_id);
        for (int i = 0; i < list1.size(); i++) {
           t.inserTeamUpload(x+list1.get(i).getTeam_id(), class_id);
           if(t.CheckteamInSubmit(x+list1.get(i).getTeam_id())){
                t.insertsubmitforupload(y+list1.get(i).getTeam_id(), class_id, milestone);
           }
          
           t.inserTeamMember(x+list1.get(i).getTeam_id(), list1.get(i).getListTeamMember().get(0).getUser().getUser_id(), "0");
        }
        t.inserTeamWaitingList(class_id);
        t.insertsubmitforWL(class_id, milestone);
        
        
        
        
//        String temp;
//       
//        
//            for (int i = 0; i < list2.size(); i++) {
//                for (int j = 0; j < total / group; j++) {
//                     temp = list2.get(i).getListTeamMember().get(j).isIs_leader()+"";
//                    if(temp.equals("true")){
//                        temp = "1";
//                    }else{
//                        temp = "0";
//                    }
//                    t.inserTeamMember(list2.get(i).getListTeamMember().get(j).getTeam().getTeam_id(),
//                            list2.get(i).getListTeamMember().get(j).getUser().getUser_id(),temp);
//                }
//            }
        
//        else {
//            for (int i = 0; i < list2.size() - 1; i++) {
//                for (int j = 0; j < total / group; j++) {
//                     temp = list2.get(i).getListTeamMember().get(j).isIs_leader()+"";
//                    if(temp.equals("true")){
//                        temp = "1";
//                    }else{
//                        temp = "0";
//                    }
//                    t.inserTeamMember(list2.get(i).getListTeamMember().get(j).getTeam().getTeam_id(),
//                            list2.get(i).getListTeamMember().get(j).getUser().getUser_id(),temp);
//                }
//                for (int j = 0; j < ((total / group) + (total % group)); j++) {
//                    temp = list2.get(list2.size() - 1).getListTeamMember().get(j).isIs_leader()+"";
//                    if(temp.equals("true")){
//                        temp = "1";
//                    }else{
//                        temp = "0";
//                    }
//                    t.inserTeamMember(list2.get(list2.size() - 1).getListTeamMember().get(j).getTeam().getTeam_id(),
//                            list2.get(list2.size() - 1).getListTeamMember().get(j).getUser().getUser_id(),temp);
//                }
//            }
//
//        }
        response.sendRedirect("list_of_team");

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
