/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.web.controller;

import com.web.model.Quanlitintuc;
import com.web.service.QuanLiTinTucService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AddNewsServlet", urlPatterns = {"/AddNewsServlet"})

 public class AddNewsServlet extends HttpServlet {
        //Tên folder dẫn ảnh vào
        private static final String UPLOAD_DIR = "image";
        
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            //Fix lỗi tiếng việt
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");
            try {
                //Thêm value vào database
                
                Quanlitintuc QuanLiTinTuc = new Quanlitintuc();
                QuanLiTinTuc.setIdtinTuc(Integer.parseInt(request.getParameter("IdtinTuc")));
                QuanLiTinTuc.setTieuDe(request.getParameter("tieuDe"));
                QuanLiTinTuc.setMota(request.getParameter("mota"));
                QuanLiTinTuc.setBaiDang(request.getParameter("baiDang"));
                QuanLiTinTuc.setImages(uploadFile(request));

                //Tạo mới service và gọi hàm Insert của nó
                QuanLiTinTucService sdao = new QuanLiTinTucService();
                sdao.InsertNews(QuanLiTinTuc);

                //Kết thúc phiên đưa đến trang cần hiển thị
                response.sendRedirect(request.getContextPath() + "/ManagerNews.jsp");

            } catch (IOException | NumberFormatException ex) {
                Logger.getLogger(AddNewsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        private String uploadFile(HttpServletRequest request) throws IOException, ServletException {
            String fileName = "";
            try {
                Part filePart = request.getPart("images");

                //fileName: picture-001.jpg
                fileName = (String) getFileName(filePart);

                //applicationPath: C:\Users\Lonely\Documents\NetBeansProjects\Shop_Bonfire\build\web
                String applicationPath = request.getServletContext().getRealPath("");

                //File.separator: \ 
                String basePath = applicationPath + File.separator + UPLOAD_DIR + File.separator;

                InputStream inputStream = null;
                OutputStream outputStream = null;
                try {
                    File outputFilePath = new File(basePath + fileName);
                    inputStream = filePart.getInputStream();
                    outputStream = new FileOutputStream(outputFilePath);
                    int read = 0;
                    final byte[] bytes = new byte[1024];
                    while ((read = inputStream.read(bytes)) != -1) {
                        outputStream.write(bytes, 0, read);
                    }
                } catch (IOException e) {
                    fileName = "";
                } finally {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                }
            } catch (IOException | ServletException e) {
                fileName = "";
            }
            return fileName;
        }

        private String getFileName(Part part) {
            final String partHeader = part.getHeader("content-disposition");
            System.out.println("*****partHeader :" + partHeader);
            for (String content : part.getHeader("content-disposition").split(";")) {
                if (content.trim().startsWith("filename")) {
                    return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
                }
            }
            return null;
        }

        @Override
        public String getServletInfo() {
            return "Short description";
        }// </editor-fold>
}
