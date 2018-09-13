<dtml-comment>
arguments: passwd:string personid:string
</dtml-comment>

UPDATE persons SET passwd = '<dtml-var passwd>'::bytea 
WHERE <dtml-sqltest personid column="personid" type="string">;
