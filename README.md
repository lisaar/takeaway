#Takeaway

A Takeaway program. Has a list of disehs with prices. Orders are palced by giving the list of dishes, their quantities and a number taht is the exact total of payment. If the sume is not correct a method raises an error. Otherwise the customer is sent a text saying that the order was placed suggessfullya nd will be delivered 1 hour from now. 

Texting functionality is impemeneted via Twilio API.

###Dishes
|Responsiblility| Class|
|-------------|------------|
|can be viewed by| customer|
|can be selected by| customer|
|has a price|

###Order
|Responsibility|Class|
|-----------|-----------|
|take quantitiy of|dishes|
|stores selected| dishes|
|Receives selection from| customer|
|calcualtes final price||
|raises error if final price wrong|

###Customer
|Responsibility|Class|
|------------|---------|
|selects quantity| dishes|
|inputs final price||
|place| order|

###Engine
|Responisiblity|Class|
|-----------|----------|
|Prompts| user|
|loads| dishes|
|sends text||

