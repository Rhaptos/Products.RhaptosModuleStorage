<dtml-comment>
arguments: file:string string:media_type
</dtml-comment>

INSERT INTO files 
  (file, media_type)
VALUES 
  (<dtml-var file>::bytea, <dtml-sqlvar media_type type="string">)
RETURNING fileid

