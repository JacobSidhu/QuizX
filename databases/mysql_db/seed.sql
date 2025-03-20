CREATE DATABASE IF NOT EXISTS mysql_db;

USE mysql_db;

-- Table to store categories
CREATE TABLE quizx_categories(
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    quizx_category_name VARCHAR(255) UNIQUE NOT NULL
);

-- Table for Science questions
CREATE TABLE science(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Table for Programming questions
CREATE TABLE programming(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Table for Biology questions
CREATE TABLE biology(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Table for Maths questions
CREATE TABLE maths(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Table for Movies questions
CREATE TABLE movies(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Table for History questions
CREATE TABLE history(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Table for Brain Teasers questions
CREATE TABLE brain_teasers(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Table for Animals questions
CREATE TABLE animals(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Table for Trivia questions
CREATE TABLE trivia(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Table for Literature questions
CREATE TABLE literature(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    question_text TEXT NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES quizx_categories(category_id)
);

-- Insert categories
INSERT INTO quizx_categories (quizx_category_name) VALUES ('science');
INSERT INTO quizx_categories (quizx_category_name) VALUES ('programming');
INSERT INTO quizx_categories (quizx_category_name) VALUES ('biology');
INSERT INTO quizx_categories (quizx_category_name) VALUES ('maths');
INSERT INTO quizx_categories (quizx_category_name) VALUES ('movies');
INSERT INTO quizx_categories (quizx_category_name) VALUES ('history');
INSERT INTO quizx_categories (quizx_category_name) VALUES ('brain teasers');
INSERT INTO quizx_categories (quizx_category_name) VALUES ('animals');
INSERT INTO quizx_categories (quizx_category_name) VALUES ('trivia');
INSERT INTO quizx_categories (quizx_category_name) VALUES ('literature');

-- Insert questions for each category
-- Science
INSERT INTO science (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(1, 'What is the value of the pi?', '3.13', '4.29', '4.14', '3.14', '3.14'),
(1, 'What gas do plants absorb from the atmosphere?', 'Oxygen', 'Hydrogen', 'Carbon Dioxide', 'Nitrogen', 'Carbon Dioxide'),
(1, 'Which planet is known as the Red Planet?', 'Mars', 'Venus', 'Jupiter', 'Saturn', 'Mars'),
(1, 'What part of the cell contains the genetic material?', 'Mitochondria', 'Nucleus', 'Ribosome', 'Cytoplasm', 'Nucleus'),
(1, 'What is the boiling point of water at sea level?', '100°C', '90°C', '80°C', '70°C', '100°C'),
(1, 'Which organ pumps blood throughout the body?', 'Lungs', 'Brain', 'Liver', 'Heart', 'Heart'),
(1, 'Which element has the chemical symbol "O"?', 'Osmium', 'Oxygen', 'Oxide', 'Oganesson', 'Oxygen'),
(1, 'How many bones are there in the adult human body?', '206', '305', '201', '250', '206'),
(1, 'What planet is known for its rings?', 'Saturn', 'Neptune', 'Earth', 'Venus', 'Saturn'),
(1, 'Which vitamin is produced when skin is exposed to sunlight?', 'Vitamin A', 'Vitamin C', 'Vitamin D', 'Vitamin B12', 'Vitamin D'),
(1, 'What is the chemical formula of water?', 'H2O', 'HO2', 'H2O2', 'OH2', 'H2O'),
(1, 'What is the largest planet in our solar system?', 'Jupiter', 'Saturn', 'Neptune', 'Earth', 'Jupiter'),
(1, 'What is the powerhouse of the cell?', 'Nucleus', 'Mitochondria', 'Ribosome', 'Golgi apparatus', 'Mitochondria'),
(1, 'Which gas is most abundant in the Earth\'s atmosphere?', 'Oxygen', 'Hydrogen', 'Nitrogen', 'Carbon Dioxide', 'Nitrogen'),
(1, 'What is the process of liquid turning into gas called?', 'Condensation', 'Evaporation', 'Sublimation', 'Melting', 'Evaporation'),
(1, 'What is the unit of electric current?', 'Volt', 'Ampere', 'Watt', 'Ohm', 'Ampere'),
(1, 'Which part of the plant conducts photosynthesis?', 'Root', 'Stem', 'Leaf', 'Flower', 'Leaf'),
(1, 'What is the center of an atom called?', 'Electron', 'Neutron', 'Proton', 'Nucleus', 'Nucleus'),
(1, 'What is the hardest natural substance on Earth?', 'Iron', 'Gold', 'Diamond', 'Quartz', 'Diamond'),
(1, 'Which blood cells help in clotting?', 'Red blood cells', 'White blood cells', 'Platelets', 'Plasma', 'Platelets');

-- Programming
INSERT INTO programming (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(2, 'Which language is primarily used for web development?', 'Python', 'JavaScript', 'C++', 'Java', 'JavaScript'),
(2, 'What does HTML stand for?', 'HighText Machine Language', 'HyperText Markup Language', 'HyperTool Multi Language', 'HyperText Markdown Language', 'HyperText Markup Language'),
(2, 'Which symbol is used for comments in Python?', '//', '#', '<!-- -->', '/* */', '#'),
(2, 'What does CSS stand for?', 'Creative Style Sheets', 'Cascading Style Sheets', 'Computer Style Sheets', 'Colorful Style Sheets', 'Cascading Style Sheets'),
(2, 'Which keyword is used to define a function in JavaScript?', 'func', 'function', 'def', 'method', 'function'),
(2, 'Which data structure uses LIFO (Last In First Out)?', 'Queue', 'Array', 'Stack', 'Linked List', 'Stack'),
(2, 'What is the file extension for Python files?', '.java', '.py', '.js', '.cpp', '.py'),
(2, 'Which of the following is a loop in programming?', 'if', 'while', 'switch', 'break', 'while'),
(2, 'Which method is used to print something in C?', 'System.out.print()', 'echo()', 'print()', 'printf()', 'printf()'),
(2, 'Which language is commonly used for Android development?', 'Swift', 'Kotlin', 'Ruby', 'Go', 'Kotlin'),
(2, 'What does SQL stand for?', 'Structured Query Language', 'Sequential Query Language', 'Standard Query Language', 'Server Query Language', 'Structured Query Language'),
(2, 'Which operator is used to compare equality in most programming languages?', '=', '==', '!=', '===', '=='),
(2, 'Which of the following is a backend programming language?', 'CSS', 'HTML', 'Java', 'Bootstrap', 'Java'),
(2, 'Which language is used for styling web pages?', 'HTML', 'Java', 'CSS', 'PHP', 'CSS'),
(2, 'What is an IDE?', 'Internet Data Environment', 'Integrated Development Environment', 'Internal Development Engine', 'Integrated Deployment Editor', 'Integrated Development Environment'),
(2, 'Which company developed the Java programming language?', 'Microsoft', 'Apple', 'Sun Microsystems', 'IBM', 'Sun Microsystems'),
(2, 'Which of these is not a programming paradigm?', 'Object-Oriented', 'Functional', 'Procedural', 'Circular', 'Circular'),
(2, 'Which symbol is used for "OR" in most programming languages?', '&&', '||', '!', '==', '||'),
(2, 'What is a variable in programming?', 'A fixed number', 'A reserved memory location to store data', 'A programming error', 'An input function', 'A reserved memory location to store data'),
(2, 'Which of the following is a version control system?', 'Docker', 'Git', 'Linux', 'Apache', 'Git');

-- Biology
INSERT INTO biology (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(3, 'What is the basic unit of life?', 'Organ', 'Tissue', 'Cell', 'Molecule', 'Cell'),
(3, 'Which part of the plant carries out photosynthesis?', 'Root', 'Leaf', 'Stem', 'Flower', 'Leaf'),
(3, 'What pigment gives plants their green color?', 'Carotene', 'Chlorophyll', 'Xanthophyll', 'Melanin', 'Chlorophyll'),
(3, 'What is the powerhouse of the cell?', 'Nucleus', 'Mitochondria', 'Ribosome', 'Chloroplast', 'Mitochondria'),
(3, 'What is the process of cell division in somatic cells called?', 'Meiosis', 'Binary Fission', 'Mitosis', 'Fertilization', 'Mitosis'),
(3, 'Which organ filters blood in the human body?', 'Heart', 'Liver', 'Kidney', 'Lungs', 'Kidney'),
(3, 'What is the largest organ in the human body?', 'Liver', 'Skin', 'Lungs', 'Brain', 'Skin'),
(3, 'What type of blood cells fight infections?', 'Red blood cells', 'White blood cells', 'Platelets', 'Plasma', 'White blood cells'),
(3, 'Which organ helps in the production of insulin?', 'Liver', 'Pancreas', 'Kidney', 'Spleen', 'Pancreas'),
(3, 'Which kingdom do mushrooms belong to?', 'Plantae', 'Animalia', 'Fungi', 'Protista', 'Fungi'),
(3, 'What part of the brain controls balance and coordination?', 'Cerebrum', 'Medulla', 'Cerebellum', 'Hypothalamus', 'Cerebellum'),
(3, 'Which blood group is known as the universal donor?', 'A', 'B', 'AB', 'O', 'O'),
(3, 'How many chambers does the human heart have?', '2', '3', '4', '5', '4'),
(3, 'Which gas is released during photosynthesis?', 'Carbon Dioxide', 'Oxygen', 'Nitrogen', 'Hydrogen', 'Oxygen'),
(3, 'What is the scientific name for humans?', 'Homo erectus', 'Homo sapiens', 'Homo habilis', 'Homo neanderthalensis', 'Homo sapiens'),
(3, 'What type of joint is found in the shoulder?', 'Hinge joint', 'Ball and socket joint', 'Pivot joint', 'Gliding joint', 'Ball and socket joint'),
(3, 'Which part of the body produces red blood cells?', 'Heart', 'Liver', 'Bone marrow', 'Lungs', 'Bone marrow'),
(3, 'Which organ controls body temperature?', 'Brain', 'Liver', 'Hypothalamus', 'Skin', 'Hypothalamus'),
(3, 'What is the function of ribosomes in a cell?', 'Photosynthesis', 'Energy production', 'Protein synthesis', 'Cell division', 'Protein synthesis'),
(3, 'Which part of the plant absorbs water and minerals?', 'Leaves', 'Stems', 'Roots', 'Flowers', 'Roots');

-- Maths
INSERT INTO maths (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(4, 'What is 7 × 8?', '56', '64', '48', '72', '56'),
(4, 'What is the square root of 81?', '7', '8', '9', '10', '9'),
(4, 'What is the value of π (pi) up to two decimal places?', '3.12', '3.13', '3.14', '3.15', '3.14'),
(4, 'What is 25% of 200?', '25', '50', '75', '100', '50'),
(4, 'What is the formula for the area of a circle?', '2πr', 'πr²', 'πd', 'πr', 'πr²'),
(4, 'Solve: 15 + (6 ÷ 2) × 3', '24', '33', '21', '30', '24'),
(4, 'What is the next prime number after 7?', '9', '10', '11', '13', '11'),
(4, 'What is the value of 10³?', '100', '1000', '10000', '100000', '1000'),
(4, 'What is the perimeter of a square with side 6 cm?', '12 cm', '18 cm', '24 cm', '36 cm', '24 cm'),
(4, 'What is 144 divided by 12?', '10', '12', '14', '16', '12'),
(4, 'What is the sum of angles in a triangle?', '90°', '180°', '360°', '270°', '180°'),
(4, 'How many sides does a hexagon have?', '5', '6', '7', '8', '6'),
(4, 'What is ¾ as a decimal?', '0.25', '0.5', '0.75', '0.85', '0.75'),
(4, 'What do you call a number that can only be divided by 1 and itself?', 'Even number', 'Prime number', 'Odd number', 'Natural number', 'Prime number'),
(4, 'What is the product of -4 and 6?', '-24', '24', '12', '-12', '-24'),
(4, 'What is the median of the numbers: 3, 7, 9, 5, 11?', '5', '7', '9', '11', '7'),
(4, 'What is the result of 5²?', '10', '15', '20', '25', '25'),
(4, 'Which number is a multiple of both 3 and 5?', '10', '12', '15', '20', '15'),
(4, 'What is the angle in a right triangle?', '30°', '45°', '60°', '90°', '90°'),
(4, 'What is the value of x in: 3x = 21?', '6', '7', '8', '9', '7');

-- Movies
INSERT INTO movies (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(5, 'Who directed the movie "Titanic"?', 'James Cameron', 'Steven Spielberg', 'Christopher Nolan', 'Martin Scorsese', 'James Cameron'),
(5, 'Which movie features the character "Jack Sparrow"?', 'Harry Potter', 'Pirates of the Caribbean', 'The Hobbit', 'The Avengers', 'Pirates of the Caribbean'),
(5, 'Which movie won Best Picture at the Oscars in 2020?', '1917', 'Joker', 'Parasite', 'Once Upon a Time in Hollywood', 'Parasite'),
(5, 'Which actor played Iron Man in the Marvel Cinematic Universe?', 'Chris Evans', 'Robert Downey Jr.', 'Chris Hemsworth', 'Mark Ruffalo', 'Robert Downey Jr.'),
(5, 'Which animated movie features a talking snowman named Olaf?', 'Tangled', 'Frozen', 'Moana', 'Zootopia', 'Frozen'),
(5, 'Who played the role of Harry Potter?', 'Daniel Radcliffe', 'Elijah Wood', 'Tom Holland', 'Rupert Grint', 'Daniel Radcliffe'),
(5, 'In which movie do characters take a journey to destroy a ring?', 'The Chronicles of Narnia', 'The Hobbit', 'Harry Potter', 'The Lord of the Rings', 'The Lord of the Rings'),
(5, 'Which film is known for the quote "I\'ll be back"?', 'The Matrix', 'Die Hard', 'Terminator', 'Predator', 'Terminator'),
(5, 'Who played the role of "The Joker" in The Dark Knight?', 'Joaquin Phoenix', 'Heath Ledger', 'Jared Leto', 'Christian Bale', 'Heath Ledger'),
(5, 'Which movie features the fictional planet Pandora?', 'Interstellar', 'Star Wars', 'Avatar', 'Guardians of the Galaxy', 'Avatar'),
(5, 'Which movie series features the character "Neo"?', 'Matrix', 'John Wick', 'Inception', 'Blade Runner', 'Matrix'),
(5, 'What is the name of the wizarding school in Harry Potter?', 'Narnia', 'Hogwarts', 'Middle Earth', 'Xandar', 'Hogwarts'),
(5, 'Which movie features the song "My Heart Will Go On"?', 'The Notebook', 'Titanic', 'La La Land', 'A Star is Born', 'Titanic'),
(5, 'Who directed the movie "Inception"?', 'James Cameron', 'Christopher Nolan', 'Quentin Tarantino', 'Ridley Scott', 'Christopher Nolan'),
(5, 'Which Marvel movie introduced Black Panther?', 'Avengers: Endgame', 'Black Panther', 'Captain America: Civil War', 'Iron Man 3', 'Captain America: Civil War'),
(5, 'Which movie is about a clown haunting children in Derry?', 'The Conjuring', 'Annabelle', 'It', 'Insidious', 'It'),
(5, 'Which movie features a robot named WALL-E?', 'Up', 'Big Hero 6', 'WALL-E', 'RoboCop', 'WALL-E'),
(5, 'What color pill does Neo take in The Matrix?', 'Red', 'Blue', 'Green', 'Yellow', 'Red'),
(5, 'Which movie franchise features "Fast cars and street racing"?', 'Transformers', 'Need for Speed', 'Fast & Furious', 'Speed Racer', 'Fast & Furious'),
(5, 'In which movie does a boy get lost in New York during Christmas?', 'Home Alone 2', 'Elf', 'The Polar Express', 'Jingle All the Way', 'Home Alone 2');

-- History
INSERT INTO history (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(6, 'Who was the first President of the United States?', 'Thomas Jefferson', 'Abraham Lincoln', 'George Washington', 'John Adams', 'George Washington'),
(6, 'In which year did World War II end?', '1945', '1939', '1950', '1942', '1945'),
(6, 'Who discovered America in 1492?', 'Christopher Columbus', 'Vasco da Gama', 'Marco Polo', 'Ferdinand Magellan', 'Christopher Columbus'),
(6, 'Which civilization built the pyramids of Egypt?', 'Greek', 'Roman', 'Mayan', 'Egyptian', 'Egyptian'),
(6, 'Who was the British Prime Minister during World War II?', 'Winston Churchill', 'Neville Chamberlain', 'Margaret Thatcher', 'Tony Blair', 'Winston Churchill'),
(6, 'What wall was built to divide East and West Berlin?', 'The Iron Wall', 'The Berlin Wall', 'The Cold Wall', 'The German Wall', 'The Berlin Wall'),
(6, 'In which year did the Titanic sink?', '1912', '1920', '1905', '1915', '1912'),
(6, 'Who was known as the "Father of India"?', 'Jawaharlal Nehru', 'Subhas Chandra Bose', 'Mahatma Gandhi', 'B. R. Ambedkar', 'Mahatma Gandhi'),
(6, 'Which empire was ruled by Julius Caesar?', 'Greek Empire', 'Roman Empire', 'Persian Empire', 'Ottoman Empire', 'Roman Empire'),
(6, 'Which war was fought between the North and South regions in the United States?', 'World War I', 'Cold War', 'American Civil War', 'Vietnam War', 'American Civil War'),
(6, 'Who was the famous queen of ancient Egypt?', 'Elizabeth', 'Cleopatra', 'Victoria', 'Isabella', 'Cleopatra'),
(6, 'What was the name of the ship that carried the Pilgrims to America?', 'Santa Maria', 'Mayflower', 'Titanic', 'Endeavour', 'Mayflower'),
(6, 'Which country was Adolf Hitler the leader of?', 'Italy', 'France', 'Germany', 'Russia', 'Germany'),
(6, 'What event started World War I?', 'Assassination of Archduke Franz Ferdinand', 'Attack on Pearl Harbor', 'German invasion of Poland', 'Bombing of Hiroshima', 'Assassination of Archduke Franz Ferdinand'),
(6, 'Who wrote the Declaration of Independence?', 'George Washington', 'Thomas Jefferson', 'Benjamin Franklin', 'Alexander Hamilton', 'Thomas Jefferson'),
(6, 'Which ancient civilization is famous for inventing democracy?', 'Roman', 'Egyptian', 'Greek', 'Babylonian', 'Greek'),
(6, 'Who was the first man to walk on the moon?', 'Neil Armstrong', 'Buzz Aldrin', 'Yuri Gagarin', 'Alan Shepard', 'Neil Armstrong'),
(6, 'Which battle is considered the turning point of World War II?', 'Battle of the Bulge', 'Battle of Britain', 'Battle of Stalingrad', 'Battle of Midway', 'Battle of Stalingrad'),
(6, 'What was the Renaissance?', 'A religious movement', 'A scientific revolution', 'A period of cultural rebirth in Europe', 'A military campaign', 'A period of cultural rebirth in Europe'),
(6, 'Who was the leader of the Soviet Union during World War II?', 'Lenin', 'Stalin', 'Putin', 'Trotsky', 'Stalin');

-- Brain Teasers
INSERT INTO brain_teasers (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(7, 'What has to be broken before you can use it?', 'Glass', 'Egg', 'Door', 'Lock', 'Egg'),
(7, 'I’m tall when I’m young, and I’m short when I’m old. What am I?', 'Tree', 'Pencil', 'Candle', 'Shadow', 'Candle'),
(7, 'What can you catch but not throw?', 'Ball', 'Cold', 'Wind', 'Smile', 'Cold'),
(7, 'What begins with T, ends with T, and has T in it?', 'Teapot', 'Tent', 'Ticket', 'Tattoo', 'Teapot'),
(7, 'What gets wetter the more it dries?', 'Sponge', 'Towel', 'Mop', 'Shirt', 'Towel'),
(7, 'What has one eye but cannot see?', 'Needle', 'Storm', 'Blind man', 'Camera', 'Needle'),
(7, 'What comes once in a minute, twice in a moment, but never in a thousand years?', 'Time', 'The letter M', 'Magic', 'The sun', 'The letter M'),
(7, 'Forward I am heavy, but backward I am not. What am I?', 'Stone', 'Not', 'Ton', 'None', 'Ton'),
(7, 'I have keys but no locks. I have space but no room. You can enter but can’t go outside. What am I?', 'Puzzle', 'Map', 'Keyboard', 'House', 'Keyboard'),
(7, 'What can travel around the world while staying in the same corner?', 'A stamp', 'Sunlight', 'A shadow', 'A map', 'A stamp'),
(7, 'The more you take, the more you leave behind. What are they?', 'Footsteps', 'Memories', 'Marks', 'Holes', 'Footsteps'),
(7, 'What has hands but can’t clap?', 'Clock', 'Mannequin', 'Robot', 'Statue', 'Clock'),
(7, 'What is full of holes but still holds water?', 'Sieve', 'Sponge', 'Bucket', 'Net', 'Sponge'),
(7, 'What goes up but never comes down?', 'Balloon', 'Age', 'Smoke', 'Mountain', 'Age'),
(7, 'I speak without a mouth and hear without ears. I have no body, but I come alive with the wind. What am I?', 'Shadow', 'Echo', 'Sound', 'Ghost', 'Echo'),
(7, 'What has many teeth but cannot bite?', 'Comb', 'Zipper', 'Gear', 'Saw', 'Comb'),
(7, 'I’m not alive, but I grow. I don’t have lungs, but I need air. What am I?', 'Fire', 'Cloud', 'Plant', 'Wind', 'Fire'),
(7, 'What has legs but doesn’t walk?', 'Chair', 'Table', 'Bed', 'All of the above', 'All of the above'),
(7, 'Which word is spelled incorrectly in every dictionary?', 'Wrong', 'Misspelled', 'Incorrectly', 'None', 'Incorrectly'),
(7, 'What comes down but never goes up?', 'Rain', 'Shadow', 'Tears', 'Clock', 'Rain');

-- Animals
INSERT INTO animals (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(8, 'Which animal is known as the King of the Jungle?', 'Tiger', 'Elephant', 'Lion', 'Cheetah', 'Lion'),
(8, 'What is the largest mammal in the world?', 'Elephant', 'Blue Whale', 'Giraffe', 'Hippopotamus', 'Blue Whale'),
(8, 'Which animal is the fastest on land?', 'Horse', 'Lion', 'Cheetah', 'Leopard', 'Cheetah'),
(8, 'Which bird is known for mimicking human speech?', 'Sparrow', 'Owl', 'Parrot', 'Pigeon', 'Parrot'),
(8, 'Which animal is known to have a strong memory?', 'Cat', 'Elephant', 'Dog', 'Horse', 'Elephant'),
(8, 'Which animal lays eggs but is not a bird?', 'Dolphin', 'Platypus', 'Tiger', 'Whale', 'Platypus'),
(8, 'How many legs does a spider have?', '6', '8', '10', '12', '8'),
(8, 'Which animal is the tallest in the world?', 'Elephant', 'Kangaroo', 'Giraffe', 'Camel', 'Giraffe'),
(8, 'What do you call a baby dog?', 'Kitten', 'Cub', 'Puppy', 'Foal', 'Puppy'),
(8, 'What is a group of lions called?', 'Herd', 'Pack', 'Pride', 'Swarm', 'Pride'),
(8, 'Which sea creature has eight arms?', 'Jellyfish', 'Octopus', 'Starfish', 'Crab', 'Octopus'),
(8, 'Which animal is known for carrying its baby in a pouch?', 'Kangaroo', 'Monkey', 'Bear', 'Rabbit', 'Kangaroo'),
(8, 'What is the only mammal capable of true flight?', 'Bat', 'Squirrel', 'Bird', 'Ostrich', 'Bat'),
(8, 'Which animal is known to have black and white stripes?', 'Tiger', 'Panda', 'Zebra', 'Cheetah', 'Zebra'),
(8, 'Which aquatic animal is known for its intelligence?', 'Shark', 'Tuna', 'Dolphin', 'Seal', 'Dolphin'),
(8, 'Which animal is a natural predator of snakes?', 'Mouse', 'Eagle', 'Cow', 'Goat', 'Eagle'),
(8, 'Which bird is known for its beautiful tail feathers?', 'Swan', 'Parrot', 'Peacock', 'Flamingo', 'Peacock'),
(8, 'Which animal is known to laugh when tickled?', 'Monkey', 'Cat', 'Hyena', 'Rat', 'Rat'),
(8, 'Which animal is the largest land carnivore?', 'Lion', 'Grizzly Bear', 'Polar Bear', 'Crocodile', 'Polar Bear'),
(8, 'Which animal can sleep while standing?', 'Dog', 'Elephant', 'Giraffe', 'Horse', 'Horse');

-- Trivia
INSERT INTO trivia (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(9, 'What is the capital city of Australia?', 'Sydney', 'Melbourne', 'Canberra', 'Perth', 'Canberra'),
(9, 'Which planet is closest to the sun?', 'Earth', 'Venus', 'Mercury', 'Mars', 'Mercury'),
(9, 'How many continents are there on Earth?', '5', '6', '7', '8', '7'),
(9, 'What is the currency of Japan?', 'Yen', 'Won', 'Dollar', 'Rupee', 'Yen'),
(9, 'Which ocean is the largest?', 'Atlantic Ocean', 'Arctic Ocean', 'Indian Ocean', 'Pacific Ocean', 'Pacific Ocean'),
(9, 'Which element has the chemical symbol "Au"?', 'Silver', 'Oxygen', 'Gold', 'Argon', 'Gold'),
(9, 'What is the tallest mountain in the world?', 'K2', 'Mount Everest', 'Kangchenjunga', 'Makalu', 'Mount Everest'),
(9, 'Which country invented pizza?', 'Greece', 'Italy', 'France', 'Turkey', 'Italy'),
(9, 'What is the hardest natural substance on Earth?', 'Iron', 'Gold', 'Diamond', 'Quartz', 'Diamond'),
(9, 'What is the smallest prime number?', '0', '1', '2', '3', '2'),
(9, 'Which country gifted the Statue of Liberty to the USA?', 'Germany', 'France', 'Italy', 'Spain', 'France'),
(9, 'Which instrument has keys, pedals, and strings?', 'Guitar', 'Harp', 'Piano', 'Violin', 'Piano'),
(9, 'Which language has the most native speakers worldwide?', 'English', 'Hindi', 'Mandarin Chinese', 'Spanish', 'Mandarin Chinese'),
(9, 'Which is the longest river in the world?', 'Amazon', 'Nile', 'Yangtze', 'Mississippi', 'Nile'),
(9, 'Which day is celebrated as World Environment Day?', 'June 5', 'April 22', 'March 21', 'July 11', 'June 5'),
(9, 'What is the main ingredient in guacamole?', 'Avocado', 'Cucumber', 'Tomato', 'Potato', 'Avocado'),
(9, 'What color is the "Ex" in FedEx logo?', 'Red', 'Green', 'Blue', 'Orange', 'Orange'),
(9, 'Which company developed the video game Fortnite?', 'Epic Games', 'Ubisoft', 'Electronic Arts', 'Activision', 'Epic Games'),
(9, 'What is the name of the longest bone in the human body?', 'Tibia', 'Humerus', 'Femur', 'Fibula', 'Femur'),
(9, 'What is the national animal of Canada?', 'Bear', 'Moose', 'Beaver', 'Eagle', 'Beaver');

-- Literature
INSERT INTO literature (category_id, question_text, option1, option2, option3, option4, correct_answer) VALUES
(10, 'Who wrote the play "Romeo and Juliet"?', 'William Wordsworth', 'William Shakespeare', 'Charles Dickens', 'Jane Austen', 'William Shakespeare'),
(10, 'Who is the author of "Pride and Prejudice"?', 'Emily Brontë', 'Jane Austen', 'Virginia Woolf', 'Charlotte Brontë', 'Jane Austen'),
(10, 'Which novel features the character "Sherlock Holmes"?', 'The Hound of the Baskervilles', 'Moby Dick', 'Oliver Twist', 'Hamlet', 'The Hound of the Baskervilles'),
(10, 'Who wrote "The Odyssey"?', 'Socrates', 'Aristotle', 'Homer', 'Virgil', 'Homer'),
(10, 'Who wrote "To Kill a Mockingbird"?', 'Harper Lee', 'Ernest Hemingway', 'F. Scott Fitzgerald', 'Mark Twain', 'Harper Lee'),
(10, 'What is the pen name of Samuel Langhorne Clemens?', 'George Orwell', 'Mark Twain', 'Lewis Carroll', 'Oscar Wilde', 'Mark Twain'),
(10, 'Which novel begins with the line "Call me Ishmael"?', 'Moby Dick', 'Great Expectations', 'Dracula', 'The Great Gatsby', 'Moby Dick'),
(10, 'Who is the author of "1984"?', 'Aldous Huxley', 'George Orwell', 'Ray Bradbury', 'J.D. Salinger', 'George Orwell'),
(10, 'Which Shakespeare play features the characters Rosencrantz and Guildenstern?', 'Othello', 'Macbeth', 'Hamlet', 'King Lear', 'Hamlet'),
(10, 'Who wrote "The Great Gatsby"?', 'F. Scott Fitzgerald', 'Ernest Hemingway', 'George Orwell', 'T.S. Eliot', 'F. Scott Fitzgerald'),
(10, 'Who wrote "The Divine Comedy"?', 'Dante Alighieri', 'Homer', 'Chaucer', 'Plato', 'Dante Alighieri'),
(10, 'What genre does the book "Frankenstein" belong to?', 'Romance', 'Science Fiction', 'Comedy', 'Historical', 'Science Fiction'),
(10, 'Who is the author of "Crime and Punishment"?', 'Leo Tolstoy', 'Anton Chekhov', 'Fyodor Dostoevsky', 'Maxim Gorky', 'Fyodor Dostoevsky'),
(10, 'Which poet wrote "The Road Not Taken"?', 'Walt Whitman', 'Robert Frost', 'Emily Dickinson', 'T.S. Eliot', 'Robert Frost'),
(10, 'Which author created the fantasy world of Middle-earth?', 'J.K. Rowling', 'George R.R. Martin', 'J.R.R. Tolkien', 'C.S. Lewis', 'J.R.R. Tolkien'),
(10, 'Who wrote "Animal Farm"?', 'George Orwell', 'Aldous Huxley', 'Kurt Vonnegut', 'Joseph Conrad', 'George Orwell'),
(10, 'Which classic novel features the character Atticus Finch?', 'To Kill a Mockingbird', 'Catcher in the Rye', 'Of Mice and Men', 'The Grapes of Wrath', 'To Kill a Mockingbird'),
(10, 'Which author is famous for writing horror fiction like "The Shining" and "It"?', 'Edgar Allan Poe', 'Stephen King', 'Bram Stoker', 'Mary Shelley', 'Stephen King'),
(10, 'Which novel was written by Mary Shelley?', 'Dracula', 'Frankenstein', 'The Picture of Dorian Gray', 'Wuthering Heights', 'Frankenstein'),
(10, 'Which of these books was written by Charles Dickens?', 'War and Peace', 'Oliver Twist', 'Les Misérables', 'The Count of Monte Cristo', 'Oliver Twist');