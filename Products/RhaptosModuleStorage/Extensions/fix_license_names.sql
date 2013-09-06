update licenses set name = 'Creative Commons '||name||' License'  where name !~ '^Creative Commons';
INSERT INTO licenses (code, version, name, url) VALUES ('by-nc-sa', '3.0', 'Creative Commons Attribution-NonCommercial-ShareAlike License', 'http://creativecommons.org/licenses/by-nc-sa/3.0/');
INSERT INTO licenses (code, version, name, url) VALUES ('by-sa', '3.0', 'Creative Commons Attribution-ShareAlike License', 'http://creativecommons.org/licenses/by-sa/3.0/');
