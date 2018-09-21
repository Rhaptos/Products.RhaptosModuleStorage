<dtml-comment>
arguments: roles personid:string
</dtml-comment>

UPDATE persons SET groups = ARRAY <dtml-var expr="_.list([p.encode('utf-8') for p in roles])">
WHERE <dtml-sqltest personid column="personid" type="string">;
