create table Departements (
    code_departement TEXT,
    nom_departement TEXT,
    code_region INTEGER,
    zone_climatique TEXT,
    constraint pk_departements primary key (code_departement),
    constraint fk_region foreign key (code_region) references Regions(code_region)
);

create table Regions (
    code_region INTEGER,
    nom_region TEXT,
    constraint pk_regions primary key (code_region)
);

create table Mesures (
    code_departement TEXT,
    date_mesure DATE,
    temperature_min_mesure FLOAT,
    temperature_max_mesure FLOAT,
    temperature_moy_mesure FLOAT,
    constraint pk_mesures primary key (code_departement, date_mesure),
    constraint fk_mesures foreign key (code_departement) references Departements(code_departement)
);

--TODO Q4 Ajouter les créations des nouvelles tables
create  table  Communes(
    code_departement TEXT,
    code_commune INTEGER,
    nom_commune  TEXT,
    statut_commune TEXT,
    altitude_moyenne_commune INTEGER,
    population_commune INTEGER,
    superficie_commune INTEGER,
    code_canton_commune INTEGER,
    code_arrondissement_commune  INTEGER,
    constraint pk_commune primary key (code_departement,code_commune),
    constraint fk_commune foreign key (code_departement) references Departements(code_departement)
);

create table Travaux(
    id_travaux INTEGER,
    code_region INTEGER,
    code_departement TEXT,
    cout_total_ht_travaux FLOAT,
    cout_induit_ht_travaux FLOAT,
    anne_travaux INTEGER,
    type_logement_travaux TEXT,
    anne_construction_logement_travaux INTEGER,
    constraint pk_travaux primary key (id_travaux),
    constraint fk_travaux_code_region foreign key (code_region) references Regions(code_region),
    constraint fk_travaux_code_dep foreign key (code_departement) references  Departements(code_departement)

);

create table Isolation(
    id_travaux INTEGER,
    poste_isolation TEXT,
    isolant_isolation TEXT,
    epaisseur_isolation INTEGER,
    surface_isolation FLOAT,

    constraint pk_isolation primary key (id_travaux),
    constraint fk_isolation foreign key (id_travaux) references Travaux(id_travaux)
);

create table Chauffage(
    id_travaux INTEGER,
    energie_avant_travaux_chauffage TEXT,
    energie_installee_chauffage TEXT,
    generateur_chauffage TEXT,
    type_chaudiere_chauffage TEXT,

    constraint pk_chauffage primary key (id_travaux),
    constraint fk_chauffage foreign key (id_travaux) references Travaux(id_travaux)
);

create table Photovoltaique(
    id_travaux INTEGER,
    puissance_installee_photovoltaique INTEGER,
    types_panneaux_photovoltaique TEXT,

    constraint pk_photovoltaique primary key (id_travaux),
    constraint fk_photovoltaique foreign key (id_travaux) references Travaux(id_travaux)
);