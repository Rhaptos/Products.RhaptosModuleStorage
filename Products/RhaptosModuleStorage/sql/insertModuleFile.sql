<dtml-comment>
arguments: moduleid:string version:string fileid:string filename:string
</dtml-comment>

INSERT INTO module_files (module_ident, fileid, filename)
  SELECT module_ident, <dtml-sqlvar fileid type="string">, 
         <dtml-sqlvar filename type="string">
  FROM modules
  WHERE <dtml-sqltest moduleid type="string">
  AND <dtml-sqltest version type="string">
