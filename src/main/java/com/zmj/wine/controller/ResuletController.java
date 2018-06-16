package com.zmj.wine.controller;
import com.zmj.wine.utils.PayCommonUtil;
import com.zmj.wine.utils.PayConfigUtil;
import com.zmj.wine.utils.XMLUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;
/**
 * 处理支付结果的servlet
 * Created by jackiechan on 2018/2/2/上午11:16
 * 用于响应微信支付结果的 servlet
 */
@WebServlet("/payment/result")
public class ResuletController extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            weixin_notify(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
    /**
     * 解析微信返回的支付结果
     * @param request
     * @param response
     * @throws Exception
     */
    public void weixin_notify(HttpServletRequest request,HttpServletResponse response) throws Exception{
        String writeContent = "默认支付失败";
        //因为没有重定向,所以测试时无法知道支付结果，因此将支付结果写入文件，开发时访问文件查看，实际开发中删除
        String path = request.getServletContext().getRealPath("file");
        //保存结果文件的位置
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(path+"/result.txt", true);
        //创建输出流，写入结果用，实际开发中删除由此到上面的内容
        //读取参数
        InputStream inputStream ;
        StringBuffer sb = new StringBuffer();
        inputStream = request.getInputStream();
        String s ;
        BufferedReader in = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        while ((s = in.readLine()) != null){
            sb.append(s);
        }
        in.close();
        inputStream.close();
        //解析xml成map
        Map<String, String> m = new HashMap<String, String>();
        m = XMLUtil.doXMLParse(sb.toString());
        //过滤空 设置 TreeMap
        SortedMap<Object,Object> packageParams = new TreeMap<Object,Object>();
        Iterator it = m.keySet().iterator();
        while (it.hasNext()) {
            String parameter = (String) it.next();
            String parameterValue = m.get(parameter);
            String v = "";
            if(null != parameterValue) {
                v = parameterValue.trim();
            }
            packageParams.put(parameter, v);
        }
        // 帐号信息
        String key = PayConfigUtil.API_KEY; // key
        System.err.println(packageParams);
        String out_trade_no = (String)packageParams.get("out_trade_no");
        //账单号,实际开发中应该在下面的IF中，除非需要对每个订单的每次支付结果做记录
        //判断签名是否正确
        if(PayCommonUtil.isTenpaySign("UTF-8", packageParams,key)) {
            //------------------------------
            //出来业务开始
            //------------------------------
            String resXml = "";
            if("SUCCESS".equals((String)packageParams.get("result_code"))){
                // 这里是支付成功
                //////////执行自己的业务逻辑////////////////
                String mch_id = (String)packageParams.get("mch_id");
                String openid = (String)packageParams.get("openid");
                String is_subscribe = (String)packageParams.get("is_subscribe");
                // String out_trade_no = (String)packageParams.get("out_trade_no");
                String total_fee = (String)packageParams.get("total_fee");
                System.err.println("mch_id:"+mch_id);
                System.err.println("openid:"+openid);
                System.err.println("is_subscribe:"+is_subscribe);
                System.err.println("out_trade_no:"+out_trade_no);
                System.err.println("total_fee:"+total_fee);
                //////////执行自己的业务逻辑////////////////
                System.err.println("支付成功");
                writeContent = "订单:" + out_trade_no + "支付成功";
                //拼接支付结果信息，写入文件，实际开发中删除
                //通知微信.异步确认成功.必写.不然会一直通知后台.八次之后就会认为交易失败了
                resXml = "<xml>" + "<return_code><![CDATA[SUCCESS]]> </return_code>"
                        + "<return_msg><![CDATA[OK]]></return_msg>" + "</xml> ";
            } else {
                writeContent = "订单"+out_trade_no+"支付失败,错误信息" +
                        packageParams.get("err_code");
                //拼写支付结果信息，写入文件，实际开发中删除
                System.err.println("订单"+out_trade_no+"支付失败,错误信息" +
                        packageParams.get("err_code"));
                resXml = "<xml>" + "<return_code><![CDATA[FAIL]]></return_code>"
                        + "<return_msg><![CDATA[报文为空]]></return_msg>" + "</xml>";
            }
            //------------------------------
            //出来业务完毕
            //------------------------------
            BufferedOutputStream out = new BufferedOutputStream(
                    response.getOutputStream());
            out.write(resXml.getBytes());
            out.flush();
            out.close();
        } else{
            writeContent = "订单"+out_trade_no+"通知签名验证失败，支付失败";
            //拼写支付结果信息，写入文件，实际开发中删除
            System.err.println("通知签名验证失败");
        }
        fileOutputStream.write(writeContent.getBytes());
        //将支付结果写入文件，实际开发中删除
        fileOutputStream.close();//将支付结果写入文件，实际开发中删除
    }
}
