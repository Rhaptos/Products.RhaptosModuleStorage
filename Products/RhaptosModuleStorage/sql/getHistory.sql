<dtml-comment>
arguments: id:string
class_file: RhaptosModuleStorage.DBModule.py
class_name: DBModuleHistory
max_rows: 0
</dtml-comment>

SELECT version, revised, submitter, submitlog
FROM modules
WHERE <dtml-sqltest id column="moduleid" type="string">
ORDER BY revised DESC
