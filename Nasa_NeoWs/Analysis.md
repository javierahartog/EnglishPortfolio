# NASA data analysis
## Discovering near-Earth asteroids and other planets
<em>Data analysis and extraction from API </em>

There are projects that allow us to explore the vast universe and discover fascinating information. In this data analysis project, we dove into the NASA API to extract data on asteroids and approach details. Using Python with Pandas, we perform extraction and creation of different tables, focusing on near-Earth asteroids and three other planets in the solar system. Additionally, we created visualizations in Tableau Public, showing graphs that differentiate asteroids based on their diameter in kilometers and the year of their approximate approach. We also explore data on the hazards of these asteroids on each of the celestial bodies, providing key information on their count, characteristics, and error distances.

![Dashboard 2 (1)](https://github.com/javierahartog/Portafolio/assets/134547879/e11dde89-819f-47f6-aeca-9b00c512a2c4)

NASA's NeoWs (Near Earth Object Web service) API data analysis project begins with data extraction using Python and the Pandas library. We focused on obtaining information about near-Earth asteroids and three other selected planets. We create two different dataframes, the first called Asteroids for the general data and a second dataframe for the close approach data. Using the data extraction and manipulation capabilities of Pandas, we formatted the variables, subdivided and reordered the way the API fed us information, and made our database ready to connect to via Tableau. Since we're using Tableau Public, it's not possible to connect directly with Python code, so we had to create a link through Excel files. In case of using Tableau Desktop we should only upload our code through Tabpy and connect to the API in real time

[Python Code](https://github.com/javierahartog/EnglishPortfolio/blob/e610b1b81b35bc7a93ac38699ecb1dfdada0e444/Nasa_NeoWs/Data_preparation.py)

![NEOWS python](https://github.com/javierahartog/Portafolio/assets/134547879/cf78a051-ccfe-47f1-9075-f7720fee24a8)


[Interactive Dashboard Tableau Public](https://public.tableau.com/views/Neows/Dashboard2?:language=en-US&:display_count=n&:origin=viz_share_link)

We then use Tableau Public to create interactive visualizations. In our analysis, we present two initial graphics to highlight nearby and potentially dangerous asteroids. These graphs allow us to differentiate asteroids based on their diameter in kilometers and the year of their approximate approach. In this way, we can visualize the distribution and relationship between these two key factors.

![NEOWS1](https://github.com/javierahartog/Portafolio/assets/134547879/d67ad305-8efa-4754-b549-25129e89f25b)

In addition, we dive into the data on the danger of asteroids in relation to each of the celestial bodies analyzed. We analyze the count of nearby asteroids in each celestial body and highlight the characteristics of the most dangerous asteroids. These data include the error distance in kilometers and the relative speed of the asteroids, providing us with essential information to assess potential risk and take preventive action.

![NEOWS2](https://github.com/javierahartog/Portafolio/assets/134547879/f66573c1-0e3d-42a4-aff2-be3efc614dff)

Using interactive visualizations on Tableau Public, we were able to see patterns and trends related to the diameter of asteroids and their approximate approach in different years. These visualizations provide us with a clear and understandable view of the distribution of asteroids and help us identify those that represent the greatest potential for danger.

In addition, by analyzing asteroid hazard data relative to specific celestial bodies, we have gained valuable insights into the count of nearby asteroids and the characteristics of the most dangerous ones, such as error distance in kilometers and relative velocity. This data is essential to assess potential risk and take preventive measures regarding possible impacts.

The project demonstrates the importance of data analysis in the field of astronomy and space exploration. Thanks to the NASA API and the analysis tools used, we have been able to delve into the study of asteroids and better understand their behavior and their potential impact on our planet and other celestial bodies.

Data analysis gives us a clearer and more accurate perspective on the universe around us, allowing us to make informed decisions and develop risk mitigation strategies. With projects like this, we will continue to expand our knowledge and ability to understand and protect our space environment.
