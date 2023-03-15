6.
SELECT SUM (tagsag_1.ev - tagsag.ev) / Count(*)
FROM tagsag, tagsag AS tagsag_1
WHERE (tagsag_1.tagid = tagsag.tagid) AND (tagsag.tipus = "l" AND tagsag_1.tipus = "r");

7.
SELECT nev, ev, elhunyt
FROM tag, tagsag
WHERE tag.id=tagid
AND ev<=( SELECT tagsag.ev FROM tag INNER JOIN tagsag ON tag.id = tagsag.tagid WHERE tag.nev = "Teller Ede" )
AND (elhunyt>=(SELECT tag.elhunyt FROM tag INNER JOIN tagsag ON tag.id = tagsag.tagid WHERE tag.nev = "Teller Ede") OR elhunyt is NULL )
AND tipus='t';