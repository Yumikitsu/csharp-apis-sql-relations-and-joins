--Show only the films where the writer and director are the same person
select title, release_year, genre, score, pd.name as directorName, pw.name as writerName from films left join directors d ON films.director_fk = d.id left join writers w ON films.writer_fk = w.id left join people pd ON d.people_fk = pd.id left join people pw ON w.people_fk = pw.id where pd.name = pw.name;