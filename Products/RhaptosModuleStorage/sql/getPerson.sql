<dtml-comment>
arguments: id:string 
</dtml-comment>

SELECT *
FROM persons
WHERE
<dtml-sqltest id column="personid" type="string">
