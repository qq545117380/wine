package com.zmj.wine.controller;

import com.zmj.wine.entity.*;
import com.zmj.wine.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/base")
public class BaseController {
    @Resource
    private IKindService kindService;

    @Resource
    private IBrandService brandService;

    @Resource
    private IYieldlyService yieldlyService;

    @Resource
    private IFlavourService flavourService;

    @Resource
    private IPriceService priceService;

    @Resource
    private IProofService proofService;

    @Resource
    private IContentService contentService;

    @Resource
    private IMiddleService middleService;

    @Resource
    private ItemService itemService;

    @RequestMapping("/pageHome")
    public String selectPageHome(Model model){
        List<Kind> kindList = kindService.selectAll();
        model.addAttribute("kindList",kindList);
        return "pageHome";
    }

    @RequestMapping("/list")
    public String selectAllOption(HttpServletRequest request, Model model){
        String kindId = request.getParameter("kindId");
        List<Brand> brandList = brandService.selectAllByKindId(Integer.parseInt(kindId));
        List<Yieldly> yieldlyList = yieldlyService.selectAllByKindId(Integer.parseInt(kindId));
        List<Flavour> flavourList = flavourService.selectAllByKindId(Integer.parseInt(kindId));
        List<Proof> proofList= proofService.selectAllByKindId(Integer.parseInt(kindId));
        List<Content> contentList = contentService.selectAllByKindId(Integer.parseInt(kindId));
        List<Price> priceList = priceService.selectAllByKindId(Integer.parseInt(kindId));

        model.addAttribute("brandList",brandList);
        model.addAttribute("yieldlyList",yieldlyList);
        model.addAttribute("flavourList",flavourList);
        model.addAttribute("proofList",proofList);
        model.addAttribute("contentList",contentList);
        model.addAttribute("priceList",priceList);

        int[] ints = middleService.selectAllByKindId(Integer.parseInt(kindId));
        List<Item> goodsList = new ArrayList<>();
        for(int i=0;i<ints.length;i++){
            System.out.println(ints.length);
            Item item = itemService.selectByPrimaryKey(ints[i]);
            goodsList.add(item);
        }
        model.addAttribute("goodsList",goodsList);
        Kind kind = kindService.selectByPrimaryKey(Integer.parseInt(kindId));
        model.addAttribute("kind",kind);

        return "pinpaibaijiu";
    }

