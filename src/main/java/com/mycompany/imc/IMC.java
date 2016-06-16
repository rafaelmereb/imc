/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.imc;

import java.io.IOException;
import java.text.DecimalFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alunoinf
 */
public class IMC extends HttpServlet {

    public double imc;
    public String resultado;

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

        String altura = request.getParameter("altura");
        String peso = request.getParameter("peso");
        String sexo = request.getParameter("sexo");
        /* Validação */

        altura = altura.replace(",", ".");
        peso = peso.replace(",", ".");
        
        /* Cálculo do imc */
        imc = (Double.parseDouble(peso) / (Double.parseDouble(altura) * Double.parseDouble(altura)));

        if (sexo.equals("masculino")) {
            if (imc < 18) {
                resultado = "Você está abaixo do peso!";
            } else if (imc > 18 & imc < 25) {
                resultado = "Você está no peso normal!";
            } else if (imc > 25 & imc < 30) {
                resultado = "Você está acima do peso!";
            } else if (imc > 30) {
                resultado = "Você está Obeso!!!";
            }
        } else { // feminino

            if (imc < 19) {
                resultado = "Você está abaixo do peso!";
            } else if (imc > 19 & imc < 26) {
                resultado = "Você está no peso normal!";
            } else if (imc > 26 & imc < 32) {
                resultado = "Você está acima do peso!";
            } else if (imc > 32) {
                resultado = "Você está Obesa!!!";
            }

        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp?imc=" + imc + "&resultado=" + resultado);
        dispatcher.forward(request, response);

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
