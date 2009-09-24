<dtml-comment>
arguments: id:string version:string
</dtml-comment>

DELETE from modules where 
<dtml-sqltest id column="moduleid" type="string"> 
<dtml-if version>
and
<dtml-sqltest version column="version" type="string" optional>
</dtml-if>
;

DELETE from abstracts where abstractid not in (select abstractid from modules)

