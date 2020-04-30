# Notes
## MVC
 MVC separates application into three components - 
 1. Model
  * represents shape of the data and business logic. It maintains the data of the application. Model objects retrieve and store model state in a database.
 2. View 
  *  A user interface. View display data using model to the user and also enables them to modify the data.
 3. Controller
  * Handles the user request. Typically, user interact with View, which in-turn raises appropriate URL request, this request will be handled by a controller. The controller renders the appropriate view with the model data as a response.
    <p align="center">
    <img width="300" height="300" src="https://www.tutorialsteacher.com/Content/images/mvc/mvc-architecture.png">
</p>