    @RequestMapping("/byTerm")
    public String selectAllByBrand(HttpServletRequest request,
                                   Model model){
        Integer kindId = Integer.parseInt(request.getParameter("kindId"));
        Integer brandId = Integer.parseInt(request.getParameter("brandId"));
        String yieldlyId = request.getParameter("yieldlyId");
        String flavourId = request.getParameter("flavourId");
        String proofId = request.getParameter("proofId");
        String contentId = request.getParameter("contentId");
        String priceId = request.getParameter("priceId");
        //这里是否会出现  第二、三、...次，根据其他不同条件查询时，之前的id还存在的现象
        //如：第一次以  白酒、茅台、产地查，然后退出，再次以白酒、茅台、香型查    这次查询之前的产地ID还存在吗？
        Integer yId=null;
        Integer fId=null;
        Integer proofNo=null;
        Integer cId=null;
        Integer priceNo=null;
        Kind kind = kindService.selectByPrimaryKey(kindId);
        model.addAttribute("kind",kind);
        Brand brand = brandService.selectByPrimaryKey(brandId);
        ArrayList<Brand> brandList = new ArrayList<>();
        brandList.add(brand);
        model.addAttribute("brandList",brandList);
        //如果产地信息为空
        if(yieldlyId==null ){
            //根据酒类型、品牌这些属性查产地的id集合
            int[] yieldlys = middleService.selectYieldlyIdByTerm(kindId, brandId,
                    fId , proofNo, cId, priceNo);
            List<Yieldly> yieldlyList=new ArrayList<>();
           //遍历产地id集合
            for(int i=0;i<yieldlys.length;i++){
                //通过产地id查出产地对象（产地名）
                Yieldly yieldly = yieldlyService.selectByPrimaryKey(yieldlys[i]);
                //产地对象放入list中
                yieldlyList.add(yieldly);
            }
            //传递给页面
            model.addAttribute("yieldlyList",yieldlyList);
        }else{
            Yieldly yieldly = yieldlyService.selectByPrimaryKey(Integer.parseInt(yieldlyId));
            List<Yieldly> yieldlyList=new ArrayList<>();
            yieldlyList.add(yieldly);
            model.addAttribute("yieldlyList",yieldlyList);
        }

        if(flavourId==null){
            int[] flavours = middleService.selectFlavourIdByTerm(kindId, brandId,
                    yId, proofNo, cId, priceNo);
            List<Flavour> flavourList=new ArrayList<>();
            for(int i=0;i<flavours.length;i++){
                Flavour flavour = flavourService.selectByPrimaryKey(flavours[i]);
                flavourList.add(flavour);
            }
            model.addAttribute("flavourList",flavourList);
        }else{
            Flavour flavour = flavourService.selectByPrimaryKey(Integer.parseInt(flavourId));
            List<Flavour> flavourList=new ArrayList<>();
            flavourList.add(flavour);
            model.addAttribute("flavourList",flavourList);
        }
        if(proofId==null ){
            final int[] proofs = middleService.selectProofIdByTerm(kindId,
                    brandId, yId, fId, cId, priceNo);
            List<Proof> proofList=new ArrayList<>();
            for(int i=0;i<proofs.length;i++){
                Proof proof = proofService.selectByPrimaryKey(proofs[i]);
                proofList.add(proof);
            }
            model.addAttribute("proofList",proofList);
        }else{
            Proof proof = proofService.selectByPrimaryKey(Integer.parseInt(proofId));
            List<Proof> proofList=new ArrayList<>();
            proofList.add(proof);
            model.addAttribute("proofList",proofList);
        }
        if(contentId==null){
            int[] contents = middleService.selectContentIdByTerm(kindId,
                    brandId, yId, fId, proofNo, priceNo);
            List<Content> contentList=new ArrayList<>();
            for(int i=0;i<contents.length;i++){
                Content content = contentService.selectByPrimaryKey(contents[i]);
                contentList.add(content);
            }
            model.addAttribute("contentList",contentList);
        }else {
            Content content = contentService.selectByPrimaryKey(Integer.parseInt(contentId));
            List<Content> contentList=new ArrayList<>();
            contentList.add(content);
            model.addAttribute("contentList",contentList);
        }
        if(priceId==null ){
            int[] prices = middleService.selectPriceByTerm(kindId,
                    brandId, yId, fId, proofNo, cId);
            List<Price> priceList=new ArrayList<>();
            for(int i=0;i<prices.length;i++){
                Price price = priceService.selectByPrimaryKey(prices[i]);
                priceList.add(price);
            }
            model.addAttribute("priceList",priceList);
        }else {
            Price price = priceService.selectByPrimaryKey(Integer.parseInt(priceId));
            List<Price> priceList=new ArrayList<>();
            priceList.add(price);
            model.addAttribute("priceList",priceList);
        }

        int[] goods = middleService.selectByTerm(kindId,
                brandId, yId, fId, proofNo, cId, priceNo);
        List<Item> goodsList=new ArrayList<>();
        for(int i=0;i<goods.length;i++){
            Item item = itemService.selectByPrimaryKey(goods[i]);
            goodsList.add(item);
        }
        model.addAttribute("goodsList",goodsList);
        return "pinpaibaijiu";
    }

    //特卖会商品
    @RequestMapping("/promotion")
    public String promotion(Model model){
        List<Item> itemList = itemService.selectByDescribe("特卖会");
        model.addAttribute("itemList",itemList);
        return "promotion";
    }

}
