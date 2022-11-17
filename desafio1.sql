DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(5,2) NOT NULL,
    plan_title VARCHAR(45) NOT NULL,
    PRIMARY KEY (plan_id)
  ) ENGINE=InnoDB;

  CREATE TABLE SpotifyClone.users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(45) NOT NULL,
    user_age INT NOT NULL,
    plan_id INT NOT NULL,
    sigin_date DATE NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (plan_id)
        REFERENCES SpotifyClone.plans (plan_id)
)  ENGINE=INNODB;

  CREATE TABLE SpotifyClone.artists(
    artist_id INT NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (artist_id)
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.albums(
   album_id INT NOT NULL AUTO_INCREMENT,
   album_title VARCHAR(100) NOT NULL,
   artista_id INT NULL,
   release_date YEAR NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artista_id)
    REFERENCES SpotifyClone.artist (artist_id)
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.tracks(
    track_id INT NOT NULL AUTO_INCREMENT,
    track_name VARCHAR(100) NOT NULL,
    track_duration TIME NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (track_id),
    FOREIGN KEY (album_id)
      REFERENCES SpotifyClone.albums (album_id)
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.reproduction(
    user_id INT NOT NULL,
    album_id INT NOT NULL,
    track_id INT NOT NULL,
    reproduction_day DATE NOT NULL,
    reproduction_hour TIME NOT NULL,
    PRIMARY KEY (user_id, reproduction_hour),
    FOREIGN KEY (user_id)
      REFERENCES SpotifyClone.users (user_id),
    FOREIGN KEY (album_id)
      REFERENCES SpotifyClone.albums (album_id),
    FOREIGN KEY (track_id)
      REFERENCES SpotifyClone.tracks (track_id)
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.following(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id)
      REFERENCES SpotifyClone.users (user_id),
    FOREIGN KEY (artist_id)
      REFERENCES SpotifyClone.artists (artist_id)
  ) ENGINE = InnoDB;

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');