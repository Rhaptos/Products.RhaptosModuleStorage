<dtml-comment>
arguments: personid:string
max_rows: 0
</dtml-comment>

SELECT personid as id, personid as getId, 'Approved' as status, * FROM persons WHERE <dtml-sqltest personid type="string">
