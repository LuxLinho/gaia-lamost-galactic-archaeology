# Project II Milestone 1: Orbital Characterization Setup

## 1. Milestone objective

Project II extends the Gaia-LAMOST Galactic Archaeology Project from candidate discovery and cross-method validation into orbital characterization.

Project I identified chemo-kinematic outlier candidates from Gaia DR3 and LAMOST cross-matched stellar data. Project V then tested these candidates in multiple unsupervised feature spaces using PCA, UMAP, and DBSCAN robustness diagnostics. Project II will use the strongest and most consistently supported candidates from Project V as the input set for orbit-analysis preparation.

The goal of this milestone is not yet to perform full orbit integration. Instead, Milestone 1 defines the required inputs, feature engineering plan, quality-control checks, orbital diagnostics, and interpretation framework needed for a scientifically cautious orbit-analysis stage.

## 2. Primary Project II input tables

Project II should start from two existing candidate-level products.

### 2.1 Cross-method candidate evidence table

Primary input:

- data/processed/project_v_candidate_cross_method_summary.csv

This table contains 27 Project V candidates and records the cross-method evidence from PCA, UMAP, DBSCAN baseline labels, parameter-sweep noise stability, and combined chemo-kinematic features.

Important columns include:

- source_id
- feh
- tangential_velocity_kms
- galcen_vtot_kms
- bp_rp
- absolute_g_mag
- combined_chemo_kinematic_pc1
- combined_chemo_kinematic_pc2
- umap_1
- umap_2
- pca_dbscan_label
- umap_dbscan_label
- pca_noise_stability_fraction
- umap_noise_stability_fraction
- pca_dbscan_noise_baseline
- umap_dbscan_noise_baseline
- cross_method_noise_score

This file should be treated as the Project V evidence layer.

### 2.2 Candidate astrometric and spectroscopic summary table

Supporting input:

- data/processed/gaia_lamost_candidate_summary_table.csv

This table contains 27 Project I/Project V candidates with sky position, parallax-derived distance proxy, LAMOST radial velocity, metallicity, photometry, and candidate level labels.

Important columns include:

- source_id
- ra_gaia
- dec_gaia
- gal_l
- gal_b
- parallax
- distance_pc
- bp_rp
- phot_g_mean_mag
- absolute_g_mag
- teff
- logg
- feh
- rv
- tangential_velocity_kms
- galcen_vtot_kms
- metallicity_group
- candidate_score_m6
- candidate_level_m6

This file should be treated as the coordinate and stellar-parameter layer.

## 3. Candidate definition for Project II

Project II should focus first on the strongest Project V candidates, defined by a combination of:

1. high cross_method_noise_score;
2. PCA DBSCAN noise classification in baseline or robustness grids;
3. UMAP support where available;
4. high tangential velocity or high Galactocentric total velocity;
5. low metallicity, especially [Fe/H] < -1;
6. Project I candidate level, especially moderate and strong.

A practical first-pass ranking should use:

- cross_method_noise_score descending
- pca_noise_stability_fraction descending
- umap_noise_stability_fraction descending
- galcen_vtot_kms descending
- tangential_velocity_kms descending
- feh ascending

This ranking is not a final scientific classification. It is an input prioritization scheme for orbit-characterization work.

## 4. Required feature categories for orbital characterization

Project II should prepare five groups of features.

### 4.1 Observed astrometric features

Required columns:

- source_id
- ra_gaia
- dec_gaia
- parallax
- distance_pc
- gal_l
- gal_b

These define the sky position and approximate line-of-sight distance.

### 4.2 Observed kinematic features

Required columns:

- rv
- tangential_velocity_kms
- galcen_vtot_kms

Future orbit integration requires full 6D phase-space information. The current candidate summary includes radial velocity and tangential velocity summaries, but the next implementation milestone should verify that proper-motion columns are available in the parent feature tables.

Required parent-table columns to verify in Milestone 2:

- pmra
- pmdec
- ra_gaia
- dec_gaia
- parallax
- rv

If these are available, Project II can build a full phase-space table.

### 4.3 Galactocentric velocity features

Project I already produced Galactocentric velocity diagnostics in the larger feature products. Project II should recover or recompute:

- galcen_vx
- galcen_vy
- galcen_vz
- galcen_vtot_kms

Derived features to add:

- v_R_proxy
- v_phi_proxy
- v_z_proxy
- Lz_proxy
- in_plane_speed_proxy
- vertical_speed_proxy

The exact physical interpretation should remain cautious until the coordinate convention and solar parameters are explicitly documented.

### 4.4 Orbital summary features

Once the full 6D coordinates are available and a Galactic potential is selected, Project II should compute:

- r_peri_kpc
- r_apo_kpc
- eccentricity
- z_max_kpc
- current_galactocentric_radius_kpc
- orbital_energy_proxy_or_E
- angular_momentum_Lz

The minimum scientifically useful orbit-characterization table should contain:

