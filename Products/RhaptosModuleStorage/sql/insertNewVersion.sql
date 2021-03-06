<dtml-comment>
arguments: moduleid:string portal_type:string version:string name:string created:date revised:date authors maintainers licensors parentauthors abstractid:int stateid:int licenseid:int doctype:string submitter:string submitlog:string parent:int language:string google_analytics:string print_style:string
</dtml-comment>

INSERT INTO modules
  (moduleid, portal_type, version, name, created, revised, authors, maintainers, licensors, <dtml-if parentauthors>parentauthors,</dtml-if> abstractid, stateid, licenseid, doctype, submitter, submitlog, language, parent, google_analytics, print_style)
VALUES 
(
 <dtml-sqlvar moduleid type="string">, 
 <dtml-sqlvar portal_type type="string">, 
 <dtml-sqlvar version type="string">, 
 <dtml-sqlvar name type="string">, 
 <dtml-sqlvar created type="string">, 
 <dtml-sqlvar revised type="string">, 
 ARRAY <dtml-var expr="_.list([p.encode('utf-8') for p in authors])">, 
 ARRAY <dtml-var expr="_.list([p.encode('utf-8') for p in maintainers])">,
 ARRAY <dtml-var expr="_.list([p.encode('utf-8') for p in licensors])">,
<dtml-if parentauthors>
 ARRAY <dtml-var expr="_.list([p.encode('utf-8') for p in parentauthors])">, 
</dtml-if>
 <dtml-sqlvar abstractid type="int">,
 <dtml-sqlvar stateid type="int">,
 <dtml-sqlvar licenseid type="int">, 
 <dtml-sqlvar doctype type="string">, 
 <dtml-sqlvar submitter type="string">,
 <dtml-sqlvar submitlog type="string">,
 <dtml-sqlvar language type="string">,
 <dtml-sqlvar parent type="int" optional>,
 <dtml-sqlvar google_analytics type="string" optional>,
 <dtml-sqlvar print_style type="string" optional>
)
