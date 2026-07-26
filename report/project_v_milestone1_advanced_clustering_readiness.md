# Project V Milestone 1 — Advanced Clustering Readiness and Feature Audit

## Milestone Objective

This milestone defines a statistically defensible discovery sample and feature
strategy for advanced unsupervised analysis with HDBSCAN, OPTICS, Gaussian
Mixture Models, and later consensus clustering.

The previously identified 27 chemo-kinematic candidates are retained only as an
external recovery set. They are not used for model fitting, parameter selection,
or feature-space construction.

## Discovery Parent Sample

The primary discovery catalogue is:

`data/processed/gaia_lamost_larger_chemo_kinematic_features.csv`

The catalogue contains:

- 1,838 rows
- 1,838 unique Gaia source identifiers
- zero duplicate source identifiers
- complete values for all core and extended clustering features
- all 27 previously identified chemo-kinematic candidates

The larger parent catalogue is preferred over the earlier 138-row working
sample because it provides a more appropriate population background for
unsupervised structure discovery.

## Feature-Space Design

### Core feature space

The five-dimensional primary feature space contains:

- `[Fe/H]` (`feh`)
- radial velocity (`rv`)
- tangential velocity (`tangential_velocity_kms`)
- Gaia colour (`bp_rp`)
- absolute Gaia G magnitude (`absolute_g_mag`)

These variables jointly represent chemical, kinematic, and
colour–magnitude information.

### Extended feature space

The seven-dimensional sensitivity-analysis space adds:

- effective temperature (`teff`)
- surface gravity (`logg`)

The extended space will test whether additional stellar-parameter information
changes cluster assignments or candidate recovery.

### Excluded fitting variables

Galactic longitude and latitude are not included in model fitting. They remain
available for post-clustering spatial diagnostics, reducing the risk that the
survey footprint is interpreted as an astrophysical substructure.

Existing candidate flags are also excluded from model fitting.

## Catalogue Integrity and Completeness

The audit found:

- 1,838 complete core-feature rows
- 1,838 complete extended-feature rows
- zero missing core or extended values
- zero duplicated parent-sample source identifiers
- 27 of 27 known candidates present in the parent sample
- full agreement with the existing metal-poor, high-tangential-velocity, and
  combined chemo-kinematic candidate flags

Candidate overlap confirms that later recovery tests can be performed without
using the candidate labels during training.

## Distribution Audit

The parent sample contains scientifically meaningful tails:

- `[Fe/H]` ranges from -2.213 to 0.581 dex
- radial velocity ranges from -76.14 to 385.54 km/s
- tangential velocity ranges from 1.28 to 426.69 km/s
- `bp_rp` ranges from 0.203 to 1.684
- absolute G magnitude ranges from -2.439 to 7.547

These tails are retained because metal-poor and high-velocity stars are part of
the discovery target.

## Correlation Structure

The strongest core-feature relation is the anticorrelation between metallicity
and tangential velocity (`r = -0.477`).

Other notable relations include:

- `bp_rp` versus absolute G magnitude: `r = -0.296`
- radial velocity versus tangential velocity: `r = 0.243`
- radial velocity versus absolute G magnitude: `r = -0.229`
- metallicity versus radial velocity: `r = -0.220`

No pair is sufficiently correlated to justify removing a core variable before
the baseline clustering comparison.

## Preprocessing Decision

`RobustScaler` is selected for both the core and extended feature spaces.

No pre-clustering clipping will be applied. Robust scaling limits the influence
of extreme values on feature scale while preserving potentially interesting
tail objects.

Algorithm-specific assumptions will still be evaluated separately:

- HDBSCAN for variable-density structure and noise assignment
- OPTICS for density-ordering and reachability structure
- Gaussian Mixture Models for probabilistic component membership

## Software Readiness

The environment provides:

- scikit-learn HDBSCAN
- scikit-learn OPTICS
- scikit-learn GaussianMixture

No additional clustering dependency is required for the baseline comparison.

## Outputs

This milestone produces:

- `notebooks/25_project_v_advanced_clustering_readiness_and_feature_audit.ipynb`
- `data/processed/project_v_advanced_clustering_feature_audit.csv`
- `data/processed/project_v_core_feature_correlations.csv`
- `data/processed/project_v_advanced_clustering_readiness_summary.csv`
- `figures/project_v_advanced_clustering_feature_audit.png`

## Limitations

The parent sample remains survey-selected rather than volume-complete.
Clustering results may reflect selection effects, feature correlations, or
density gradients as well as astrophysical structure.

The 27-object recovery set was originally defined using metallicity and
kinematic criteria. Recovery therefore measures consistency with earlier
candidate prioritization, not independent proof of a new stellar population.

## Milestone Conclusion

Project V is ready for advanced baseline clustering.

Milestone 2 will compare HDBSCAN, OPTICS, and Gaussian Mixture Models in the
five-dimensional core feature space. The seven-dimensional extended space will
serve as a sensitivity test. Model comparison will emphasize cluster structure,
noise behavior, stability, and blind recovery of the 27 external candidates.
