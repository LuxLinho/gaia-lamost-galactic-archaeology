# Project VI — Scientific Validation

## Scientific Question

How reliable are the candidate classifications, orbital interpretations, and population-level conclusions?

## Background and Motivation

Exploratory analysis is not enough for research-grade Galactic archaeology. Scientific validation is required to evaluate uncertainty, compare results with literature, and clarify which conclusions are robust.

## Data and Methods

Core components include:

- Monte Carlo uncertainty propagation
- Gaia astrometric error propagation
- Radial-velocity uncertainty propagation
- Distance uncertainty propagation
- Recomputed velocities and orbital quantities
- Error-bar estimation
- Literature comparison
- Scientific interpretation

Planned Monte Carlo procedure:

- Sample Gaia astrometric uncertainties
- Sample radial-velocity and distance uncertainties where available
- Recompute velocities, orbital quantities, angular momentum, and population labels
- Repeat across many realizations where computationally feasible

## Existing Repository Inputs

This project will build on:

- Candidate Catalog from Project I
- Orbital Catalog from Project II
- Population Catalogue from Project III
- Chemical Catalogue from Project IV
- Computational Discovery Catalogue from Project V

## Results

Project VI has an initial validation-priority and uncertainty-inventory layer for
the current candidate sample. Full Monte Carlo uncertainty propagation,
selection-function modelling, detailed abundance validation, and external
catalogue/literature comparison remain future work.

Project VI also receives the formal Project V final-synthesis handoff and the
Project II additional-member orbital follow-up. Project V closes with a
model-dependent 32-star GMM reference component and a partially supported
24-star recovered-candidate core. Project II now provides first-pass orbital
support for the 8 additional GMM members, while 3 omitted candidates should remain
in the validation set.

Project VI now includes a Priority-A covariance-retrieval stage for the two
highest-priority validation candidates. This stage retrieves Gaia DR3
astrometric standard uncertainties and correlation coefficients, builds a
parallax/pmra/pmdec covariance-ready input table, and verifies covariance-matrix
properties before any correlated Monte Carlo sampling is attempted.

## Validation and Uncertainty

This project is itself the validation layer. It will focus on:

- Measurement uncertainty
- Distance uncertainty
- Orbit-model dependence
- Algorithmic sensitivity
- Population-classification confidence
- Comparison with literature definitions
- Selection-function analysis
- Detailed abundance validation beyond [Fe/H]
- External catalogue comparison
- Assessment of whether any Project V subset supports a common physical origin

## Discussion

This project turns the repository from exploratory computational analysis into a more scientifically defensible research program. It will also provide the foundation for the final manuscript discussion.

Project V should be treated as a follow-up prioritization input to Project VI,
not as a physical discovery claim. Project VI is responsible for testing whether
the Project V recovered-candidate core, Project II-supported additional GMM
members, omitted candidates, or any smaller subset survive full uncertainty
propagation, selection effects, detailed chemical validation, and external
literature comparison.

## Deliverables

- Monte Carlo uncertainty tables
- Error-bar estimates
- Literature-comparison tables
- Scientific validation figures
- Final discussion report
- Manuscript-ready interpretation
