<resource schema="depth">
  <meta name="title">HELP depth values</meta>
  <meta name="creationDate">20180625</meta>
  <meta name="description">
    HELP depth values in various bands associated to HEALPix cells.
  </meta>
  <meta name="creator.name">Shirley, R.; Roehlly, Y.;  et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Depth</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the depth information for the HELP data. For each
    band (or equivalent, e.g. spectroscopic redsfhit) we store depth values
    (generally the limiting magnitude) associated with HEALPix cells identified
    by a HEALPix order and NPix. The HEALPix cells are expressed in equatorial
    coordinates (ICRS reference) and use the nested numbering scheme.

    History
    -------
    
    ======== ============================================
    20180530 HELP First data release (DR1)
    ======== ============================================

    ======== ============================================
    20161208 Initial ingestion with test K depth data.
    ======== ============================================

  ]]> </meta>

  <table id="main" onDisk="True" adql="True">
  

    <index columns="hp_idx_O_13" />
    <index columns="hp_idx_O_10" />

    <index columns="ferr_90prime_g_mean" />
    <index columns="ferr_ap_90prime_g_mean" />

    <index columns="ferr_90prime_r_mean" />
    <index columns="ferr_ap_90prime_r_mean" />

    <index columns="ferr_90prime_z_mean" />
    <index columns="ferr_ap_90prime_z_mean" />

    <index columns="ferr_acs_f435w_mean" />
    <index columns="ferr_ap_acs_f435w_mean" />

    <index columns="ferr_acs_f606w_mean" />
    <index columns="ferr_ap_acs_f606w_mean" />

    <index columns="ferr_acs_f775w_mean" />
    <index columns="ferr_ap_acs_f775w_mean" />

    <index columns="ferr_acs_f814w_mean" />
    <index columns="ferr_ap_acs_f814w_mean" />

    <index columns="ferr_acs_f850lp_mean" />
    <index columns="ferr_ap_acs_f850lp_mean" />

    <index columns="ferr_bessell_b_mean" />
    <index columns="ferr_ap_bessell_b_mean" />

    <index columns="ferr_bessell_i_mean" />
    <index columns="ferr_ap_bessell_i_mean" />

    <index columns="ferr_bessell_r_mean" />
    <index columns="ferr_ap_bessell_r_mean" />

    <index columns="ferr_bessell_u_mean" />
    <index columns="ferr_ap_bessell_u_mean" />

    <index columns="ferr_bessell_v_mean" />
    <index columns="ferr_ap_bessell_v_mean" />

    <index columns="ferr_cfht12k_b_mean" />
    <index columns="ferr_ap_cfht12k_b_mean" />

    <index columns="ferr_cfht12k_i_mean" />
    <index columns="ferr_ap_cfht12k_i_mean" />

    <index columns="ferr_cfht12k_r_mean" />
    <index columns="ferr_ap_cfht12k_r_mean" />

    <index columns="ferr_decam_g_mean" />
    <index columns="ferr_ap_decam_g_mean" />

    <index columns="ferr_decam_i_mean" />
    <index columns="ferr_ap_decam_i_mean" />

    <index columns="ferr_decam_r_mean" />
    <index columns="ferr_ap_decam_r_mean" />

    <index columns="ferr_decam_y_mean" />
    <index columns="ferr_ap_decam_y_mean" />

    <index columns="ferr_decam_z_mean" />
    <index columns="ferr_ap_decam_z_mean" />

    <index columns="ferr_galex_fuv_mean" />
    <index columns="ferr_ap_galex_fuv_mean" />

    <index columns="ferr_galex_nuv_mean" />
    <index columns="ferr_ap_galex_nuv_mean" />

    <index columns="ferr_gpc1_g_mean" />
    <index columns="ferr_ap_gpc1_g_mean" />

    <index columns="ferr_gpc1_i_mean" />
    <index columns="ferr_ap_gpc1_i_mean" />

    <index columns="ferr_gpc1_r_mean" />
    <index columns="ferr_ap_gpc1_r_mean" />

    <index columns="ferr_gpc1_y_mean" />
    <index columns="ferr_ap_gpc1_y_mean" />

    <index columns="ferr_gpc1_z_mean" />
    <index columns="ferr_ap_gpc1_z_mean" />

    <index columns="ferr_hawki_k_mean" />
    <index columns="ferr_ap_hawki_k_mean" />

    <index columns="ferr_irac_i1_mean" />
    <index columns="ferr_ap_irac_i1_mean" />

    <index columns="ferr_irac_i2_mean" />
    <index columns="ferr_ap_irac_i2_mean" />

    <index columns="ferr_irac_i3_mean" />
    <index columns="ferr_ap_irac_i3_mean" />

    <index columns="ferr_irac_i4_mean" />
    <index columns="ferr_ap_irac_i4_mean" />

    <index columns="ferr_isaac_k_mean" />
    <index columns="ferr_ap_isaac_k_mean" />

    <index columns="ferr_megacam_g_mean" />
    <index columns="ferr_ap_megacam_g_mean" />

    <index columns="ferr_megacam_i_mean" />
    <index columns="ferr_ap_megacam_i_mean" />

    <index columns="ferr_megacam_r_mean" />
    <index columns="ferr_ap_megacam_r_mean" />

    <index columns="ferr_megacam_u_mean" />
    <index columns="ferr_ap_megacam_u_mean" />

    <index columns="ferr_megacam_y_mean" />
    <index columns="ferr_ap_megacam_y_mean" />

    <index columns="ferr_megacam_z_mean" />
    <index columns="ferr_ap_megacam_z_mean" />

    <index columns="ferr_mmt_g_mean" />
    <index columns="ferr_ap_mmt_g_mean" />

    <index columns="ferr_mmt_i_mean" />
    <index columns="ferr_ap_mmt_i_mean" />

    <index columns="ferr_mmt_r_mean" />
    <index columns="ferr_ap_mmt_r_mean" />

    <index columns="ferr_mmt_u_mean" />
    <index columns="ferr_ap_mmt_u_mean" />

    <index columns="ferr_mmt_z_mean" />
    <index columns="ferr_ap_mmt_z_mean" />

    <index columns="ferr_moircs_k_mean" />
    <index columns="ferr_ap_moircs_k_mean" />

    <index columns="ferr_moircs_ks_mean" />
    <index columns="ferr_ap_moircs_ks_mean" />

    <index columns="ferr_mosaic_b_mean" />
    <index columns="ferr_ap_mosaic_b_mean" />

    <index columns="ferr_mosaic_i_mean" />
    <index columns="ferr_ap_mosaic_i_mean" />

    <index columns="ferr_mosaic_r_mean" />
    <index columns="ferr_ap_mosaic_r_mean" />

    <index columns="ferr_mosaic_u_mean" />
    <index columns="ferr_ap_mosaic_u_mean" />

    <index columns="ferr_mosaic_z_mean" />
    <index columns="ferr_ap_mosaic_z_mean" />

    <index columns="ferr_newfirm_h_mean" />
    <index columns="ferr_ap_newfirm_h_mean" />

    <index columns="ferr_newfirm_h1_mean" />
    <index columns="ferr_ap_newfirm_h1_mean" />

    <index columns="ferr_newfirm_h2_mean" />
    <index columns="ferr_ap_newfirm_h2_mean" />

    <index columns="ferr_newfirm_j_mean" />
    <index columns="ferr_ap_newfirm_j_mean" />

    <index columns="ferr_newfirm_j1_mean" />
    <index columns="ferr_ap_newfirm_j1_mean" />

    <index columns="ferr_newfirm_j2_mean" />
    <index columns="ferr_ap_newfirm_j2_mean" />

    <index columns="ferr_newfirm_j3_mean" />
    <index columns="ferr_ap_newfirm_j3_mean" />

    <index columns="ferr_newfirm_k_mean" />
    <index columns="ferr_ap_newfirm_k_mean" />

    <index columns="ferr_nicmos_f110w_mean" />
    <index columns="ferr_ap_nicmos_f110w_mean" />

    <index columns="ferr_nicmos_f160w_mean" />
    <index columns="ferr_ap_nicmos_f160w_mean" />

    <index columns="ferr_omega2000_j_mean" />
    <index columns="ferr_ap_omega2000_j_mean" />

    <index columns="ferr_omega2000_ks_mean" />
    <index columns="ferr_ap_omega2000_ks_mean" />

    <index columns="ferr_omegacam_g_mean" />
    <index columns="ferr_ap_omegacam_g_mean" />

    <index columns="ferr_omegacam_i_mean" />
    <index columns="ferr_ap_omegacam_i_mean" />

    <index columns="ferr_omegacam_r_mean" />
    <index columns="ferr_ap_omegacam_r_mean" />

    <index columns="ferr_omegacam_u_mean" />
    <index columns="ferr_ap_omegacam_u_mean" />

    <index columns="ferr_omegacam_z_mean" />
    <index columns="ferr_ap_omegacam_z_mean" />

    <index columns="ferr_quirc_hk_mean" />
    <index columns="ferr_ap_quirc_hk_mean" />

    <index columns="ferr_sdss_g_mean" />
    <index columns="ferr_ap_sdss_g_mean" />

    <index columns="ferr_sdss_i_mean" />
    <index columns="ferr_ap_sdss_i_mean" />

    <index columns="ferr_sdss_r_mean" />
    <index columns="ferr_ap_sdss_r_mean" />

    <index columns="ferr_sdss_u_mean" />
    <index columns="ferr_ap_sdss_u_mean" />

    <index columns="ferr_sdss_z_mean" />
    <index columns="ferr_ap_sdss_z_mean" />

    <index columns="ferr_suprime_b_mean" />
    <index columns="ferr_ap_suprime_b_mean" />

    <index columns="ferr_suprime_g_mean" />
    <index columns="ferr_ap_suprime_g_mean" />

    <index columns="ferr_suprime_i_mean" />
    <index columns="ferr_ap_suprime_i_mean" />

    <index columns="ferr_suprime_ia484_mean" />
    <index columns="ferr_ap_suprime_ia484_mean" />

    <index columns="ferr_suprime_ia527_mean" />
    <index columns="ferr_ap_suprime_ia527_mean" />

    <index columns="ferr_suprime_ia624_mean" />
    <index columns="ferr_ap_suprime_ia624_mean" />

    <index columns="ferr_suprime_ia679_mean" />
    <index columns="ferr_ap_suprime_ia679_mean" />

    <index columns="ferr_suprime_ia738_mean" />
    <index columns="ferr_ap_suprime_ia738_mean" />

    <index columns="ferr_suprime_ia767_mean" />
    <index columns="ferr_ap_suprime_ia767_mean" />

    <index columns="ferr_suprime_ib427_mean" />
    <index columns="ferr_ap_suprime_ib427_mean" />

    <index columns="ferr_suprime_ib464_mean" />
    <index columns="ferr_ap_suprime_ib464_mean" />

    <index columns="ferr_suprime_ib505_mean" />
    <index columns="ferr_ap_suprime_ib505_mean" />

    <index columns="ferr_suprime_ib574_mean" />
    <index columns="ferr_ap_suprime_ib574_mean" />

    <index columns="ferr_suprime_ib709_mean" />
    <index columns="ferr_ap_suprime_ib709_mean" />

    <index columns="ferr_suprime_ib827_mean" />
    <index columns="ferr_ap_suprime_ib827_mean" />

    <index columns="ferr_suprime_ip_mean" />
    <index columns="ferr_ap_suprime_ip_mean" />

    <index columns="ferr_suprime_n816_mean" />
    <index columns="ferr_ap_suprime_n816_mean" />

    <index columns="ferr_suprime_n921_mean" />
    <index columns="ferr_ap_suprime_n921_mean" />

    <index columns="ferr_suprime_nb711_mean" />
    <index columns="ferr_ap_suprime_nb711_mean" />

    <index columns="ferr_suprime_nb816_mean" />
    <index columns="ferr_ap_suprime_nb816_mean" />

    <index columns="ferr_suprime_r_mean" />
    <index columns="ferr_ap_suprime_r_mean" />

    <index columns="ferr_suprime_rc_mean" />
    <index columns="ferr_ap_suprime_rc_mean" />

    <index columns="ferr_suprime_rp_mean" />
    <index columns="ferr_ap_suprime_rp_mean" />

    <index columns="ferr_suprime_v_mean" />
    <index columns="ferr_ap_suprime_v_mean" />

    <index columns="ferr_suprime_y_mean" />
    <index columns="ferr_ap_suprime_y_mean" />

    <index columns="ferr_suprime_z_mean" />
    <index columns="ferr_ap_suprime_z_mean" />

    <index columns="ferr_suprime_zp_mean" />
    <index columns="ferr_ap_suprime_zp_mean" />

    <index columns="ferr_suprime_zpp_mean" />
    <index columns="ferr_ap_suprime_zpp_mean" />

    <index columns="ferr_tifkam_ks_mean" />
    <index columns="ferr_ap_tifkam_ks_mean" />

    <index columns="ferr_ukidss_h_mean" />
    <index columns="ferr_ap_ukidss_h_mean" />

    <index columns="ferr_ukidss_j_mean" />
    <index columns="ferr_ap_ukidss_j_mean" />

    <index columns="ferr_ukidss_k_mean" />
    <index columns="ferr_ap_ukidss_k_mean" />

    <index columns="ferr_ukidss_y_mean" />
    <index columns="ferr_ap_ukidss_y_mean" />

    <index columns="ferr_vista_h_mean" />
    <index columns="ferr_ap_vista_h_mean" />

    <index columns="ferr_vista_j_mean" />
    <index columns="ferr_ap_vista_j_mean" />

    <index columns="ferr_vista_ks_mean" />
    <index columns="ferr_ap_vista_ks_mean" />

    <index columns="ferr_vista_y_mean" />
    <index columns="ferr_ap_vista_y_mean" />

    <index columns="ferr_vista_z_mean" />
    <index columns="ferr_ap_vista_z_mean" />

    <index columns="ferr_wfc3_f098m_mean" />
    <index columns="ferr_ap_wfc3_f098m_mean" />

    <index columns="ferr_wfc3_f105w_mean" />
    <index columns="ferr_ap_wfc3_f105w_mean" />

    <index columns="ferr_wfc3_f125w_mean" />
    <index columns="ferr_ap_wfc3_f125w_mean" />

    <index columns="ferr_wfc3_f140w_mean" />
    <index columns="ferr_ap_wfc3_f140w_mean" />

    <index columns="ferr_wfc3_f160w_mean" />
    <index columns="ferr_ap_wfc3_f160w_mean" />

    <index columns="ferr_wfc_g_mean" />
    <index columns="ferr_ap_wfc_g_mean" />

    <index columns="ferr_wfc_i_mean" />
    <index columns="ferr_ap_wfc_i_mean" />

    <index columns="ferr_wfc_r_mean" />
    <index columns="ferr_ap_wfc_r_mean" />

    <index columns="ferr_wfc_u_mean" />
    <index columns="ferr_ap_wfc_u_mean" />

    <index columns="ferr_wfc_z_mean" />
    <index columns="ferr_ap_wfc_z_mean" />

    <index columns="ferr_wfi_416nm_mean" />
    <index columns="ferr_ap_wfi_416nm_mean" />

    <index columns="ferr_wfi_461nm_mean" />
    <index columns="ferr_ap_wfi_461nm_mean" />

    <index columns="ferr_wfi_485nm_mean" />
    <index columns="ferr_ap_wfi_485nm_mean" />

    <index columns="ferr_wfi_518nm_mean" />
    <index columns="ferr_ap_wfi_518nm_mean" />

    <index columns="ferr_wfi_571nm_mean" />
    <index columns="ferr_ap_wfi_571nm_mean" />

    <index columns="ferr_wfi_604nm_mean" />
    <index columns="ferr_ap_wfi_604nm_mean" />

    <index columns="ferr_wfi_646nm_mean" />
    <index columns="ferr_ap_wfi_646nm_mean" />

    <index columns="ferr_wfi_696nm_mean" />
    <index columns="ferr_ap_wfi_696nm_mean" />

    <index columns="ferr_wfi_753nm_mean" />
    <index columns="ferr_ap_wfi_753nm_mean" />

    <index columns="ferr_wfi_815nm_mean" />
    <index columns="ferr_ap_wfi_815nm_mean" />

    <index columns="ferr_wfi_856nm_mean" />
    <index columns="ferr_ap_wfi_856nm_mean" />

    <index columns="ferr_wfi_914nm_mean" />
    <index columns="ferr_ap_wfi_914nm_mean" />

    <index columns="ferr_wfi_b_mean" />
    <index columns="ferr_ap_wfi_b_mean" />

    <index columns="ferr_wfi_b123_mean" />
    <index columns="ferr_ap_wfi_b123_mean" />

    <index columns="ferr_wfi_i_mean" />
    <index columns="ferr_ap_wfi_i_mean" />

    <index columns="ferr_wfi_r_mean" />
    <index columns="ferr_ap_wfi_r_mean" />

    <index columns="ferr_wfi_u_mean" />
    <index columns="ferr_ap_wfi_u_mean" />

    <index columns="ferr_wfi_v_mean" />
    <index columns="ferr_ap_wfi_v_mean" />

    <index columns="ferr_wircam_h_mean" />
    <index columns="ferr_ap_wircam_h_mean" />

    <index columns="ferr_wircam_j_mean" />
    <index columns="ferr_ap_wircam_j_mean" />

    <index columns="ferr_wircam_ks_mean" />
    <index columns="ferr_ap_wircam_ks_mean" />

    <index columns="ferr_wircam_y_mean" />
    <index columns="ferr_ap_wircam_y_mean" />

    <index columns="ferr_wircs_j_mean" />
    <index columns="ferr_ap_wircs_j_mean" />

    <index columns="ferr_wircs_k_mean" />
    <index columns="ferr_ap_wircs_k_mean" />
    
    <index columns="ferr_u_mean" />
    <index columns="ferr_ap_u_mean" />
    <index columns="ferr_g_mean" />
    <index columns="ferr_ap_g_mean" />
    <index columns="ferr_r_mean" />
    <index columns="ferr_ap_r_mean" />
    <index columns="ferr_i_mean" />
    <index columns="ferr_ap_i_mean" />
    <index columns="ferr_z_mean" />
    <index columns="ferr_ap_z_mean" />
    <index columns="ferr_y_mean" />
    <index columns="ferr_ap_y_mean" />
    <index columns="ferr_j_mean" />
    <index columns="ferr_ap_j_mean" />
    <index columns="ferr_h_mean" />
    <index columns="ferr_ap_h_mean" />
    <index columns="ferr_k_mean" />
    <index columns="ferr_ap_k_mean" />
    <index columns="ferr_ks_mean" />
    <index columns="ferr_ap_ks_mean" />

    <index columns="ferr_mips_24_mean" />
    <index columns="ferr_pacs_green_mean" />
    <index columns="ferr_pacs_red_mean" />
    <index columns="ferr_spire_250_mean" />
    <index columns="ferr_spire_350_mean" />
    <index columns="ferr_spire_500_mean" />

    

    <column name="hp_idx_O_13"
      tablehead="HEALPix_Npix_O13"
      type="bigint"
      ucd="pos.healpix"
      description="HEALPix cell index at order 13."
      required="True"
      verbLevel="1" />
    <column name="hp_idx_O_10"
      tablehead="HEALPix_Npix_O10"
      type="bigint"
      ucd="pos.healpix"
      description="HEALPix cell index at order 10. This was the pixel order used to compute the means"
      required="True"
      verbLevel="1" />
    <column name="ferr_90prime_g_mean"
      tablehead="ferr_90prime_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_90prime_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_90prime_g_mean"
      tablehead="ferr_ap_90prime_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_90prime_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_90prime_r_mean"
      tablehead="ferr_90prime_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_90prime_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_90prime_r_mean"
      tablehead="ferr_ap_90prime_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_90prime_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_90prime_z_mean"
      tablehead="ferr_90prime_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_90prime_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_90prime_z_mean"
      tablehead="ferr_ap_90prime_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_90prime_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_acs_f435w_mean"
      tablehead="ferr_acs_f435w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_acs_f435w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_acs_f435w_mean"
      tablehead="ferr_ap_acs_f435w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_acs_f435w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_acs_f606w_mean"
      tablehead="ferr_acs_f606w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_acs_f606w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_acs_f606w_mean"
      tablehead="ferr_ap_acs_f606w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_acs_f606w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_acs_f775w_mean"
      tablehead="ferr_acs_f775w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_acs_f775w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_acs_f775w_mean"
      tablehead="ferr_ap_acs_f775w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_acs_f775w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_acs_f814w_mean"
      tablehead="ferr_acs_f814w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_acs_f814w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_acs_f814w_mean"
      tablehead="ferr_ap_acs_f814w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_acs_f814w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_acs_f850lp_mean"
      tablehead="ferr_acs_f850lp_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_acs_f850lp in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_acs_f850lp_mean"
      tablehead="ferr_ap_acs_f850lp_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_acs_f850lp for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_bessell_b_mean"
      tablehead="ferr_bessell_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_bessell_b in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_bessell_b_mean"
      tablehead="ferr_ap_bessell_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_bessell_b for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_bessell_i_mean"
      tablehead="ferr_bessell_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_bessell_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_bessell_i_mean"
      tablehead="ferr_ap_bessell_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_bessell_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_bessell_r_mean"
      tablehead="ferr_bessell_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_bessell_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_bessell_r_mean"
      tablehead="ferr_ap_bessell_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_bessell_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_bessell_u_mean"
      tablehead="ferr_bessell_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on ferr_bessell_u in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_bessell_u_mean"
      tablehead="ferr_ap_bessell_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_ap_bessell_u for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_bessell_v_mean"
      tablehead="ferr_bessell_v_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on ferr_bessell_v in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_bessell_v_mean"
      tablehead="ferr_ap_bessell_v_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on f_ap_bessell_v for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_cfht12k_b_mean"
      tablehead="ferr_cfht12k_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_cfht12k_b in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_cfht12k_b_mean"
      tablehead="ferr_ap_cfht12k_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_cfht12k_b for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_cfht12k_i_mean"
      tablehead="ferr_cfht12k_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_cfht12k_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_cfht12k_i_mean"
      tablehead="ferr_ap_cfht12k_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_cfht12k_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_cfht12k_r_mean"
      tablehead="ferr_cfht12k_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_cfht12k_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_cfht12k_r_mean"
      tablehead="ferr_ap_cfht12k_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_cfht12k_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_decam_g_mean"
      tablehead="ferr_decam_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_decam_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_decam_g_mean"
      tablehead="ferr_ap_decam_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_decam_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_decam_i_mean"
      tablehead="ferr_decam_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_decam_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_decam_i_mean"
      tablehead="ferr_ap_decam_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_decam_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_decam_r_mean"
      tablehead="ferr_decam_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_decam_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_decam_r_mean"
      tablehead="ferr_ap_decam_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_decam_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_decam_y_mean"
      tablehead="ferr_decam_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_decam_y in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_decam_y_mean"
      tablehead="ferr_ap_decam_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_decam_y for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_decam_z_mean"
      tablehead="ferr_decam_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_decam_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_decam_z_mean"
      tablehead="ferr_ap_decam_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_decam_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_galex_fuv_mean"
      tablehead="ferr_galex_fuv_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      unit="uJy"
      description="The mean uncertainty on ferr_galex_fuv in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_galex_fuv_mean"
      tablehead="ferr_ap_galex_fuv_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      unit="uJy"
      description="The mean uncertainty on f_ap_galex_fuv for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_galex_nuv_mean"
      tablehead="ferr_galex_nuv_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      unit="uJy"
      description="The mean uncertainty on ferr_galex_nuv in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_galex_nuv_mean"
      tablehead="ferr_ap_galex_nuv_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      unit="uJy"
      description="The mean uncertainty on f_ap_galex_nuv for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_gpc1_g_mean"
      tablehead="ferr_gpc1_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_gpc1_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_g_mean"
      tablehead="ferr_ap_gpc1_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_gpc1_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_gpc1_i_mean"
      tablehead="ferr_gpc1_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_gpc1_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_i_mean"
      tablehead="ferr_ap_gpc1_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_gpc1_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_gpc1_r_mean"
      tablehead="ferr_gpc1_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_gpc1_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_r_mean"
      tablehead="ferr_ap_gpc1_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_gpc1_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_gpc1_y_mean"
      tablehead="ferr_gpc1_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_gpc1_y in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_y_mean"
      tablehead="ferr_ap_gpc1_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_gpc1_y for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_gpc1_z_mean"
      tablehead="ferr_gpc1_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_gpc1_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_z_mean"
      tablehead="ferr_ap_gpc1_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_gpc1_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_hawki_k_mean"
      tablehead="ferr_hawki_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_hawki_k in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_hawki_k_mean"
      tablehead="ferr_ap_hawki_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_hawki_k for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_irac_i1_mean"
      tablehead="ferr_irac_i1_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="The mean uncertainty on ferr_irac_i1 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_irac_i1_mean"
      tablehead="ferr_ap_irac_i1_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="The mean uncertainty on f_ap_irac_i1 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_irac_i2_mean"
      tablehead="ferr_irac_i2_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="The mean uncertainty on ferr_irac_i2 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_irac_i2_mean"
      tablehead="ferr_ap_irac_i2_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="The mean uncertainty on f_ap_irac_i2 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_irac_i3_mean"
      tablehead="ferr_irac_i3_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="The mean uncertainty on ferr_irac_i3 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_irac_i3_mean"
      tablehead="ferr_ap_irac_i3_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="The mean uncertainty on f_ap_irac_i3 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_irac_i4_mean"
      tablehead="ferr_irac_i4_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.8-15um"
      unit="uJy"
      description="The mean uncertainty on ferr_irac_i4 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_irac_i4_mean"
      tablehead="ferr_ap_irac_i4_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.8-15um"
      unit="uJy"
      description="The mean uncertainty on f_ap_irac_i4 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_isaac_k_mean"
      tablehead="ferr_isaac_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_isaac_k in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_isaac_k_mean"
      tablehead="ferr_ap_isaac_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_isaac_k for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_megacam_g_mean"
      tablehead="ferr_megacam_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_megacam_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_megacam_g_mean"
      tablehead="ferr_ap_megacam_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_megacam_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_megacam_i_mean"
      tablehead="ferr_megacam_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_megacam_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_megacam_i_mean"
      tablehead="ferr_ap_megacam_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_megacam_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_megacam_r_mean"
      tablehead="ferr_megacam_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_megacam_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_megacam_r_mean"
      tablehead="ferr_ap_megacam_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_megacam_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_megacam_u_mean"
      tablehead="ferr_megacam_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on ferr_megacam_u in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_megacam_u_mean"
      tablehead="ferr_ap_megacam_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_ap_megacam_u for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_megacam_y_mean"
      tablehead="ferr_megacam_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_megacam_y in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_megacam_y_mean"
      tablehead="ferr_ap_megacam_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_megacam_y for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_megacam_z_mean"
      tablehead="ferr_megacam_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_megacam_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_megacam_z_mean"
      tablehead="ferr_ap_megacam_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_megacam_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mmt_g_mean"
      tablehead="ferr_mmt_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_mmt_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mmt_g_mean"
      tablehead="ferr_ap_mmt_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_mmt_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mmt_i_mean"
      tablehead="ferr_mmt_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_mmt_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mmt_i_mean"
      tablehead="ferr_ap_mmt_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_mmt_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mmt_r_mean"
      tablehead="ferr_mmt_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_mmt_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mmt_r_mean"
      tablehead="ferr_ap_mmt_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_mmt_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mmt_u_mean"
      tablehead="ferr_mmt_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on ferr_mmt_u in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mmt_u_mean"
      tablehead="ferr_ap_mmt_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_ap_mmt_u for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mmt_z_mean"
      tablehead="ferr_mmt_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_mmt_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mmt_z_mean"
      tablehead="ferr_ap_mmt_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_mmt_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_moircs_k_mean"
      tablehead="ferr_moircs_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_moircs_k in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_moircs_k_mean"
      tablehead="ferr_ap_moircs_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_moircs_k for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_moircs_ks_mean"
      tablehead="ferr_moircs_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_moircs_ks in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_moircs_ks_mean"
      tablehead="ferr_ap_moircs_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_moircs_ks for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mosaic_b_mean"
      tablehead="ferr_mosaic_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_mosaic_b in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mosaic_b_mean"
      tablehead="ferr_ap_mosaic_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_mosaic_b for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mosaic_i_mean"
      tablehead="ferr_mosaic_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_mosaic_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mosaic_i_mean"
      tablehead="ferr_ap_mosaic_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_mosaic_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mosaic_r_mean"
      tablehead="ferr_mosaic_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_mosaic_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mosaic_r_mean"
      tablehead="ferr_ap_mosaic_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_mosaic_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mosaic_u_mean"
      tablehead="ferr_mosaic_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on ferr_mosaic_u in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mosaic_u_mean"
      tablehead="ferr_ap_mosaic_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_ap_mosaic_u for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_mosaic_z_mean"
      tablehead="ferr_mosaic_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_mosaic_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_mosaic_z_mean"
      tablehead="ferr_ap_mosaic_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_mosaic_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_newfirm_h_mean"
      tablehead="ferr_newfirm_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on ferr_newfirm_h in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_newfirm_h_mean"
      tablehead="ferr_ap_newfirm_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on f_ap_newfirm_h for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_newfirm_h1_mean"
      tablehead="ferr_newfirm_h1_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on ferr_newfirm_h1 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_newfirm_h1_mean"
      tablehead="ferr_ap_newfirm_h1_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on f_ap_newfirm_h1 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_newfirm_h2_mean"
      tablehead="ferr_newfirm_h2_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on ferr_newfirm_h2 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_newfirm_h2_mean"
      tablehead="ferr_ap_newfirm_h2_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on f_ap_newfirm_h2 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_newfirm_j_mean"
      tablehead="ferr_newfirm_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on ferr_newfirm_j in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_newfirm_j_mean"
      tablehead="ferr_ap_newfirm_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_newfirm_j for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_newfirm_j1_mean"
      tablehead="ferr_newfirm_j1_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on ferr_newfirm_j1 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_newfirm_j1_mean"
      tablehead="ferr_ap_newfirm_j1_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_newfirm_j1 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_newfirm_j2_mean"
      tablehead="ferr_newfirm_j2_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on ferr_newfirm_j2 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_newfirm_j2_mean"
      tablehead="ferr_ap_newfirm_j2_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_newfirm_j2 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_newfirm_j3_mean"
      tablehead="ferr_newfirm_j3_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on ferr_newfirm_j3 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_newfirm_j3_mean"
      tablehead="ferr_ap_newfirm_j3_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_newfirm_j3 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_newfirm_k_mean"
      tablehead="ferr_newfirm_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_newfirm_k in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_newfirm_k_mean"
      tablehead="ferr_ap_newfirm_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_newfirm_k for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_nicmos_f110w_mean"
      tablehead="ferr_nicmos_f110w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on ferr_nicmos_f110w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_nicmos_f110w_mean"
      tablehead="ferr_ap_nicmos_f110w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on f_ap_nicmos_f110w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_nicmos_f160w_mean"
      tablehead="ferr_nicmos_f160w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on ferr_nicmos_f160w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_nicmos_f160w_mean"
      tablehead="ferr_ap_nicmos_f160w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on f_ap_nicmos_f160w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_omega2000_j_mean"
      tablehead="ferr_omega2000_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.J"
      unit="uJy"
      description="The mean uncertainty on ferr_omega2000_j in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_omega2000_j_mean"
      tablehead="ferr_ap_omega2000_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_omega2000_j for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_omega2000_ks_mean"
      tablehead="ferr_omega2000_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_omega2000_ks in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_omega2000_ks_mean"
      tablehead="ferr_ap_omega2000_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_omega2000_ks for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_omegacam_g_mean"
      tablehead="ferr_omegacam_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_omegacam_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_omegacam_g_mean"
      tablehead="ferr_ap_omegacam_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_omegacam_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_omegacam_i_mean"
      tablehead="ferr_omegacam_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_omegacam_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_omegacam_i_mean"
      tablehead="ferr_ap_omegacam_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_omegacam_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_omegacam_r_mean"
      tablehead="ferr_omegacam_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_omegacam_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_omegacam_r_mean"
      tablehead="ferr_ap_omegacam_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_omegacam_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_omegacam_u_mean"
      tablehead="ferr_omegacam_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on ferr_omegacam_u in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_omegacam_u_mean"
      tablehead="ferr_ap_omegacam_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_ap_omegacam_u for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_omegacam_z_mean"
      tablehead="ferr_omegacam_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_omegacam_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_omegacam_z_mean"
      tablehead="ferr_ap_omegacam_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_omegacam_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_quirc_hk_mean"
      tablehead="ferr_quirc_hk_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on ferr_quirc_hk in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_quirc_hk_mean"
      tablehead="ferr_ap_quirc_hk_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on f_ap_quirc_hk for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_sdss_g_mean"
      tablehead="ferr_sdss_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_sdss_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_sdss_g_mean"
      tablehead="ferr_ap_sdss_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_sdss_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_sdss_i_mean"
      tablehead="ferr_sdss_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_sdss_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_sdss_i_mean"
      tablehead="ferr_ap_sdss_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_sdss_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_sdss_r_mean"
      tablehead="ferr_sdss_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_sdss_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_sdss_r_mean"
      tablehead="ferr_ap_sdss_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_sdss_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_sdss_u_mean"
      tablehead="ferr_sdss_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on ferr_sdss_u in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_sdss_u_mean"
      tablehead="ferr_ap_sdss_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_ap_sdss_u for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_sdss_z_mean"
      tablehead="ferr_sdss_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_sdss_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_sdss_z_mean"
      tablehead="ferr_ap_sdss_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_sdss_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_b_mean"
      tablehead="ferr_suprime_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_b in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_b_mean"
      tablehead="ferr_ap_suprime_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_b for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_g_mean"
      tablehead="ferr_suprime_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_g_mean"
      tablehead="ferr_ap_suprime_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_i_mean"
      tablehead="ferr_suprime_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_i_mean"
      tablehead="ferr_ap_suprime_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ia484_mean"
      tablehead="ferr_suprime_ia484_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ia484 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ia484_mean"
      tablehead="ferr_ap_suprime_ia484_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ia484 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ia527_mean"
      tablehead="ferr_suprime_ia527_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ia527 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ia527_mean"
      tablehead="ferr_ap_suprime_ia527_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ia527 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ia624_mean"
      tablehead="ferr_suprime_ia624_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ia624 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ia624_mean"
      tablehead="ferr_ap_suprime_ia624_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ia624 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ia679_mean"
      tablehead="ferr_suprime_ia679_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ia679 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ia679_mean"
      tablehead="ferr_ap_suprime_ia679_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ia679 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ia738_mean"
      tablehead="ferr_suprime_ia738_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ia738 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ia738_mean"
      tablehead="ferr_ap_suprime_ia738_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ia738 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ia767_mean"
      tablehead="ferr_suprime_ia767_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ia767 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ia767_mean"
      tablehead="ferr_ap_suprime_ia767_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ia767 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ib427_mean"
      tablehead="ferr_suprime_ib427_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ib427 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ib427_mean"
      tablehead="ferr_ap_suprime_ib427_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ib427 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ib464_mean"
      tablehead="ferr_suprime_ib464_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ib464 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ib464_mean"
      tablehead="ferr_ap_suprime_ib464_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ib464 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ib505_mean"
      tablehead="ferr_suprime_ib505_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ib505 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ib505_mean"
      tablehead="ferr_ap_suprime_ib505_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ib505 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ib574_mean"
      tablehead="ferr_suprime_ib574_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ib574 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ib574_mean"
      tablehead="ferr_ap_suprime_ib574_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ib574 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ib709_mean"
      tablehead="ferr_suprime_ib709_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ib709 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ib709_mean"
      tablehead="ferr_ap_suprime_ib709_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ib709 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ib827_mean"
      tablehead="ferr_suprime_ib827_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ib827 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ib827_mean"
      tablehead="ferr_ap_suprime_ib827_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ib827 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_ip_mean"
      tablehead="ferr_suprime_ip_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_ip in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_ip_mean"
      tablehead="ferr_ap_suprime_ip_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_ip for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_n816_mean"
      tablehead="ferr_suprime_n816_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_n816 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_n816_mean"
      tablehead="ferr_ap_suprime_n816_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_n816 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_n921_mean"
      tablehead="ferr_suprime_n921_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_n921 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_n921_mean"
      tablehead="ferr_ap_suprime_n921_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_n921 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_nb711_mean"
      tablehead="ferr_suprime_nb711_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_nb711 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_nb711_mean"
      tablehead="ferr_ap_suprime_nb711_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_nb711 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_nb816_mean"
      tablehead="ferr_suprime_nb816_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_nb816 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_nb816_mean"
      tablehead="ferr_ap_suprime_nb816_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_nb816 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_r_mean"
      tablehead="ferr_suprime_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_r_mean"
      tablehead="ferr_ap_suprime_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_rc_mean"
      tablehead="ferr_suprime_rc_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_rc in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_rc_mean"
      tablehead="ferr_ap_suprime_rc_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_rc for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_rp_mean"
      tablehead="ferr_suprime_rp_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_rp in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_rp_mean"
      tablehead="ferr_ap_suprime_rp_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_rp for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_v_mean"
      tablehead="ferr_suprime_v_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_v in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_v_mean"
      tablehead="ferr_ap_suprime_v_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_v for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_y_mean"
      tablehead="ferr_suprime_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_y in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_y_mean"
      tablehead="ferr_ap_suprime_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_y for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_z_mean"
      tablehead="ferr_suprime_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_z_mean"
      tablehead="ferr_ap_suprime_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_zp_mean"
      tablehead="ferr_suprime_zp_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_zp in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_zp_mean"
      tablehead="ferr_ap_suprime_zp_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_zp for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_suprime_zpp_mean"
      tablehead="ferr_suprime_zpp_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_suprime_zpp in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_suprime_zpp_mean"
      tablehead="ferr_ap_suprime_zpp_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_suprime_zpp for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_tifkam_ks_mean"
      tablehead="ferr_tifkam_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_tifkam_ks in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_tifkam_ks_mean"
      tablehead="ferr_ap_tifkam_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_tifkam_ks for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_ukidss_h_mean"
      tablehead="ferr_ukidss_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on ferr_ukidss_h in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_ukidss_h_mean"
      tablehead="ferr_ap_ukidss_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on f_ap_ukidss_h for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_ukidss_j_mean"
      tablehead="ferr_ukidss_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on ferr_ukidss_j in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_ukidss_j_mean"
      tablehead="ferr_ap_ukidss_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_ukidss_j for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_ukidss_k_mean"
      tablehead="ferr_ukidss_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_ukidss_k in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_ukidss_k_mean"
      tablehead="ferr_ap_ukidss_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_ukidss_k for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_ukidss_y_mean"
      tablehead="ferr_ukidss_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_ukidss_y in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_ukidss_y_mean"
      tablehead="ferr_ap_ukidss_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_ukidss_y for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_vista_h_mean"
      tablehead="ferr_vista_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on ferr_vista_h in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_vista_h_mean"
      tablehead="ferr_ap_vista_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on f_ap_vista_h for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_vista_j_mean"
      tablehead="ferr_vista_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on ferr_vista_j in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_vista_j_mean"
      tablehead="ferr_ap_vista_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_vista_j for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_vista_ks_mean"
      tablehead="ferr_vista_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_vista_ks in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_vista_ks_mean"
      tablehead="ferr_ap_vista_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_vista_ks for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_vista_y_mean"
      tablehead="ferr_vista_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_vista_y in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_vista_y_mean"
      tablehead="ferr_ap_vista_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_vista_y for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_vista_z_mean"
      tablehead="ferr_vista_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_vista_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_vista_z_mean"
      tablehead="ferr_ap_vista_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_vista_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc3_f098m_mean"
      tablehead="ferr_wfc3_f098m_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.50-100nm"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc3_f098m in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc3_f098m_mean"
      tablehead="ferr_ap_wfc3_f098m_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.50-100nm"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc3_f098m for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc3_f105w_mean"
      tablehead="ferr_wfc3_f105w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc3_f105w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc3_f105w_mean"
      tablehead="ferr_ap_wfc3_f105w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc3_f105w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc3_f125w_mean"
      tablehead="ferr_wfc3_f125w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc3_f125w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc3_f125w_mean"
      tablehead="ferr_ap_wfc3_f125w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc3_f125w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc3_f140w_mean"
      tablehead="ferr_wfc3_f140w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc3_f140w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc3_f140w_mean"
      tablehead="ferr_ap_wfc3_f140w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc3_f140w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc3_f160w_mean"
      tablehead="ferr_wfc3_f160w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc3_f160w in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc3_f160w_mean"
      tablehead="ferr_ap_wfc3_f160w_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.100-200nm"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc3_f160w for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc_g_mean"
      tablehead="ferr_wfc_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc_g_mean"
      tablehead="ferr_ap_wfc_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc_i_mean"
      tablehead="ferr_wfc_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc_i_mean"
      tablehead="ferr_ap_wfc_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc_r_mean"
      tablehead="ferr_wfc_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc_r_mean"
      tablehead="ferr_ap_wfc_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc_u_mean"
      tablehead="ferr_wfc_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc_u in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc_u_mean"
      tablehead="ferr_ap_wfc_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc_u for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfc_z_mean"
      tablehead="ferr_wfc_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_wfc_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfc_z_mean"
      tablehead="ferr_ap_wfc_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfc_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_416nm_mean"
      tablehead="ferr_wfi_416nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_416nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_416nm_mean"
      tablehead="ferr_ap_wfi_416nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_416nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_461nm_mean"
      tablehead="ferr_wfi_461nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_461nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_461nm_mean"
      tablehead="ferr_ap_wfi_461nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_461nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_485nm_mean"
      tablehead="ferr_wfi_485nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_485nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_485nm_mean"
      tablehead="ferr_ap_wfi_485nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_485nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_518nm_mean"
      tablehead="ferr_wfi_518nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_518nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_518nm_mean"
      tablehead="ferr_ap_wfi_518nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_518nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_571nm_mean"
      tablehead="ferr_wfi_571nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_571nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_571nm_mean"
      tablehead="ferr_ap_wfi_571nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_571nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_604nm_mean"
      tablehead="ferr_wfi_604nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_604nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_604nm_mean"
      tablehead="ferr_ap_wfi_604nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_604nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_646nm_mean"
      tablehead="ferr_wfi_646nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_646nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_646nm_mean"
      tablehead="ferr_ap_wfi_646nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_646nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_696nm_mean"
      tablehead="ferr_wfi_696nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_696nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_696nm_mean"
      tablehead="ferr_ap_wfi_696nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_696nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_753nm_mean"
      tablehead="ferr_wfi_753nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_753nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_753nm_mean"
      tablehead="ferr_ap_wfi_753nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_753nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_815nm_mean"
      tablehead="ferr_wfi_815nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_815nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_815nm_mean"
      tablehead="ferr_ap_wfi_815nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_815nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_856nm_mean"
      tablehead="ferr_wfi_856nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_856nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_856nm_mean"
      tablehead="ferr_ap_wfi_856nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_856nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_914nm_mean"
      tablehead="ferr_wfi_914nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_914nm in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_914nm_mean"
      tablehead="ferr_ap_wfi_914nm_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_914nm for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_b_mean"
      tablehead="ferr_wfi_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_b in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_b_mean"
      tablehead="ferr_ap_wfi_b_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_b for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_b123_mean"
      tablehead="ferr_wfi_b123_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_b123 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_b123_mean"
      tablehead="ferr_ap_wfi_b123_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_b123 for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_i_mean"
      tablehead="ferr_wfi_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_i_mean"
      tablehead="ferr_ap_wfi_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_r_mean"
      tablehead="ferr_wfi_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_r_mean"
      tablehead="ferr_ap_wfi_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_u_mean"
      tablehead="ferr_wfi_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_u in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_u_mean"
      tablehead="ferr_ap_wfi_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_u for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wfi_v_mean"
      tablehead="ferr_wfi_v_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on ferr_wfi_v in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wfi_v_mean"
      tablehead="ferr_ap_wfi_v_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.V"
      unit="uJy"
      description="The mean uncertainty on f_ap_wfi_v for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wircam_h_mean"
      tablehead="ferr_wircam_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on ferr_wircam_h in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wircam_h_mean"
      tablehead="ferr_ap_wircam_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on f_ap_wircam_h for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wircam_j_mean"
      tablehead="ferr_wircam_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on ferr_wircam_j in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wircam_j_mean"
      tablehead="ferr_ap_wircam_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_wircam_j for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wircam_ks_mean"
      tablehead="ferr_wircam_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_wircam_ks in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wircam_ks_mean"
      tablehead="ferr_ap_wircam_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_wircam_ks for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wircam_y_mean"
      tablehead="ferr_wircam_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.I"
      unit="uJy"
      description="The mean uncertainty on ferr_wircam_y in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wircam_y_mean"
      tablehead="ferr_ap_wircam_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_wircam_y for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wircs_j_mean"
      tablehead="ferr_wircs_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on ferr_wircs_j in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wircs_j_mean"
      tablehead="ferr_ap_wircs_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_wircs_j for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />

    <column name="ferr_wircs_k_mean"
      tablehead="ferr_wircs_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on ferr_wircs_k in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_wircs_k_mean"
      tablehead="ferr_ap_wircs_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_wircs_k for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
      
      
    <column name="ferr_u_mean"
      tablehead="ferr_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_best_u in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_u_mean"
      tablehead="ferr_ap_u_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_u for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
    <column name="ferr_g_mean"
      tablehead="ferr_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_best_g in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_g_mean"
      tablehead="ferr_ap_g_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_g for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
    <column name="ferr_r_mean"
      tablehead="ferr_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_best_r in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_r_mean"
      tablehead="ferr_ap_r_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_r for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
    <column name="ferr_i_mean"
      tablehead="ferr_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_best_i in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_i_mean"
      tablehead="ferr_ap_i_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_i for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
    <column name="ferr_z_mean"
      tablehead="ferr_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_best_z in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_z_mean"
      tablehead="ferr_ap_z_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_z for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
    <column name="ferr_y_mean"
      tablehead="ferr_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_best_y in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_y_mean"
      tablehead="ferr_ap_y_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_y for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
    <column name="ferr_j_mean"
      tablehead="ferr_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_best_j in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_j_mean"
      tablehead="ferr_ap_j_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_j for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
    <column name="ferr_h_mean"
      tablehead="ferr_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on f_best_h in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_h_mean"
      tablehead="ferr_ap_h_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_h for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
    <column name="ferr_k_mean"
      tablehead="ferr_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.KU"
      unit="uJy"
      description="The mean uncertainty on f_best_k in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_k_mean"
      tablehead="ferr_ap_k_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_k for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
    <column name="ferr_ks_mean"
      tablehead="ferr_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_best_ks in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_ap_ks_mean"
      tablehead="ferr_ap_ks_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="The mean uncertainty on f_ap_best_ks for all objects in the order 10 healpix pixel that contains this order 13 healpic pixel."
      verbLevel="1" />
      
    <column name="ferr_mips_24_mean"
      tablehead="ferr_mips_24_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.15-30um"
      unit="uJy"
      description="The mean uncertainty on f_mips_24 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_pacs_green_mean"
      tablehead="ferr_pacs_green_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.60-100um"
      unit="uJy"
      description="The mean uncertainty on f_pacs_green in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_pacs_red_mean"
      tablehead="ferr_pacs_red_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.1500-3000GHz"
      unit="uJy"
      description="The mean uncertainty on f_pacs_red in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_spire_250_mean"
      tablehead="ferr_spire_250_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="The mean uncertainty on f_best_ks in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_spire_350_mean"
      tablehead="ferr_spire_350_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="The mean uncertainty on f_spire_350 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />
    <column name="ferr_spire_500_mean"
      tablehead="ferr_spire_500_mean"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.400-750GHz"
      unit="uJy"
      description="The mean uncertainty on f_spire_500 in the order 10 healpix pixel that contains this order 13 healpix pixel."
      verbLevel="1" />


  </table>
  <data id="import">
    <sources>
      <pattern>data/*.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*" />
    </make>
  </data>


  <service id="depth" allowed="scs.xml,form">
    <meta name="title">HELP depth maps</meta>
    <meta name="shortName">Depth maps</meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="hp_idx_O_13" />
      <condDesc buildFrom="hp_idx_O_10" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>


</resource>

<!--
vim:et:sta:sw=2
-->