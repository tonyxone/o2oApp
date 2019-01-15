package com.o2o.service.impl;

import com.o2o.dao.ShopDao;
import com.o2o.dto.ShopExecution;
import com.o2o.entity.Shop;
import com.o2o.enums.ShopStateEnum;
import com.o2o.exceptions.ShopOperationException;
import com.o2o.service.ShopService;
import com.o2o.util.ImageUtil;
import com.o2o.util.PathUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

@Service
public class ShopServiceImpl implements ShopService {

    @Autowired
    private ShopDao shopDao;

    @Override
    @Transactional
    public ShopExecution addShop(Shop shop, InputStream shopImgInputStream,String fileName) {

        if(shop == null){
            return new ShopExecution(ShopStateEnum.NULL_SHOP);
        }

        try{

            shop.setEnableStatus(0);
            shop.setCreateTime(new Date());
            shop.setLastEditTime(new Date());
            int effectedNum = shopDao.insertShop(shop);

            if(effectedNum <= 0){
                throw new ShopOperationException("店铺创建失败");
            }else{
                if(shopImgInputStream != null){
                    //存储图片
                    try{
                        addShopImg(shop,shopImgInputStream,fileName);
                    }catch (Exception e){
                        throw new ShopOperationException("addShopImg error:" + e.getMessage());
                    }

                    effectedNum = shopDao.updateShop(shop);
                    if(effectedNum <= 0) {
                        throw new ShopOperationException("更新图片失败");
                    }
                }
            }

        }catch (Exception e){
            throw new ShopOperationException("addShop error:" + e.getMessage());
        }

        return new ShopExecution(ShopStateEnum.CHECK,shop);
    }

    private void addShopImg(Shop shop, InputStream shopImgInputStream,String fileName) throws IOException {

        String dest = PathUtil.getShopImagePath(shop.getShopId());
        String shopImgAddr = ImageUtil.generateThumbnail(shopImgInputStream,fileName,dest);
        shop.setShopImg(shopImgAddr);
    }
}
