INSERT INTO buttonset (id, name, sort_order) VALUES
(86, 'Corpo World', 8600);

INSERT INTO button (id, name, recipe, btn_special, tourn_legal, set_id) VALUES
(797, 'Andrew',          'ks(6) (8) fI(12) (X) (X)',                       0, 0, (SELECT id FROM buttonset WHERE name="Corpo World")),
(798, 'Chad',            'ks(4) (4) It(12) (20) (X)',                      0, 0, (SELECT id FROM buttonset WHERE name="Corpo World")),
(799, 'Fiona',           '(6) fM(10) st(12) (12) (X)',                     0, 0, (SELECT id FROM buttonset WHERE name="Corpo World")),
(800, 'Gavin',           '(6) fM(8) Is(12) (20) (X)',                      0, 0, (SELECT id FROM buttonset WHERE name="Corpo World")),
(801, 'Isabel',          '(6) It(8) fs(10) (12) (X)',                      0, 0, (SELECT id FROM buttonset WHERE name="Corpo World")),
(802, 'Monique',         'kt(8) (8) fs(12) (12) (X)',                      0, 0, (SELECT id FROM buttonset WHERE name="Corpo World")),
(803, 'Naima',           '(4) st(10) fI(10) (12) (X)',                     0, 0, (SELECT id FROM buttonset WHERE name="Corpo World")),
(804, 'Sachin',          '(6) kt(6) Is(10) (20) (X)',                      0, 0, (SELECT id FROM buttonset WHERE name="Corpo World"));
