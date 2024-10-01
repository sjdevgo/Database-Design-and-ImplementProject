

-- CREATE Artists TABLE
CREATE TABLE Artists(
				ArtistID INTEGER PRIMARY KEY,
				Name TEXT NOT NULL,
				BirthDate DATE,
				Genre TEXT -- Redundant data				
);















-- Create Albums Table
CREATE TABLE Albums(
				AlbumID INTEGER PRIMARY KEY,
				Title TEXT NOT NULL,
				ReleaseDate DATE,
				ArtistID INTEGER,
				Genre TEXT, --Redundant data
				FOREIGN KEY(ArtistID)REFERENCES Artists(ArtistID)
)
















--Create Tracks Table:
	CREATE TABLE Tracks(
				TrackID INTEGER PRIMARY KEY,
				Title TEXT NOT NULL,
				Duration INTEGER,
				AlbumID INTEGER,
				ArtistGenre TEXT, --Transitive dependency
				FOREIGN KEY(AlbumID)REFERENCES Albums(AlbumID)
	)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	--Create Genre Table:
-- CREATE TABLE Genre(
-- 					GenreID INTEGER PRIMARY KEY,
-- 					Name TEXT NOT NULL
-- 	);