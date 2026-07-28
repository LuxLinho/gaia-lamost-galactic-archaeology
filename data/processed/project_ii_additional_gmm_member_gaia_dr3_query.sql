SELECT source_id, ra, dec, parallax, parallax_error, parallax_over_error,
       pmra, pmra_error, pmdec, pmdec_error,
       ra_dec_corr, ra_parallax_corr, ra_pmra_corr, ra_pmdec_corr,
       dec_parallax_corr, dec_pmra_corr, dec_pmdec_corr,
       parallax_pmra_corr, parallax_pmdec_corr, pmra_pmdec_corr,
       ruwe, radial_velocity, radial_velocity_error,
       phot_g_mean_mag, bp_rp, astrometric_params_solved
FROM gaiadr3.gaia_source
WHERE source_id IN (3083556278216260224,3089535697327739392,3089847374514674176,3084831608629138816,3077426977633583616,3084495467307744512,3089912520578584832,3090620258172557440)
