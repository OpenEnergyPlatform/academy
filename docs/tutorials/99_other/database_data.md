# How to generate database conform data?

The following checklist will help you to prepare your data in a way that you will have less trouble uploading it into the OEP. The main purpose is to have your data machine-readable and simultaneously for humans easy to understand.

1. Only work with tables
2. If you work with Excel: use only ONE table per excel worksheet (see figure "Poor Example" and "Good Example" on how to split one table into multiple tables)
3. Use English table names
4. Use consistent file names. This will facilitate the upload.
   a. Good example: energy_load_germany_pv, energy_load_germany_wind, hence: energy_load_germany\_\*
   b. Poor example: energy_pv_load, wind_energie_Deutschland_version3
5. Try to keep all files in one folder or in folders with consistent names as described in 4. to be easily machine readable
6. Follow the conventions for columns:
   a. Each column has only one entry (see figure "Good Example")
   b. Speaking names (and see figure "Good Example")
   i. Good example: engery_load_germany_pv
   ii. Poor example: lpv_vs4
   c. Follow naming conventions e.g. SI units if possible
   d. Transpose your file if possible (e.g. in case of years as columns), see figure "Poor Example" and "Good Example". A tool helping you with this can be found at: #OpenEnergyPlatform/oeplatform/issues/350
   e. Never start column names with a number (will not work during upload), figure "Good Example"
   f. Use English column names
   g. Make sure each column contains only specific datatypes: string (e.g. “this is a string”), integer (e.g. 1,2,-5), float (e.g. 1.544) … see figure "Good Example"
7. Optional: you might want to change your Excel to use ‘.’ (English) as a decimal separator instead of ‘,’ (German). Most programs expect '.' as separator and have it as a default setting, so while it is generally possible to keep ',' separators, changing it will make your programming life easier in the long run. The upload wizard on the OEP also supports both.
8. Think about what you mean by missing values. There are two cases to differentiate: if you mean a value of zero, enter ‘0’. If you mean that there was no data available or a field does not apply, set NULL or leave empty.
9. Make sure you have one or more primary keys so that each entry is unique. A primary key is a unique identifier.
   a. Example: first name, surname, passport_nr
   The passport_nr is a primary key, because it is unique and identifies each person
10. In case of dates
    a. Always use the same format
    b. Think about your time zone
    c. In case of time intervals, which time stamp alignment do you use, start, middle or end alignment? (see [OEO](http://openenergyplatform.org/ontology/oeo/OEO_00140044) time stamp alignment)
11. Make sure your model (input and) output data has always the same format: that will make your life easier to work with the OEP but also for your own post-processing
12. If you have multiple tables, make sure they can be linked to one another
    a. e.g. Person with first and surname and table with cars and car owners surname. And see figure: "Good Example"

This is a poor and a good example. This gives an Idea how to solve these problems, there are many good ways to solve it and two possibilities are shown here.

**Poor Example**

![](https://openenergyplatform.org/media/image/2020/11/grafik_Bsj2Etf.png)

**Good Example**

For good examples there are two options on how to split the timer series.

1. This option is used in case of many wind turbine and solar park data:
   ![](https://openenergyplatform.org/media/image/2020/11/grafik_6AiAzdf.png)
2. This option is used if there are not as many wind turbines and solar parks
   ![](https://openenergyplatform.org/media/image/2020/11/grafik_dPJYucg.png)
