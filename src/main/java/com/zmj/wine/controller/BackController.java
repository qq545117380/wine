package com.zmj.wine.controller;

import com.zmj.wine.entity.Item;
import com.zmj.wine.service.ItemService;
import com.zmj.wine.utils.FtpUtils;
import com.zmj.wine.utils.PageBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

/**
 * @athor hutao
 *
 **/
@Controller
@RequestMapping("/back")
public class BackController {
    //定义logger日志
    private static Logger logger = LoggerFactory.getLogger(BackController.class);
    @Resource
    private ItemService itemService;


    //模拟跳转到登录页面
    @RequestMapping("/login")
    public String login(){
        return "backPage/backlogin";
    }

    //模拟登录后台
    @RequestMapping("/index")
    public String index(){
        return "backPage/index";
    }


    //查询所有商品信息
    @RequestMapping("/item/{currentPage}")
    public String selectItem(@PathVariable("currentPage")int currentPage,
                             Model model){
//        List<Item> itemList = itemService.selectItemAll();
//        model.addAttribute("itemList",itemList);
        PageBean<Item> itemPageBean = itemService.selectItemByPage(currentPage);
        model.addAttribute("itemPageBean",itemPageBean);
        int itemNum = itemService.selectItemNum();
        model.addAttribute("itemNum",itemNum);
        return "backPage/picture-list";
    }

    //后台预添加商品
    @RequestMapping("/preAdd")
    public String preAdd(){
        return "backPage/picture-add";
    }

    //添加商品
    @RequestMapping("/add")
    public String add(@RequestParam("file") MultipartFile file, Item item){
        if (!file.isEmpty()){
            //获得上传文件的名字
            String filename =file.getOriginalFilename();
            //使用uuid 设置图片的名字，以免图片名称重复，图片被覆盖
            String imgName = UUID.randomUUID()+"-"+filename;
            item.setImg1(imgName);//设置img1 的名称
            try(InputStream inputStream = file.getInputStream();
            ) {
                boolean upload = FtpUtils.upload(imgName,inputStream);
                if (upload){
                    logger.debug("文件上传成功---------------");
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        itemService.addItem(item);
        return "redirect:/back/item/1";
    }


}
