<dtml-comment>
arguments: id:string
class_file: RhaptosModuleStorage.DBModule.py
class_name: DBModule
</dtml-comment>

SELECT
  m.moduleid AS id, m.portal_type, m.version, m.name, m.created as _created, m.revised as _revised, 
  abstract, m.stateid, m.doctype, l.url AS license, m.module_ident AS ident, m.submitter, m.submitlog, m.print_style,
  p.moduleid AS parent_id, p.version AS parent_version, 
  m.authors as authors, m.licensors as licensors, m.maintainers as maintainers, COALESCE(m.parentauthors, ARRAY(select ''::text where false)) as "parentAuthors", m.language as language, (select '{'||list(''''||roleparam||''':['''||array_to_string(personids,''',''')||''']')||'}' from roles natural join moduleoptionalroles where module_ident=m.module_ident group by module_ident) as _roles, list(tag) as _subject
FROM latest_modules m
NATURAL JOIN abstracts 
LEFT JOIN modules p on m.parent = p.module_ident
LEFT JOIN moduletags mt on m.module_ident = mt.module_ident NATURAL LEFT JOIN tags,
licenses l
WHERE
m.licenseid = l.licenseid AND
<dtml-sqltest id column="m.moduleid" type="string">
GROUP BY
m.moduleid, m.portal_type, m.version, m.name, m.created, m.revised, abstract, m.stateid, m.doctype, l.url, m.module_ident, m.submitter, m.submitlog, p.moduleid, p.version, m.authors, m.licensors, m.maintainers, m.parentauthors, m.language, m.print_style
