CREATE SCHEMA IF NOT EXISTS `project_10` ;


CREATE TABLE IF NOT EXISTS `project_10`.`invoice` (
  `Invoice_id` VARCHAR(45) NOT NULL,
  `Order_id` VARCHAR(45) NOT NULL,
  `Product Val` VARCHAR(45) NOT NULL,
  `Product Discount` VARCHAR(45) NOT NULL,
  `Service fees` VARCHAR(45) NOT NULL,
  `Promotion_id` VARCHAR(45) NULL DEFAULT NULL,
  `PromotionVal` VARCHAR(45) NULL DEFAULT NULL,
  `Subtotal` VARCHAR(45) NOT NULL,
  `Tax23` VARCHAR(45) NOT NULL,
  `Total` VARCHAR(45) NOT NULL,
  `Payment_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Invoice_id`))
  ;

CREATE TABLE IF NOT EXISTS `project_10`.`order_` (
  `Order_id` VARCHAR(45) NOT NULL,
  `Client_id` VARCHAR(45) NOT NULL,
  `Courier_id` VARCHAR(45) NOT NULL,
  `Restaurant_id` VARCHAR(45) NOT NULL,
  `Product_id` VARCHAR(45) NOT NULL,
  `Product Quantity` VARCHAR(45) NOT NULL,
  `Product_Total` VARCHAR(45) NOT NULL,
  `Order_date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Order_id`))
;

