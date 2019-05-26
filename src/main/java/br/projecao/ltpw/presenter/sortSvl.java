/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.projecao.ltpw.presenter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(name = "sortSvl", urlPatterns = {"/sortSvl"})
public class sortSvl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String objeto = request.getParameter("objeto");
        String[] ganhador = request.getParameterValues("prof1");

        int putz = (int) (Math.random() * ganhador.length);
        String[] innerArray = ganhador[putz].split(",");

        request.setAttribute("objeto", objeto);
        request.setAttribute("profl", Arrays.toString(innerArray).replace("]","").replace("[",""));

        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }

}
