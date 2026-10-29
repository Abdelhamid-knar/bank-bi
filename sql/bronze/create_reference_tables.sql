-- Bronze landing tables for the reference/dimension Excel files.
-- One table per file: bronze.bronze_<lowercase file name>, all text plus lineage columns.
-- Loaded by the NiFi process group 'bronze_reference_files'.

CREATE TABLE IF NOT EXISTS bronze.bronze_marche_simule (
    id_ma text,
    code_ma text,
    lib_ma text,
    code_sval_ma text,
    lib_sval_ma text,
    date_fichier text,
    source_file text,
    load_ts timestamp default now()
);

CREATE TABLE IF NOT EXISTS bronze.bronze_table_nature_tiers (
    id text,
    code_nature text,
    libelle_nature text,
    source_file text,
    load_ts timestamp default now()
);

CREATE TABLE IF NOT EXISTS bronze.bronze_table_produits (
    cod_entite text,
    date_chargement text,
    idf_code_produit text,
    cod_activite text,
    lib_activite text,
    cod_ss_activite text,
    lib_ss_activite text,
    cod_famille text,
    lib_famille text,
    prod_commercial text,
    lib_produit text,
    nom_sop text,
    cod_sop text,
    cod_usage text,
    cod_ribable text,
    lib_court text,
    cod_edition_rib text,
    cod_typ_produit text,
    cod_transac_gestion text,
    cod_declaratif_oscar text,
    lib_client_long text,
    lib_client_court text,
    num_ligne text,
    cod_fichier text,
    source_file text,
    load_ts timestamp default now()
);

CREATE TABLE IF NOT EXISTS bronze.bronze_table_statut_tiers (
    id text,
    code_statut text,
    libelle_statut text,
    source_file text,
    load_ts timestamp default now()
);

CREATE TABLE IF NOT EXISTS bronze.bronze_table_portefeuille (
    id_por text,
    cod_fed text,
    lib_fed_court text,
    cod_bqe text,
    lib_bqe text,
    num_gui text,
    lib_court_gui text,
    num_bur text,
    lib_bur text,
    num_soc text,
    lib_soc_court text,
    num_dir text,
    lib_dir_court text,
    num_grp text,
    lib_grp_court text,
    code_portefeuille text,
    nom text,
    prenom text,
    resp text,
    date_fichier text,
    source_file text,
    load_ts timestamp default now()
);

CREATE TABLE IF NOT EXISTS bronze.bronze_table_stratification (
    id_stn text,
    code_stn text,
    lib_stn text,
    code_sval_stn text,
    lib_sval_stn text,
    date_fichier text,
    source_file text,
    load_ts timestamp default now()
);

CREATE TABLE IF NOT EXISTS bronze.bronze_secteur_activite (
    id_sect_act text,
    code_sect_act text,
    libelle_sect_act text,
    source_file text,
    load_ts timestamp default now()
);

CREATE TABLE IF NOT EXISTS bronze.bronze_tranche_age (
    id_tranche_age text,
    lib_tranche_age text,
    age_min text,
    age_max text,
    source_file text,
    load_ts timestamp default now()
);
