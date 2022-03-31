# DodosProject

Transport facility is a matter of headache for those people who do not have any personal
transport in Kigali Rwanda. On occasions like Wedding, Vacation, house shifting, and tour outside Kigali and on many other situations they feel the necessity of a vehicle to sort out the
problems. So if it is possible to design or develop a web based application for availing
transport whenever and wherever possible, then it will be beneficial for both renter and
transport provider. Now a days, by some clicks only, we can get whatever you want at home.
We already know about the online shopping, e-banking etc. Similarly, This web application System is the online facility to book cars online and buy them within few clicks only.

This web application System is developed to provide the following services:


1. Enhance Business Processes:
To be able to use internet technology to project the rental company to the global world
instead of limiting their services to their local domain alone, thus increase their return on
investment (ROI).


2. Online Vehicle Reservation:
A tool through which customers can reserve available cars online prior to their expected pickup date or time.


3. Online Vehicle sales:
A tool through which customers can buy available cars online.


4. Customer’s registration:
A registration portal to hold customer’s details, monitor their transaction and used same to
offer better and improve services to them.


5. Group bookings:
Allows the customer to book space for a group in the case of weddings or corporate meetings
(Event management).

User


1 Admin:

1.	Admin can login to the system.
2.	Verify the car information database.
3.	Generate price strategy.
4.	Handle the payment system.
5.	Finalize the order.
6.	Cancel the order.



#2 Employee:

1.	It updates the database.
2.	Give information to the customer about the car.
3.	Provides the alternatives.
4.	Maintain contacts.



#3 Maintenance Manager:

1.	It checks for the maintenance.
2.	Give to the maintenance.
3.	Give information to the admin.
4.	Update the database.



#4 Customer:

1.	Customer can login to the system.
2.	Visit the website.
3.	Place the order.
4.	Cancel the order.



Functional Requirements:
These are statements of services the system should provide, how the system should react to
particular inputs, and how the system should behave in particular situations. It specifies the
application functionality that the developers must build into the product to enable users to
accomplish their tasks.


1 Reservation:

1.	The system must allow the customer to register for reservation.
2.	The system shall allow the customer to view detail description of particular car.
3.	The system shall present an option for advanced search to limit the car search to specific categories of car search.
4.	The system must allow the customers to select specific car using different search category while reservation.
5.	The system must view list of available car during reservation.
6.	The system shall allow the customers to cancel reservation using reservation confirmation number.
7.	The system shall allow the employee to update reservation information.
8.	The system shall allow the employee to view reservations made by customers.
9.	The system shall present information on protection products and their daily costs, and requests the customer to accept or decline regulation terms during reservation.
10.	The system must be able to provide a unique reservation conformation number for all successfully committed reservations.
11.	The system must be able to display reservation summary for successfully committed reservation.



2 Log in:

1.	The system should allow manager to login to the system using their username and password.
2.	The system should allow employee to login to the system using their username and password.
3.	The system shall allow the manager to create new user account.
4.	The system shall allow manager to change account password.
5.	The system shall allow staff to change account password.
6.	The system shall allow staff to logout.
7.	The system shall allow manager to logout.



3 Car:

1.	The system should allow staff to register new cars.
2.	The system shall allow staff to select cars in the list.
3.	The system shall allow customer to select cars in the list.
4.	The system shall allow staff to Search cars by specific record.
5.	The system shall allow customer and staff to Search cars by specific record.
6.	The system shall allow staff to update information of the car in need of modification.
7.	The system shall allow staff to display all lists of cars.
8.	The system shall allow staff to display all available car.
9.	The system shall allow customer to display all available car.
10.	The system shall allow staff to display all rented car.
11.	The system shall allow staff to display all off duty car.




4 Rent:

1.	The system shall allow staff to register customers into rental list.
2.	The system shall allow staff to update about customer rent record details in the rental list.
3.	The system shall be able to save all changes made on the customer rent list.
4.	The system shall allow staff to select customer rent record by specific search category.
5.	The system shall allow staff to search rent record of customers using specific categories.
6.	The system shall allow staff to display customers, who rent cars.
7.	The system shall allow staff to display all customers rent record.
8.	The system must provide printable summary for successful committed rent.



5 buy:

1.	The system shall allow staff to register customers into bought list.
2.	The system shall allow staff to update about customer rent record details in the bought list.
3.	The system shall be able to save all changes made on the customer bought list.
4.	The system shall allow staff to select customer bought record by specific search category.
5.	The system shall allow staff to search rent record of customers using specific categories.
6.	The system shall allow staff to display customers, who bought cars.
7.	The system shall allow staff to display all customers bought record.
8.	The system must provide printable summary for successful committed buy.



1.	Customer


1.1	Register as member
This use case describes the activities of the customer to register online and become a member. Customer's details are required as part of the registration. Login detail is automatically sent to the customer after successful registration.


1.2Make reservation
This use case enable customer to search and make reservation. Non-register customer will be directed to register before their reservation can be confirmed. Notification is automatically send to the customer after the task is completed.


1.3	Return car
This use case describes the event of customer returning the car borrowed, the use case extends "process rental" use case from the staff actor.


1.4	Give feedback
This use case is used by the customer to provide feedbacks/comment to the company; a confirmation notification will be send to the customer once a feedback has been submitted.


2.	Staff


2.1	Add new car
This use case is used by the staff to add new car to the company's fleet database. Staff will need to login to activate this use case.


2.2	Update car details
This use case is used by the staff to edit and modify car details whenever there is new renewal (insurance, road tax). It allows the company to keep up-to-date record of their fleet.


2.3	Reply to customer’s feedback
This use case describes the event by which staff sends reply to customer's earlier feedback. It depends on `give feedback' use case from the customer.


2.4	Process rental
This use case described the event by which staff updates the system when customer pick up or when returning car.
3.Admin

3.1	Add new staff
This use case describes the event by which Admin add new staff detail to the company's staff database. It is invoke whenever a new staff join the company.




GROUP MEMBERS

1. Ndaruhuye Yves
2. Manzi Arsene
3. Micomyiza Patrick
4. Kabeja Gihozo Carlene
