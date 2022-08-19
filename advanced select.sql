--количество исполнителей в каждом жанре;
--количество треков, вошедших в альбомы 2019-2020 годов;
--средняя продолжительность треков по каждому альбому;
--все исполнители, которые не выпустили альбомы в 2020 году;
--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
--название альбомов, в которых присутствуют исполнители более 1 жанра;
--наименование треков, которые не входят в сборники;
--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
--название альбомов, содержащих наименьшее количество треков.



select g.ganre, count(ga.id_artist)
from genres as g
left join ganres_artists as ga on g.id = ga.id_ganre 
group by g.ganre
order by count(ga.id_artist) desc
;
--количество треков, вошедших в альбомы 2019-2020 годов;
select a.yaer, a.name, count(t.id)
from albums as a
left join tracks as t on a.id =t.id_album 
where (a.yaer <= 2020) and (a.yaer >= 2019)
group by a.yaer,a.name
order by a.yaer  
;

--количество треков, вошедших в альбомы 2019-2020 годов;
-- или так?
select count(t.id) 
from albums as a
left join tracks as t on a.id =t.id_album 
where (a.yaer <= 2020) and (a.yaer >= 2019)
;
  
--средняя продолжительность треков по каждому альбому;
select a.name, avg(t.duration)
from albums as a
left join tracks as t on a.id =t.id_album 
group by a.name
order by a.name
;

--все исполнители, которые не выпустили альбомы в 2020 году;
-- у артиста Vera вообще нет альбомов, почему она не попадает в выборку?
select ar.name, al.yaer
from artists as ar
full join artists_albums as aa on ar.id = aa.id_artist 
left join albums as al on aa.id_album = al.id 
group by ar.name, al.yaer
having al.yaer <> 2020
order by ar.name 
;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select ar.name, col.name
from artists as ar
left join artists_albums as aa on ar.id = aa.id_artist 
left join albums as al on aa.id_album = al.id 
left join tracks as tr on al.id = tr.id_album 
left join tracs_collections as tc on tr.id = tc.id_trak 
left join collections as col on tc.id_collection = col.id 
where ar.name = 'Djo'

--название альбомов, в которых присутствуют исполнители более 1 жанра;
select al.name 
from albums as al
left join artists_albums as aa on al.id = aa.id_album 
left join artists as ar on aa.id_artist = ar.id 
left join ganres_artists as ga on ar.id = ga.id_artist  
left join genres as g on ga.id_ganre = g.id  
group by al.name
having count(g.ganre) > 1

--наименование треков, которые не входят в сборники;
select tr.name 
from tracks as tr
left join tracs_collections as tc on tr.id = tc.id_trak 
where tc.id_collection  is null
order by tr.name

--исполнителя(-ей), написавшего самый короткий по продолжительности трек 
--(теоретически таких треков может быть несколько);

select ar.name, tr.duration
from artists as ar
left join artists_albums as aa on ar.id = aa.id_artist 
left join albums as al on aa.id_album = al.id 
left join tracks as tr on al.id = tr.id_album 
group by ar.name, tr.duration 
having tr.duration = (select min(duration) from tracks)

-- название альбомов, содержащих наименьшее количество треков
select a.name, count(t.name)
from albums a 
left join tracks t on a.id = t.id_album 
group by a.name
having count(t.name) = (
select count (t.id_album)
from tracks t 
group by t.id_album 
order by count (t.id_album)
limit 1)
order by a.name

;


