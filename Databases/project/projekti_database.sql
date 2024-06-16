--
-- File generated with SQLiteStudio v3.4.4 on Wed May 8 20:14:06 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: AssignedTo
CREATE TABLE IF NOT EXISTS AssignedTo ( 
orderID TEXT NOT NULL, 
deliveryID TEXT NOT NULL, 
FOREIGN KEY (orderID) REFERENCES Orders(orderID), 
FOREIGN KEY (deliveryID) REFERENCES Delivery(deliveryID), 
PRIMARY KEY (orderID, deliveryID) 
);
INSERT INTO AssignedTo (orderID, deliveryID) VALUES ('ORD01', 'DEL01');

-- Table: BelongsTo
CREATE TABLE IF NOT EXISTS BelongsTo (
    productID TEXT NOT NULL,
    orderID TEXT NOT NULL,
    PRIMARY KEY (productID, orderID),
    FOREIGN KEY (productID) REFERENCES Product(productID),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID)
);
INSERT INTO BelongsTo (productID, orderID) VALUES ('PROD02', 'ORD01');
INSERT INTO BelongsTo (productID, orderID) VALUES ('PROD01', 'ORD01');

-- Table: Collector
CREATE TABLE IF NOT EXISTS Collector ( 
collectorID TEXT NOT NULL, 
name TEXT, 
phone INTEGER, 
ordersPerHour INTEGER, 
PRIMARY KEY (collectorID) 
);
INSERT INTO Collector (collectorID, name, phone, ordersPerHour) VALUES ('COL01', 'John Doe', 401234567, 2);

-- Table: Costs
CREATE TABLE IF NOT EXISTS Costs ( 
productID TEXT NOT NULL, 
priceID TEXT NOT NULL, 
FOREIGN KEY (productID) REFERENCES Product(productID), 
FOREIGN KEY (priceID) REFERENCES Price(priceID), 
PRIMARY KEY (productID, priceID) 
);
INSERT INTO Costs (productID, priceID) VALUES ('PROD01', 'PRI01');
INSERT INTO Costs (productID, priceID) VALUES ('PROD03', 'PRI03');
INSERT INTO Costs (productID, priceID) VALUES ('PROD02', 'PRI02');
INSERT INTO Costs (productID, priceID) VALUES ('PROD04', 'PRI04');

-- Table: CountInfo
CREATE TABLE IF NOT EXISTS CountInfo ( 
orderID TEXT NOT NULL, 
productID TEXT NOT NULL, 
count INTEGER, 
weight INTEGER, 
FOREIGN KEY (orderID) REFERENCES Orders(orderID), 
FOREIGN KEY (productID) REFERENCES Product(productID),
PRIMARY KEY (orderID, productID) 
);

-- Table: Customer
CREATE TABLE IF NOT EXISTS Customer (  

customerID TEXT NOT NULL,  

name TEXT,  

address TEXT,  

postalCode INTEGER,  

phone INTEGER,  

email TEXT,  

PRIMARY KEY (customerID)  

);
INSERT INTO Customer (customerID, name, address, postalCode, phone, email) VALUES ('CUST01', 'Teemu Teekkari', 'Otaniemi 1', 2150, 451234567, 'teemu.teekkari@aalto.fi');

-- Table: Delivery
CREATE TABLE IF NOT EXISTS Delivery ( 
deliveryID TEXT NOT NULL, 
date DATE,  
startTime TIME, 
endTime TIME, 
capacity INTEGER,  
PRIMARY KEY (deliveryID) 
);
INSERT INTO Delivery (deliveryID, date, startTime, endTime, capacity) VALUES ('DEL01', '2024-05-03', '14:00', '18:00', 20);
INSERT INTO Delivery (deliveryID, date, startTime, endTime, capacity) VALUES ('DEL02', '2024-05-04', '08:00', '12:00', 15);
INSERT INTO Delivery (deliveryID, date, startTime, endTime, capacity) VALUES ('DEL03', '2024-05-05', '15:00', '17:00', 4);

