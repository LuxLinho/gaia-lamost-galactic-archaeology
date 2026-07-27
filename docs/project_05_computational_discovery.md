# Project V — Computational Discovery

## Scientific Question

Can unsupervised and statistical methods identify robust candidate structures in Gaia-LAMOST phase-space and chemical-feature space?

## Background and Motivation

This project represents the computational and data-science core of the research program. Instead of relying only on predefined labels, it tests whether independent algorithms can recover consistent candidate groups, outliers, or substructures.

## Data and Methods

Core methods include:

- PCA
- UMAP
- DBSCAN
- HDBSCAN
- Gaussian Mixture Models
- OPTICS
- Hierarchical clustering
- Consensus clustering
- Anomaly detection

Current completed methods include:

- PCA feature-space design
- UMAP embedding
- DBSCAN baseline clustering
- Small DBSCAN parameter sweep
- Cross-method candidate evidence summary
- HDBSCAN / OPTICS / GMM baseline comparison
- GMM stability and sensitivity validation
- GMM cross-domain validation against held-out candidate-level products

## Existing Repository Outputs

Relevant existing work includes:

- `notebooks/07_project_v_feature_space_design.ipynb`
- `notebooks/08_project_v_pca_baseline_embedding.ipynb`
- `notebooks/09_project_v_umap_embedding.ipynb`
- `notebooks/10_project_v_dbscan_baseline_clustering.ipynb`
- `notebooks/11_project_v_dbscan_robustness_analysis.ipynb`
- `notebooks/12_project_v_candidate_cross_method_summary.ipynb`
- `notebooks/25_project_v_advanced_clustering_readiness_and_feature_audit.ipynb`
- `notebooks/26_project_v_advanced_clustering_baseline_comparison.ipynb`
- `notebooks/27_project_v_gmm_stability_sensitivity_validation.ipynb`
- `notebooks/28_project_v_gmm_cross_domain_validation.ipynb`
- `data/processed/project_v_candidate_cross_method_summary.csv`
- `data/processed/project_v_m2_cluster_assignments.csv`
- `data/processed/project_v_m3_run_summary.csv`
- `data/processed/project_v_m3_star_stability.csv`
- `data/processed/project_v_gmm_cross_domain_membership.csv`
- `data/processed/project_v_gmm_cross_domain_evidence_assessment.csv`
- `figures/project_v_candidate_cross_method_evidence_summary.png`
- `figures/project_v_m3_validation_summary.png`
- `figures/project_v_gmm_cross_domain_stability_evidence.png`
- `report/project_v_scientific_interpretation_and_final_packaging.md`
- `report/project_v_milestone3_gmm_stability_sensitivity_validation.md`
- `report/project_v_milestone4_gmm_cross_domain_validation.md`

## Results

The initial computational-discovery layer has been completed. It produced a cross-method candidate summary that compares evidence from multiple feature-space and clustering approaches.

Project V advanced clustering now adds a larger 1,838-star discovery-parent sample.
Milestone 2 found a nine-component full-covariance GMM component with 32 stars,
including 24 of the 27 known candidates and 8 additional members, corresponding
to 51.06-fold candidate enrichment over the parent sample. Milestone 3 reproduced
that baseline exactly, then showed that the enriched component is stable under
the locked specification and many random initializations but remains sensitive to
subsampling and model specification choices.

Milestone 4 cross-domain validation tested the same 32-star reference component
against Project II orbital diagnostics, Project III population labels, Project IV
chemical-readiness metadata, and Project VI validation-risk metadata. The 24
recovered known candidates have complete candidate-level cross-domain coverage and
supporting orbital/population context. The 8 additional GMM members currently
have no held-out orbital, population, chemical-readiness, or validation-risk rows,
so the full 32-star component remains inconclusive as a physical structure.

## Validation and Uncertainty

Current validation includes:

- Cross-method comparison
- DBSCAN parameter sensitivity
- Candidate evidence scoring
- Visual inspection of embedding and clustering behavior
- Exact M2 GMM reproduction with ARI = 1.0
- Label-independent GMM component matching by Jaccard overlap
- Random-seed, subsample, feature, scaler, component-count, and covariance
  sensitivity tests
- Cross-domain coverage audit using Project II/III/IV/VI candidate-level tables
- Explicit circularity boundary separating held-out orbital/population evidence
  from GMM input-feature descriptions

Further validation will later include full 32-star orbital coverage, additional
algorithms, consensus clustering, orbital-action checks, detailed abundance
information, uncertainty propagation, and external literature comparison.

## Discussion

This project is central to the identity of the full research program because it shows how data-science methods can contribute to astrophysical discovery.

## Deliverables

- Computational Discovery Catalogue
- PCA diagnostics
- UMAP diagnostics
- Clustering outputs
- Robustness analysis
- Cross-method candidate evidence summary
- Cross-domain validation membership and evidence-assessment tables
- Future consensus-clustering report