- source_id
- feh
- galcen_vtot_kms
- tangential_velocity_kms
- cross_method_noise_score
- r_peri_kpc
- r_apo_kpc
- eccentricity
- z_max_kpc
- Lz
- orbit_class_preliminary

### 4.5 Project V evidence features retained for interpretation

Project II should not discard the Project V machine-learning evidence. Orbital interpretation should retain:

- combined_chemo_kinematic_pc1
- combined_chemo_kinematic_pc2
- umap_1
- umap_2
- pca_noise_stability_fraction
- umap_noise_stability_fraction
- cross_method_noise_score

These columns allow Project II to ask whether the most orbitally extreme stars are also the strongest unsupervised outliers.

## 5. Proposed Project II output files

Milestone 2 and later should create the following files:

- data/processed/project_ii_orbit_input_candidates.csv
- data/processed/project_ii_orbital_feature_plan_summary.csv
- data/processed/project_ii_orbital_parameters_candidates.csv
- figures/project_ii_candidate_orbit_feature_matrix.png
- figures/project_ii_eccentricity_vs_feh.png
- figures/project_ii_zmax_vs_feh.png
- figures/project_ii_lz_vs_energy_proxy.png
- figures/project_ii_orbit_classes_summary.png
- notebooks/13_project_ii_orbit_input_preparation.ipynb
- notebooks/14_project_ii_orbital_diagnostics_preparation.ipynb
- report/project_ii_milestone2_orbit_input_preparation.md

The notebook numbering should continue from Project V and should not require directory restructuring.

## 6. Quality-control requirements

Before orbit integration, Project II must check several categories of quality.

### 6.1 Astrometric quality

Required checks:

- positive parallax
- reasonable distance_pc
- finite ra_gaia and dec_gaia
- finite gal_l and gal_b
- finite pmra and pmdec if available

If Gaia quality indicators are available in parent tables, add:

- ruwe
- astrometric_excess_noise
- parallax_over_error
- phot_bp_rp_excess_factor

### 6.2 Radial-velocity quality

Required checks:

- finite rv
- radial-velocity distribution outliers
- LAMOST radial-velocity availability
- possible extreme-radial-velocity candidates

### 6.3 Distance caveat

The current distance_pc appears to be a simple parallax-based distance proxy. For nearby or moderate-distance stars this can be useful as a first-pass estimate, but it should be treated cautiously for low-parallax stars.

Project II should explicitly label this as a first-pass orbital characterization unless better distance estimates are added later.

### 6.4 Reproducibility checks

Every orbital output should record:

- input table version
- coordinate convention
- solar position assumption
- solar motion assumption
- Galactic potential choice
- integration time
- time step
- software package version

## 7. Scientific interpretation framework

Project II should classify candidate orbits into preliminary categories.

### 7.1 Disk-like candidates

Expected properties:

- lower eccentricity
- lower z_max
- disk-like angular momentum
- moderate metallicity

These may represent metal-poor thick-disk stars rather than accreted halo debris.

### 7.2 Halo-like candidates

Expected properties:

- high eccentricity
- large z_max
- high total velocity
- low metallicity
- weak or unusual disk rotation

These are stronger candidates for halo-like or accreted populations.

### 7.3 Retrograde or low-Lz candidates

Expected properties:

- low or negative Lz
- large velocity offset
- possibly low metallicity

These would be especially important for accretion-remnant interpretation.

### 7.4 Ambiguous candidates

Candidates with strong Project V outlier evidence but uncertain orbital parameters should remain flagged as ambiguous rather than forced into a physical class.

## 8. Relationship to Project I and Project V

Project I established the chemo-kinematic candidate sample.

Project V showed that several candidates remain unusual in reduced feature spaces and under cross-method clustering diagnostics.

Project II adds physical orbit-level interpretation. This is the step that can connect the candidate list more directly to Galactic archaeology questions such as:

- Are the strongest chemo-kinematic outliers on disk-like or halo-like orbits?
- Do low-metallicity, high-velocity candidates also have high eccentricity?
- Are any candidates consistent with retrograde or low-angular-momentum populations?
- Do PCA/UMAP outliers correspond to dynamically meaningful orbital structures?

## 9. Milestone 2 implementation plan

Project II Milestone 2 should implement orbit-input preparation.

Recommended tasks:

1. merge project_v_candidate_cross_method_summary.csv with gaia_lamost_candidate_summary_table.csv on source_id;
2. verify whether full proper-motion and Galactocentric velocity columns are present in parent feature tables;
3. create project_ii_orbit_input_candidates.csv;
4. rank candidates by cross-method evidence and orbital-readiness;
5. create a feature-availability matrix;
6. document missing columns and assumptions;
7. prepare the code path for full orbit integration in Milestone 3.

## 10. Milestone 1 status

Milestone 1 defines the orbit-analysis setup and feature plan. No directory restructuring was performed.

The project is ready to proceed to Project II Milestone 2: Orbit Input Preparation.
