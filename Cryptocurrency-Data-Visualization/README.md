# BC5-Cryptocurrency-Data-Visualization

Group PN Dashboard:
https://share.streamlit.io/simaoercpereira/bc5-cryptocurrency-data-visualization/main/app.py


#Introduction:                                                                                                                                                                           
The partners Warner Buffer and Gil Bates from Investments4Some asked us to build dashboard capable of inform investment decisions and external stakeholders for their financial analysts. 
This dashboard was made to help Investments4Some in making better investments with the help of our dashboard, with it they will be able to see a daily view of their asset’s values, the predictions for the next day, and compare the different cryptocurrencies and their attributes to try and understand the existing patterns between the assets. The dashboard also has some built-in financial indicators that can help the investors during their analysis.

#Dashboard Instructions:                                                                                                                                                    
The dashboard is divided in 2 pages where the first page is a Daily View the second page is a more detailed Analysis.

- Daily View Page:
On this first page, it´s possible to check the latest closing value of each asset and our prediction for the next day as well as a suggestion for the investor. We also have the ranking of all cryptocurrencies according to the MarketCap.
There is only one dropdown, where the user has the possibility of choosing which asset wants to visualize.

- Analysis Page
On the second page, the user can find more detailed information about each asset and can also do a comparison between all the cryptocurrencies.
This page is divided into the two following topics:
1. Individual analysis: The first element of this page is a data frame with a cryptocurrency and values chosen by the user. We decided to use this data frame because we thought that it would be harder to see the values in the deployed graphs.
As visuals first we have a candlestick graphic that allows the user to check the “high”, “low”, “open”, and “close” values and also some financial indicators represented with a white line. The second visual shows the all-time evolution of whatever value and asset the user chooses.
2. Comparison of Assets: To compare the assets we have two graphics where the user can filter by color and compare the evolution only of the assets that he wants. We have an all-time evolution of a specific value for all the assets and a similar graphic but with more recent data ( last 30 days).
In terms of user interactivity, this page has 3 dropdowns where it's possible to choose one asset, one value, and one indicator.
The asset dropdown will affect the top two graphics.
The value dropdown affects all visuals but the candlestick.
The indicator dropdown only affects the candlestick.



Dashboard Layout:
![image](https://user-images.githubusercontent.com/90764368/171046072-a7a6b92e-248d-4a80-9f93-a13df9b74112.png)
![image](https://user-images.githubusercontent.com/90764368/171046087-f16b71c2-0108-4971-88c3-0d3438d0b0a7.png)
![image](https://user-images.githubusercontent.com/90764368/171046107-3c3df899-adf4-4dd6-a8f0-c0572b2f214e.png)
![image](https://user-images.githubusercontent.com/90764368/171046124-5fe39b78-af74-459b-8e92-32669fb00985.png)
![image](https://user-images.githubusercontent.com/90764368/171046138-73d1a717-afce-4abc-8ea9-4fd3ed4118bc.png)
