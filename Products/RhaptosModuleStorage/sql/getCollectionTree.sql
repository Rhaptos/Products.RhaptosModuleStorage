<dtml-comment>
arguments: id:string version:string
</dtml-comment>

SELECT tree_to_json_for_legacy(
    m.uuid::TEXT,
    CONCAT_WS('.', m.major_version, m.minor_version))
FROM modules m
WHERE
    <dtml-sqltest id column="m.moduleid" type="string"> AND
    <dtml-sqltest version column="m.version" type="string">
