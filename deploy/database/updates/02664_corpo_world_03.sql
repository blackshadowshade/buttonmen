-- Add new test button recipes only in an update. This will be cleaned up later when recipes are finalised.
INSERT INTO button (id, name, recipe, btn_special, tourn_legal, set_id) VALUES
(901, 'Fiona1',  'st(4) fM(8) (12) (12) (V)',                      0, 0, (SELECT id FROM buttonset WHERE name="CyberSuit Corp")),
(902, 'Nadia1',  '(8) st(8) fI(10) (10) (V)',                      0, 0, (SELECT id FROM buttonset WHERE name="CyberSuit Corp")),
(903, 'Gavin1',  'fM(6) Is(8) (20) (20) (V)',                      0, 0, (SELECT id FROM buttonset WHERE name="CyberSuit Corp")),
(904, 'Fiona2',  'st(6) fM(8) (12) (12) (V)',                      0, 0, (SELECT id FROM buttonset WHERE name="CyberSuit Corp")),
(905, 'Nadia2',  'fI(6) st(10) (10) (12) (V)',                     0, 0, (SELECT id FROM buttonset WHERE name="CyberSuit Corp")),
(906, 'Gavin2',  'fM(6) Is(8) (10) (10) (V)',                      0, 0, (SELECT id FROM buttonset WHERE name="CyberSuit Corp"));