-- Table: DeliveryRoute
CREATE TABLE IF NOT EXISTS DeliveryRoute (deliveryRouteID TEXT NOT NULL, capacity INTEGER, PRIMARY KEY (deliveryRouteID));
INSERT INTO DeliveryRoute (deliveryRouteID, capacity) VALUES ('DR01', 20);
INSERT INTO DeliveryRoute (deliveryRouteID, capacity) VALUES ('DR02', 10);

-- Table: Has
CREATE TABLE IF NOT EXISTS Has (  
deliveryID TEXT NOT NULL, 
deliveryRouteID TEXT NOT NULL, 
FOREIGN KEY (deliveryID) REFERENCES Delivery(deliveryID), 
FOREIGN KEY (deliveryRouteID) REFERENCES DeliveryRoute(deliveryRouteID),
PRIMARY KEY (deliveryID, deliveryRouteID)
);
INSERT INTO Has (deliveryID, deliveryRouteID) VALUES ('DEL01', 'DR01');

-- Table: HasDelivery
CREATE TABLE IF NOT EXISTS HasDelivery ( 
deliveryID TEXT NOT NULL, 
scheduleID TEXT NOT NULL,  
FOREIGN KEY (deliveryID) REFERENCES Delivery(deliveryID), 
FOREIGN KEY (scheduleID) REFERENCES Schedules(scheduleID), 
PRIMARY KEY (deliveryID, scheduleID) 
);

-- Table: Includes
CREATE TABLE IF NOT EXISTS Includes ( 
deliveryRouteID TEXT NOT NULL, 
postalCode TEXT NOT NULL, 
FOREIGN KEY (deliveryRouteID) REFERENCES DeliveryRoute(deliveryRouteID), 
FOREIGN KEY (postalCode) REFERENCES PostalCode(postalCode), 
PRIMARY KEY (deliveryRouteID, postalCode) 
);
INSERT INTO Includes (deliveryRouteID, postalCode) VALUES ('DR01', '02150');

-- Table: InStore
CREATE TABLE IF NOT EXISTS InStore ( 
productID TEXT NOT NULL, 
storeID TEXT NOT NULL,  
PRIMARY KEY (productID, storeID) 
FOREIGN KEY (productID) REFERENCES Product(productID), 
FOREIGN KEY (storeID) REFERENCES Store(storeID));
INSERT INTO InStore (productID, storeID) VALUES ('PROD01', 'ST01');
INSERT INTO InStore (productID, storeID) VALUES ('PROD02', 'ST01');
INSERT INTO InStore (productID, storeID) VALUES ('PROD03', 'ST01');
INSERT INTO InStore (productID, storeID) VALUES ('PROD04', 'ST01');
INSERT INTO InStore (productID, storeID) VALUES ('PROD05', 'ST01');
INSERT INTO InStore (productID, storeID) VALUES ('PROD06', 'ST01');

-- Table: IsSpecialDiet
CREATE TABLE IF NOT EXISTS IsSpecialDiet ( 
productID TEXT NOT NULL, 
groupID TEXT NOT NULL, 
FOREIGN KEY (productID) REFERENCES Product(productID), 
FOREIGN KEY (groupID) REFERENCES SpecialDietGroup(groupID), 
PRIMARY KEY (productID, groupID) 
);
INSERT INTO IsSpecialDiet (productID, groupID) VALUES ('PROD04', 'SPEC02');
INSERT INTO IsSpecialDiet (productID, groupID) VALUES ('PROD05', 'SPEC02');
INSERT INTO IsSpecialDiet (productID, groupID) VALUES ('PROD05', 'SPEC01');
INSERT INTO IsSpecialDiet (productID, groupID) VALUES ('PROD06', 'SPEC01');

-- Table: OrderBy
CREATE TABLE IF NOT EXISTS OrderBy ( 
OrderID TEXT NOT NULL, 
CustomerID TEXT NOT NULL, 
FOREIGN KEY (orderID) REFERENCES Orders(orderID), 
FOREIGN KEY (customerID) REFERENCES Customer(customerID), 
PRIMARY KEY (orderID, customerID) 
);
INSERT INTO OrderBy (OrderID, CustomerID) VALUES ('ORD01', 'CUST01');

