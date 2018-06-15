package com.zmj.wine.controller;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * 用于获取二维码图片显示到页面上面
 * Created by jackiechan on 2018/2/2/上午11:31
 */
@WebServlet("/payment/image")
public class ImageController extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException, IOException {
        this.doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException, IOException {
        BufferedImage image = (BufferedImage)
                req.getSession().getAttribute("image");
        //获取存放的二维码
        if (image != null) {
            //发送到页面
            ImageIO.write(image, "JPEG", resp.getOutputStream());
        }
    }
}
