<dtml-comment>
arguments: personid:string
max_rows: 0
</dtml-comment>

SELECT personid as id, personid as getId, * FROM persons WHERE <dtml-sqltest personid type="string">
