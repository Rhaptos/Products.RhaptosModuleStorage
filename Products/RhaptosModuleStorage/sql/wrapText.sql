<dtml-comment>
arguments: text:string query:string open_wrap_tag:string=<b> close_wrap_tag:string=</b>
</dtml-comment>

SELECT headline(replace(replace(replace('<dtml-var text fmt=sql-quote>','&','&amp;'),'<','&lt;'),'>','&gt;'),plainto_tsquery('<dtml-var query fmt=sql-quote>'),'StartSel=<dtml-var open_wrap_tag>, StopSel=<dtml-var close_wrap_tag>, ShortWord=5, MinWords=50, MaxWords=60') as headline,headline(replace(replace(replace('<dtml-var text fmt=sql-quote>','&','&amp;'),'<','&lt;'),'>','&gt;'),plainto_tsquery('<dtml-var query fmt=sql-quote>'),'StartSel=<dtml-var open_wrap_tag>, StopSel=<dtml-var close_wrap_tag>, ShortWord=5, MinWords=20, HighlightAll=True') as fulltext
