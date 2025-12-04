CREATE TABLE Membre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    role ENUM('president', 'tresorier', 'secretaire', 'membre Actif') NOT NULL,
    dateAdhesion DATE NOT NULL
);
CREATE TABLE Participant (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    statut ENUM('etudiant Actif', 'diplome', 'invite') NOT NULL
);
CREATE TABLE Evenement (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nomEvent VARCHAR(20) NOT NULL,
    description TEXT,
    date DATE NOT NULL,
    lieu VARCHAR(50) NOT NULL,
    budget DECIMAL NOT NULL,
    type ENUM('hackathons', 'soirees', 'atelierTech', 'competition') NOT NULL
    membre INT,
    FOREIGN KEY (membre) REFERENCES membre(id)
);
CREATE TABLE Sponsor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nomEntite VARCHAR(20) NOT NULL,
    nomPrincipal VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    telephone VARCHAR(15) NOT NULL,
    montant DECIMAL NOT NULL,
    evenement INT,
    FOREIGN KEY (evenement) REFERENCES evenement(id)
);
