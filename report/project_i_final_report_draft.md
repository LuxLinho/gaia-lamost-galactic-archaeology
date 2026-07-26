# Project I — Data Foundation
## Final Report Draft

## Gaia–LAMOST Galactic Archaeology Project

**Machine Learning Assisted Chemo-Dynamical Analysis of Milky Way Stellar Populations Using Gaia DR3 and LAMOST**

## Abstract

This project presents a compact end-to-end Gaia–LAMOST Galactic archaeology workflow. The goal is to combine Gaia DR3 astrometry and photometry with LAMOST DR9 low-resolution spectroscopic stellar parameters, then construct chemo-kinematic features for exploratory Milky Way stellar population analysis.

The project includes Gaia sample validation, LAMOST catalogue exploration, Gaia–LAMOST cross-matching, feature construction, clustering-oriented exploration, candidate selection, robustness checks, and scientific interpretation. The current result should be understood as a proof-of-concept pipeline rather than a definitive discovery claim. It demonstrates a reproducible framework that can be scaled in later projects toward larger-sample Galactic structure analysis.

## 1. Introduction

Galactic archaeology aims to reconstruct the formation history of the Milky Way by studying the spatial, kinematic, and chemical properties of stars. Different stellar populations preserve information about their birth environments and dynamical evolution. Disk stars, halo stars, accreted debris, and chemically unusual populations may occupy different regions of phase space and chemical-abundance space.

Gaia DR3 provides high-precision astrometry and photometry for a large number of Milky Way stars. LAMOST DR9 complements Gaia by providing large-scale spectroscopic information, including stellar atmospheric parameters and radial velocities. Combining Gaia and LAMOST therefore enables a chemo-kinematic view of stellar populations.

This Project I focuses on building a working pipeline rather than claiming a final astrophysical discovery. The central question is:

**Can a lightweight Gaia–LAMOST workflow recover interpretable chemo-kinematic structure in a local stellar sample and produce candidate groups suitable for later large-scale validation?**

## 2. Data

### 2.1 Gaia DR3

Gaia DR3 is used as the astrometric and photometric backbone of the project. The Gaia-side features include sky position, parallax, proper motion, photometry, and derived quantities such as approximate distance and color–magnitude information.

### 2.2 LAMOST DR9

LAMOST DR9 low-resolution spectroscopic catalogues are used to provide radial velocity and stellar atmospheric parameters. The most relevant fields for this project include:

- radial velocity,
- effective temperature,
- surface gravity,
- metallicity,
- spectral classification fields,
- signal-to-noise indicators.

### 2.3 Cross-matched Gaia–LAMOST sample

The Gaia and LAMOST catalogues are joined into a cross-matched sample. Source-ID matching is used where available, and angular matching is used as a fallback. Multiple matching radii are evaluated to check whether the match quality remains stable.

The final cross-matched sample is used as the basis for downstream feature construction and population exploration.

## 3. Methods

### 3.1 Gaia sample validation

The Gaia sample is first inspected through basic diagnostic plots and summary statistics. The purpose is to confirm that the queried sample behaves as expected in sky position, parallax, magnitude, color, and distance-related distributions.

### 3.2 LAMOST catalogue exploration

LAMOST fields are inspected to identify usable spectroscopic columns. The project prioritizes fields that are directly useful for Galactic archaeology, especially radial velocity and metallicity.

### 3.3 Cross-match strategy

The cross-match is evaluated using source identifiers and angular-distance thresholds. The goal is to keep reliable matches while avoiding aggressive matching that could introduce false associations.

### 3.4 Feature construction

The feature-construction stage combines Gaia and LAMOST information into a table suitable for chemo-kinematic analysis. The main feature groups are:

1. **Astrometric features**: parallax, proper motion, and distance-related quantities.
2. **Photometric features**: Gaia magnitude and color.
3. **Spectroscopic features**: radial velocity, effective temperature, surface gravity, and metallicity.
4. **Kinematic features**: velocity-related quantities derived from Gaia and LAMOST measurements.
5. **Candidate-selection features**: combined quantities used for exploratory population separation.

### 3.5 Exploratory clustering and candidate selection

The project uses exploratory clustering and physically motivated cuts to identify possible candidate groups. The emphasis is on interpretability rather than fully automated discovery. Candidate groups are assessed using their positions in CMD space, metallicity distribution, and velocity-related feature space.

