# Project V — Computational Discovery
## Final Scientific Synthesis and Closeout

Date: 2026-07-27

## Executive Summary

Project V developed the computational-discovery layer of the Gaia-LAMOST Galactic Archaeology research program. It used feature-space design, PCA, UMAP, DBSCAN, HDBSCAN, OPTICS, Gaussian Mixture Models, stability tests, and cross-domain validation audits to ask whether candidate stars recur as coherent computational structures.

The final result is cautious and deliberately bounded. The strongest Project V structure is the M2 GMM 32-star reference component: it contains 24 of the 27 known candidates plus 8 additional stars and has a baseline candidate enrichment of 51.0556x. The locked M2 configuration is exactly reproducible in M3, with ARI = 1.000000 and 32 / 32 reference members recovered.

However, the same component is sensitive to sampling and model specification. Across 30 random-seed runs the mean Jaccard overlap is 0.7479; across 30 independent 80 percent subsamples it is 0.6555; across feature, scaler, component-count, and covariance variants the mean Jaccard is 0.715 and the minimum is 0.344. Project V therefore classifies the GMM component as a model-dependent computational structure.

The 24 recovered known candidates form a comparatively stable candidate core with mean selection frequency 0.8786; 21 / 24 have Project II orbit-AM consistency. The 8 additional members have lower mean selection frequency (0.4131) and 0 / 8 current held-out orbital, population, chemical-readiness, or validation-risk coverage. The 3 omitted candidates have low selection frequency (0.0569) for this GMM component, but 3 / 3 retain held-out candidate-level coverage and should not be rejected as candidates merely because they are omitted by this model.

> Computational recovery is not equivalent to physical discovery.

> Cross-domain agreement can strengthen the case for follow-up, but it does not by itself establish a common physical origin.

Project V is therefore closed as a **scientific synthesis completed** computational-discovery project. Its proper output is follow-up prioritization, not a physical discovery claim.

## Research Question

Project V asked whether unsupervised and statistical methods can identify recurring candidate structures in Gaia-LAMOST chemo-kinematic feature space, and whether those structures are reproducible, stable, and scientifically interpretable.

The answer is mixed but useful: several methods recover evidence that the known candidates are unusual relative to the parent sample, and the locked GMM component is exactly reproducible, but full physical validation remains outside the evidence currently available in Project V.

## Data Foundation

Project V builds on a 1,838-star Gaia-LAMOST discovery-parent sample and a 27-star known-candidate control set. The advanced GMM baseline used five features: `feh`, `rv`, `tangential_velocity_kms`, `bp_rp`, and `absolute_g_mag`, with robust scaling and a nine-component full-covariance GMM.

Because [Fe/H], radial velocity, tangential velocity, colour, and absolute magnitude were used directly by the GMM, they are descriptive context in the final interpretation rather than independent validation evidence.

## Completed Computational Methods

Project V completed these repository-backed stages:

- Feature-space design for chemo-kinematic candidate analysis.
- PCA baseline embedding.
- UMAP nonlinear embedding.
- DBSCAN baseline clustering on PCA and UMAP views.
- Small DBSCAN parameter-sweep robustness check.
- Cross-method candidate evidence summary for the 27 known candidates.
- Advanced-clustering readiness and feature audit for the 1,838-star parent sample.
- Blind HDBSCAN, OPTICS, and GMM baseline comparison.
- GMM stability and sensitivity validation.
- Cross-domain validation of the GMM reference component using available Project II/III/IV/VI candidate-level products.
- Final evidence synthesis and project closeout.

No consensus clustering, detailed abundance modelling, uncertainty propagation, or parent-wide orbital validation is claimed as completed in Project V.

## Candidate-Recovery Results

Earlier PCA, UMAP, and DBSCAN products showed that the 27 known candidates often occupy unusual feature-space regions or DBSCAN noise-like regions, especially in the PCA-based view. The cross-method candidate summary remains a candidate-prioritization product rather than a membership catalogue.

The advanced M2 comparison showed that HDBSCAN and OPTICS did not provide a useful candidate-enriched compact group under the locked selection rules. The GMM did: its best candidate-rich group was label 5 with 32 stars, including 24 known candidates and 8 additional stars.

## GMM Baseline Result

The M2 GMM baseline is the central Project V computational result:

- Parent sample: 1838 stars
- Known candidates: 27
- Reference component: 32 stars
- Recovered known candidates: 24 / 27
- Additional GMM members: 8
- Omitted known candidates: 3
- Baseline candidate enrichment: 51.0556x

This is strong evidence that the locked GMM can isolate a candidate-enriched feature-space component. It is not, by itself, evidence that the component is a physically distinct stellar population.

## Reproducibility Assessment

The locked M2 baseline is exactly reproducible in M3:

- ARI versus M2 labels: 1.000000
- Reference-component recovery: 32 / 32

This establishes computational reproducibility for the locked configuration. It does not establish model invariance or physical validity.

## Stability Assessment

Project V M3 shows conditional stability rather than unconditional stability:

