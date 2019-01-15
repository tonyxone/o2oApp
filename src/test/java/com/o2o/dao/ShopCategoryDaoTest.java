package com.o2o.dao;

import com.fasterxml.jackson.databind.ser.Serializers;
import com.o2o.BaseTest;
import com.o2o.entity.ShopCategory;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.assertEquals;

public class ShopCategoryDaoTest extends BaseTest {

    @Autowired
    private ShopCategoryDao shopCategoryDao;

    @Test
    public void testQueryShopCategory(){
      List<ShopCategory> shopCategoryList = shopCategoryDao.queryShopCategory(new ShopCategory());
      assertEquals(21,shopCategoryList.size());

      ShopCategory testCategory = new ShopCategory();
      ShopCategory parentCategory = new ShopCategory();
      parentCategory.setShopCategoryId(10L);
      testCategory.setParent(parentCategory);

      shopCategoryList = shopCategoryDao.queryShopCategory(testCategory);
      //assertEquals(1,shopCategoryList.size());
      System.out.println(shopCategoryList.get(0).getShopCategoryName());
        System.out.println(shopCategoryList.get(1).getShopCategoryName());
    }

}
