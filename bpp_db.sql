BEGIN TRANSACTION;
CREATE TABLE blueprints (
                                        blueprint text PRIMARY KEY,
                                        tech integer,
                                        source text,
                                        bp_cost integer,
                                        weight integer,
                                        size integer,
                                        max_uses integer,
                                        manhours integer,
                                        max_workforce integer,
                                        init_credits integer,
                                        init_materials text,
                                        init_materials_n text,
                                        init_materials_discount text,
                                        per_credits integer,
                                        per_materials text,
                                        per_materials_n text,
                                        per_materials_discount text,
                                        products text NOT NULL,
                                        products_n text
                                    );
INSERT INTO "blueprints" VALUES('Zombie Bunny Stop Fragment',21,'Easter',NULL,100000,150,NULL,200000000,NULL,NULL,'[Metals, Zombie Bunny Stop Fragment]','[25000, 4]','[Y, Y]',5000000000,NULL,NULL,NULL,'Zombie Bunny Stop','1');
INSERT INTO "blueprints" VALUES('Darkness Warmed Over Blueprint',21,'Infernal Darkness, Dark Scorch',NULL,1000,1,1,500000000,NULL,1500000000,'[Metals, Promethium, Dark Scorch''s Remains]','[1000, 50, 1]','[Y, Y, Y]',1500000000,'[Metals, Dark Cell, Promethium, Dark Isotope, Dark Neutron Rod, Death Warmed Over]','[100000, 10, 500, 10, 10, 2]','[Y, Y, Y, Y, Y, Y]','Darkness Warmed Over','1');
INSERT INTO "blueprints" VALUES('Titanium Sheet Blueprint',9,'Ring, Rock Harbor',1000000,1000,1,NULL,10000,NULL,500000,'Metals','5000','Y',500000,'[Metals, Nuclear Waste, Microchips]','[5000, 500, 100]','[Y, Y, Y]','Titanium Sheet','1');
INSERT INTO "blueprints" VALUES('Titanium Sheet Smelting Schema',9,'Ring, Rock Harbor',1000000,1000,1,NULL,10000,NULL,250000,'Metals','5000','Y',250000,'[Metals, Titanium]','[5000, 2]','[Y, Y]','Titanium Sheet','1');
CREATE TABLE bpp_variables (
                                        variable text PRIMARY KEY,
                                        value text NOT NULL
                                    );
INSERT INTO "bpp_variables" VALUES('db_version','0.2');
CREATE TABLE factories (
                                        factory text PRIMARY KEY,
                                        tech integer,
                                        mobile bool NOT NULL,
                                        source text,
                                        factory_cost integer,
                                        weight integer,
                                        size integer,
                                        workers integer NOT NULL,
                                        credits integer,
                                        materials text,
                                        materials_n text,
                                        products text NOT NULL,
                                        products_n text
                                    );
COMMIT;