- Random-seed mean Jaccard: 0.7479
- 80 percent subsampling mean Jaccard: 0.6555
- Model-setting mean Jaccard: 0.715
- Model-setting minimum Jaccard: 0.344

The recovered known-candidate core is much more stable than the additional or omitted groups:

- 24 recovered candidates: mean selection frequency = 0.8786
- 8 additional members: mean selection frequency = 0.4131
- 3 omitted candidates: mean selection frequency = 0.0569

The GMM reference component is therefore best described as model-dependent. It is robust enough to prioritize follow-up, but not stable enough to define final physical membership.

## Cross-Domain Validation

Project V M4 compared the GMM reference component with available held-out candidate-level products from Project II, Project III, Project IV, and Project VI.

The coverage result is decisive:

- Recovered known candidates: 24 / 24 have candidate-level cross-domain coverage.
- Additional GMM members: 0 / 8 have current held-out coverage.
- Omitted known candidates: 3 / 3 have candidate-level cross-domain coverage.

For the recovered known-candidate core, 21 / 24 have orbit-AM consistency. This partially supports the candidate core. It does not validate the 8 additional members or the full 32-star component.

Project IV chemistry is currently [Fe/H]-based. Because [Fe/H] is a GMM input feature, it is not independent chemical validation. Detailed abundance information remains a Project VI handoff item.

## Evidence by Membership Group

### 24 Recovered Candidates

The 24 recovered candidates are the strongest Project V output. They are computationally recurrent, have high mean selection frequency, and retain partial held-out orbital support. They should be interpreted as a partially supported candidate core for follow-up prioritization.

### 8 Additional Members

The 8 additional GMM members are not confirmed physical members. They appear in the locked GMM reference component but have lower selection stability and no current held-out orbital, population, chemical-readiness, or validation-risk coverage. They should be treated as follow-up targets only.

### 3 Omitted Candidates

The 3 omitted candidates do not match this specific GMM component and have very low mean selection frequency. That does not invalidate their historical candidate status: all three have held-out candidate-level coverage and plausible orbital/population evidence. They remain Project II/VI validation targets.

### Full 32-Star Reference Component

The full 32-star component is exactly reproducible under the locked M2 configuration and candidate-enriched by construction relative to the parent sample. But because its membership changes under alternative assumptions and because the 8 additional stars lack held-out coverage, it is not physically validated as a common-origin stellar population.

## Interpretation Boundary

Project V distinguishes these concepts:

- Computational reproducibility: the locked M2 GMM can be rerun and recovered exactly.
- Model stability: the component is only conditionally stable under random seeds, subsampling, and model variants.
- Cross-method recurrence: candidate stars recur across PCA, UMAP, DBSCAN, and GMM diagnostics as interesting follow-up targets.
- Cross-domain consistency: existing held-out support applies mainly to the 24 recovered known candidates.
- Physical validation: not complete.
- Common physical origin: not established.

Project V does not claim discovery of a new stellar population, merger remnant, stream, or named Galactic substructure.

## Limitations

The main limitations are:

- Held-out orbital/population validation currently covers the 27 known candidates, not all 1,838 parent stars.
- The 8 additional GMM members lack Project II/III/IV/VI cross-domain rows.
- Current chemistry is limited mostly to [Fe/H] and chemical-readiness metadata.
- GMM membership depends on feature choice, scaling, component count, covariance type, and sampling.
- Selection functions and catalogue completeness have not yet been modelled.
- Orbit uncertainties and Galactic-potential sensitivity remain to be propagated.

## Project-Level Conclusion

Project V is complete as a computational-discovery synthesis. It produced a reproducible, evidence-ranked follow-up framework and identified a model-dependent 32-star GMM component with a stable 24-star known-candidate core.

The final scientific classification is:

- 24 recovered candidates: **partially supported candidate core**.
- 8 additional members: **inconclusive; follow-up targets only**.
- Full 32-star component: **model-dependent and not physically validated**.

The appropriate Project V conclusion is follow-up prioritization, not physical discovery.

## Handoff to Project II and Project VI

### Handoff to Project II — Orbital Dynamics

Project II should extend orbital validation to the 8 additional GMM members by obtaining or deriving reliable distance, position, and velocity information where possible. It should then compute or validate quantities such as `Lz`, `Lperp`, `Ltot`, eccentricity, and `Zmax`, and test whether the additional members share orbital coherence with the recovered-candidate core.

### Handoff to Project VI — Scientific Validation

Project VI should handle uncertainty propagation, selection-function analysis, detailed abundance validation, external catalogue and literature comparison, and physical-origin assessment. It should decide whether any subset of the Project V targets can support a stronger astrophysical claim after uncertainty and external validation.

## Final Deliverables

Notebook:

- `notebooks/29_project_v_final_scientific_synthesis.ipynb`

Processed outputs:

- `data/processed/project_v_final_key_results.csv`
- `data/processed/project_v_final_evidence_matrix.csv`

Figure:

- `figures/project_v_final_evidence_summary.png`

Report:

- `report/project_v_final_scientific_synthesis.md`
