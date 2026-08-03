# Data

This folder stores raw, processed, and external data files used in the Gaia–LAMOST Galactic Archaeology Project.

## Data Sources

### Gaia DR3

Gaia DR3 provides astrometric and photometric measurements, including positions, parallaxes, proper motions, and magnitudes.

### LAMOST DR9

LAMOST DR9 provides spectroscopic information, including stellar parameters, radial velocities, and metallicity estimates.

## Folder Structure

    raw/         Original downloaded or queried data files
    processed/   Cleaned and analysis-ready data products
    external/    External reference tables or auxiliary data

## Data Management Notes

Large raw data files are not intended to be committed directly unless they are small sample files used for demonstration.

Project VI adds a small Gaia DR3 TAP retrieval for the two
`validation_priority_A` candidates:

- `raw/project_vi_priority_a_gaia_dr3_astrometry.csv`

This raw query result is intentionally limited to two source IDs and preserves
Gaia DR3 astrometric uncertainty, correlation, radial-velocity, and quality
fields for later covariance-aware validation.

Processed data products should be documented with:

- source catalogue
- query or filtering criteria
- cross-match method
- number of sources
- key columns
- known limitations

## Current Processed Dataset

The current project includes a Gaia–LAMOST cross-matched sample for exploratory analysis and feature construction.

More detailed descriptions will be added as the project progresses.
