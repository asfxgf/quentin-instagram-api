This app is an exercice which allowed me to go further with APIs.




Url of the APP : https://quentin-instagram-api.osc-fr1.scalingo.io/


1. Create an account.
2. 


API endpoints configuration : (if you have some question just send message on LinkedIn or deleglise.quentin@hotmail.fr and I will create a real documentation & tutorial).

Headers :
X-User-Token : {User token}
X-User-Email : {email}
Content-Type : application/json


Endpoints :
Get List all :  https://quentin-instagram-api.osc-fr1.scalingo.io/api/v1/candidates
Get 1 by index : https://quentin-instagram-api.osc-fr1.scalingo.io/api/v1/candidates/{index}
Post : https://quentin-instagram-api.osc-fr1.scalingo.io/api/v1/candidates

Body example for post request : 
{ "candidate": { "character": "Is a sugar addict", "culture": "L'audacieux jeune homme au trapèze volant", "picture_url": "https://res.cloudinary.com/asfxgf/image/upload/v1593199457/quentin_wagon_trois_jxsvtu.png" } }


Refer to this instagram account to look what it is doing :  https://www.instagram.com/quentintin1/


Project for create a server Cron which post on instagram here : https://github.com/asfxgf/instagram_automate


Template :
Course by Sunny Ripert (Le Wagon internal course)
Rails app generated with Sunny Ripert API template (public github) (https://github.com/sunny/restaurants-api).
Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
