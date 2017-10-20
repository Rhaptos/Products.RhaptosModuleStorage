<dtml-comment>
arguments: 
</dtml-comment>

WITH styles (id, title) AS (
    SELECT print_style AS id, title||' (with recipe)'
        FROM default_print_style_recipes)
SELECT row_to_json(styles) FROM styles;
