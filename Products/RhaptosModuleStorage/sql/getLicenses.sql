<dtml-comment>
arguments: url:string
</dtml-comment>

SELECT licenseid, code, "version", name, url, 'CC-' || upper(code) || ' ' || "version" AS label
FROM licenses order by licenseid