-- Table: Orders
CREATE TABLE IF NOT EXISTS Orders ( 

orderID TEXT NOT NULL, 

totalPrice REAL CHECK (totalPrice >= 0),  

date DATE NOT NULL, 

status TEXT NOT NULL, 

PRIMARY KEY (orderID) 

);
INSERT INTO Orders (orderID, totalPrice, date, status) VALUES ('ORD01', 30.0, '2024-05-02', 'Completed');

-- Table: Owns
CREATE TABLE IF NOT EXISTS Owns ( 
deliveryRouteID TEXT NOT NULL, 
storeID TEXT, 
FOREIGN KEY (deliveryRouteID) REFERENCES DeliveryRoute(deliveryRouteID), 
FOREIGN KEY (storeID) REFERENCES Store(storeID), 
PRIMARY KEY (deliveryRouteID, storeID) 
);
INSERT INTO Owns (deliveryRouteID, storeID) VALUES ('DR01', 'ST01');

-- Table: Pack
CREATE TABLE IF NOT EXISTS Pack ( 
packID TEXT NOT NULL, 
temperature REAL, 
PRIMARY KEY (packID) 
);
INSERT INTO Pack (packID, temperature) VALUES ('PACK01', 8.0);

-- Table: PackedIn
CREATE TABLE IF NOT EXISTS PackedIn ( 
orderID TEXT NOT NULL, 
packID TEXT NOT NULL, 
FOREIGN KEY (orderID) REFERENCES Orders(orderID), 
FOREIGN KEY (packID) REFERENCES Pack(packID), 
PRIMARY KEY (orderID, packID) 
);
INSERT INTO PackedIn (orderID, packID) VALUES ('ORD01', 'PACK01');

-- Table: postalCode
CREATE TABLE IF NOT EXISTS postalCode ( 
postalCode TEXT NOT NULL, 
PRIMARY KEY (postalCode) 
);
INSERT INTO postalCode (postalCode) VALUES ('02150');

-- Table: Price
CREATE TABLE IF NOT EXISTS Price ( 
priceID TEXT NOT NULL, 
price REAL NOT NULL CHECK (price >= 0), 
discountPrice REAL CHECK (discountPrice >= 0), 
startDate DATE, 
endDate DATE, 
PRIMARY KEY (priceID) 
);
INSERT INTO Price (priceID, price, discountPrice, startDate, endDate) VALUES ('PRI01', 10.0, 8.0, '2024-05-05', '2024-05-10');
INSERT INTO Price (priceID, price, discountPrice, startDate, endDate) VALUES ('PRI0', 3.0, 2.5, '2024-05-01', '2024-05-05');
INSERT INTO Price (priceID, price, discountPrice, startDate, endDate) VALUES ('PRI03', 3.0, 2.5, '2024-05-01', '2024-05-05');
INSERT INTO Price (priceID, price, discountPrice, startDate, endDate) VALUES ('PRI02', 2.0, NULL, NULL, NULL);
INSERT INTO Price (priceID, price, discountPrice, startDate, endDate) VALUES ('PRI04', 2.0, NULL, NULL, NULL);

