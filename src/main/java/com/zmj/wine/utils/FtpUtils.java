package com.zmj.wine.utils;

import org.apache.commons.net.ftp.FTPReply;
import org.xbib.io.ftp.client.FTPClient;

import java.io.IOException;
import java.io.InputStream;

/**
 * @athor hutao
 * 文件上传工具类
 **/
public class FtpUtils {

    //指定图片上传的文件夹
    public static String pathName="/var/www/html/zmjtp/";

    //通过ftp进行图片上传的功能
    public static boolean upload(String fileName, InputStream inputStream) {
        //创建ftp 上传客户端
        FTPClient ftp = new FTPClient();
        //通过客户端 连接服务器
        try {
            ftp.connect("47.93.226.204", 21);
            ftp.login("test", "123456");
            //获取应答密码
            int replyCode = ftp.getReplyCode();
            //如果服务端 应答密码不正确,返回false
            if (!FTPReply.isPositiveCompletion(replyCode)) {
                return false;
            }
            //设置上传文件的类型
            ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
            //指定文件上传的路径
            ftp.changeWorkingDirectory(pathName);
            //将文件进行上传
            ftp.storeFile(fileName, inputStream);
            ftp.logout();//上传完成，退出连接
            return true;
        } catch (IOException e) {
            e.printStackTrace();
        }

        return false;
    }
}
