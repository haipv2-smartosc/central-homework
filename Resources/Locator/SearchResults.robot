*** Variables ***
#Elements
${eTxt_ShowSearchResult}        //h1[text()="'tv'"]
${eDropL_BrandName}             //div[@id='brand_name']
${eCBox_BrandNameSony}          (//div[@filter-option='Brand Name_sony']/div)[1]
${List_ProductReturn}           //div[@data-index]
${eImg_1stProductList}          (//div[@data-index='0']//img)[1]
${eTxt_Cart_Quan1}              //div[@id='mini-cart']//div[contains(@id,'inf-viewQty') and text()=1]
${eTxt_Cart_Quan2}              //div[@id='mini-cart']//span[text()='2']
${eDropl_PriceRange}            //div[@id='Price Range']
${eIcon_MaxPrice}               (//div[@class='inputRange']//span[2])[1]
${eBtn_1stProduct_Quickbuy}     //div[@data-index='0']//div[contains(@id,'btn-viewFlip')]
${eBtn_1stProduct_AddToCart}    //div[@data-index='0']//div[contains(@id,'btn-addCart')]//span[text() = 'ADD TO BAG']/..