-- Table: Product
CREATE TABLE IF NOT EXISTS Product ( 
productID TEXT NOT NULL, 
name TEXT NOT NULL, 
price REAL CHECK (price >= 0), 
energy REAL CHECK (energy >= 0), 
fat REAL CHECK (fat >= 0), 
carbs REAL CHECK (carbs >= 0), 
proteins REAL CHECK (proteins >= 0), 
storage TEXT CHECK (storage IN ('room', 'refrigerator', 'freezer')), 
PRIMARY KEY (productID) 
);
INSERT INTO Product (productID, name, price, energy, fat, carbs, proteins, storage) VALUES ('PROD02', 'apple', 2.0, 50.0, 4.0, 4.0, 5.0, 'room');
INSERT INTO Product (productID, name, price, energy, fat, carbs, proteins, storage) VALUES ('PROD01', 'fish', 10.0, 413.0, 3.0, 0.0, 18.0, 'freezer');
INSERT INTO Product (productID, name, price, energy, fat, carbs, proteins, storage) VALUES ('PROD03', 'butter', 3.0, 3042.0, 81.0, 1.0, 1.0, 'refrigerator');
INSERT INTO Product (productID, name, price, energy, fat, carbs, proteins, storage) VALUES ('PROD04', 'bread', 2.0, 999.0, 3.0, 50.0, 8.0, 'room');
INSERT INTO Product (productID, name, price, energy, fat, carbs, proteins, storage) VALUES ('PROD05', 'ice cream', 3.0, 768.0, 11.0, 17.0, 4.0, 'freezer');
INSERT INTO Product (productID, name, price, energy, fat, carbs, proteins, storage) VALUES ('PROD06', 'milk', 1.0, 192.0, 2.0, 5.0, 3.0, 'refrigerator');

-- Table: ProductIngredient
CREATE TABLE IF NOT EXISTS ProductIngredient ( 
ingredientID TEXT NOT NULL, 
ingredientName TEXT NOT NULL, 
ingredientOrder INTEGER, 
PRIMARY KEY (ingredientID) 
);

-- Table: Schedules
CREATE TABLE IF NOT EXISTS Schedules (  
scheduleID TEXT NOT NULL, 
weekday TEXT, 
startTime TIME, 
endTime TIME, 
PRIMARY KEY (scheduleID) 
);

-- Table: SpecialDietGroup
CREATE TABLE IF NOT EXISTS SpecialDietGroup ( 
groupID TEXT NOT NULL, 
groupName TEXT NOT NULL, 
PRIMARY KEY (groupID) 
);
INSERT INTO SpecialDietGroup (groupID, groupName) VALUES ('SPEC01', 'lactose free');
INSERT INTO SpecialDietGroup (groupID, groupName) VALUES ('SPEC02', 'gluten free');

-- Table: Store
CREATE TABLE IF NOT EXISTS Store ( 
storeID TEXT NOT NULL, 
name TEXT NOT NULL, 
location TEXT NOT NULL, 
PRIMARY KEY (storeID) 
);
INSERT INTO Store (storeID, name, location) VALUES ('ST01', ' Otaniemi ', 'Espoo');

-- Table: TimeSlot
CREATE TABLE IF NOT EXISTS TimeSlot ( 
timeSlotID TEXT NOT NULL, 
date DATE, 
startTime TIME, 
endTime TIME, 
duration INTEGER, 
PRIMARY KEY (timeSlotID) 
);
INSERT INTO TimeSlot (timeSlotID, date, startTime, endTime, duration) VALUES ('TS01', '2024-05-02', '08:00', '12:00', 4);
INSERT INTO TimeSlot (timeSlotID, date, startTime, endTime, duration) VALUES ('TS02', '2024-05-03', '12:00', '14:00', 2);
INSERT INTO TimeSlot (timeSlotID, date, startTime, endTime, duration) VALUES ('TS03', '2024-05-04', '08:00', '10:00', 2);

-- Table: WorksIn
CREATE TABLE IF NOT EXISTS WorksIn ( 
collectorID TEXT NOT NULL, 
timeslotID TEXT NOT NULL, 
FOREIGN KEY (collectorID) REFERENCES Collector(collectorID), 
FOREIGN KEY (timeslotID) REFERENCES TimeSlot(timeSlotID), 
PRIMARY KEY (collectorID, timeslotID) 
);
INSERT INTO WorksIn (collectorID, timeslotID) VALUES ('COL01', 'TS01');
INSERT INTO WorksIn (collectorID, timeslotID) VALUES ('COL01', 'TS02');
INSERT INTO WorksIn (collectorID, timeslotID) VALUES ('COL01', 'TS03');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