### 3.6 Robustness checks

Robustness checks are used to test whether the selected candidates are stable under reasonable changes in thresholds and sample definitions. The goal is to distinguish potentially meaningful structures from artifacts of small sample size or feature scaling.

## 4. Results

### 4.1 Gaia-only validation

The Gaia-only analysis produced basic validation figures showing the structure of the initial sample. These plots confirm that the data loading and preprocessing stages are working correctly.

### 4.2 Gaia–LAMOST cross-match

The Gaia–LAMOST cross-match produced a compact sample with both astrometric and spectroscopic information. The matching-radius tests showed that the selected matching strategy is reasonably stable for the current proof-of-concept sample.

### 4.3 Chemo-kinematic feature table

The derived feature table combines Gaia astrometry and photometry with LAMOST spectroscopic fields. This table is the central output of Project I because it enables downstream stellar population analysis.

### 4.4 Candidate population exploration

The candidate-selection stage identifies stars that may be chemically or kinematically distinct from the main local sample. These candidates are not presented as confirmed substructures. Instead, they are treated as useful targets for larger-sample validation in Project V.

### 4.5 Scientific figures

The project generates diagnostic plots including:

- sky-position checks,
- distance and parallax distributions,
- Gaia color–magnitude diagrams,
- metallicity distributions,
- velocity-feature visualizations,
- candidate CMDs,
- clustering and validation plots.

These figures make the project suitable for GitHub presentation, RA outreach, and later report polishing.

## 5. Scientific Interpretation

The main scientific interpretation is that Gaia–LAMOST cross-matched data can support a compact but meaningful chemo-kinematic workflow. Even with a limited sample, the combination of astrometry, photometry, radial velocity, and metallicity allows the analysis to move beyond a purely geometric view of the Milky Way.

The current candidate groups should be interpreted cautiously. A small local sample cannot establish strong claims about merger debris, halo substructure, or rare stellar populations. However, the pipeline successfully demonstrates the essential structure of a Galactic archaeology analysis:

1. construct a reliable multi-survey stellar sample,
2. derive physically relevant features,
3. visualize the data in interpretable spaces,
4. select candidate populations,
5. evaluate robustness,
6. write a scientific interpretation.

This makes Project I a strong foundation for scaling up to larger Gaia–LAMOST samples.

## 6. Limitations

Several limitations remain:

1. **Sample size**  
   The current sample is intentionally compact and is not large enough for population-level conclusions.

2. **Selection effects**  
   Gaia and LAMOST have different selection functions. These are not fully modelled in Project I.

3. **Distance assumptions**  
   Simplified distance estimates may introduce uncertainty, especially for stars with less precise parallaxes.

4. **Velocity modelling**  
   The kinematic analysis is exploratory. More rigorous Galactic coordinate transformations and uncertainty propagation should be added later.

5. **Chemical information**  
   The current analysis focuses mainly on metallicity and basic stellar parameters. Future work should include richer abundance information where available.

6. **Discovery claims**  
   Candidate groups should not be described as confirmed streams, merger remnants, or new populations without larger-sample validation.

## 7. Conclusion

Project I successfully builds a reproducible Gaia–LAMOST workflow for exploratory Galactic archaeology. It combines Gaia DR3 astrometric and photometric data with LAMOST DR9 spectroscopic information, constructs chemo-kinematic features, generates diagnostic figures, and produces a first scientific interpretation.

The project is best understood as a methodological foundation. Its value lies in demonstrating that the author can design, implement, validate, and interpret a scientific data-analysis pipeline. The next stage should scale this workflow to a larger sample and introduce more rigorous population modelling.

## 8. Future Work

Project V should focus on scaling the current workflow. Recommended next steps include:

1. Querying a substantially larger Gaia–LAMOST sample.
2. Improving astrometric and spectroscopic quality cuts.
3. Adding full Galactic coordinate and velocity transformations.
4. Using clustering methods such as HDBSCAN or Gaussian mixture models more systematically.
5. Comparing candidate structures with known Milky Way components.
6. Producing a polished paper-style report after larger-sample validation.

## References

- Gaia Collaboration et al. Gaia Data Release 3: Summary of the content and survey properties.
- ESA Gaia DR3 documentation.
- LAMOST DR9 documentation.
- LAMOST low-resolution stellar parameter catalogue documentation.
