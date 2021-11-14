--simple--
select movie_name from movie where r_date > '2016-01-01';
--complex--
select movie_name from movie,lang where lang.l_id = movie.lang_id and lang.lang_name = 'Kannada';
select actor_name from actor,movie,genre where genre.gen_name = 'Romance' and actor.a_id=movie.actorid and genre.g_id = movie.genrid;