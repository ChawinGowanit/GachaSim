
# GachaSim

# Gacha_DB.sql is Defualt databases for the website 
run the following code to dumped Gacha_DB.sql into you database <br />
``` create database [database_name] ``` <br />
``` mysql -u [user] -p [database_name] < Gacha_DB.sql ``` <br />
  Gacha_DB.sql have the following data <br />
    &emsp; 1. 1 banner name "Blue Archive" <br />
    &emsp; 2. items have all SSR SR R rarity with item name and image_url <br />
    &emsp; 3. banneritems all items in 2. are in banner "Blue Archive" <br />
    &emsp; 4. 5 redeemcodes the code are <br />
      &emsp;&emsp; 1.redeemcode1 <br />
      &emsp;&emsp; 2.redeemcode2 <br />
      &emsp;&emsp; 3.redeemcode3 <br />
      &emsp;&emsp; 4.redeemcode4 <br />
      &emsp;&emsp; 5.redeemcode5 <br />
      &emsp;&emsp; each redeemcode give 12000 credit
# to test the system run the following code <br /> 
```ruby rails test:system ```<br /> 
