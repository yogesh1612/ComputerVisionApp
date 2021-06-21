



#### Overview

This App is based on [Microsoft Azure Computer  Vision](https://azure.microsoft.com/en-in/services/cognitive-services/computer-vision/) services.

------

#### Process to create Azure Free Account and getting API keys to run this App

This process is divided into two parts.

**Part-1** is straightforward and about registering student account and getting 100$ credit to use Azure services.

**Part-2** is specific about registering for [Azure cognitive services](https://azure.microsoft.com/en-in/services/cognitive-services/) and generating API keys and endpoint to use this App.



Let's start with part-1

##### **Part-1 Register for Azure for students account**

1. Go to https://azure.microsoft.com/en-us/free/students/ page and click start free.
2. Sign Up (Sign in If you already have account) click on create one.
3. Use your Institute email id and personal phone number and click verify.
4. After following the registration steps you will get verification code (check spam too)
5. Once you follow instructions in activation email you are all set for part-2

##### **Part-2 Create Azure Cognitive Services**

1. Go to https://portal.azure.com/#home and login with your registered email address

2. Search for “cognitive services” and select 

   <img src="www\p2s2.png" alt="step_1" style="80%" />

3. Click on create cognitive services

   

   

   <img src="www\p2s3.png" alt="step_1" style="zoom:80%;" />

4. Search for cognitive services again select and create new cognitive service

   

   <img src="www\p2s4.png" alt="step_1" style="zoom:80%;" />

   

   

   

   <img src="www\p2s5.png" alt="step_1" style="zoom:80%;" />

   

5. Then enter following details and click next:Indentity> leave the fields, click next tags and leave the fields as it is and finally click review and create.

   <img src="www\p2s6.png" alt="step_1" style="zoom:80%;" />

   <img src="www\p2s7.png" alt="step_1" style="zoom:80%;" />

6. Once your validation is passed as shown below  the click on create.

   <img src="www\p2s8.png" alt="step_1" style="zoom:80%;" />

7. It may take few minutes and once service is created you will see following window, Then go to keys and endpoint from **sidebar panel** and get your keys.

   <img src="www\p2s9.png" alt="step_1" style="zoom:80%;" />

8. copy and paste keys and end point safely in a text file for later use.



<img src="www\p2s10.png" alt="step_1" style="zoom:80%;" />



***Note: Kindly do not disclose your keys to others.***

------

#### How to use this App

Once you get the API key and endpoint of cognitive services, use it to authenticate from sidebar panel.

You can browse and upload any image with below input requirement from your local machine and analyze.

<u>**Input requirements:**</u>

- Supported image formats: JPEG, PNG
- Image file size must be less than 4MB.
- Image dimensions must be at least 50 x 50.

Once you upload the file you can analyze image on following parameters.

**Brands** - detects various brands within an image, including the approximate location. The Brands argument is only available in English.
**Categories** - categorizes image content according to a taxonomy defined in documentation.
**Description** - describes the image content with a complete sentence in supported languages.
**Objects** - detects various objects within an image, including the approximate location. The Objects argument is only available in English.
**Tags** - tags the image with a detailed list of words related to the image content.

