# Create and upload table from csv using the platform wizard

## Prerequisites

We are using the following example csv `my_table.csv`, exported from Excel using semicolon as a delimiter and encoded in utf-8.

```
id;center_lon;center_lat;rs;name;date_valid;population;area_km2;has_dist;geometry_wkt
1;9.446698;54.798648;01001;Flensburg;2008-01-01;89504;56.73;TRUE;POINT(9.446698 54.798648)
2;10.141397;54.338963;01002;Kiel;2006-01-01;247548;118.65;TRUE;POINT(10.141397 54.338963)
3;10.753957;53.873731;01003;Lübeck;2006-02-01;217198;214.19;TRUE;POINT(10.753957 53.873731)
4;9.990176;54.076646;01004;Neumünster;1970-04-26;79487;71.66;TRUE;POINT(9.990176 54.076646)
5;9.105109;54.138105;01051;Dithmarschen;2011-08-01;133210;1428.18;TRUE;POINT(9.105109 54.138105)
6;10.602975;53.617187;01053;Herzogtum Lauenburg;2009-01-01;197264;1263.07;TRUE;POINT(10.602975 53.617187)
7;8.691597;54.647511;01054;Nordfriesland;2016-01-01;165507;2083.53;TRUE;POINT(8.691597 54.647511)
8;10.860564;54.238161;01055;Ostholstein;2010-01-01;200581;1393;TRUE;POINT(10.860564 54.238161)
9;9.531033;53.709420;01056;Pinneberg;2009-01-01;314391;664.27;TRUE;POINT(9.531033 53.709420)
10;10.369426;54.251352;01057;Plön;2009-01-01;128647;1083.56;TRUE;POINT(10.369426 54.251352)
```

We are logged in on the open energy platform

## Create table using the wizard

* On the platform go to the [database section](https://openenergy-platform.org/dataedit/schemas)
 ![](https://openenergy-platform.org/media/image/2021/02/tutorial_upload_img1.png)
* Go to the [Create Table](https://openenergy-platform.org/dataedit/wizard/) section of the wizard.
![](https://openenergy-platform.org/media/image/2021/02/tutorial_upload_img2.png)
* enter a valid table name (only lowercase, only characters, number and underscore)
* add your data columns with the appropriate [postgresql data types](https://www.postgresql.org/docs/current/datatype.html)
* small popup windows give hints or explanation
* the first column must always be a numerical type named `id`. The wizard has this as a default.
* we don't have to use all the columns from the csv file and we also don#t have to use the same names, these can be mapped later. In this example, we use the following columns:
![](https://openenergy-platform.org/media/image/2021/02/tutorial_upload_img3.png)
* Click on `Create table`
* if successful, you are redirected to upload section

## Upload a csv file using the wizard

* The title shows the selected table name and the number of rows currently in it (you can upload multiple times)
* You may specify the csv file encoding and delimiter character, or leave it blank for automatic detection (which may be wrong though). The `Header` checkbox is activated to indicate that the first line in the file contains column names.
* You can click on `Show example csv for current configuration` to see an example snippet of a valid csv file for your table
* Click on `Browse` and select your csv file from your local drive.
* You can click on `Show preview` to see the first few lines of your file. This may help to detect encoding errors.

![](https://openenergy-platform.org/media/image/2021/02/tutorial_upload_img4.png)

* Map the columns from your csv file to the columns in your database. Columns with the same name are automatically filled out for you.
* In our example, we ignore the columns `center_lon`, `center_lat` and `area_km2` and rename `rs` to `region_key`
* While you change the column mappings, the preview below shows the application of the mapping for the first few rows.

  ![](https://openenergy-platform.org/media/image/2021/02/tutorial_upload_img5.png)

* If everything checks out, click `Upload`

---

## About this tutorial
Author: Christian Winger (Öko-Institut). License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en). Last update: 2021-03-04

---
