INSERT INTO Hotel_Chain (Central_Office_Address, Num_Hotels, Contact_Info) VALUES
('123 Main St, New York, NY', 12, 'info@chain1.com'),
('55 Elm Blvd, Los Angeles, CA', 10, 'support@chain2.org'),
('78 Queen St, Toronto, ON', 8, 'contact@chain3.ca'),
('22 Rue de Paris, Paris, France', 9, 'info@chain4.fr'),
('10 Akasaka, Tokyo, Japan', 15, 'help@chain5.jp');

INSERT INTO Supervisor (Supervisor_ID, Hotel_Chain, Full_Name, SIN) VALUES
(1, '123 Main St, New York, NY', 'John Smith', '123456789'),
(2, '123 Main St, New York, NY', 'Jane Doe', '987654321'),
-- ... (More supervisors)

--Chain 1 Hotels
INSERT INTO Hotel (Hotel_Address, Supervisor_ID, Star_Rating, Num_Rooms, Contact_Info, Hotel_Chain) VALUES
('456 Oak Ave, New York, NY', 1, 4, 50, 'nyhotel1@chain1.com', '123 Main St, New York, NY'),
('987 Sunset Dr, Los Angeles, CA', 2, 3, 35, 'lahotel1@chain1.com', '123 Main St, New York, NY'),
-- ... (Add more hotels for Chain 1, then hotels for other chains)

INSERT INTO Hotel_Room (Hotel_Address, Room_Number, Capacity, View_Type, Extendability, Price, Damages, Amenities) VALUES
('456 Oak Ave, New York, NY', '101', 2, 'City', 'Yes', 150.00, 'None', 'TV, AC, Minibar'), 
('456 Oak Ave, New York, NY', '205', 4, 'City', 'No', 220.00, 'Broken lamp', 'TV, AC, Balcony')
-- ... (More rooms for this hotel, then rooms for other hotels) 