CREATE TABLE IF NOT EXISTS `project_10`.`promotion` (
  `Promo_id` VARCHAR(45) NOT NULL,
  `Promo_code` VARCHAR(45) NOT NULL,
  `Promo_description` VARCHAR(45) NOT NULL,
  `Promo_percent` VARCHAR(45) NOT NULL,
  `Start_date` VARCHAR(45) NOT NULL,
  `End_date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Promo_id`))
  ;
  
  CREATE TABLE IF NOT EXISTS `project_10`.`region` (
  `Region_id` VARCHAR(45) NOT NULL,
  `Region_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Region_id`))
  ;
  
 CREATE TABLE IF NOT EXISTS `project_10`.`payment` (
  `Payment_id` VARCHAR(45) NOT NULL,
  `Payment_method` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Payment_id`))
  ; 
  
  CREATE TABLE IF NOT EXISTS `project_10`.`delivery_vehicle` (
  `Delivery_id` VARCHAR(45) NOT NULL,
  `Vehicle` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Delivery_id`))
  ; 
  
  CREATE TABLE IF NOT EXISTS `project_10`.`product` (
  `Product_id` VARCHAR(45) NOT NULL,
  `Restaurant_id` VARCHAR(45) NOT NULL,
  `Product_name` VARCHAR(45) NOT NULL,
  `Product_val` VARCHAR(45) NOT NULL,
  `Product_discount` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`Product_id`))
  ;
  
   CREATE TABLE IF NOT EXISTS `project_10`.`courier` (
  `Courier_id` VARCHAR(45) NOT NULL,
  `First_name` VARCHAR(45) NOT NULL,
  `Last_name` VARCHAR(45) NOT NULL,
  `Delivery_id` VARCHAR(45) NOT NULL,
  `Contact_id` VARCHAR(45) NOT NULL,
  `County_id` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`Courier_id`))
  ; 
  
  CREATE TABLE IF NOT EXISTS `project_10`.`order_rating` (
  `Rating_id` VARCHAR(45) NOT NULL,
  `Order_id` VARCHAR(45) NOT NULL,
  `Rate` VARCHAR(45) NOT NULL,
  `Client_id` VARCHAR(45) NOT NULL,
  `Restaurant_id` VARCHAR(45) NOT NULL,
  `Rate_date` VARCHAR(45) NOT NULL,
  `Comment` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`Rating_id`))
  ;
  
   CREATE TABLE IF NOT EXISTS `project_10`.`contact` (
  `Contact_id` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Cell_number` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Contact_id`))
  ;
  
  CREATE TABLE IF NOT EXISTS `project_10`.`client` (
  `Client_id` VARCHAR(45) NOT NULL,
  `First_name` VARCHAR(45) NOT NULL,
  `Last_name` VARCHAR(45) NOT NULL,
  `Location_id` VARCHAR(45) NOT NULL,
  `Contact_id` VARCHAR(45) NOT NULL,
  `Payment_id` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`Client_id`))
  ;
  
    CREATE TABLE IF NOT EXISTS `project_10`.`restaurant` (
  `Restaurant_id` VARCHAR(45) NOT NULL,
  `Restaurant_name` VARCHAR(45) NOT NULL,
  `Location_id` VARCHAR(45) NOT NULL,
  `Contact_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Restaurant_id`))
  ;
 
     CREATE TABLE IF NOT EXISTS `project_10`.`county` (
  `County_id` VARCHAR(45) NOT NULL,
  `County_name` VARCHAR(45) NOT NULL,
  `Region_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`County_id`))
  ;
  
      CREATE TABLE IF NOT EXISTS `project_10`.`location` (
  `Location_id` VARCHAR(45) NOT NULL,
  `Street_name` VARCHAR(45) NOT NULL,
  `Postal_code` VARCHAR(45) NOT NULL,
  `County_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Location_id`))
  ;
  
  
  
  CREATE TABLE IF NOT EXISTS `project_10`.`Business_volume` (
  `ID` VARCHAR(45) NOT NULL,
  `Invoice_id` VARCHAR(45) NOT NULL,
  `Total_BV` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
  ;
  
  INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv01', 'Ord_1', '18', '0', '2.99', '0', '0', '18', '4.14', '22.14', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv02', 'Ord_2', '13', '2', '2.99', '0', '0', '26', '5.98', '31.98', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv03', 'Ord_3', '10', '0', '2.99', 'Prom1', '1', '9', '2.07', '11.07', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv04', 'Ord_4', '12', '0', '2.99', '0', '0', '12', '2.76', '14.76', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv05', 'Ord_5', '22', '0', '2.99', 'Prom2', '13.2', '74.8', '17.20', '92.00', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv06', 'Ord_6', '22', '0', '2.99', '0', '0', '22', '5.06', '27.06', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv07', 'Ord_7', '15', '1.5', '2.99', '0', '0', '45', '10.35', '55.35', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv08', 'Ord_8', '23', '0', '2.99', '0', '0', '69', '15.87', '84.87', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv09', 'Ord_9', '15', '0', '2.99', '0', '0', '30', '6.90', '36.90', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv10', 'Ord_10', '12', '1.5', '2.99', '0', '0', '12', '2.76', '14.76', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv11', 'Ord_11', '9', '0', '2.99', '0', '0', '36', '8.28', '44.28', 'Pay3');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv12', 'Ord_12', '17', '0', '2.99', 'Prom2', '2.55', '14.45', '3.32', '17.77', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv13', 'Ord_13', '10', '0', '2.99', '0', '0', '30', '6.90', '36.90', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv14', 'Ord_14', '21', '0', '2.99', '0', '0', '63', '14.49', '77.49', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv15', 'Ord_15', '21', '0', '2.99', '0', '0', '42', '9.66', '51.66', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv16', 'Ord_16', '11', '0', '2.99', 'Prom1', '3.3', '29.7', '6.83', '36.53', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv17', 'Ord_17', '20', '2', '2.99', '0', '0', '20', '4.60', '24.60', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv18', 'Ord_18', '15', '2', '2.99', '0', '0', '30', '6.90', '36.90', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv19', 'Ord_19', '19', '0', '2.99', '0', '0', '76', '17.48', '93.48', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv20', 'Ord_20', '21', '0', '2.99', '0', '0', '63', '14.49', '77.49', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv21', 'Ord_21', '17', '0', '2.99', 'Prom2', '2.55', '14.45', '3.32', '17.77', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv22', 'Ord_22', '14', '0', '2.99', '0', '0', '56', '12.88', '68.88', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv23', 'Ord_23', '10', '0', '2.99', '0', '0', '30', '6.90', '36.90', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv24', 'Ord_24', '18', '0', '2.99', '0', '0', '54', '12.42', '66.42', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv25', 'Ord_25', '20', '0', '2.99', '0', '0', '80', '18.40', '98.40', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv26', 'Ord_26', '21', '0', '2.99', '0', '0', '42', '9.66', '51.66', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv27', 'Ord_27', '19', '0', '2.99', '0', '0', '38', '8.74', '46.74', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv28', 'Ord_28', '11', '0', '2.99', '0', '0', '33', '7.59', '40.59', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv29', 'Ord_29', '11', '0', '2.99', 'Prom2', '4.95', '28.05', '6.45', '34.50', 'Pay1');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv30', 'Ord_30', '13', '0', '2.99', '0', '0', '39', '8.97', '47.97', 'Pay2');
INSERT INTO `project_10`.`invoice` (`Invoice_id`, `Order_id`, `Product Val`, `Product Discount`, `Service fees`, `Promotion_id`, `PromotionVal`, `Subtotal`, `Tax23`, `Total`, `Payment_id`) VALUES ('Inv31', 'Ord_31', '15', '0', '2.99', 'Prom6', '6', '9', '2.07', '11.07', 'Pay1');


INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_01', 'Clie20', 'Cour8', 'Rest5', 'Prod33', '1', '18', '2020/01/01');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_02', 'Clie7', 'Cour8', 'Rest12', 'Prod62', '2', '26', '2020/30/01');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_03', 'Clie4', 'Cour10', 'Rest13', 'Prod16', '1', '10', '2020/14/03');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_04', 'Clie8', 'Cour1', 'Rest11', 'Prod6', '1', '12', '2020/04/01');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_05', 'Clie22', 'Cour6', 'Rest4', 'Prod28', '4', '88', '2020/06/01');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_06', 'Clie7', 'Cour2', 'Rest3', 'Prod102', '1', '22', '2020/06/29');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_07', 'Clie2', 'Cour7', 'Rest2', 'Prod24', '3', '45', '2020/08/13');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_08', 'Clie2', 'Cour5', 'Rest11', 'Prod7', '3', '69', '2020/08/30');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_09', 'Clie21', 'Cour7', 'Rest12', 'Prod64', '2', '30', '2020/09/29');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_10', 'Clie7', 'Cour2', 'Rest4', 'Prod29', '1', '12', '2020/11/01');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_11', 'Clie1', 'Cour4', 'Rest6', 'Prod93', '4', '36', '2020/12/13');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_12', 'Clie11', 'Cour4', 'Rest11', 'Prod8', '1', '17', '2021/03/02');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_13', 'Clie25', 'Cour8', 'Rest7', 'Prod45', '3', '30', '2021/04/02');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_14', 'Clie24', 'Cour3', 'Rest11', 'Prod9', '3', '63', '2021/04/06');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_15', 'Clie2', 'Cour4', 'Rest7', 'Prod46', '2', '42', '2021/04/15');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_16', 'Clie24', 'Cour10', 'Rest10', 'Prod54', '3', '33', '2021/05/08');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_17', 'Clie2', 'Cour7', 'Rest4', 'Prod30', '1', '20', '2021/05/09');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_18', 'Clie25', 'Cour8', 'Rest11', 'Prod10', '2', '30', '2021/05/12');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_19', 'Clie25', 'Cour2', 'Rest14', 'Prod74', '4', '76', '2021/05/14');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_20', 'Clie9', 'Cour10', 'Rest7', 'Prod46', '3', '63', '2021/05/22');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_21', 'Clie12', 'Cour4', 'Rest10', 'Prod55', '1', '17', '2021/06/27');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_22', 'Clie24', 'Cour8', 'Rest15', 'Prod81', '4', '56', '2021/06/29');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_23', 'Clie21', 'Cour8', 'Rest15', 'Prod90', '3', '30', '2021/06/30');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_24', 'Clie13', 'Cour2', 'Rest10', 'Prod56', '3', '54', '2021/07/23');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_25', 'Clie7', 'Cour3', 'Rest14', 'Prod78', '4', '80', '2021/08/04');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_26', 'Clie24', 'Cour7', 'Rest5', 'Prod34', '2', '42', '2021/09/16');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_27', 'Clie2', 'Cour9', 'Rest7', 'Prod47', '2', '38', '2021/09/16');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_28', 'Clie8', 'Cour10', 'Rest5', 'Prod35', '3', '33', '2021/09/24');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_29', 'Clie11', 'Cour9', 'Rest5', 'Prod35', '3', '33', '2021/10/22');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_30', 'Clie18', 'Cour2', 'Rest2', 'Prod25', '3', '39', '2021/10/31');
INSERT INTO `project_10`.`order_` (`Order_id`, `Client_id`, `Courier_id`, `Restaurant_id`, `Product_id`, `Product Quantity`, `Product_Total`, `Order_date`) VALUES ('Ord_31', 'Clie10', 'Cour5', 'Rest12', 'Prod70', '1', '15', '2021/11/11');


INSERT INTO `project_10`.`promotion` (`Promo_id`, `Promo_code`, `Promo_description`, `Promo_percent`, `Start_date`, `End_date`) VALUES ('Prom1', 'Welcome', 'New Client Promo', '0.1', '-', '-');
INSERT INTO `project_10`.`promotion` (`Promo_id`, `Promo_code`, `Promo_description`, `Promo_percent`, `Start_date`, `End_date`) VALUES ('Prom2', 'SupThursd', 'Super Thursday', '0.15', '-', '-');
INSERT INTO `project_10`.`promotion` (`Promo_id`, `Promo_code`, `Promo_description`, `Promo_percent`, `Start_date`, `End_date`) VALUES ('Prom3', 'BlkFrd', 'Black Friday', '0.4', '25/11/2020', '27/11/2020');
INSERT INTO `project_10`.`promotion` (`Promo_id`, `Promo_code`, `Promo_description`, `Promo_percent`, `Start_date`, `End_date`) VALUES ('Prom4', 'XmasTime', 'Merry Christmas', '0.2', '24/12/2020', '26/12/2020');
INSERT INTO `project_10`.`promotion` (`Promo_id`, `Promo_code`, `Promo_description`, `Promo_percent`, `Start_date`, `End_date`) VALUES ('Prom5', '1YearOld', 'Happy Birthday Us', '0.5', '29/12/2020', '29/12/2020');
INSERT INTO `project_10`.`promotion` (`Promo_id`, `Promo_code`, `Promo_description`, `Promo_percent`, `Start_date`, `End_date`) VALUES ('Prom6', 'BlkFrd', 'Black Friday', '0.4', '26/11/2021', '28/11/2021');


INSERT INTO `project_10`.`region` (`Region_id`, `Region_name`) VALUES ('Reg1', 'Ocidental');
INSERT INTO `project_10`.`region` (`Region_id`, `Region_name`) VALUES ('Reg2', 'Centro');
INSERT INTO `project_10`.`region` (`Region_id`, `Region_name`) VALUES ('Reg3', 'Oriental');
INSERT INTO `project_10`.`region` (`Region_id`, `Region_name`) VALUES ('Reg4', 'Norte');
INSERT INTO `project_10`.`region` (`Region_id`, `Region_name`) VALUES ('Reg5', 'Centro Histórico');


INSERT INTO `project_10`.`payment` (`Payment_id`, `Payment_method`) VALUES ('Pay1', 'Cash');
INSERT INTO `project_10`.`payment` (`Payment_id`, `Payment_method`) VALUES ('Pay2', 'Card');
INSERT INTO `project_10`.`payment` (`Payment_id`, `Payment_method`) VALUES ('Pay3', 'Ticket');


INSERT INTO `project_10`.`delivery_vehicle` (`Delivery_id`, `Vehicle`) VALUES ('Del1', 'Car');
INSERT INTO `project_10`.`delivery_vehicle` (`Delivery_id`, `Vehicle`) VALUES ('Del2', 'Motorcycle');
INSERT INTO `project_10`.`delivery_vehicle` (`Delivery_id`, `Vehicle`) VALUES ('De3', 'Scooter');
INSERT INTO `project_10`.`delivery_vehicle` (`Delivery_id`, `Vehicle`) VALUES ('Del4', 'Bicycle');


INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod1', 'Rest1', 'Ai frutti di mare', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod2', 'Rest1', 'Calzone', '18.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod3', 'Rest1', 'Focaccia al rosmarino', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod4', 'Rest1', 'Pizza ai funghi e salsiccia', '11.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod5', 'Rest11', 'Pizza al taglio', '14.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod6', 'Rest11', 'Pizza ai quattro formaggio', '12.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod7', 'Rest11', 'Pizza alla napoletana', '23.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod8', 'Rest11', 'Pizza capricciosa', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod9', 'Rest11', 'Pizza Margherita', '21.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod10', 'Rest11', 'Pizza Marinara', '15.00', '2');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod11', 'Rest11', 'Pizza pugliese', '10.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod12', 'Rest11', 'Pizza quattro stagioni', '14.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod13', 'Rest11', 'Pizza romana', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod14', 'Rest11', 'Pizza siciliana', '12.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod15', 'Rest13', 'Focaccia al rosmarino', '21.00', '2');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod16', 'Rest13', 'Pizza ai funghi e salsiccia', '10.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod17', 'Rest13', 'Pizza al taglio', '22.00', '2.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod18', 'Rest13', 'Pizza ai quattro formaggio', '13.00', '2');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod19', 'Rest14', 'Pizza alla napoletana', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod20', 'Rest14', 'Pizza capricciosa', '15.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod21', 'Rest14', 'Pizza Margherita', '22.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod22', 'Rest14', 'Pizza Marinara', '10.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod23', 'Rest2', 'Açorda', '14.00', '2');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod24', 'Rest2', 'Alcatra', '15.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod25', 'Rest2', 'Arroz de marisco', '13.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod26', 'Rest2', 'Bacalhau', '19.00', '2.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod27', 'Rest4', 'Bacalhau à Brás', '23.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod28', 'Rest4', 'Bacalhau à Gomes de Sá', '22.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod29', 'Rest4', 'Bacalhau à Zé do Pipo', '12.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod30', 'Rest4', 'Bacalhau com natas', '20.00', '2');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod31', 'Rest4', 'Bacalhau com todos', '23.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod32', 'Rest5', 'Bife a cavalo', '19.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod33', 'Rest5', 'Cabidela', '18.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod34', 'Rest5', 'Cafreal', '21.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod35', 'Rest5', 'Caldeirada', '11.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod36', 'Rest5', 'Carne de porco à alentejana', '19.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod37', 'Rest5', 'Carne de vinha d\'alhos', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod38', 'Rest8', 'Carne guisada', '10.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod39', 'Rest8', 'Cebolada', '21.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod40', 'Rest8', 'Chanfana', '15.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod41', 'Rest8', 'Churrasco', '10.00', '2.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod42', 'Rest8', 'Cozido à Portuguesa', '14.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod43', 'Rest8', 'Dobradinha', '20.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod44', 'Rest7', 'Dried and salted cod', '11.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod45', 'Rest7', 'Dourada', '10.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod46', 'Rest7', 'Robalo', '21.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod47', 'Rest7', 'Sardinhas assadas', '19.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod48', 'Rest10', 'Empanada', '20.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod49', 'Rest9', 'Caracóis', '12.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod50', 'Rest9', 'Escabeche', '11.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod51', 'Rest9', 'Espetada', '15.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod52', 'Rest9', 'Feijoada', '16.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod53', 'Rest9', 'Fios de ovos', '15.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod54', 'Rest10', 'Folar', '11.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod55', 'Rest10', 'Francesinha', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod56', 'Rest10', 'Francesinha poveira', '18.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod57', 'Rest10', 'Frango assado', '15.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod58', 'Rest10', 'Galinha à Africana', '12.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod59', 'Rest10', 'Migas', '12.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod60', 'Rest12', 'Milho Frito', '10.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod61', 'Rest12', 'Pastéis de bacalhau', '10.00', '2');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod62', 'Rest12', 'Peixinhos da horta', '13.00', '2');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod63', 'Rest12', 'Piri piri', '23.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod64', 'Rest12', 'Portuguese grelhado', '15.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod65', 'Rest12', 'Queijada', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod66', 'Rest12', 'Sardinhas assadas', '19.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod67', 'Rest12', 'Lulas', '19.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod68', 'Rest12', 'Torricado', '11.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod69', 'Rest12', 'Tripas', '23.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod70', 'Rest12', 'Queijo Castelo Branco', '15.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod71', 'Rest12', 'Queijo de Cabra Transmontano', '20.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod72', 'Rest12', 'Queijo de Nisa', '9.00', '2.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod73', 'Rest12', 'Queijo do Pico', '13.00', '2.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod74', 'Rest14', 'Queijo fresco', '19.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod75', 'Rest14', 'Requeijão', '12.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod76', 'Rest14', 'Saloio', '14.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod77', 'Rest14', 'Santarém cheese', '9.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod78', 'Rest14', 'São Jorge cheese', '20.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod79', 'Rest14', 'Serpa cheese', '11.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod80', 'Rest14', 'Serra da Estrela cheese', '14.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod81', 'Rest15', 'Bang Tofu', '14.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod82', 'Rest15', 'Bright Pearl Abalone', '23.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod83', 'Rest15', 'Caterpillar Fungus Duck', '23.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod84', 'Rest15', 'Crab and Fish Stomachs', '23.00', '2');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod85', 'Rest15', 'Crab', '18.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod86', 'Rest15', 'Dried Pot Tofu', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod87', 'Rest15', 'Five Colours Fish Cake', '16.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod88', 'Rest15', 'Flower Mushroom Frog', '13.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod89', 'Rest15', 'Steamed Pumpkin Dumplings', '13.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod90', 'Rest15', 'Fried Tofu Curd Balls', '10.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod91', 'Rest6', 'Amti', '18.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod92', 'Rest6', 'Zunka or Pitla', '12.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod93', 'Rest6', 'Kolim / Jawla', '9.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod94', 'Rest6', 'Saath', '12.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod95', 'Rest6', 'Bajri no rotlo', '23.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod96', 'Rest6', 'Chicken Tika Masala', '11.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod97', 'Rest6', 'Lamb korma', '21.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod98', 'Rest6', 'Prawn chili', '11.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod99', 'Rest3', 'Gulasz', '9.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod100', 'Rest3', 'Kaczka z jabłkami', '20.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod101', 'Rest3', 'Karkówka', '23.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod102', 'Rest3', 'Kasza gryczana ze skwarkami', '22.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod103', 'Rest3', 'Kaszanka', '13.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod104', 'Rest3', 'Kiełbasa', '10.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod105', 'Rest3', 'Kiszka ziemniaczana', '12.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod106', 'Rest3', 'Klopsiki', '17.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod107', 'Rest3', 'Kotlet mielony', '21.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod108', 'Rest3', 'Kotlet schabowy', '11.00', '1.5');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod109', 'Rest3', 'Kurczak pieczony po wiejsku', '19.00', '2');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod110', 'Rest3', 'Łosoś', '23.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod111', 'Rest3', 'Pampuchy', '16.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod112', 'Rest3', 'Pasztecik szczeciński', '13.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod113', 'Rest3', 'Pieczeń cielęca', '10.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod114', 'Rest3', 'Pieczeń wieprzowa z winem', '22.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod115', 'Rest3', 'Pieczeń z mięsa mielonego', '13.00', '0');
INSERT INTO `project_10`.`product` (`Product_id`, `Restaurant_id`, `Product_name`, `Product_val`, `Product_discount`) VALUES ('Prod116', 'Rest3', 'Pierogi', '12.00', '0');


INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour1', 'Paulinho', 'José', 'Del1', 'Cont16', 'Reg1');
INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour2', 'Pedro', 'Gonçalo', 'Del4', 'Cont17', 'Reg2');
INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour3', 'Sebastião', 'Coates', 'Del1', 'Cont18', 'Reg3');
INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour4', 'Guilherme', 'Inácio', 'Del2', 'Cont19', 'Reg4');
INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour5', 'Pablo', 'Saravia', 'Del1', 'Cont20', 'Reg5');
INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour6', 'Matheus', 'Rainha', 'Del2', 'Cont21', 'Reg1');
INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour7', 'Axel', 'Rose', 'Del2', 'Cont22', 'Reg2');
INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour8', 'Julio', 'Brand', 'Del4', 'Cont23', 'Reg3');
INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour9', 'Marco', 'Akanji', 'Del4', 'Cont24', 'Reg4');
INSERT INTO `project_10`.`courier` (`Courier_id`, `First_name`, `Last_name`, `Delivery_id`, `Contact_id`, `County_id`) VALUES ('Cour10', 'Adan', 'Felipe', 'Del2', 'Cont25', 'Reg5');


INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat1', 'Ord_01', '4', 'Clie20', 'Rest5', '03/01/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat3', 'Ord_02', '3', 'Clie7', 'Rest12', '01/02/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat4', 'Ord_03', '5', 'Clie4', 'Rest13', '26/03/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat5', 'Ord_04', '5', 'Clie8', 'Rest11', '03/04/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat7', 'Ord_05', '4', 'Clie22', 'Rest4', '03/06/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat8', 'Ord_06', '4', 'Clie7', 'Rest3', '01/07/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat11', 'Ord_07', '5', 'Clie2', 'Rest2', '15/08/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat12', 'Ord_08', '4', 'Clie2', 'Rest11', '01/09/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat13', 'Ord_09', '5', 'Clie21', 'Rest12', '01/10/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat15', 'Ord_10', '4', 'Clie7', 'Rest4', '03/11/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat16', 'Ord_11', '4', 'Clie1', 'Rest6', '15/12/2020', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat18', 'Ord_12', '4', 'Clie11', 'Rest11', '04/03/2021', 'Good');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat20', 'Ord_13', '3', 'Clie25', 'Rest7', '04/04/2021', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat21', 'Ord_14', '5', 'Clie24', 'Rest11', '08/04/2021', 'Not Bad');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat23', 'Ord_15', '5', 'Clie2', 'Rest7', '17/04/2021', 'Perfect');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat27', 'Ord_16', '4', 'Clie24', 'Rest10', '10/05/2021', 'Amazing');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat28', 'Ord_17', '5', 'Clie2', 'Rest4', '11/05/2021', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat30', 'Ord_18', '5', 'Clie25', 'Rest11', '14/05/2021', 'Very Good');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat31', 'Ord_19', '3', 'Clie25', 'Rest14', '16/05/2021', 'Not amazing');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat32', 'Ord_20', '4', 'Clie9', 'Rest7', '24/05/2021', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat36', 'Ord_21', '4', 'Clie12', 'Rest10', '29/06/2021', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat37', 'Ord_22', '4', 'Clie24', 'Rest15', '01/07/2021', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat38', 'Ord_23', '4', 'Clie21', 'Rest15', '02/07/2021', 'Will try again');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat40', 'Ord_24', '4', 'Clie13', 'Rest10', '25/07/2021', 'Bad Service');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat41', 'Ord_25', '5', 'Clie7', 'Rest14', '06/08/2021', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat48', 'Ord_26', '4', 'Clie24', 'Rest5', '18/09/2021', 'Noice');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat49', 'Ord_27', '5', 'Clie2', 'Rest7', '18/09/2021', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat50', 'Ord_28', '5', 'Clie8', 'Rest5', '26/09/2021', 'Adorei, vou voltar');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat55', 'Ord_29', '5', 'Clie11', 'Rest5', '24/10/2021', 'Toit');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat56', 'Ord_30', '4', 'Clie18', 'Rest2', '02/11/2021', '-');
INSERT INTO `project_10`.`order_rating` (`Rating_id`, `Order_id`, `Rate`, `Client_id`, `Restaurant_id`, `Rate_date`, `Comment`) VALUES ('Rat58', 'Ord_31', '5', 'Clie10', 'Rest12', '13/11/2021', 'Excelente, não podia pedir melhor');


INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont1', 'thelowcalcalzonezone@gmail.com', '217122594');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont2', 'thequeensdeer@gmail.com', '213194675');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont3', 'swietoszektartufferestaurantbar@gmail.com', '215288855');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont4', 'thelunarhog@gmail.com', '213173047');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont5', 'thekingsbay@gmail.com', '217134812');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont6', 'thecurrymoments@gmail.com', '213086809');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont7', 'aqua@gmail.com', '216044053');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont8', 'thetulip@gmail.com', '218915746');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont9', 'lily@gmail.com', '215073396');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont10', 'incognito@gmail.com', '217264451');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont11', 'tiamopizza@gmail.com', '213419279');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont12', 'lambiance@gmail.com', '213275975');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont13', 'bellabellamozzarella@gmail.com', '214277578');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont14', 'thepsghettibar@gmail.com', '211736040');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont15', 'haoba@gmail.com', '216412527');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont16', 'paulinhojosé@hotmail.com', '216423119');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont17', 'pedrogonçalo@hotmail.com', '211929708');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont18', 'sebastiãocoates@hotmail.com', '219459857');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont19', 'guilhermeinácio@hotmail.com', '213307731');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont20', 'pablosaravia@hotmail.com', '218093301');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont21', 'matheusrainha@hotmail.com', '212848108');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont22', 'axelrose@hotmail.com', '215888004');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont23', 'juliobrand@hotmail.com', '215271867');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont24', 'marcoakanji@hotmail.com', '217164216');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont25', 'adanfelipe@hotmail.com', '219066286');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont26', 'andréfraco@outlook.com', '214876605');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont27', 'luizaveiro@outlook.com', '213224980');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont28', 'bárbaraselidónio@outlook.com', '217270543');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont29', 'shiki@outlook.com', '214129582');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont30', 'franciscoconceição@outlook.com', '214516386');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont31', 'joyceanacoura@outlook.com', '216103927');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont32', 'gonçalotabuaco@outlook.com', '211723355');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont33', 'anthonycorreia@outlook.com', '216923658');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont34', 'emanuelfernandes@outlook.com', '215145672');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont35', 'mamaducande@outlook.com', '215674940');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont36', 'xavierfernandes@outlook.com', '217791839');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont37', 'mamdouserov@outlook.com', '217015996');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont38', 'edrisalubega@outlook.com', '216980617');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont39', 'joanamarchão@outlook.com', '213224118');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont40', 'brendaperez@outlook.com', '213847710');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont41', 'chandradavidson@outlook.com', '213929918');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont42', 'shenmenglu@outlook.com', '214484608');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont43', 'melisahasanbegovic@outlook.com', '212015522');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont44', 'anateles@outlook.com', '218769553');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont45', 'brunajoia@outlook.com', '219635299');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont46', 'ninaurbana@outlook.com', '215333095');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont47', 'lauracornion@outlook.com', '216384160');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont48', 'paulinarosa@outlook.com', '211744453');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont49', 'sarajibela@outlook.com', '212379805');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont50', 'rokayaansumane@outlook.com', '216935847');
INSERT INTO `project_10`.`contact` (`Contact_id`, `Email`, `Cell_number`) VALUES ('Cont51', 'nossaempresa@outlook.com', '215318008');


INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie1', 'André', 'Fraco', 'Loc16', 'Cont26', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie2', 'Luiz', 'Aveiro', 'Loc17', 'Cont27', 'Pay2');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie3', 'Bárbara', 'Selidónio', 'Loc18', 'Cont28', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie4', 'Shi', 'Ki', 'Loc19', 'Cont29', 'Pay3');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie5', 'Francisco', 'Conceição', 'Loc20', 'Cont30', 'Pay2');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie6', 'Joyce', 'Anacoura', 'Loc21', 'Cont31', 'Pay2');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie7', 'Gonçalo', 'Tabuaco', 'Loc22', 'Cont32', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie8', 'Anthony', 'Correia', 'Loc23', 'Cont33', 'Pay3');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie9', 'Emanuel', 'Fernandes', 'Loc24', 'Cont34', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie10', 'Mamadu', 'Cande', 'Loc25', 'Cont35', 'Pay2');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie11', 'Xavier', 'Fernandes', 'Loc26', 'Cont36', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie12', 'mamdou', 'Serov', 'Loc27', 'Cont37', 'Pay3');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie13', 'Edrisa', 'Lubega', 'Loc28', 'Cont38', 'Pay2');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie14', 'Joana', 'Marchão', 'Loc29', 'Cont39', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie15', 'Brenda', 'Perez', 'Loc30', 'Cont40', 'Pay2');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie16', 'Chandra', 'davidson', 'Loc31', 'Cont41', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie17', 'Shen', 'menglu', 'Loc32', 'Cont42', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie18', 'Melisa', 'Hasanbegovic', 'Loc33', 'Cont43', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie19', 'Ana', 'Teles', 'Loc34', 'Cont44', 'Pay2');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie20', 'Bruna', 'Joia', 'Loc35', 'Cont45', 'Pay3');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie21', 'Nina', 'Urbana', 'Loc36', 'Cont46', 'Pay3');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie22', 'Laura', 'Cornion', 'Loc37', 'Cont47', 'Pay3');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie23', 'Paulina', 'Rosa', 'Loc38', 'Cont48', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie24', 'Sara', 'Jibela', 'Loc39', 'Cont49', 'Pay1');
INSERT INTO `project_10`.`client` (`Client_id`, `First_name`, `Last_name`, `Location_id`, `Contact_id`, `Payment_id`) VALUES ('Clie25', 'Rokaya', 'Ansumane', 'Loc40', 'Cont50', 'Pay2');


INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest1', 'The Low-Cal-Calzone-Zone', 'Loc1', 'Cont1');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest2', 'The Queen\'s Deer', 'Loc2', 'Cont2');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest3', 'Swietoszek Tartuffe Restaurant & Bar', 'Loc3', 'Cont3');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest4', 'O Bacalhau', 'Loc4', 'Cont4');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest5', 'The King\'s Bay', 'Loc5', 'Cont5');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest6', 'The Curry Moments', 'Loc6', 'Cont6');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest7', 'Aqua', 'Loc7', 'Cont7');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest8', 'The Tulip', 'Loc8', 'Cont8');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest9', 'Lily', 'Loc9', 'Cont9');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest10', 'Incognito', 'Loc10', 'Cont10');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest11', 'Ti Amo, Pizza!', 'Loc11', 'Cont11');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest12', 'L\'Ambiance', 'Loc12', 'Cont12');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest13', 'Bella Bella Mozzarella', 'Loc13', 'Cont13');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest14', 'Tapas Tugas', 'Loc14', 'Cont14');
INSERT INTO `project_10`.`restaurant` (`Restaurant_id`, `Restaurant_name`, `Location_id`, `Contact_id`) VALUES ('Rest15', 'Hao Ba', 'Loc15', 'Cont15');


INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count1', 'Ajuda', 'Reg1');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count2', 'Alcântara', 'Reg1');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count3', 'Alvalade', 'Reg2');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count4', 'Areeiro', 'Reg2');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count5', 'Arroios', 'Reg2');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count6', 'Avenidas Novas', 'Reg2');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count7', 'Beato', 'Reg3');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count8', 'Belém', 'Reg1');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count9', 'Benfica', 'Reg1');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count10', 'Campo de Ourique', 'Reg4');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count11', 'Campolide', 'Reg5');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count12', 'Carnide', 'Reg4');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count13', 'Estrela', 'Reg5');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count14', 'Lumiar', 'Reg4');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count15', 'Marvila', 'Reg3');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count16', 'Misericórdia', 'Reg5');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count17', 'Olivais', 'Reg3');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count18', 'Parque das Nações', 'Reg3');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count19', 'Penha de França', 'Reg5');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count20', 'Santa Clara', 'Reg4');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count21', 'Santa Maria Maior', 'Reg5');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count22', 'Santo António', 'Reg2');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count23', 'São Domingos de Benfica', 'Reg4');
INSERT INTO `project_10`.`county` (`County_id`, `County_name`, `Region_id`) VALUES ('Count24', 'São Vicente', 'Reg5');


INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc1', 'Avenida Manuel Figueiredo 116', '4760-052', 'Count24');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc2', 'Travessa Moura Sá 99', '4600-266', 'Count10');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc3', 'Rua Viscondessa Andaluz 434', '4835-365', 'Count4');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc4', 'R Luís Camões 71', '2864-002', 'Count21');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc5', 'Avenida Noruega 11', '3030-333', 'Count18');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc6', 'R São Vicente 63', '2460-662', 'Count18');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc7', 'Estrada Nacional 72', '4785-559', 'Count7');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc8', 'R Regato 7', '1070-151', 'Count21');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc9', 'R 1º Dezembro 62', '4785-644', 'Count13');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc10', 'Avenida Escolas 23', '2620-502', 'Count16');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc11', 'Avenida Madre Andaluz 81', '4475-486', 'Count12');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc12', 'R Oliveirinhas 69', '1300-512', 'Count9');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc13', 'R São Sebastião 69', '2705-346', 'Count1');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc14', 'R Combatentes G Guerra 35', '3570-045', 'Count15');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc15', 'R Atalhos 27', '6225-025', 'Count9');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc16', 'R Desidério Bessa 55', '4430-437', 'Count21');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc17', 'Quinta Fontainhas 27', '9950-363', 'Count7');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc18', 'R Nogueiras 42', '6350-203', 'Count2');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc19', 'Avenida Júlio Saúl Dias 30', '4560-071', 'Count22');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc20', 'Rua José Fernandes Guerreiro 20', '3405-098', 'Count10');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc21', 'R Portela 16', '2460-259', 'Count17');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc22', 'R São Romão 40', '2040-283', 'Count8');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc23', 'R Rei Lavrador 19', '4700-072', 'Count12');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc24', 'R Stª Bárbara 2', '4970-726', 'Count16');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc25', 'Estrada Nacional 118', '4805-612', 'Count22');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc26', 'R Engenheiro Duarte Pacheco 24', '4580-141', 'Count4');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc27', 'R Alto Eira 73', '2705-451', 'Count23');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc28', 'Bairro St António 83', '1675-009', 'Count18');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc29', 'Avenida Liberdade 99', '2755-164', 'Count20');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc30', 'R Regato 31', '4630-725', 'Count8');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc31', 'Rua Viscondessa Andaluz 86', '2900-198', 'Count12');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc32', 'Plano Integrado 86', '2745-044', 'Count7');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc33', 'Avenida Júlio Dinis 90', '2955-068', 'Count1');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc34', 'Avenida Almirante Reis 35', '4815-212', 'Count13');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc35', 'Rua Condes Torre 41', '9900-065', 'Count23');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc36', 'Avenida Madre Andaluz 80', '3570-045', 'Count7');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc37', 'R Oliveirinhas 62', '6225-025', 'Count21');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc38', 'R São Sebastião 99', '4430-437', 'Count13');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc39', 'R Combatentes G Guerra 34', '9950-363', 'Count16');
INSERT INTO `project_10`.`location` (`Location_id`, `Street_name`, `Postal_code`, `County_id`) VALUES ('Loc40', 'R Atalhos 2', '6350-203', 'Count12');

INSERT INTO `project_10`.`business_volume` (`ID`, `Invoice_id`, `Total_BV`) VALUES ('1', 'Inv30', '1,408.90');


ALTER TABLE `project_10`.`order_` 
CHANGE COLUMN `Product Quantity` `Product_Quantity` VARCHAR(45) NOT NULL ;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `project_10`.`client` 
ADD INDEX `fk_client_location1_idx` (`Location_id` ASC) VISIBLE,
ADD INDEX `fk_client_contact1_idx` (`Contact_id` ASC) VISIBLE,
ADD INDEX `fk_client_payment1_idx` (`Payment_id` ASC) VISIBLE;
;

ALTER TABLE `project_10`.`county` 
ADD INDEX `fk_county_region1_idx` (`Region_id` ASC) VISIBLE;
;

ALTER TABLE `project_10`.`courier` 
ADD INDEX `fk_courier_delivery_vehicle1_idx` (`Delivery_id` ASC) VISIBLE,
ADD INDEX `fk_courier_contact1_idx` (`Contact_id` ASC) VISIBLE;
;

ALTER TABLE `project_10`.`invoice` 
ADD INDEX `fk_invoice_order_1_idx` (`Order_id` ASC) VISIBLE,
ADD INDEX `fk_invoice_promotion1_idx` (`Promotion_id` ASC) VISIBLE,
ADD INDEX `fk_invoice_payment1_idx` (`Payment_id` ASC) VISIBLE;
;

ALTER TABLE `project_10`.`location` 
ADD INDEX `fk_location_county_idx` (`County_id` ASC) VISIBLE;
;

ALTER TABLE `project_10`.`order_` 
ADD INDEX `fk_order__courier1_idx` (`Courier_id` ASC) VISIBLE,
ADD INDEX `fk_order__restaurant1_idx` (`Restaurant_id` ASC) VISIBLE,
ADD INDEX `fk_order__client1_idx` (`Client_id` ASC) VISIBLE;
;

ALTER TABLE `project_10`.`order_rating` 
ADD INDEX `fk_order_rating_order_1_idx` (`Order_id` ASC) VISIBLE,
ADD INDEX `fk_order_rating_restaurant1_idx` (`Restaurant_id` ASC) VISIBLE,
ADD INDEX `fk_order_rating_client1_idx` (`Client_id` ASC) VISIBLE;
;

ALTER TABLE `project_10`.`product` 
ADD INDEX `fk_product_restaurant1_idx` (`Restaurant_id` ASC) VISIBLE;
;

ALTER TABLE `project_10`.`restaurant` 
ADD INDEX `fk_restaurant_location1_idx` (`Location_id` ASC) VISIBLE,
ADD INDEX `fk_restaurant_contact1_idx` (`Contact_id` ASC) VISIBLE;
;

CREATE TABLE IF NOT EXISTS `project_10`.`products_and_orders_` (
  `product_Product_id` VARCHAR(45) NOT NULL,
  `order__Order_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`product_Product_id`, `order__Order_id`),
  INDEX `fk_product_has_order__order_1_idx` (`order__Order_id` ASC) VISIBLE,
  INDEX `fk_product_has_order__product1_idx` (`product_Product_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_has_order__product1`
    FOREIGN KEY (`product_Product_id`)
    REFERENCES `project_10`.`product` (`Product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_has_order__order_1`
    FOREIGN KEY (`order__Order_id`)
    REFERENCES `project_10`.`order_` (`Order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

ALTER TABLE `project_10`.`client` 
ADD CONSTRAINT `fk_client_location1`
  FOREIGN KEY (`Location_id`)
  REFERENCES `project_10`.`location` (`Location_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_client_contact1`
  FOREIGN KEY (`Contact_id`)
  REFERENCES `project_10`.`contact` (`Contact_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_client_payment1`
  FOREIGN KEY (`Payment_id`)
  REFERENCES `project_10`.`payment` (`Payment_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `project_10`.`county` 
ADD CONSTRAINT `fk_county_region1`
  FOREIGN KEY (`Region_id`)
  REFERENCES `project_10`.`region` (`Region_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `project_10`.`courier` 
ADD CONSTRAINT `fk_courier_delivery_vehicle1`
  FOREIGN KEY (`Delivery_id`)
  REFERENCES `project_10`.`delivery_vehicle` (`Delivery_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_courier_contact1`
  FOREIGN KEY (`Contact_id`)
  REFERENCES `project_10`.`contact` (`Contact_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `project_10`.`invoice` 
ADD CONSTRAINT `fk_invoice_order_1`
  FOREIGN KEY (`Order_id`)
  REFERENCES `project_10`.`order_` (`Order_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_invoice_promotion1`
  FOREIGN KEY (`Promotion_id`)
  REFERENCES `project_10`.`promotion` (`Promo_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_invoice_payment1`
  FOREIGN KEY (`Payment_id`)
  REFERENCES `project_10`.`payment` (`Payment_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `project_10`.`location` 
ADD CONSTRAINT `fk_location_county`
  FOREIGN KEY (`County_id`)
  REFERENCES `project_10`.`county` (`County_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `project_10`.`order_` 
ADD CONSTRAINT `fk_order__courier1`
  FOREIGN KEY (`Courier_id`)
  REFERENCES `project_10`.`courier` (`Courier_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order__restaurant1`
  FOREIGN KEY (`Restaurant_id`)
  REFERENCES `project_10`.`restaurant` (`Restaurant_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order__client1`
  FOREIGN KEY (`Client_id`)
  REFERENCES `project_10`.`client` (`Client_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `project_10`.`order_rating` 
ADD CONSTRAINT `fk_order_rating_order_1`
  FOREIGN KEY (`Order_id`)
  REFERENCES `project_10`.`order_` (`Order_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order_rating_restaurant1`
  FOREIGN KEY (`Restaurant_id`)
  REFERENCES `project_10`.`restaurant` (`Restaurant_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order_rating_client1`
  FOREIGN KEY (`Client_id`)
  REFERENCES `project_10`.`client` (`Client_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `project_10`.`product` 
ADD CONSTRAINT `fk_product_restaurant1`
  FOREIGN KEY (`Restaurant_id`)
  REFERENCES `project_10`.`restaurant` (`Restaurant_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `project_10`.`restaurant` 
ADD CONSTRAINT `fk_restaurant_location1`
  FOREIGN KEY (`Location_id`)
  REFERENCES `project_10`.`location` (`Location_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_restaurant_contact1`
  FOREIGN KEY (`Contact_id`)
  REFERENCES `project_10`.`contact` (`Contact_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


/* Question C */

use project_10;

/*[1] Updates*/

delimiter $$
create trigger update_total_BV
after insert
on invoice
for each row
Begin
	insert into business_volume (Invoice_id, Total_BV) values 
	(new.invoice_id, (new.Total+Total_BV));
end$$
delimiter ;


/*[2] Log Table*/	

create table if not exists `log` (
	ID integer unsigned auto_increment,
	TS DATETIME,
    USR VARCHAR(250),
    EV VARCHAR(250),
    MSG VARCHAR(250),
	Primary key (`ID`)
);

delimiter $$
create trigger update_promos
after update
on promotion
for each row
Begin
	insert into log (TS, USR, EV, MSG) values 
	(NOW(), USER(), "update", concat(old.Promo_code,', old:', old.Promo_percent,', new:', new.Promo_percent));
end$$
delimiter ;



/* Question G */


create view invoice_simple as 
select i.invoice_id, o.Order_date, r.Restaurant_name, concat(c.first_name,' ',c.last_name) as Client_name, concat(i.Total,'€') as Bill_total
from invoice i
join order_ o 
on i.order_id = o.order_id
join client c
on o.client_id= c.Client_id
join restaurant r
on r.Restaurant_id=o.Restaurant_id;


create view invoice_detailed as 
select i.invoice_id Invoice_Number, o.Order_date, r.Restaurant_name,l2.Street_name Restaurant_Address,ct2.Email Restaurant_Email, ct2.Cell_number Restaurant_Cell, concat(c.first_name,' ',c.last_name) as Client_Name, l.Street_name Client_Address, ct.Email Client_Email, ct.Cell_number Client_Cell, p.Product_name Product_Description, o.Product_Quantity, p.Product_val, p.Product_discount,o.Product_Total, i.Subtotal,i.PromotionVal Promotion_Val,i.Tax23,i.Total
from invoice i
join order_ o 
on i.order_id = o.order_id
join client c
on o.client_id= c.Client_id
join restaurant r
on r.Restaurant_id=o.Restaurant_id
join contact ct
on ct.Contact_id=c.Contact_id
join contact ct2
on ct2.Contact_id=r.Contact_id
join location l
on l.location_id=c.location_id
join location l2
on l2.location_id=r.location_id
join product p
on p.product_id=o.product_id;


/* Question F */

/* Q.1 between 01/12/2020 and 31/12/2020   */
select c.first_name, c.last_name, o.order_date, p.Product_name
from client c
join order_ o
on o.client_id=c.client_id
join product p
on p.product_id=o.product_id
where order_date > '2020/31/12' and	order_date < '2021/31/12';

/* Q.2 - Most frequent Restaurant */
select r.Restaurant_name, count(o.Restaurant_id) Orders_for_Restaurant
from order_ o
join restaurant r
on o.restaurant_id = r.restaurant_id
Group by o.Restaurant_id 
Order by Orders_for_Restaurant desc
Limit 3;

/* Q.3 */
select o.order_date FirstSale, max(o.order_date) LastSale, sum(i.Total) TotalSales, round(avg(i.Total),2) AverageSales, round((sum(i.total)/12),2) AverageSalesMonth 
from order_ o
join invoice i
on o.order_id = i.order_id

;


/* Q.4 */
select County_name, count(1) as number_orders
from order_ o
join client c
on o.Client_id = c.Client_id
join location l
on c.Location_id = l.Location_id
join county co
on l.County_id = co.County_id
group by co.County_id
;


/*	Q.5 List of location where the restaurants have rating*/
select l.Street_name, l.Postal_code
from order_rating o
join restaurant r 
on o.restaurant_id=r.Restaurant_id
join location l
on r.location_id=l.location_id
;