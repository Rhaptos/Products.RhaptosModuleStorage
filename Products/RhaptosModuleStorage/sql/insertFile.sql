<dtml-comment>
arguments: file:string media_type:string
</dtml-comment>

INSERT INTO files 
  (file, media_type)
VALUES 
  (<dtml-var file>::bytea, <dtml-sqlvar media_type type="string">)
RETURNING fileid

