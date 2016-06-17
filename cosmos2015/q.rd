<resource schema="cosmos2015">
  <meta name="title">COSMOS2015</meta>
  <meta name="creationDate">2016-06-07T18:26:58+0200</meta>
  <meta name="description">
    COSMOS2015 catalogue from Laigle et al., 2016.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">U.V.</meta>
    <meta name="waveband">Optical</meta>
    <meta name="waveband">Infrared</meta>
    <meta name="waveband">X-ray</meta>
    <meta name="waveband">Radio</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the multi-wavelength (from X-rays to radio) COSMOS
    catalogue from Laigle et al, 2015.

      We present here a catalog containing photometry and physical parameters
      for more than half a million objects over the 2deg^2 COSMOS field. The
      photometry has been extracted from PSF-homogenised COSMOS optical near
      infrared data and infrared data.  Each near-infrared and optical band has
      been convolved so the final seeing (measured using a fit to a Moffat
      profile) corresponds to 0.8’’. Sources are selected from a chi-squared sum
      of the optical z++ band (SuprimeCam) and the 4 NIR YJHKs bands
      (UltraVISTA-DR2). This ensures that the catalogue contains both redder and
      bluer objects.  It contains the NIR photometric data obtained at the
      ESO-VISTA telescope by the UltraVista-DR2 collaboration, as processed at
      IAP-Terapix and made publicly available, the imaging data publicly
      available from the COSMOS collaboration including Subaru and CFHT, the new
      Y band taken with HSC Subaru, and the IR data taken with Spitzer as a part
      the SPLASH Spitzer legacy program. It contains also the match with the
      MIPS 24 um catalog.  Physical parameters have been computed with Le Phare
      at LAM and have been calibrated using spectroscopic data. I n order to
      compute photometric redshifts with this catalogue, some additional
      corrections have to be applied to the magnitudes provided here.  They are
      fully described in Laigle et al. 2016.

      If questions, contact:
      - C. Laigle (laigle_at_iap.fr),
      - H.J. McCracken (hjmcc_at_iap.fr)
      - O. Ilbert( olivier.ilbert_at_lam.fr)

      If you use this catalog, please cite the following paper: Laigle et al.
      2016: "The COSMOS2015 CATALOG: EXPLORING THE 1<z<6 UNIVERSE WITH HALF
      A MILLION GALAXIES".

      You must also include the following standard acknowledgement: "Based on
      data products from observations made with ESO Telescopes at the La Silla
      Paranal Observatory under ESO programme ID 179.A-2005 and on data products
      produced by TERAPIX and the Cambridge Astronomy Survey Unit on behalf of
      the UltraVISTA consortium."


    The `cosmos2015.main` table contains the pristine catalogue to which we
    only added a unique identifier in the `id` columns.

    The `cosmos2015.hsel` table contains the HELP selected sources. The Laigle+
    2016 catalogue was limited to only good objects using this flag limit
    `(FLAG_COSMOS==1)&(FLAG_PETER==0)`. Also, a column with an HELP
    identifier (`help_id`) has been added.

    History
    -------

    ======== ============================================
    20160613 Catalogue ingestion.
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /cosmos2015/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="id">
    <stc>
      Position ICRS Epoch J2000.0 "alpha_j2000" "delta_j2000"
    </stc>

    <column name="id"
      tablehead="Id"
      type="text"
      ucd="meta.id;meta.main"
      description="Unique identifier, based on J2000 position (not in original
      catalogue)"
      required="True"
      verbLevel="1" />
    <column name="alpha_j2000"
      tablehead="Alpha_J2000"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="delta_j2000"
      tablehead="Delta_J2000"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="number"
      tablehead="Number"
      type="bigint"
      ucd="meta.id"
      description="Source name in the pristine COSMOS2015 catalogue."
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="x_image"
      tablehead="X_image"
      type="double precision"
      ucd="pos.cartesian.x;src"
      unit="pixel"
      description="X position on the image"
      verbLevel="30" />
    <column name="y_image"
      tablehead="Y_image"
      type="double precision"
      ucd="pos.cartesian.y;src"
      unit="pixel"
      description="Y position on the image"
      verbLevel="30" />
    <column name="errx2_image"
      tablehead="errX2_image"
      type="double precision"
      ucd="star.variance;pos.cartesian.x;src"
      unit="pixel**2"
      description="Variance on x_image"
      verbLevel="30" />
    <column name="erry2_image"
      tablehead="errY2_image"
      type="double precision"
      ucd="star.variance;pos.cartesian.y;src"
      unit="pixel**2"
      description="Variance on y_image"
      verbLevel="30" />
    <column name="errxy_image"
      tablehead="errXY_image"
      type="double precision"
      ucd="star.variance;pos.cartesian.x;pos.cartesian.y;src"
      unit="pixel**2"
      description="Covariance of x_image, y_image"
      verbLevel="30" />
    <column name="flag_hjmcc"
      tablehead="Flag_HJMCC"
      type="smallint"
      ucd="meta.code;obs.field"
      description="UltraVISTA area flag: 0 if in UltraVISTA &gt;=1 else"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="flag_deep"
      tablehead="Flag_Deep"
      type="smallint"
      ucd="meta.code;obs.field"
      description="UltraVISTA Ultra-deep flag: 1 if in Deep stripes"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="flag_cosmos"
      tablehead="Flag_COSMOS"
      type="smallint"
      ucd="meta.code;obs.field"
      description="COSMOS 2deg^2 area flag: 1 if in 2deg2 COSMOS"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="flag_peter"
      tablehead="Flag_Peter"
      type="smallint"
      ucd="meta.code;meta.code.qual"
      description="Saturated object on bad areas: 0 if in good area, &gt;=1 if
      masked in optical broad-bands (P. Capak)"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ebv"
      tablehead="EBV"
      type="real"
      ucd="phot.color.excess"
      description="Galactic extinction (Schlegel et al. 1998) at the object
      position"
      verbLevel="1" />
    <column name="flux_radius"
      tablehead="Flux_Radius"
      type="real"
      ucd="phys.angSize;src"
      unit="pixel"
      description="Radius enclosing 0.5 of the total flux (flux_auto)"
      verbLevel="30" />
    <column name="ks_flux_aper2"
      tablehead="Ks_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.K"
      unit="uJy"
      description="Ks flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_fluxerr_aper2"
      tablehead="Ks_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.K"
      unit="uJy"
      description="Uncertainty on Ks flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_flux_aper3"
      tablehead="Ks_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.K"
      unit="uJy"
      description="Ks flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_fluxerr_aper3"
      tablehead="Ks_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.K"
      unit="uJy"
      description="Uncertainty on Ks flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_mag_aper2"
      tablehead="Ks_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_magerr_aper2"
      tablehead="Ks_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ks AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_mag_aper3"
      tablehead="Ks_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_magerr_aper3"
      tablehead="Ks_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ks AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_mag_auto"
      tablehead="Ks_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Automatic aperture Ks magnitude"
      verbLevel="1" />
    <column name="ks_magerr_auto"
      tablehead="Ks_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on automatic aperture Ks magnitude"
      verbLevel="1" />
    <column name="ks_mag_iso"
      tablehead="Ks_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks isophotal magnitude"
      verbLevel="1" />
    <column name="ks_magerr_iso"
      tablehead="Ks_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ks isophotal magnitude"
      verbLevel="1" />
    <column name="ks_flags"
      tablehead="Ks_Flags"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Ks extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ks_imaflags_iso"
      tablehead="Ks_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Flag indicating saturation for Ks"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="y_flux_aper2"
      tablehead="Y_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="Y flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_fluxerr_aper2"
      tablehead="Y_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on Y flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_flux_aper3"
      tablehead="Y_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="Y flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_fluxerr_aper3"
      tablehead="Y_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on Y flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_mag_aper2"
      tablehead="Y_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Y AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_magerr_aper2"
      tablehead="Y_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on Y AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_mag_aper3"
      tablehead="Y_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Y AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_magerr_aper3"
      tablehead="Y_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on Y AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_mag_auto"
      tablehead="Y_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Automatic aperture Y magnitude"
      verbLevel="1" />
    <column name="y_magerr_auto"
      tablehead="Y_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on automatic aperture Y magnitude"
      verbLevel="1" />
    <column name="y_mag_iso"
      tablehead="Y_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Y isophotal magnitude"
      verbLevel="1" />
    <column name="y_magerr_iso"
      tablehead="Y_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on Y isophotal magnitude"
      verbLevel="1" />
    <column name="y_flags"
      tablehead="Y_Flags"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="Y extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="y_imaflags_iso"
      tablehead="Y_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="Flag indicating saturation for Y"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="h_flux_aper2"
      tablehead="H_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.H"
      unit="uJy"
      description="H flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_fluxerr_aper2"
      tablehead="H_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.H"
      unit="uJy"
      description="Uncertainty on H flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_flux_aper3"
      tablehead="H_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.H"
      unit="uJy"
      description="H flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_fluxerr_aper3"
      tablehead="H_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.H"
      unit="uJy"
      description="Uncertainty on H flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper2"
      tablehead="H_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper2"
      tablehead="H_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on H AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper3"
      tablehead="H_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper3"
      tablehead="H_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on H AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_mag_auto"
      tablehead="H_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Automatic aperture H magnitude"
      verbLevel="1" />
    <column name="h_magerr_auto"
      tablehead="H_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on automatic aperture H magnitude"
      verbLevel="1" />
    <column name="h_mag_iso"
      tablehead="H_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H isophotal magnitude"
      verbLevel="1" />
    <column name="h_magerr_iso"
      tablehead="H_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on H isophotal magnitude"
      verbLevel="1" />
    <column name="h_flags"
      tablehead="H_Flags"
      type="smallint"
      ucd="meta.code;em.IR.H"
      description="H extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="h_imaflags_iso"
      tablehead="H_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.H"
      description="Flag indicating saturation for H"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="j_flux_aper2"
      tablehead="J_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="J flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_fluxerr_aper2"
      tablehead="J_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on J flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_flux_aper3"
      tablehead="J_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="J flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_fluxerr_aper3"
      tablehead="J_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on J flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper2"
      tablehead="J_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper2"
      tablehead="J_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on J AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper3"
      tablehead="J_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper3"
      tablehead="J_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on J AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_mag_auto"
      tablehead="J_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Automatic aperture J magnitude"
      verbLevel="1" />
    <column name="j_magerr_auto"
      tablehead="J_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on automatic aperture J magnitude"
      verbLevel="1" />
    <column name="j_mag_iso"
      tablehead="J_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J isophotal magnitude"
      verbLevel="1" />
    <column name="j_magerr_iso"
      tablehead="J_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on J isophotal magnitude"
      verbLevel="1" />
    <column name="j_flags"
      tablehead="J_Flags"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="J extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="j_imaflags_iso"
      tablehead="J_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="Flag indicating saturation for J"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="b_flux_aper2"
      tablehead="B_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="B flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_fluxerr_aper2"
      tablehead="B_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on B flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_flux_aper3"
      tablehead="B_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="B flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_fluxerr_aper3"
      tablehead="B_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on B flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_mag_aper2"
      tablehead="B_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_magerr_aper2"
      tablehead="B_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on B AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_mag_aper3"
      tablehead="B_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_magerr_aper3"
      tablehead="B_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on B AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_mag_auto"
      tablehead="B_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Automatic aperture B magnitude"
      verbLevel="1" />
    <column name="b_magerr_auto"
      tablehead="B_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on automatic aperture B magnitude"
      verbLevel="1" />
    <column name="b_mag_iso"
      tablehead="B_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B isophotal magnitude"
      verbLevel="1" />
    <column name="b_magerr_iso"
      tablehead="B_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on B isophotal magnitude"
      verbLevel="1" />
    <column name="b_flags"
      tablehead="B_Flags"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="B extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="b_imaflags_iso"
      tablehead="B_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Flag indicating saturation for B"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="v_flux_aper2"
      tablehead="V_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="V flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_fluxerr_aper2"
      tablehead="V_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on V flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_flux_aper3"
      tablehead="V_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="V flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_fluxerr_aper3"
      tablehead="V_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on V flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_mag_aper2"
      tablehead="V_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="V AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_magerr_aper2"
      tablehead="V_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on V AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_mag_aper3"
      tablehead="V_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="V AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_magerr_aper3"
      tablehead="V_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on V AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_mag_auto"
      tablehead="V_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="Automatic aperture V magnitude"
      verbLevel="1" />
    <column name="v_magerr_auto"
      tablehead="V_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on automatic aperture V magnitude"
      verbLevel="1" />
    <column name="v_mag_iso"
      tablehead="V_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="V isophotal magnitude"
      verbLevel="1" />
    <column name="v_magerr_iso"
      tablehead="V_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on V isophotal magnitude"
      verbLevel="1" />
    <column name="v_flags"
      tablehead="V_Flags"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="V extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="v_imaflags_iso"
      tablehead="V_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="Flag indicating saturation for V"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ip_flux_aper2"
      tablehead="ip_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="i+ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_fluxerr_aper2"
      tablehead="ip_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on i+ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_flux_aper3"
      tablehead="ip_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="i+ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_fluxerr_aper3"
      tablehead="ip_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on i+ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_mag_aper2"
      tablehead="ip_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="i+ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_magerr_aper2"
      tablehead="ip_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on i+ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_mag_aper3"
      tablehead="ip_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="i+ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_magerr_aper3"
      tablehead="ip_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on i+ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_mag_auto"
      tablehead="ip_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture i+ magnitude"
      verbLevel="1" />
    <column name="ip_magerr_auto"
      tablehead="ip_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture i+ magnitude"
      verbLevel="1" />
    <column name="ip_mag_iso"
      tablehead="ip_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="i+ isophotal magnitude"
      verbLevel="1" />
    <column name="ip_magerr_iso"
      tablehead="ip_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on i+ isophotal magnitude"
      verbLevel="1" />
    <column name="ip_flags"
      tablehead="ip_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="i+ extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ip_imaflags_iso"
      tablehead="ip_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for i+"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="r_flux_aper2"
      tablehead="r_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="r flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_fluxerr_aper2"
      tablehead="r_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on r flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_flux_aper3"
      tablehead="r_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="r flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_fluxerr_aper3"
      tablehead="r_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on r flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_mag_aper2"
      tablehead="r_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="r AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_magerr_aper2"
      tablehead="r_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on r AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_mag_aper3"
      tablehead="r_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="r AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_magerr_aper3"
      tablehead="r_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on r AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_mag_auto"
      tablehead="r_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture r magnitude"
      verbLevel="1" />
    <column name="r_magerr_auto"
      tablehead="r_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture r magnitude"
      verbLevel="1" />
    <column name="r_mag_iso"
      tablehead="r_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="r isophotal magnitude"
      verbLevel="1" />
    <column name="r_magerr_iso"
      tablehead="r_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on r isophotal magnitude"
      verbLevel="1" />
    <column name="r_flags"
      tablehead="r_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="r extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="r_imaflags_iso"
      tablehead="r_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for r"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="u_flux_aper2"
      tablehead="u_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.U"
      unit="uJy"
      description="u flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_fluxerr_aper2"
      tablehead="u_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.U"
      unit="uJy"
      description="Uncertainty on u flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_flux_aper3"
      tablehead="u_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.U"
      unit="uJy"
      description="u flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_fluxerr_aper3"
      tablehead="u_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.U"
      unit="uJy"
      description="Uncertainty on u flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_mag_aper2"
      tablehead="u_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="u AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_magerr_aper2"
      tablehead="u_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Uncertainty on u AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_mag_aper3"
      tablehead="u_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="u AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_magerr_aper3"
      tablehead="u_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Uncertainty on u AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_mag_auto"
      tablehead="u_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="Automatic aperture u magnitude"
      verbLevel="1" />
    <column name="u_magerr_auto"
      tablehead="u_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Uncertainty on automatic aperture u magnitude"
      verbLevel="1" />
    <column name="u_mag_iso"
      tablehead="u_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="u isophotal magnitude"
      verbLevel="1" />
    <column name="u_magerr_iso"
      tablehead="u_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Uncertainty on u isophotal magnitude"
      verbLevel="1" />
    <column name="u_flags"
      tablehead="u_Flags"
      type="smallint"
      ucd="meta.code;em.opt.U"
      description="u extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="u_imaflags_iso"
      tablehead="u_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.U"
      description="Flag indicating saturation for u"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="zp_flux_aper2"
      tablehead="zp_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="z+ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_fluxerr_aper2"
      tablehead="zp_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on z+ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_flux_aper3"
      tablehead="zp_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="z+ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_fluxerr_aper3"
      tablehead="zp_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on z+ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_mag_aper2"
      tablehead="zp_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z+ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_magerr_aper2"
      tablehead="zp_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z+ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_mag_aper3"
      tablehead="zp_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z+ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_magerr_aper3"
      tablehead="zp_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z+ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_mag_auto"
      tablehead="zp_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture z+ magnitude"
      verbLevel="1" />
    <column name="zp_magerr_auto"
      tablehead="zp_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture z+ magnitude"
      verbLevel="1" />
    <column name="zp_mag_iso"
      tablehead="zp_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z+ isophotal magnitude"
      verbLevel="1" />
    <column name="zp_magerr_iso"
      tablehead="zp_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z+ isophotal magnitude"
      verbLevel="1" />
    <column name="zp_flags"
      tablehead="zp_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="z+ extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="zp_imaflags_iso"
      tablehead="zp_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for z+"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="zpp_flux_aper2"
      tablehead="zpp_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="z++ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_fluxerr_aper2"
      tablehead="zpp_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on z++ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_flux_aper3"
      tablehead="zpp_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="z++ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_fluxerr_aper3"
      tablehead="zpp_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on z++ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_mag_aper2"
      tablehead="zpp_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z++ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_magerr_aper2"
      tablehead="zpp_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z++ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_mag_aper3"
      tablehead="zpp_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z++ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_magerr_aper3"
      tablehead="zpp_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z++ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_mag_auto"
      tablehead="zpp_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture z++ magnitude"
      verbLevel="1" />
    <column name="zpp_magerr_auto"
      tablehead="zpp_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture z++ magnitude"
      verbLevel="1" />
    <column name="zpp_mag_iso"
      tablehead="zpp_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z++ isophotal magnitude"
      verbLevel="1" />
    <column name="zpp_magerr_iso"
      tablehead="zpp_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z++ isophotal magnitude"
      verbLevel="1" />
    <column name="zpp_flags"
      tablehead="zpp_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="z++ extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="zpp_imaflags_iso"
      tablehead="zpp_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for z++"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia484_flux_aper2"
      tablehead="IA484_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IA484 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_fluxerr_aper2"
      tablehead="IA484_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IA484 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_flux_aper3"
      tablehead="IA484_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IA484 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_fluxerr_aper3"
      tablehead="IA484_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IA484 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_mag_aper2"
      tablehead="IA484_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IA484 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_magerr_aper2"
      tablehead="IA484_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IA484 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_mag_aper3"
      tablehead="IA484_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IA484 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_magerr_aper3"
      tablehead="IA484_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IA484 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_mag_auto"
      tablehead="IA484_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Automatic aperture IA484 magnitude"
      verbLevel="1" />
    <column name="ia484_magerr_auto"
      tablehead="IA484_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on automatic aperture IA484 magnitude"
      verbLevel="1" />
    <column name="ia484_mag_iso"
      tablehead="IA484_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IA484 isophotal magnitude"
      verbLevel="1" />
    <column name="ia484_magerr_iso"
      tablehead="IA484_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IA484 isophotal magnitude"
      verbLevel="1" />
    <column name="ia484_flags"
      tablehead="IA484_Flags"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="IA484 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia484_imaflags_iso"
      tablehead="IA484_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Flag indicating saturation for IA484"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia527_flux_aper2"
      tablehead="IA527_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IA527 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_fluxerr_aper2"
      tablehead="IA527_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IA527 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_flux_aper3"
      tablehead="IA527_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IA527 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_fluxerr_aper3"
      tablehead="IA527_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IA527 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_mag_aper2"
      tablehead="IA527_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IA527 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_magerr_aper2"
      tablehead="IA527_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IA527 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_mag_aper3"
      tablehead="IA527_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IA527 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_magerr_aper3"
      tablehead="IA527_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IA527 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_mag_auto"
      tablehead="IA527_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="Automatic aperture IA527 magnitude"
      verbLevel="1" />
    <column name="ia527_magerr_auto"
      tablehead="IA527_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on automatic aperture IA527 magnitude"
      verbLevel="1" />
    <column name="ia527_mag_iso"
      tablehead="IA527_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IA527 isophotal magnitude"
      verbLevel="1" />
    <column name="ia527_magerr_iso"
      tablehead="IA527_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IA527 isophotal magnitude"
      verbLevel="1" />
    <column name="ia527_flags"
      tablehead="IA527_Flags"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="IA527 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia527_imaflags_iso"
      tablehead="IA527_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="Flag indicating saturation for IA527"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia624_flux_aper2"
      tablehead="IA624_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA624 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_fluxerr_aper2"
      tablehead="IA624_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA624 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_flux_aper3"
      tablehead="IA624_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA624 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_fluxerr_aper3"
      tablehead="IA624_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA624 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_mag_aper2"
      tablehead="IA624_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA624 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_magerr_aper2"
      tablehead="IA624_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA624 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_mag_aper3"
      tablehead="IA624_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA624 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_magerr_aper3"
      tablehead="IA624_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA624 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_mag_auto"
      tablehead="IA624_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture IA624 magnitude"
      verbLevel="1" />
    <column name="ia624_magerr_auto"
      tablehead="IA624_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture IA624 magnitude"
      verbLevel="1" />
    <column name="ia624_mag_iso"
      tablehead="IA624_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA624 isophotal magnitude"
      verbLevel="1" />
    <column name="ia624_magerr_iso"
      tablehead="IA624_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA624 isophotal magnitude"
      verbLevel="1" />
    <column name="ia624_flags"
      tablehead="IA624_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="IA624 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia624_imaflags_iso"
      tablehead="IA624_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for IA624"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia679_flux_aper2"
      tablehead="IA679_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA679 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_fluxerr_aper2"
      tablehead="IA679_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA679 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_flux_aper3"
      tablehead="IA679_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA679 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_fluxerr_aper3"
      tablehead="IA679_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA679 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_mag_aper2"
      tablehead="IA679_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA679 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_magerr_aper2"
      tablehead="IA679_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA679 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_mag_aper3"
      tablehead="IA679_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA679 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_magerr_aper3"
      tablehead="IA679_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA679 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_mag_auto"
      tablehead="IA679_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture IA679 magnitude"
      verbLevel="1" />
    <column name="ia679_magerr_auto"
      tablehead="IA679_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture IA679 magnitude"
      verbLevel="1" />
    <column name="ia679_mag_iso"
      tablehead="IA679_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA679 isophotal magnitude"
      verbLevel="1" />
    <column name="ia679_magerr_iso"
      tablehead="IA679_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA679 isophotal magnitude"
      verbLevel="1" />
    <column name="ia679_flags"
      tablehead="IA679_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="IA679 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia679_imaflags_iso"
      tablehead="IA679_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for IA679"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia738_flux_aper2"
      tablehead="IA738_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA738 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_fluxerr_aper2"
      tablehead="IA738_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA738 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_flux_aper3"
      tablehead="IA738_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA738 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_fluxerr_aper3"
      tablehead="IA738_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA738 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_mag_aper2"
      tablehead="IA738_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA738 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_magerr_aper2"
      tablehead="IA738_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA738 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_mag_aper3"
      tablehead="IA738_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA738 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_magerr_aper3"
      tablehead="IA738_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA738 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_mag_auto"
      tablehead="IA738_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture IA738 magnitude"
      verbLevel="1" />
    <column name="ia738_magerr_auto"
      tablehead="IA738_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture IA738 magnitude"
      verbLevel="1" />
    <column name="ia738_mag_iso"
      tablehead="IA738_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA738 isophotal magnitude"
      verbLevel="1" />
    <column name="ia738_magerr_iso"
      tablehead="IA738_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA738 isophotal magnitude"
      verbLevel="1" />
    <column name="ia738_flags"
      tablehead="IA738_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="IA738 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia738_imaflags_iso"
      tablehead="IA738_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for IA738"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia767_flux_aper2"
      tablehead="IA767_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="IA767 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_fluxerr_aper2"
      tablehead="IA767_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on IA767 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_flux_aper3"
      tablehead="IA767_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="IA767 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_fluxerr_aper3"
      tablehead="IA767_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on IA767 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_mag_aper2"
      tablehead="IA767_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IA767 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_magerr_aper2"
      tablehead="IA767_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IA767 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_mag_aper3"
      tablehead="IA767_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IA767 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_magerr_aper3"
      tablehead="IA767_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IA767 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_mag_auto"
      tablehead="IA767_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture IA767 magnitude"
      verbLevel="1" />
    <column name="ia767_magerr_auto"
      tablehead="IA767_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture IA767 magnitude"
      verbLevel="1" />
    <column name="ia767_mag_iso"
      tablehead="IA767_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IA767 isophotal magnitude"
      verbLevel="1" />
    <column name="ia767_magerr_iso"
      tablehead="IA767_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IA767 isophotal magnitude"
      verbLevel="1" />
    <column name="ia767_flags"
      tablehead="IA767_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="IA767 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia767_imaflags_iso"
      tablehead="IA767_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for IA767"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib427_flux_aper2"
      tablehead="IB427_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IB427 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_fluxerr_aper2"
      tablehead="IB427_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IB427 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_flux_aper3"
      tablehead="IB427_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IB427 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_fluxerr_aper3"
      tablehead="IB427_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IB427 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_mag_aper2"
      tablehead="IB427_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB427 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_magerr_aper2"
      tablehead="IB427_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB427 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_mag_aper3"
      tablehead="IB427_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB427 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_magerr_aper3"
      tablehead="IB427_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB427 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_mag_auto"
      tablehead="IB427_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Automatic aperture IB427 magnitude"
      verbLevel="1" />
    <column name="ib427_magerr_auto"
      tablehead="IB427_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on automatic aperture IB427 magnitude"
      verbLevel="1" />
    <column name="ib427_mag_iso"
      tablehead="IB427_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB427 isophotal magnitude"
      verbLevel="1" />
    <column name="ib427_magerr_iso"
      tablehead="IB427_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB427 isophotal magnitude"
      verbLevel="1" />
    <column name="ib427_flags"
      tablehead="IB427_Flags"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="IB427 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib427_imaflags_iso"
      tablehead="IB427_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Flag indicating saturation for IB427"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib464_flux_aper2"
      tablehead="IB464_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IB464 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_fluxerr_aper2"
      tablehead="IB464_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IB464 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_flux_aper3"
      tablehead="IB464_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IB464 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_fluxerr_aper3"
      tablehead="IB464_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IB464 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_mag_aper2"
      tablehead="IB464_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB464 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_magerr_aper2"
      tablehead="IB464_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB464 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_mag_aper3"
      tablehead="IB464_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB464 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_magerr_aper3"
      tablehead="IB464_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB464 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_mag_auto"
      tablehead="IB464_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Automatic aperture IB464 magnitude"
      verbLevel="1" />
    <column name="ib464_magerr_auto"
      tablehead="IB464_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on automatic aperture IB464 magnitude"
      verbLevel="1" />
    <column name="ib464_mag_iso"
      tablehead="IB464_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB464 isophotal magnitude"
      verbLevel="1" />
    <column name="ib464_magerr_iso"
      tablehead="IB464_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB464 isophotal magnitude"
      verbLevel="1" />
    <column name="ib464_flags"
      tablehead="IB464_Flags"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="IB464 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib464_imaflags_iso"
      tablehead="IB464_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Flag indicating saturation for IB464"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib505_flux_aper2"
      tablehead="IB505_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IB505 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_fluxerr_aper2"
      tablehead="IB505_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IB505 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_flux_aper3"
      tablehead="IB505_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IB505 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_fluxerr_aper3"
      tablehead="IB505_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IB505 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_mag_aper2"
      tablehead="IB505_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB505 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_magerr_aper2"
      tablehead="IB505_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB505 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_mag_aper3"
      tablehead="IB505_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB505 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_magerr_aper3"
      tablehead="IB505_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB505 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_mag_auto"
      tablehead="IB505_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="Automatic aperture IB505 magnitude"
      verbLevel="1" />
    <column name="ib505_magerr_auto"
      tablehead="IB505_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on automatic aperture IB505 magnitude"
      verbLevel="1" />
    <column name="ib505_mag_iso"
      tablehead="IB505_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB505 isophotal magnitude"
      verbLevel="1" />
    <column name="ib505_magerr_iso"
      tablehead="IB505_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB505 isophotal magnitude"
      verbLevel="1" />
    <column name="ib505_flags"
      tablehead="IB505_Flags"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="IB505 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib505_imaflags_iso"
      tablehead="IB505_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="Flag indicating saturation for IB505"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib574_flux_aper2"
      tablehead="IB574_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IB574 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_fluxerr_aper2"
      tablehead="IB574_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IB574 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_flux_aper3"
      tablehead="IB574_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IB574 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_fluxerr_aper3"
      tablehead="IB574_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IB574 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_mag_aper2"
      tablehead="IB574_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB574 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_magerr_aper2"
      tablehead="IB574_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB574 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_mag_aper3"
      tablehead="IB574_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB574 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_magerr_aper3"
      tablehead="IB574_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB574 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_mag_auto"
      tablehead="IB574_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="Automatic aperture IB574 magnitude"
      verbLevel="1" />
    <column name="ib574_magerr_auto"
      tablehead="IB574_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on automatic aperture IB574 magnitude"
      verbLevel="1" />
    <column name="ib574_mag_iso"
      tablehead="IB574_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB574 isophotal magnitude"
      verbLevel="1" />
    <column name="ib574_magerr_iso"
      tablehead="IB574_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB574 isophotal magnitude"
      verbLevel="1" />
    <column name="ib574_flags"
      tablehead="IB574_Flags"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="IB574 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib574_imaflags_iso"
      tablehead="IB574_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="Flag indicating saturation for IB574"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib709_flux_aper2"
      tablehead="IB709_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IB709 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_fluxerr_aper2"
      tablehead="IB709_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IB709 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_flux_aper3"
      tablehead="IB709_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IB709 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_fluxerr_aper3"
      tablehead="IB709_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IB709 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_mag_aper2"
      tablehead="IB709_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IB709 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_magerr_aper2"
      tablehead="IB709_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IB709 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_mag_aper3"
      tablehead="IB709_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IB709 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_magerr_aper3"
      tablehead="IB709_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IB709 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_mag_auto"
      tablehead="IB709_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture IB709 magnitude"
      verbLevel="1" />
    <column name="ib709_magerr_auto"
      tablehead="IB709_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture IB709 magnitude"
      verbLevel="1" />
    <column name="ib709_mag_iso"
      tablehead="IB709_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IB709 isophotal magnitude"
      verbLevel="1" />
    <column name="ib709_magerr_iso"
      tablehead="IB709_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IB709 isophotal magnitude"
      verbLevel="1" />
    <column name="ib709_flags"
      tablehead="IB709_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="IB709 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib709_imaflags_iso"
      tablehead="IB709_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for IB709"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib827_flux_aper2"
      tablehead="IB827_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="IB827 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_fluxerr_aper2"
      tablehead="IB827_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on IB827 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_flux_aper3"
      tablehead="IB827_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="IB827 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_fluxerr_aper3"
      tablehead="IB827_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on IB827 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_mag_aper2"
      tablehead="IB827_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IB827 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_magerr_aper2"
      tablehead="IB827_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IB827 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_mag_aper3"
      tablehead="IB827_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IB827 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_magerr_aper3"
      tablehead="IB827_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IB827 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_mag_auto"
      tablehead="IB827_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture IB827 magnitude"
      verbLevel="1" />
    <column name="ib827_magerr_auto"
      tablehead="IB827_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture IB827 magnitude"
      verbLevel="1" />
    <column name="ib827_mag_iso"
      tablehead="IB827_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IB827 isophotal magnitude"
      verbLevel="1" />
    <column name="ib827_magerr_iso"
      tablehead="IB827_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IB827 isophotal magnitude"
      verbLevel="1" />
    <column name="ib827_flags"
      tablehead="IB827_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="IB827 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib827_imaflags_iso"
      tablehead="IB827_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for IB827"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="nb711_flux_aper2"
      tablehead="NB711_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="NB711 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_fluxerr_aper2"
      tablehead="NB711_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on NB711 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_flux_aper3"
      tablehead="NB711_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="NB711 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_fluxerr_aper3"
      tablehead="NB711_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on NB711 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_mag_aper2"
      tablehead="NB711_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="NB711 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_magerr_aper2"
      tablehead="NB711_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on NB711 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_mag_aper3"
      tablehead="NB711_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="NB711 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_magerr_aper3"
      tablehead="NB711_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on NB711 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_mag_auto"
      tablehead="NB711_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture NB711 magnitude"
      verbLevel="1" />
    <column name="nb711_magerr_auto"
      tablehead="NB711_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture NB711 magnitude"
      verbLevel="1" />
    <column name="nb711_mag_iso"
      tablehead="NB711_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="NB711 isophotal magnitude"
      verbLevel="1" />
    <column name="nb711_magerr_iso"
      tablehead="NB711_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on NB711 isophotal magnitude"
      verbLevel="1" />
    <column name="nb711_flags"
      tablehead="NB711_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="NB711 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="nb711_imaflags_iso"
      tablehead="NB711_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for NB711"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="nb816_flux_aper2"
      tablehead="NB816_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="NB816 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_fluxerr_aper2"
      tablehead="NB816_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on NB816 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_flux_aper3"
      tablehead="NB816_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="NB816 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_fluxerr_aper3"
      tablehead="NB816_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on NB816 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_mag_aper2"
      tablehead="NB816_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="NB816 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_magerr_aper2"
      tablehead="NB816_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on NB816 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_mag_aper3"
      tablehead="NB816_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="NB816 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_magerr_aper3"
      tablehead="NB816_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on NB816 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_mag_auto"
      tablehead="NB816_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture NB816 magnitude"
      verbLevel="1" />
    <column name="nb816_magerr_auto"
      tablehead="NB816_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture NB816 magnitude"
      verbLevel="1" />
    <column name="nb816_mag_iso"
      tablehead="NB816_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="NB816 isophotal magnitude"
      verbLevel="1" />
    <column name="nb816_magerr_iso"
      tablehead="NB816_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on NB816 isophotal magnitude"
      verbLevel="1" />
    <column name="nb816_flags"
      tablehead="NB816_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="NB816 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="nb816_imaflags_iso"
      tablehead="NB816_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for NB816"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="hw_flux_aper2"
      tablehead="Hw_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.H"
      unit="uJy"
      description="Hw flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_fluxerr_aper2"
      tablehead="Hw_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.H"
      unit="uJy"
      description="Uncertainty on Hw flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_flux_aper3"
      tablehead="Hw_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.H"
      unit="uJy"
      description="Hw flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_fluxerr_aper3"
      tablehead="Hw_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.H"
      unit="uJy"
      description="Uncertainty on Hw flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_mag_aper2"
      tablehead="Hw_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Hw AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_magerr_aper2"
      tablehead="Hw_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on Hw AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_mag_aper3"
      tablehead="Hw_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Hw AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_magerr_aper3"
      tablehead="Hw_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on Hw AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_mag_auto"
      tablehead="Hw_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Automatic aperture Hw magnitude"
      verbLevel="1" />
    <column name="hw_magerr_auto"
      tablehead="Hw_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on automatic aperture Hw magnitude"
      verbLevel="1" />
    <column name="hw_mag_iso"
      tablehead="Hw_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Hw isophotal magnitude"
      verbLevel="1" />
    <column name="hw_magerr_iso"
      tablehead="Hw_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on Hw isophotal magnitude"
      verbLevel="1" />
    <column name="hw_flags"
      tablehead="Hw_Flags"
      type="smallint"
      ucd="meta.code;em.IR.H"
      description="Hw extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="hw_imaflags_iso"
      tablehead="Hw_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.H"
      description="Flag indicating saturation for Hw"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ksw_flux_aper2"
      tablehead="Ksw_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.K"
      unit="uJy"
      description="Ksw flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_fluxerr_aper2"
      tablehead="Ksw_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.K"
      unit="uJy"
      description="Uncertainty on Ksw flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_flux_aper3"
      tablehead="Ksw_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.K"
      unit="uJy"
      description="Ksw flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_fluxerr_aper3"
      tablehead="Ksw_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.K"
      unit="uJy"
      description="Uncertainty on Ksw flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_mag_aper2"
      tablehead="Ksw_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ksw AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_magerr_aper2"
      tablehead="Ksw_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ksw AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_mag_aper3"
      tablehead="Ksw_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ksw AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_magerr_aper3"
      tablehead="Ksw_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ksw AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_mag_auto"
      tablehead="Ksw_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Automatic aperture Ksw magnitude"
      verbLevel="1" />
    <column name="ksw_magerr_auto"
      tablehead="Ksw_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on automatic aperture Ksw magnitude"
      verbLevel="1" />
    <column name="ksw_mag_iso"
      tablehead="Ksw_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ksw isophotal magnitude"
      verbLevel="1" />
    <column name="ksw_magerr_iso"
      tablehead="Ksw_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ksw isophotal magnitude"
      verbLevel="1" />
    <column name="ksw_flags"
      tablehead="Ksw_Flags"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Ksw extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ksw_imaflags_iso"
      tablehead="Ksw_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Flag indicating saturation for Ksw"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="yhsc_flux_aper2"
      tablehead="yHSC_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="yHSC flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_fluxerr_aper2"
      tablehead="yHSC_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on yHSC flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_flux_aper3"
      tablehead="yHSC_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="yHSC flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_fluxerr_aper3"
      tablehead="yHSC_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on yHSC flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_mag_aper2"
      tablehead="yHSC_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="yHSC AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_magerr_aper2"
      tablehead="yHSC_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on yHSC AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_mag_aper3"
      tablehead="yHSC_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="yHSC AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_magerr_aper3"
      tablehead="yHSC_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on yHSC AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_mag_auto"
      tablehead="yHSC_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Automatic aperture yHSC magnitude"
      verbLevel="1" />
    <column name="yhsc_magerr_auto"
      tablehead="yHSC_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on automatic aperture yHSC magnitude"
      verbLevel="1" />
    <column name="yhsc_mag_iso"
      tablehead="yHSC_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="yHSC isophotal magnitude"
      verbLevel="1" />
    <column name="yhsc_magerr_iso"
      tablehead="yHSC_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on yHSC isophotal magnitude"
      verbLevel="1" />
    <column name="yhsc_flags"
      tablehead="yHSC_Flags"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="yHSC extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="yhsc_imaflags_iso"
      tablehead="yHSC_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="Flag indicating saturation for yHSC"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="splash_1_flux"
      tablehead="SPLASH_1_Flux"
      type="real"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC 3.6μm flux density in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_1_flux_err"
      tablehead="SPLASH_1_Flux_Err"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertanty on splash_1_flux"
      verbLevel="1" />
    <column name="splash_1_mag"
      tablehead="SPLASH_1_Mag"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="IRAC 3.6μm magnitude in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_1_magerr"
      tablehead="SPLASH_1_MagErr"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Uncertanty on splash_1_mag"
      verbLevel="1" />
    <column name="splash_2_flux"
      tablehead="SPLASH_2_Flux"
      type="real"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC 4.5μm flux density in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_2_flux_err"
      tablehead="SPLASH_2_Flux_Err"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertanty on splash_2_flux"
      verbLevel="1" />
    <column name="splash_2_mag"
      tablehead="SPLASH_2_Mag"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="IRAC 4.5μm magnitude in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_2_magerr"
      tablehead="SPLASH_2_MagErr"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertanty on splash_2_mag"
      verbLevel="1" />
    <column name="splash_3_flux"
      tablehead="SPLASH_3_Flux"
      type="real"
      ucd="phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="IRAC 5.8μm flux density in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_3_flux_err"
      tablehead="SPLASH_3_Flux_Err"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="Uncertanty on splash_3_flux"
      verbLevel="1" />
    <column name="splash_3_mag"
      tablehead="SPLASH_3_Mag"
      type="real"
      ucd="phot.mag;em.IR.8-15um"
      unit="mag"
      description="IRAC 5.8μm magnitude in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_3_magerr"
      tablehead="SPLASH_3_MagErr"
      type="real"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="mag"
      description="Uncertanty on splash_3_mag"
      verbLevel="1" />
    <column name="splash_4_flux"
      tablehead="SPLASH_4_Flux"
      type="real"
      ucd="phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="IRAC 8.0μm flux density in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_4_flux_err"
      tablehead="SPLASH_4_Flux_Err"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="Uncertanty on splash_4_flux"
      verbLevel="1" />
    <column name="splash_4_mag"
      tablehead="SPLASH_4_Mag"
      type="real"
      ucd="phot.mag;em.IR.8-15um"
      unit="mag"
      description="IRAC 8.0μm magnitude in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_4_magerr"
      tablehead="SPLASH_4_MagErr"
      type="real"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="mag"
      description="Uncertanty on splash_4_mag"
      verbLevel="1" />
    <column name="flux_24"
      tablehead="Flux_24"
      type="real"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS 24µm flux density"
      verbLevel="1" />
    <column name="fluxerr_24"
      tablehead="FluxErr_24"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="Uncertainty on flux_24"
      verbLevel="1" />
    <column name="mag_24"
      tablehead="Mag_24"
      type="real"
      ucd="phot.mag;em.IR.15-30um"
      unit="mag"
      description="MIPS 24µm magnitude"
      verbLevel="1" />
    <column name="magerr_24"
      tablehead="MagErr_24"
      type="real"
      ucd="stat.error;phot.mag;em.IR.15-30um"
      unit="mag"
      description="Uncertainty on mag_24"
      verbLevel="1" />
    <column name="id_a24"
      tablehead="Id_A24"
      type="bigint"
      ucd="meta.id"
      description="Identifier in the 24µm catalogue (Le Floc'h, 2009)."
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="flux_100"
      tablehead="Flux_100"
      type="real"
      ucd="phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="PACS 100µm flux density."
      verbLevel="1" />
    <column name="fluxerr_100"
      tablehead="FluxErr_100"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="Uncertainty on flux_100"
      verbLevel="1" />
    <column name="flux_160"
      tablehead="Flux_160"
      type="real"
      ucd="phot.flux.density;em.mm.1500-3000GHz"
      unit="mJy"
      description="PACS 160µm flux density."
      verbLevel="1" />
    <column name="fluxerr_160"
      tablehead="FluxErr_160"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.1500-3000GHz"
      unit="mJy"
      description="Uncertainty on flux_160"
      verbLevel="1" />
    <column name="flux_250"
      tablehead="Flux_250"
      type="real"
      ucd="phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="SPIRE 250µm flux density"
      verbLevel="1" />
    <column name="fluxerr_250"
      tablehead="FluxErr_250"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="Error (inst.) on flux density at 250µm"
      verbLevel="1" />
    <column name="fluxerrtot_250"
      tablehead="FluxErrTot_250"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="Total error (inst.+conf.) on flux density at 250µm"
      verbLevel="1" />
    <column name="flux_350"
      tablehead="Flux_350"
      type="real"
      ucd="phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="SPIRE 350µm flux density"
      verbLevel="1" />
    <column name="fluxerr_350"
      tablehead="FluxErr_350"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="Error (inst.) on flux density at 350µm"
      verbLevel="1" />
    <column name="fluxerrtot_350"
      tablehead="FluxErrTot_350"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="Total error (inst.+conf.) on flux density at 350µm"
      verbLevel="1" />
    <column name="flux_500"
      tablehead="Flux_500"
      type="real"
      ucd="phot.flux.density;em.mm.400-750GHz"
      unit="mJy"
      description="SPIRE 500µm flux density"
      verbLevel="1" />
    <column name="fluxerr_500"
      tablehead="FluxErr_500"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.400-750GHz"
      unit="mJy"
      description="Error (inst.) on flux density at 500µm"
      verbLevel="1" />
    <column name="fluxerrtot_500"
      tablehead="FluxErrTot_500"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.400-750GHz"
      unit="mJy"
      description="Total error (inst.+conf.) on flux density at 500µm"
      verbLevel="1" />
    <column name="mag_galex_nuv"
      tablehead="Mag_GALEX_NUV"
      type="real"
      ucd="phot.mag;em.UV.200-300nm"
      unit="mag"
      description="GALEX NUV magnitude"
      verbLevel="1" />
    <column name="magerr_galex_nuv"
      tablehead="MagErr_GALEX_NUV"
      type="real"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      unit="mag"
      description="Uncertainty on mag_galex_nuv"
      verbLevel="1" />
    <column name="mag_galex_fuv"
      tablehead="Mag_GALEX_FUV"
      type="real"
      ucd="phot.mag;em.UV.100-200nm"
      unit="mag"
      description="GALEX FUV magnitude"
      verbLevel="1" />
    <column name="magerr_galex_fuv"
      tablehead="MagErr_GALEX_FUV"
      type="real"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      unit="mag"
      description="Uncertainty on mag_galex_fuv"
      verbLevel="1" />
    <column name="flux_galex_nuv"
      tablehead="Flux_GALEX_NUV"
      type="real"
      ucd="phot.flux.density;em.UV.200-300nm"
      unit="uJy"
      description="GALEX NUV flux"
      verbLevel="1" />
    <column name="fluxerr_galex_nuv"
      tablehead="FluxErr_GALEX_NUV"
      type="real"
      ucd="stat.error;phot.flux.density;em.UV.200-300nm"
      unit="uJy"
      description="Uncertainty on flux_galex_nuv"
      verbLevel="1" />
    <column name="flux_galex_fuv"
      tablehead="Flux_GALEX_FUV"
      type="real"
      ucd="phot.flux.density;em.UV.100-200nm"
      unit="uJy"
      description="GALEX FUV flux"
      verbLevel="1" />
    <column name="fluxerr_galex_fuv"
      tablehead="FluxErr_GALEX_FUV"
      type="real"
      ucd="stat.error;phot.flux.density;em.UV.100-200nm"
      unit="uJy"
      description="Uncertainty on flux_galex_fuv"
      verbLevel="1" />
    <column name="id_chandra2016"
      tablehead="ID_Chandra2016"
      type="text"
      ucd="meta.id"
      description="Name of the source in the Civano+ 2016, Marchesi+ 2016
      Chandra catalogue"
      verbLevel="30" />
    <column name="id_chandra09"
      tablehead="ID_Chandra09"
      type="integer"
      ucd="meta.id"
      description="Name of the source in the Elvis+ 2009 Chandra catalogue"
      verbLevel="30">
        <values nullLiteral="-2147483648"/>
    </column>
    <column name="flux_chandra_0_5_2"
      tablehead="Flux_Chandra_0_5_2"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.soft (Chandra)"
      unit="cm**-2.erg.s**-1"
      description="0.5-2 keV band flux"
      verbLevel="1" />
    <column name="flux_chandra_2_10"
      tablehead="Flux_Chandra_2_10"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.medium (Chandra)"
      unit="cm**-2.erg.s**-1"
      description="2-10 keV band flux"
      verbLevel="1" />
    <column name="flux_chandra_0_5_10"
      tablehead="Flux_Chandra_0_5_10"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.medium (Chandra)"
      unit="cm**-2.erg.s**-1"
      description="0.5-10 keV band flux"
      verbLevel="1" />
    <column name="id_xmm"
      tablehead="ID_XMM"
      type="integer"
      ucd="meta.id"
      description="Name of the source in Cappelluti+ 2009 XMM/Newton catalogue"
      verbLevel="30">
        <values nullLiteral="-2147483648"/>
    </column>
    <column name="flux_xmm_0_5_2"
      tablehead="Flux_XMM_0_5_2"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.soft (XMM)"
      unit="cm**-2.erg.s**-1"
      description="0.5-2 keV band flux"
      verbLevel="1" />
    <column name="flux_xmm_2_10"
      tablehead="Flux_XMM_2_10"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.medium (XMM)"
      unit="cm**-2.erg.s**-1"
      description="2-10 keV band flux"
      verbLevel="1" />
    <column name="flux_xmm_5_10"
      tablehead="Flux_XMM_5_10"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.medium (XMM)"
      unit="cm**-2.erg.s**-1"
      description="5-10 keV band flux"
      verbLevel="1" />
    <column name="hardness_xmm"
      tablehead="Hardness_XMM"
      type="real"
      ucd="phot.flux;arith.ratio"
      description="Hardness ratio (XMM)"
      verbLevel="30" />
    <column name="id_nustar"
      tablehead="ID_Nusta"
      type="text"
      ucd="meta.id"
      description="Name of the source in the Civano+ 2015 Nustar catalogue"
      verbLevel="30" />
    <column name="flux_nustar_3_24"
      tablehead="Flux_NuSTAR_3_24"
      type="real"
      ucd="phot.flux.density;em.X-ray.hard"
      unit="cm**-2.erg.s**-1"
      description="3-24 keV band flux (NuSTAR)"
      verbLevel="1" />
    <column name="fluxerr_nustar_3_24"
      tablehead="FluxErr_NuSTAR_3_24"
      type="real"
      ucd="stat.error;phot.flux.density;em.X-ray.hard"
      unit="cm**-2.erg.s**-1"
      description="Uncertainty on flux_nustar_3_24"
      verbLevel="1" />
    <column name="flux_nustar_3_8"
      tablehead="Flux_NuSTAR_3_8"
      type="real"
      ucd="phot.flux.density;em.X-ray.medium"
      unit="cm**-2.erg.s**-1"
      description="3-8 keV band flux (NuSTAR)"
      verbLevel="1" />
    <column name="fluxerr_nustar_3_8"
      tablehead="FluxErr_NuSTAR_3_8"
      type="real"
      ucd="stat.error;phot.flux.density;em.X-ray.medium"
      unit="cm**-2.erg.s**-1"
      description="Uncertainty on flux_nustar_3_8"
      verbLevel="1" />
    <column name="flux_nustar_8_24"
      tablehead="Flux_NuSTAR_8_24"
      type="real"
      ucd="phot.flux.density;em.X-ray.hard"
      unit="cm**-2.erg.s**-1"
      description="8-24 keV band flux (NuSTAR)"
      verbLevel="1" />
    <column name="fluxerr_nustar_8_24"
      tablehead="FluxErr_NuSTAR_8_24"
      type="real"
      ucd="stat.error;phot.flux.density;em.X-ray.hard"
      unit="cm**-2.erg.s**-1"
      description="Uncertainty on flux_nustar_8_24"
      verbLevel="1" />
    <column name="hardness_nustar"
      tablehead="Hardness_NuSTAR"
      type="real"
      ucd="phot.flux;arith.ratio"
      description="Hardness ratio (NuSTAR)"
      verbLevel="30" />
    <column name="hardnesslow_nustar"
      tablehead="HardnessLow_NuSTAR"
      type="real"
      ucd="phot.flux;arith.ratio;stat.min"
      description="Hardness ratio lower bound (NuSTAR)"
      verbLevel="30" />
    <column name="hardnessup_nustar"
      tablehead="HardnessUp_NuSTAR"
      type="real"
      ucd="phot.flux;arith.ratio;stat.max"
      description="Hardness ratio upper bound (NuSTAR)"
      verbLevel="30" />
    <column name="flag_xrayblend"
      tablehead="Flag_XRayBlend"
      type="smallint"
      ucd="meta.code"
      description="Flag for blended sources"
      verbLevel="1">
        <values nullLiteral="-32768"/>
    </column>
    <column name="flux_814w"
      tablehead="Flux_814W"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="mJy"
      description="Flux in F814W ACS filter"
      verbLevel="1" />
    <column name="fluxerr_814w"
      tablehead="FluxErr_814W"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="mJy"
      description="Uncertainty on flux_814w"
      verbLevel="1" />
    <column name="fluxpeak_20cm"
      tablehead="FluxPeak_20cm"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Peak 20cm flux of the radio source"
      verbLevel="1" />
    <column name="fluxpeakerr_20cm"
      tablehead="FluxPeakErr_20cm"
      type="real"
      ucd="stat.error.phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Uncertainty on fluxpeak_20cm"
      verbLevel="1" />
    <column name="fluxint_20cm"
      tablehead="FluxInt_20cm"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Total integrated 20cm flux of the radio source"
      verbLevel="1" />
    <column name="fluxinterr_20cm"
      tablehead="FluxIntErr_20cm"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Uncertainty on fluxint_20cm"
      verbLevel="1" />
    <column name="rmsbkg_20cm"
      tablehead="RMSBkg_20cm"
      type="real"
      ucd="stat.stdev;instr.background;em.radio.750-1500MHz"
      unit="mJy"
      description="Measured local 20cm RMS noise at the source position"
      verbLevel="1" />
    <column name="fluxpeak_90cm"
      tablehead="FluxPeak_90cm"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Peak 90cm flux of the radio source"
      verbLevel="1" />
    <column name="fluxpeakerr_90cm"
      tablehead="FluxPeakErr_90cm"
      type="real"
      ucd="stat.error.phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Uncertainty on fluxpeak_90cm"
      verbLevel="1" />
    <column name="fluxint_90cm"
      tablehead="FluxInt_90cm"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Total integrated 90cm flux of the radio source"
      verbLevel="1" />
    <column name="fluxinterr_90cm"
      tablehead="FluxIntErr_90cm"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Uncertainty on fluxint_90cm"
      verbLevel="1" />
    <column name="rmsbkg_90cm"
      tablehead="RMSBkg_90cm"
      type="real"
      ucd="stat.stdev;instr.background;em.radio.200-400MHz"
      unit="mJy"
      description="Measured local 90cm RMS noise at the source position"
      verbLevel="1" />
    <column name="name_vla90cm"
      tablehead="Name_VLA90cm"
      type="text"
      ucd="meta.id"
      description="Name of the source in the VLA 90cm catalogue"
      verbLevel="30" />
    <column name="name_jvldeep"
      tablehead="Name_JVLDeep"
      type="text"
      ucd="meta.id"
      description="Name in the JVL Deep catalogue"
      verbLevel="30" />
    <column name="name_jvllarge"
      tablehead="Name_JVLLarge"
      type="text"
      ucd="meta.id"
      description="Name in the JVL Large catalogue"
      verbLevel="30" />
    <column name="id2006"
      tablehead="ID2006"
      type="integer"
      ucd="meta.id"
      description="Name of the source in 1st version of the catalogue from
      Capak+ 2007"
      verbLevel="30">
        <values nullLiteral="-32768"/>
    </column>
    <column name="id2008"
      tablehead="ID2008"
      type="integer"
      ucd="meta.id"
      description="Name of the source in 2nd version of the catalogue from
      Capak+ 2007"
      verbLevel="30">
        <values nullLiteral="-32768"/>
    </column>
    <column name="id2013"
      tablehead="ID2013"
      type="integer"
      ucd="meta.id"
      description="Name of the source in the catalogue from Ilbert+ 2013."
      verbLevel="30">
        <values nullLiteral="-32768"/>
    </column>
    <column name="off_set"
      tablehead="Off_set"
      type="double precision"
      ucd="meta.number"
      description="Offset applied to the aperture magnitudes to obtain total
      quantities"
      verbLevel="1" />
    <column name="photoz"
      tablehead="PhotoZ"
      type="real"
      ucd="src.redshift.phot;meta.main"
      description="Photometric redshift: zPDF if galaxy (median of the
      likelihood distribution), 0 is star, 9.99 if Xray source based on Chandra
      (Civano programme), -99 if masked area in flag_capak."
      verbLevel="1" />
    <column name="type"
      tablehead="Type"
      type="smallint"
      ucd="meta.code"
      description="Object type"
      note="2"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="zpdf"
      tablehead="zPDF"
      type="real"
      ucd="src.redshift.phot"
      description="Photo-z measured using the galaxy templates. Median of the
      likelihood distribution."
      verbLevel="30" />
    <column name="zpdf_l68"
      tablehead="zpdf_l68"
      type="real"
      ucd="src.redshift.phot;stat.min"
      description="Lower limit, 68% confidence level (a comparison
      photo-z/spec-z shows that these errors could be underestimated by a factor
      0.1*I-0.8 at I&gt;20 and 1.2 at I&lt;20)"
      verbLevel="30" />
    <column name="zpdf_u68"
      tablehead="zpdf_u68"
      type="real"
      ucd="src.redshift.phot;stat.max"
      description="Upper limit, 68% confidence level (a comparison
      photo-z/spec-z shows that these errors could be underestimated by a factor
      0.1*I-0.8 at I&gt;20 and 1.2 at I&gt;20)"
      verbLevel="30" />
    <column name="zminchi2"
      tablehead="zMinChi2"
      type="real"
      ucd="src.redshift.phot"
      description="Photo-z measured using the galaxy templates. Photo-z defined
      as the minimum of the chi2 distribution."
      verbLevel="30" />
    <column name="chi2_best"
      tablehead="Chi2_Best"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced chi2 [-99 if less than 3 filters] for zminchi2"
      verbLevel="30" />
    <column name="zp_2"
      tablehead="zP_2"
      type="real"
      ucd="src.redshift.phot"
      description="Second photo-z solution if a second peak is detected with
      P&gt;5% in the PDF"
      verbLevel="30" />
    <column name="chi2_2"
      tablehead="Chi2_2"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced chi2 for the second photo-z solution"
      verbLevel="30" />
    <column name="nbfilt"
      tablehead="NbFilt"
      type="smallint"
      ucd="meta.number"
      description="Number of filters used in the fit"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="zq"
      tablehead="zQ"
      type="real"
      ucd="src.redshift.phot"
      description="Photoz for the AGN library"
      verbLevel="30" />
    <column name="chiq"
      tablehead="ChiQ"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced Chi2 for the AGN library"
      verbLevel="30" />
    <column name="modq"
      tablehead="modQ"
      type="smallint"
      ucd="meta.id"
      description="Best fit template in the AGN library"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="mods"
      tablehead="modS"
      type="smallint"
      ucd="meta.id"
      description="Best fit template in the star library"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="chis"
      tablehead="chiS"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced Chi2 for the star library"
      verbLevel="30" />
    <column name="model"
      tablehead="Model"
      type="smallint"
      ucd="meta.id"
      description="Best fit BC03 model at zPDF"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="age"
      tablehead="Age"
      type="double precision"
      ucd="time.age;meta.modelled"
      unit="Gyr"
      description="LePhare derived age"
      verbLevel="1" />
    <column name="extinction"
      tablehead="Extinction"
      type="real"
      ucd="phys.absorption.coeff;meta.modelled"
      description="LePhare derived extinction"
      verbLevel="1" />
    <column name="mnuv"
      tablehead="MNUV"
      type="real"
      ucd="phot.mag;em.UV.200-300nm;meta.modelled"
      unit="mag"
      description="LePhare derived GALEX NUV absolute magnitude"
      verbLevel="30" />
    <column name="mu"
      tablehead="Mu"
      type="real"
      ucd="phot.mag;em.opt.U;meta.modelled"
      unit="mag"
      description="LePhare derived CFHT u* absolute magnitude"
      verbLevel="30" />
    <column name="mb"
      tablehead="MB"
      type="real"
      ucd="phot.mag;em.opt.B;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru B absolute magnitude"
      verbLevel="30" />
    <column name="mv"
      tablehead="MV"
      type="real"
      ucd="phot.mag;em.opt.V;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru V absolute magnitude"
      verbLevel="30" />
    <column name="mr"
      tablehead="Mr"
      type="real"
      ucd="phot.mag;em.opt.R;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru r+ absolute magnitude"
      verbLevel="30" />
    <column name="mi"
      tablehead="Mi"
      type="real"
      ucd="phot.mag;em.opt.I;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru i+ absolute magnitude"
      verbLevel="30" />
    <column name="mz"
      tablehead="Mz"
      type="real"
      ucd="phot.mag;em.opt.I;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru z (new filter) absolute magnitude"
      verbLevel="30" />
    <column name="my"
      tablehead="MY"
      type="real"
      ucd="phot.mag;em.IR.J;meta.modelled"
      unit="mag"
      description="LePhare derived VISTA Y absolute magnitude"
      verbLevel="30" />
    <column name="mj"
      tablehead="MJ"
      type="real"
      ucd="phot.mag;em.IR.J;meta.modelled"
      unit="mag"
      description="LePhare derived VISTA J absolute magnitude"
      verbLevel="30" />
    <column name="mh"
      tablehead="MH"
      type="real"
      ucd="phot.mag;em.IR.H;meta.modelled"
      unit="mag"
      description="LePhare derived VISTA H absolute magnitude"
      verbLevel="30" />
    <column name="mk"
      tablehead="MK"
      type="real"
      ucd="phot.mag;em.IR.K;meta.modelled"
      unit="mag"
      description="LePhare derived VISTA K absolute magnitude"
      verbLevel="30" />
    <column name="mnuv_mr"
      tablehead="MNUV_Mr"
      type="real"
      ucd="phot.color;meta.modelled"
      unit="mag"
      description="NUV-r corrected from dust extinction"
      verbLevel="30" />
    <column name="class"
      tablehead="Class"
      type="smallint"
      ucd="src.class.color;meta.modelled"
      description="0:quiescent/1:star-forming based on NUV-R/R-J"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="mass_med"
      tablehead="Mass_Med"
      type="double precision"
      ucd="phys.mass;meta.modelled"
      unit="log(Msun)"
      description="Log stellar mass from BC03 best-fit template, median of the
      PDF"
      verbLevel="1" />
    <column name="mass_med_min68"
      tablehead="Mass_Med_min68"
      type="double precision"
      ucd="phys.mass;meta.modelled;stat.min"
      unit="log(Msun)"
      description="Log stellar mass from BC03 best-fit template, lower limit,
      68% confidence level"
      verbLevel="30" />
    <column name="mass_med_max68"
      tablehead="Mass_Med_max68"
      type="double precision"
      ucd="phys.mass;meta.modelled;stat.max"
      unit="log(Msun)"
      description="Log stellar mass from BC03 best-fit template, upper limit,
      68% confidence level"
      verbLevel="30" />
    <column name="mass_best"
      tablehead="Mass_Best"
      type="double precision"
      ucd="phys.mass;meta.modelled"
      unit="log(Msun)"
      description="Log stellar mass from BC03 best-fit template, taken at the
      minimum chi2"
      verbLevel="30" />
    <column name="sfr_med"
      tablehead="SFR_Med"
      type="double precision"
      ucd="phys.SFR;meta.modelled"
      unit="log(Msun/yr)"
      description="Log SFR from BC03 best-fit template, median of the PDF"
      note="3"
      verbLevel="1" />
    <column name="sfr_med_min68"
      tablehead="SFR_Med_min68"
      type="double precision"
      ucd="phys.SFR;meta.modelled;stat.min"
      unit="log(Msun/yr)"
      description="Log SFR from BC03 best-fit template, lower limit, 68%
      confidence level"
      note="3"
      verbLevel="30" />
    <column name="sfr_med_max68"
      tablehead="SFR_Med_max68"
      type="double precision"
      ucd="phys.SFR;meta.modelled;stat.max"
      unit="log(Msun/yr)"
      description="Log SFR from BC03 best-fit template, upper limit, 68%
      confidence level"
      note="3"
      verbLevel="30" />
    <column name="sfr_best"
      tablehead="SFR_Best"
      type="double precision"
      ucd="phys.SFR;meta.modelled"
      unit="log(Msun/yr)"
      description="Log SFR from BC03 best-fit template, taken at minimum chi2"
      note="3"
      verbLevel="30" />
    <column name="ssfr_med"
      tablehead="sSFR_Med"
      type="double precision"
      ucd="phys.SFR;meta.modelled"
      unit="log(yr**-1)"
      description="Log sSFR from BC03 best-fit template, median of the PDF"
      note="3"
      verbLevel="1" />
    <column name="ssfr_med_min68"
      tablehead="sSFR_Med_min68"
      type="double precision"
      ucd="phys.SFR;meta.modelled;stat.min"
      unit="log(yr**-1)"
      description="Log sSFR from BC03 best-fit template, lower limit, 68%
      confidence level"
      note="3"
      verbLevel="30" />
    <column name="ssfr_med_max68"
      tablehead="sSFR_Med_max68"
      type="double precision"
      ucd="phys.SFR;meta.modelled;stat.max"
      unit="log(yr**-1)"
      description="Log sSFR from BC03 best-fit template, upper limit, 68%
      confidence level"
      note="3"
      verbLevel="30" />
    <column name="ssfr_best"
      tablehead="sSFR_Best"
      type="double precision"
      ucd="phys.SFR;meta.modelled"
      unit="log(yr**-1)"
      description="Log sSFR from BC03 best-fit template, taken at minimum chi2"
      note="3"
      verbLevel="30" />
    <column name="l_nu"
      tablehead="L_NU"
      type="double precision"
      ucd="phot.mag;em.UV.200-300nm:meta.modelled"
      unit="log(erg.s**-1.Hz**-1)"
      description="log(luminosity in erg/s/Hz) in NUV filter"
      verbLevel="30" />
    <column name="l_r"
      tablehead="L_r"
      type="double precision"
      ucd="phot.mag;em.opt.R:meta.modelled"
      unit="log(erg.s**-1.Hz**-1)"
      description="log(luminosity in erg/s/Hz) in r filter"
      verbLevel="30" />
    <column name="l_k"
      tablehead="L_K"
      type="double precision"
      ucd="phot.mag;em.IR.K:meta.modelled"
      unit="log(erg.s**-1.Hz**-1)"
      description="log(luminosity in erg/s/Hz) in K filter"
      verbLevel="30" />

    <meta name="note" tag="1"><![CDATA[
      SExtractor flags:

      === ===================================================================
        1 The object has neighbours, bright and close enough to significantly
          bias the MAG_AUTO photometry, or bad pixels (more than 10% of the
          integrated area affected),
        2 The object was originally blended with another one,
        4 At least one pixel of the object is saturated (or very close to),
        8 The object is truncated (too close to an image boundary),
       16 Object's aperture data are incomplete or corrupted,
       32 Object's isophotal data are incomplete or corrupted,
       64 A memory overflow occurred during deblending,
      128 A memory overflow occurred during extraction.
      === ===================================================================

      ]]></meta>

    <meta name="note" tag="2"><![CDATA[
      Object type, given even in masked regions:

      == =======================================================================
       0 Galaxy
       1 Star (mainly based on the chi2, only for objects detected in NIR or
         3.6)
       2 X-ray source
      -9 If failure in the fit (most of these objects have less than one band)
      == =======================================================================

      ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      *WARNING* Computed without IR, large uncertainty with such methods.
      ]]></meta>

  </table>
  <table id="hsel" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="help_id">
    <stc>
      Position ICRS Epoch J2000.0 "alpha_j2000" "delta_j2000"
    </stc>

    <column name="help_id"
      tablehead="HELP_Id"
      type="text"
      ucd="meta.id;meta.main"
      description="HELP identifier, based on J2000 position"
      required="True"
      verbLevel="1" />
    <column name="id"
      tablehead="Id"
      type="text"
      ucd="meta.id"
      description="Unique identifier, based on J2000 position (not in original
      catalogue)"
      required="True"
      verbLevel="1" />
    <column name="alpha_j2000"
      tablehead="Alpha_J2000"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="delta_j2000"
      tablehead="Delta_J2000"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="number"
      tablehead="Number"
      type="bigint"
      ucd="meta.id"
      description="Source name in the pristine COSMOS2015 catalogue."
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="x_image"
      tablehead="X_image"
      type="double precision"
      ucd="pos.cartesian.x;src"
      unit="pixel"
      description="X position on the image"
      verbLevel="30" />
    <column name="y_image"
      tablehead="Y_image"
      type="double precision"
      ucd="pos.cartesian.y;src"
      unit="pixel"
      description="Y position on the image"
      verbLevel="30" />
    <column name="errx2_image"
      tablehead="errX2_image"
      type="double precision"
      ucd="star.variance;pos.cartesian.x;src"
      unit="pixel**2"
      description="Variance on x_image"
      verbLevel="30" />
    <column name="erry2_image"
      tablehead="errY2_image"
      type="double precision"
      ucd="star.variance;pos.cartesian.y;src"
      unit="pixel**2"
      description="Variance on y_image"
      verbLevel="30" />
    <column name="errxy_image"
      tablehead="errXY_image"
      type="double precision"
      ucd="star.variance;pos.cartesian.x;pos.cartesian.y;src"
      unit="pixel**2"
      description="Covariance of x_image, y_image"
      verbLevel="30" />
    <column name="flag_hjmcc"
      tablehead="Flag_HJMCC"
      type="smallint"
      ucd="meta.code;obs.field"
      description="UltraVISTA area flag: 0 if in UltraVISTA &gt;=1 else"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="flag_deep"
      tablehead="Flag_Deep"
      type="smallint"
      ucd="meta.code;obs.field"
      description="UltraVISTA Ultra-deep flag: 1 if in Deep stripes"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="flag_cosmos"
      tablehead="Flag_COSMOS"
      type="smallint"
      ucd="meta.code;obs.field"
      description="COSMOS 2deg^2 area flag: 1 if in 2deg2 COSMOS"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="flag_peter"
      tablehead="Flag_Peter"
      type="smallint"
      ucd="meta.code;meta.code.qual"
      description="Saturated object on bad areas: 0 if in good area, &gt;=1 if
      masked in optical broad-bands (P. Capak)"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ebv"
      tablehead="EBV"
      type="real"
      ucd="phot.color.excess"
      description="Galactic extinction (Schlegel et al. 1998) at the object
      position"
      verbLevel="1" />
    <column name="flux_radius"
      tablehead="Flux_Radius"
      type="real"
      ucd="phys.angSize;src"
      unit="pixel"
      description="Radius enclosing 0.5 of the total flux (flux_auto)"
      verbLevel="30" />
    <column name="ks_flux_aper2"
      tablehead="Ks_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.K"
      unit="uJy"
      description="Ks flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_fluxerr_aper2"
      tablehead="Ks_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.K"
      unit="uJy"
      description="Uncertainty on Ks flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_flux_aper3"
      tablehead="Ks_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.K"
      unit="uJy"
      description="Ks flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_fluxerr_aper3"
      tablehead="Ks_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.K"
      unit="uJy"
      description="Uncertainty on Ks flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_mag_aper2"
      tablehead="Ks_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_magerr_aper2"
      tablehead="Ks_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ks AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_mag_aper3"
      tablehead="Ks_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_magerr_aper3"
      tablehead="Ks_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ks AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ks_mag_auto"
      tablehead="Ks_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Automatic aperture Ks magnitude"
      verbLevel="1" />
    <column name="ks_magerr_auto"
      tablehead="Ks_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on automatic aperture Ks magnitude"
      verbLevel="1" />
    <column name="ks_mag_iso"
      tablehead="Ks_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks isophotal magnitude"
      verbLevel="1" />
    <column name="ks_magerr_iso"
      tablehead="Ks_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ks isophotal magnitude"
      verbLevel="1" />
    <column name="ks_flags"
      tablehead="Ks_Flags"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Ks extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ks_imaflags_iso"
      tablehead="Ks_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Flag indicating saturation for Ks"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="y_flux_aper2"
      tablehead="Y_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="Y flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_fluxerr_aper2"
      tablehead="Y_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on Y flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_flux_aper3"
      tablehead="Y_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="Y flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_fluxerr_aper3"
      tablehead="Y_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on Y flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_mag_aper2"
      tablehead="Y_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Y AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_magerr_aper2"
      tablehead="Y_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on Y AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_mag_aper3"
      tablehead="Y_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Y AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_magerr_aper3"
      tablehead="Y_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on Y AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="y_mag_auto"
      tablehead="Y_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Automatic aperture Y magnitude"
      verbLevel="1" />
    <column name="y_magerr_auto"
      tablehead="Y_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on automatic aperture Y magnitude"
      verbLevel="1" />
    <column name="y_mag_iso"
      tablehead="Y_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Y isophotal magnitude"
      verbLevel="1" />
    <column name="y_magerr_iso"
      tablehead="Y_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on Y isophotal magnitude"
      verbLevel="1" />
    <column name="y_flags"
      tablehead="Y_Flags"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="Y extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="y_imaflags_iso"
      tablehead="Y_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="Flag indicating saturation for Y"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="h_flux_aper2"
      tablehead="H_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.H"
      unit="uJy"
      description="H flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_fluxerr_aper2"
      tablehead="H_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.H"
      unit="uJy"
      description="Uncertainty on H flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_flux_aper3"
      tablehead="H_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.H"
      unit="uJy"
      description="H flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_fluxerr_aper3"
      tablehead="H_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.H"
      unit="uJy"
      description="Uncertainty on H flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper2"
      tablehead="H_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper2"
      tablehead="H_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on H AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper3"
      tablehead="H_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper3"
      tablehead="H_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on H AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="h_mag_auto"
      tablehead="H_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Automatic aperture H magnitude"
      verbLevel="1" />
    <column name="h_magerr_auto"
      tablehead="H_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on automatic aperture H magnitude"
      verbLevel="1" />
    <column name="h_mag_iso"
      tablehead="H_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H isophotal magnitude"
      verbLevel="1" />
    <column name="h_magerr_iso"
      tablehead="H_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on H isophotal magnitude"
      verbLevel="1" />
    <column name="h_flags"
      tablehead="H_Flags"
      type="smallint"
      ucd="meta.code;em.IR.H"
      description="H extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="h_imaflags_iso"
      tablehead="H_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.H"
      description="Flag indicating saturation for H"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="j_flux_aper2"
      tablehead="J_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="J flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_fluxerr_aper2"
      tablehead="J_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on J flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_flux_aper3"
      tablehead="J_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="J flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_fluxerr_aper3"
      tablehead="J_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on J flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper2"
      tablehead="J_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper2"
      tablehead="J_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on J AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper3"
      tablehead="J_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper3"
      tablehead="J_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on J AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="j_mag_auto"
      tablehead="J_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Automatic aperture J magnitude"
      verbLevel="1" />
    <column name="j_magerr_auto"
      tablehead="J_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on automatic aperture J magnitude"
      verbLevel="1" />
    <column name="j_mag_iso"
      tablehead="J_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J isophotal magnitude"
      verbLevel="1" />
    <column name="j_magerr_iso"
      tablehead="J_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on J isophotal magnitude"
      verbLevel="1" />
    <column name="j_flags"
      tablehead="J_Flags"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="J extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="j_imaflags_iso"
      tablehead="J_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="Flag indicating saturation for J"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="b_flux_aper2"
      tablehead="B_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="B flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_fluxerr_aper2"
      tablehead="B_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on B flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_flux_aper3"
      tablehead="B_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="B flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_fluxerr_aper3"
      tablehead="B_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on B flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_mag_aper2"
      tablehead="B_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_magerr_aper2"
      tablehead="B_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on B AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_mag_aper3"
      tablehead="B_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_magerr_aper3"
      tablehead="B_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on B AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="b_mag_auto"
      tablehead="B_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Automatic aperture B magnitude"
      verbLevel="1" />
    <column name="b_magerr_auto"
      tablehead="B_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on automatic aperture B magnitude"
      verbLevel="1" />
    <column name="b_mag_iso"
      tablehead="B_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B isophotal magnitude"
      verbLevel="1" />
    <column name="b_magerr_iso"
      tablehead="B_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on B isophotal magnitude"
      verbLevel="1" />
    <column name="b_flags"
      tablehead="B_Flags"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="B extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="b_imaflags_iso"
      tablehead="B_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Flag indicating saturation for B"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="v_flux_aper2"
      tablehead="V_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="V flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_fluxerr_aper2"
      tablehead="V_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on V flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_flux_aper3"
      tablehead="V_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="V flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_fluxerr_aper3"
      tablehead="V_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on V flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_mag_aper2"
      tablehead="V_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="V AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_magerr_aper2"
      tablehead="V_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on V AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_mag_aper3"
      tablehead="V_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="V AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_magerr_aper3"
      tablehead="V_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on V AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="v_mag_auto"
      tablehead="V_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="Automatic aperture V magnitude"
      verbLevel="1" />
    <column name="v_magerr_auto"
      tablehead="V_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on automatic aperture V magnitude"
      verbLevel="1" />
    <column name="v_mag_iso"
      tablehead="V_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="V isophotal magnitude"
      verbLevel="1" />
    <column name="v_magerr_iso"
      tablehead="V_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on V isophotal magnitude"
      verbLevel="1" />
    <column name="v_flags"
      tablehead="V_Flags"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="V extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="v_imaflags_iso"
      tablehead="V_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="Flag indicating saturation for V"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ip_flux_aper2"
      tablehead="ip_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="i+ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_fluxerr_aper2"
      tablehead="ip_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on i+ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_flux_aper3"
      tablehead="ip_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="i+ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_fluxerr_aper3"
      tablehead="ip_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on i+ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_mag_aper2"
      tablehead="ip_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="i+ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_magerr_aper2"
      tablehead="ip_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on i+ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_mag_aper3"
      tablehead="ip_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="i+ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_magerr_aper3"
      tablehead="ip_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on i+ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ip_mag_auto"
      tablehead="ip_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture i+ magnitude"
      verbLevel="1" />
    <column name="ip_magerr_auto"
      tablehead="ip_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture i+ magnitude"
      verbLevel="1" />
    <column name="ip_mag_iso"
      tablehead="ip_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="i+ isophotal magnitude"
      verbLevel="1" />
    <column name="ip_magerr_iso"
      tablehead="ip_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on i+ isophotal magnitude"
      verbLevel="1" />
    <column name="ip_flags"
      tablehead="ip_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="i+ extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ip_imaflags_iso"
      tablehead="ip_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for i+"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="r_flux_aper2"
      tablehead="r_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="r flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_fluxerr_aper2"
      tablehead="r_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on r flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_flux_aper3"
      tablehead="r_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="r flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_fluxerr_aper3"
      tablehead="r_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on r flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_mag_aper2"
      tablehead="r_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="r AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_magerr_aper2"
      tablehead="r_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on r AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_mag_aper3"
      tablehead="r_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="r AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_magerr_aper3"
      tablehead="r_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on r AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="r_mag_auto"
      tablehead="r_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture r magnitude"
      verbLevel="1" />
    <column name="r_magerr_auto"
      tablehead="r_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture r magnitude"
      verbLevel="1" />
    <column name="r_mag_iso"
      tablehead="r_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="r isophotal magnitude"
      verbLevel="1" />
    <column name="r_magerr_iso"
      tablehead="r_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on r isophotal magnitude"
      verbLevel="1" />
    <column name="r_flags"
      tablehead="r_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="r extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="r_imaflags_iso"
      tablehead="r_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for r"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="u_flux_aper2"
      tablehead="u_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.U"
      unit="uJy"
      description="u flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_fluxerr_aper2"
      tablehead="u_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.U"
      unit="uJy"
      description="Uncertainty on u flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_flux_aper3"
      tablehead="u_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.U"
      unit="uJy"
      description="u flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_fluxerr_aper3"
      tablehead="u_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.U"
      unit="uJy"
      description="Uncertainty on u flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_mag_aper2"
      tablehead="u_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="u AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_magerr_aper2"
      tablehead="u_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Uncertainty on u AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_mag_aper3"
      tablehead="u_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="u AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_magerr_aper3"
      tablehead="u_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Uncertainty on u AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="u_mag_auto"
      tablehead="u_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="Automatic aperture u magnitude"
      verbLevel="1" />
    <column name="u_magerr_auto"
      tablehead="u_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Uncertainty on automatic aperture u magnitude"
      verbLevel="1" />
    <column name="u_mag_iso"
      tablehead="u_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="u isophotal magnitude"
      verbLevel="1" />
    <column name="u_magerr_iso"
      tablehead="u_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Uncertainty on u isophotal magnitude"
      verbLevel="1" />
    <column name="u_flags"
      tablehead="u_Flags"
      type="smallint"
      ucd="meta.code;em.opt.U"
      description="u extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="u_imaflags_iso"
      tablehead="u_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.U"
      description="Flag indicating saturation for u"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="zp_flux_aper2"
      tablehead="zp_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="z+ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_fluxerr_aper2"
      tablehead="zp_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on z+ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_flux_aper3"
      tablehead="zp_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="z+ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_fluxerr_aper3"
      tablehead="zp_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on z+ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_mag_aper2"
      tablehead="zp_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z+ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_magerr_aper2"
      tablehead="zp_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z+ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_mag_aper3"
      tablehead="zp_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z+ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_magerr_aper3"
      tablehead="zp_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z+ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zp_mag_auto"
      tablehead="zp_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture z+ magnitude"
      verbLevel="1" />
    <column name="zp_magerr_auto"
      tablehead="zp_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture z+ magnitude"
      verbLevel="1" />
    <column name="zp_mag_iso"
      tablehead="zp_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z+ isophotal magnitude"
      verbLevel="1" />
    <column name="zp_magerr_iso"
      tablehead="zp_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z+ isophotal magnitude"
      verbLevel="1" />
    <column name="zp_flags"
      tablehead="zp_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="z+ extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="zp_imaflags_iso"
      tablehead="zp_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for z+"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="zpp_flux_aper2"
      tablehead="zpp_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="z++ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_fluxerr_aper2"
      tablehead="zpp_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on z++ flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_flux_aper3"
      tablehead="zpp_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="z++ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_fluxerr_aper3"
      tablehead="zpp_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on z++ flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_mag_aper2"
      tablehead="zpp_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z++ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_magerr_aper2"
      tablehead="zpp_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z++ AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_mag_aper3"
      tablehead="zpp_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z++ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_magerr_aper3"
      tablehead="zpp_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z++ AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="zpp_mag_auto"
      tablehead="zpp_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture z++ magnitude"
      verbLevel="1" />
    <column name="zpp_magerr_auto"
      tablehead="zpp_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture z++ magnitude"
      verbLevel="1" />
    <column name="zpp_mag_iso"
      tablehead="zpp_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z++ isophotal magnitude"
      verbLevel="1" />
    <column name="zpp_magerr_iso"
      tablehead="zpp_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on z++ isophotal magnitude"
      verbLevel="1" />
    <column name="zpp_flags"
      tablehead="zpp_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="z++ extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="zpp_imaflags_iso"
      tablehead="zpp_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for z++"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia484_flux_aper2"
      tablehead="IA484_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IA484 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_fluxerr_aper2"
      tablehead="IA484_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IA484 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_flux_aper3"
      tablehead="IA484_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IA484 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_fluxerr_aper3"
      tablehead="IA484_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IA484 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_mag_aper2"
      tablehead="IA484_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IA484 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_magerr_aper2"
      tablehead="IA484_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IA484 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_mag_aper3"
      tablehead="IA484_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IA484 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_magerr_aper3"
      tablehead="IA484_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IA484 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia484_mag_auto"
      tablehead="IA484_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Automatic aperture IA484 magnitude"
      verbLevel="1" />
    <column name="ia484_magerr_auto"
      tablehead="IA484_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on automatic aperture IA484 magnitude"
      verbLevel="1" />
    <column name="ia484_mag_iso"
      tablehead="IA484_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IA484 isophotal magnitude"
      verbLevel="1" />
    <column name="ia484_magerr_iso"
      tablehead="IA484_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IA484 isophotal magnitude"
      verbLevel="1" />
    <column name="ia484_flags"
      tablehead="IA484_Flags"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="IA484 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia484_imaflags_iso"
      tablehead="IA484_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Flag indicating saturation for IA484"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia527_flux_aper2"
      tablehead="IA527_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IA527 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_fluxerr_aper2"
      tablehead="IA527_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IA527 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_flux_aper3"
      tablehead="IA527_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IA527 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_fluxerr_aper3"
      tablehead="IA527_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IA527 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_mag_aper2"
      tablehead="IA527_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IA527 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_magerr_aper2"
      tablehead="IA527_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IA527 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_mag_aper3"
      tablehead="IA527_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IA527 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_magerr_aper3"
      tablehead="IA527_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IA527 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia527_mag_auto"
      tablehead="IA527_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="Automatic aperture IA527 magnitude"
      verbLevel="1" />
    <column name="ia527_magerr_auto"
      tablehead="IA527_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on automatic aperture IA527 magnitude"
      verbLevel="1" />
    <column name="ia527_mag_iso"
      tablehead="IA527_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IA527 isophotal magnitude"
      verbLevel="1" />
    <column name="ia527_magerr_iso"
      tablehead="IA527_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IA527 isophotal magnitude"
      verbLevel="1" />
    <column name="ia527_flags"
      tablehead="IA527_Flags"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="IA527 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia527_imaflags_iso"
      tablehead="IA527_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="Flag indicating saturation for IA527"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia624_flux_aper2"
      tablehead="IA624_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA624 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_fluxerr_aper2"
      tablehead="IA624_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA624 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_flux_aper3"
      tablehead="IA624_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA624 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_fluxerr_aper3"
      tablehead="IA624_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA624 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_mag_aper2"
      tablehead="IA624_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA624 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_magerr_aper2"
      tablehead="IA624_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA624 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_mag_aper3"
      tablehead="IA624_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA624 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_magerr_aper3"
      tablehead="IA624_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA624 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia624_mag_auto"
      tablehead="IA624_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture IA624 magnitude"
      verbLevel="1" />
    <column name="ia624_magerr_auto"
      tablehead="IA624_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture IA624 magnitude"
      verbLevel="1" />
    <column name="ia624_mag_iso"
      tablehead="IA624_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA624 isophotal magnitude"
      verbLevel="1" />
    <column name="ia624_magerr_iso"
      tablehead="IA624_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA624 isophotal magnitude"
      verbLevel="1" />
    <column name="ia624_flags"
      tablehead="IA624_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="IA624 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia624_imaflags_iso"
      tablehead="IA624_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for IA624"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia679_flux_aper2"
      tablehead="IA679_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA679 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_fluxerr_aper2"
      tablehead="IA679_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA679 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_flux_aper3"
      tablehead="IA679_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA679 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_fluxerr_aper3"
      tablehead="IA679_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA679 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_mag_aper2"
      tablehead="IA679_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA679 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_magerr_aper2"
      tablehead="IA679_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA679 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_mag_aper3"
      tablehead="IA679_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA679 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_magerr_aper3"
      tablehead="IA679_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA679 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia679_mag_auto"
      tablehead="IA679_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture IA679 magnitude"
      verbLevel="1" />
    <column name="ia679_magerr_auto"
      tablehead="IA679_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture IA679 magnitude"
      verbLevel="1" />
    <column name="ia679_mag_iso"
      tablehead="IA679_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA679 isophotal magnitude"
      verbLevel="1" />
    <column name="ia679_magerr_iso"
      tablehead="IA679_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA679 isophotal magnitude"
      verbLevel="1" />
    <column name="ia679_flags"
      tablehead="IA679_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="IA679 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia679_imaflags_iso"
      tablehead="IA679_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for IA679"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia738_flux_aper2"
      tablehead="IA738_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA738 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_fluxerr_aper2"
      tablehead="IA738_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA738 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_flux_aper3"
      tablehead="IA738_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IA738 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_fluxerr_aper3"
      tablehead="IA738_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IA738 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_mag_aper2"
      tablehead="IA738_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA738 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_magerr_aper2"
      tablehead="IA738_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA738 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_mag_aper3"
      tablehead="IA738_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA738 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_magerr_aper3"
      tablehead="IA738_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA738 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia738_mag_auto"
      tablehead="IA738_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture IA738 magnitude"
      verbLevel="1" />
    <column name="ia738_magerr_auto"
      tablehead="IA738_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture IA738 magnitude"
      verbLevel="1" />
    <column name="ia738_mag_iso"
      tablehead="IA738_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IA738 isophotal magnitude"
      verbLevel="1" />
    <column name="ia738_magerr_iso"
      tablehead="IA738_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IA738 isophotal magnitude"
      verbLevel="1" />
    <column name="ia738_flags"
      tablehead="IA738_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="IA738 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia738_imaflags_iso"
      tablehead="IA738_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for IA738"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia767_flux_aper2"
      tablehead="IA767_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="IA767 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_fluxerr_aper2"
      tablehead="IA767_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on IA767 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_flux_aper3"
      tablehead="IA767_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="IA767 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_fluxerr_aper3"
      tablehead="IA767_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on IA767 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_mag_aper2"
      tablehead="IA767_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IA767 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_magerr_aper2"
      tablehead="IA767_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IA767 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_mag_aper3"
      tablehead="IA767_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IA767 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_magerr_aper3"
      tablehead="IA767_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IA767 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ia767_mag_auto"
      tablehead="IA767_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture IA767 magnitude"
      verbLevel="1" />
    <column name="ia767_magerr_auto"
      tablehead="IA767_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture IA767 magnitude"
      verbLevel="1" />
    <column name="ia767_mag_iso"
      tablehead="IA767_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IA767 isophotal magnitude"
      verbLevel="1" />
    <column name="ia767_magerr_iso"
      tablehead="IA767_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IA767 isophotal magnitude"
      verbLevel="1" />
    <column name="ia767_flags"
      tablehead="IA767_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="IA767 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ia767_imaflags_iso"
      tablehead="IA767_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for IA767"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib427_flux_aper2"
      tablehead="IB427_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IB427 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_fluxerr_aper2"
      tablehead="IB427_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IB427 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_flux_aper3"
      tablehead="IB427_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IB427 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_fluxerr_aper3"
      tablehead="IB427_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IB427 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_mag_aper2"
      tablehead="IB427_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB427 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_magerr_aper2"
      tablehead="IB427_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB427 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_mag_aper3"
      tablehead="IB427_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB427 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_magerr_aper3"
      tablehead="IB427_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB427 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib427_mag_auto"
      tablehead="IB427_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Automatic aperture IB427 magnitude"
      verbLevel="1" />
    <column name="ib427_magerr_auto"
      tablehead="IB427_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on automatic aperture IB427 magnitude"
      verbLevel="1" />
    <column name="ib427_mag_iso"
      tablehead="IB427_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB427 isophotal magnitude"
      verbLevel="1" />
    <column name="ib427_magerr_iso"
      tablehead="IB427_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB427 isophotal magnitude"
      verbLevel="1" />
    <column name="ib427_flags"
      tablehead="IB427_Flags"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="IB427 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib427_imaflags_iso"
      tablehead="IB427_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Flag indicating saturation for IB427"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib464_flux_aper2"
      tablehead="IB464_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IB464 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_fluxerr_aper2"
      tablehead="IB464_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IB464 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_flux_aper3"
      tablehead="IB464_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.B"
      unit="uJy"
      description="IB464 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_fluxerr_aper3"
      tablehead="IB464_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.B"
      unit="uJy"
      description="Uncertainty on IB464 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_mag_aper2"
      tablehead="IB464_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB464 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_magerr_aper2"
      tablehead="IB464_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB464 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_mag_aper3"
      tablehead="IB464_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB464 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_magerr_aper3"
      tablehead="IB464_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB464 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib464_mag_auto"
      tablehead="IB464_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Automatic aperture IB464 magnitude"
      verbLevel="1" />
    <column name="ib464_magerr_auto"
      tablehead="IB464_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on automatic aperture IB464 magnitude"
      verbLevel="1" />
    <column name="ib464_mag_iso"
      tablehead="IB464_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="IB464 isophotal magnitude"
      verbLevel="1" />
    <column name="ib464_magerr_iso"
      tablehead="IB464_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on IB464 isophotal magnitude"
      verbLevel="1" />
    <column name="ib464_flags"
      tablehead="IB464_Flags"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="IB464 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib464_imaflags_iso"
      tablehead="IB464_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Flag indicating saturation for IB464"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib505_flux_aper2"
      tablehead="IB505_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IB505 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_fluxerr_aper2"
      tablehead="IB505_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IB505 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_flux_aper3"
      tablehead="IB505_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IB505 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_fluxerr_aper3"
      tablehead="IB505_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IB505 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_mag_aper2"
      tablehead="IB505_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB505 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_magerr_aper2"
      tablehead="IB505_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB505 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_mag_aper3"
      tablehead="IB505_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB505 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_magerr_aper3"
      tablehead="IB505_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB505 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib505_mag_auto"
      tablehead="IB505_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="Automatic aperture IB505 magnitude"
      verbLevel="1" />
    <column name="ib505_magerr_auto"
      tablehead="IB505_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on automatic aperture IB505 magnitude"
      verbLevel="1" />
    <column name="ib505_mag_iso"
      tablehead="IB505_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB505 isophotal magnitude"
      verbLevel="1" />
    <column name="ib505_magerr_iso"
      tablehead="IB505_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB505 isophotal magnitude"
      verbLevel="1" />
    <column name="ib505_flags"
      tablehead="IB505_Flags"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="IB505 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib505_imaflags_iso"
      tablehead="IB505_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="Flag indicating saturation for IB505"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib574_flux_aper2"
      tablehead="IB574_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IB574 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_fluxerr_aper2"
      tablehead="IB574_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IB574 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_flux_aper3"
      tablehead="IB574_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.V"
      unit="uJy"
      description="IB574 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_fluxerr_aper3"
      tablehead="IB574_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.V"
      unit="uJy"
      description="Uncertainty on IB574 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_mag_aper2"
      tablehead="IB574_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB574 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_magerr_aper2"
      tablehead="IB574_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB574 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_mag_aper3"
      tablehead="IB574_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB574 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_magerr_aper3"
      tablehead="IB574_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB574 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib574_mag_auto"
      tablehead="IB574_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="Automatic aperture IB574 magnitude"
      verbLevel="1" />
    <column name="ib574_magerr_auto"
      tablehead="IB574_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on automatic aperture IB574 magnitude"
      verbLevel="1" />
    <column name="ib574_mag_iso"
      tablehead="IB574_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.V"
      unit="mag"
      description="IB574 isophotal magnitude"
      verbLevel="1" />
    <column name="ib574_magerr_iso"
      tablehead="IB574_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.V"
      unit="mag"
      description="Uncertainty on IB574 isophotal magnitude"
      verbLevel="1" />
    <column name="ib574_flags"
      tablehead="IB574_Flags"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="IB574 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib574_imaflags_iso"
      tablehead="IB574_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.V"
      description="Flag indicating saturation for IB574"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib709_flux_aper2"
      tablehead="IB709_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IB709 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_fluxerr_aper2"
      tablehead="IB709_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IB709 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_flux_aper3"
      tablehead="IB709_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="IB709 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_fluxerr_aper3"
      tablehead="IB709_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on IB709 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_mag_aper2"
      tablehead="IB709_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IB709 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_magerr_aper2"
      tablehead="IB709_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IB709 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_mag_aper3"
      tablehead="IB709_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IB709 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_magerr_aper3"
      tablehead="IB709_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IB709 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib709_mag_auto"
      tablehead="IB709_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture IB709 magnitude"
      verbLevel="1" />
    <column name="ib709_magerr_auto"
      tablehead="IB709_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture IB709 magnitude"
      verbLevel="1" />
    <column name="ib709_mag_iso"
      tablehead="IB709_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="IB709 isophotal magnitude"
      verbLevel="1" />
    <column name="ib709_magerr_iso"
      tablehead="IB709_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on IB709 isophotal magnitude"
      verbLevel="1" />
    <column name="ib709_flags"
      tablehead="IB709_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="IB709 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib709_imaflags_iso"
      tablehead="IB709_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for IB709"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib827_flux_aper2"
      tablehead="IB827_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="IB827 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_fluxerr_aper2"
      tablehead="IB827_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on IB827 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_flux_aper3"
      tablehead="IB827_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="IB827 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_fluxerr_aper3"
      tablehead="IB827_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on IB827 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_mag_aper2"
      tablehead="IB827_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IB827 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_magerr_aper2"
      tablehead="IB827_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IB827 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_mag_aper3"
      tablehead="IB827_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IB827 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_magerr_aper3"
      tablehead="IB827_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IB827 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ib827_mag_auto"
      tablehead="IB827_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture IB827 magnitude"
      verbLevel="1" />
    <column name="ib827_magerr_auto"
      tablehead="IB827_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture IB827 magnitude"
      verbLevel="1" />
    <column name="ib827_mag_iso"
      tablehead="IB827_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="IB827 isophotal magnitude"
      verbLevel="1" />
    <column name="ib827_magerr_iso"
      tablehead="IB827_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on IB827 isophotal magnitude"
      verbLevel="1" />
    <column name="ib827_flags"
      tablehead="IB827_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="IB827 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ib827_imaflags_iso"
      tablehead="IB827_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for IB827"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="nb711_flux_aper2"
      tablehead="NB711_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="NB711 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_fluxerr_aper2"
      tablehead="NB711_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on NB711 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_flux_aper3"
      tablehead="NB711_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.R"
      unit="uJy"
      description="NB711 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_fluxerr_aper3"
      tablehead="NB711_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.R"
      unit="uJy"
      description="Uncertainty on NB711 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_mag_aper2"
      tablehead="NB711_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="NB711 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_magerr_aper2"
      tablehead="NB711_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on NB711 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_mag_aper3"
      tablehead="NB711_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="NB711 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_magerr_aper3"
      tablehead="NB711_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on NB711 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb711_mag_auto"
      tablehead="NB711_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Automatic aperture NB711 magnitude"
      verbLevel="1" />
    <column name="nb711_magerr_auto"
      tablehead="NB711_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on automatic aperture NB711 magnitude"
      verbLevel="1" />
    <column name="nb711_mag_iso"
      tablehead="NB711_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="NB711 isophotal magnitude"
      verbLevel="1" />
    <column name="nb711_magerr_iso"
      tablehead="NB711_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on NB711 isophotal magnitude"
      verbLevel="1" />
    <column name="nb711_flags"
      tablehead="NB711_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="NB711 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="nb711_imaflags_iso"
      tablehead="NB711_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Flag indicating saturation for NB711"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="nb816_flux_aper2"
      tablehead="NB816_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="NB816 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_fluxerr_aper2"
      tablehead="NB816_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on NB816 flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_flux_aper3"
      tablehead="NB816_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="uJy"
      description="NB816 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_fluxerr_aper3"
      tablehead="NB816_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="uJy"
      description="Uncertainty on NB816 flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_mag_aper2"
      tablehead="NB816_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="NB816 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_magerr_aper2"
      tablehead="NB816_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on NB816 AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_mag_aper3"
      tablehead="NB816_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="NB816 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_magerr_aper3"
      tablehead="NB816_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on NB816 AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="nb816_mag_auto"
      tablehead="NB816_Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture NB816 magnitude"
      verbLevel="1" />
    <column name="nb816_magerr_auto"
      tablehead="NB816_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on automatic aperture NB816 magnitude"
      verbLevel="1" />
    <column name="nb816_mag_iso"
      tablehead="NB816_Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="NB816 isophotal magnitude"
      verbLevel="1" />
    <column name="nb816_magerr_iso"
      tablehead="NB816_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on NB816 isophotal magnitude"
      verbLevel="1" />
    <column name="nb816_flags"
      tablehead="NB816_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="NB816 extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="nb816_imaflags_iso"
      tablehead="NB816_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Flag indicating saturation for NB816"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="hw_flux_aper2"
      tablehead="Hw_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.H"
      unit="uJy"
      description="Hw flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_fluxerr_aper2"
      tablehead="Hw_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.H"
      unit="uJy"
      description="Uncertainty on Hw flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_flux_aper3"
      tablehead="Hw_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.H"
      unit="uJy"
      description="Hw flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_fluxerr_aper3"
      tablehead="Hw_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.H"
      unit="uJy"
      description="Uncertainty on Hw flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_mag_aper2"
      tablehead="Hw_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Hw AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_magerr_aper2"
      tablehead="Hw_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on Hw AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_mag_aper3"
      tablehead="Hw_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Hw AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_magerr_aper3"
      tablehead="Hw_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on Hw AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="hw_mag_auto"
      tablehead="Hw_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Automatic aperture Hw magnitude"
      verbLevel="1" />
    <column name="hw_magerr_auto"
      tablehead="Hw_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on automatic aperture Hw magnitude"
      verbLevel="1" />
    <column name="hw_mag_iso"
      tablehead="Hw_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Hw isophotal magnitude"
      verbLevel="1" />
    <column name="hw_magerr_iso"
      tablehead="Hw_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on Hw isophotal magnitude"
      verbLevel="1" />
    <column name="hw_flags"
      tablehead="Hw_Flags"
      type="smallint"
      ucd="meta.code;em.IR.H"
      description="Hw extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="hw_imaflags_iso"
      tablehead="Hw_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.H"
      description="Flag indicating saturation for Hw"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ksw_flux_aper2"
      tablehead="Ksw_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.K"
      unit="uJy"
      description="Ksw flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_fluxerr_aper2"
      tablehead="Ksw_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.K"
      unit="uJy"
      description="Uncertainty on Ksw flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_flux_aper3"
      tablehead="Ksw_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.K"
      unit="uJy"
      description="Ksw flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_fluxerr_aper3"
      tablehead="Ksw_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.K"
      unit="uJy"
      description="Uncertainty on Ksw flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_mag_aper2"
      tablehead="Ksw_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ksw AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_magerr_aper2"
      tablehead="Ksw_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ksw AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_mag_aper3"
      tablehead="Ksw_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ksw AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_magerr_aper3"
      tablehead="Ksw_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ksw AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ksw_mag_auto"
      tablehead="Ksw_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Automatic aperture Ksw magnitude"
      verbLevel="1" />
    <column name="ksw_magerr_auto"
      tablehead="Ksw_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on automatic aperture Ksw magnitude"
      verbLevel="1" />
    <column name="ksw_mag_iso"
      tablehead="Ksw_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ksw isophotal magnitude"
      verbLevel="1" />
    <column name="ksw_magerr_iso"
      tablehead="Ksw_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on Ksw isophotal magnitude"
      verbLevel="1" />
    <column name="ksw_flags"
      tablehead="Ksw_Flags"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Ksw extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ksw_imaflags_iso"
      tablehead="Ksw_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Flag indicating saturation for Ksw"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="yhsc_flux_aper2"
      tablehead="yHSC_Flux_Aper2"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="yHSC flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_fluxerr_aper2"
      tablehead="yHSC_FluxErr_Aper2"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on yHSC flux in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_flux_aper3"
      tablehead="yHSC_Flux_Aper3"
      type="real"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="yHSC flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_fluxerr_aper3"
      tablehead="yHSC_FluxErr_Aper3"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty on yHSC flux in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_mag_aper2"
      tablehead="yHSC_Mag_Aper2"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="yHSC AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_magerr_aper2"
      tablehead="yHSC_MagErr_Aper2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on yHSC AB magnitude in 2 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_mag_aper3"
      tablehead="yHSC_Mag_Aper3"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="yHSC AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_magerr_aper3"
      tablehead="yHSC_MagErr_Aper3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on yHSC AB magnitude in 3 arcsec diameter aperture"
      verbLevel="1" />
    <column name="yhsc_mag_auto"
      tablehead="yHSC_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Automatic aperture yHSC magnitude"
      verbLevel="1" />
    <column name="yhsc_magerr_auto"
      tablehead="yHSC_MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on automatic aperture yHSC magnitude"
      verbLevel="1" />
    <column name="yhsc_mag_iso"
      tablehead="yHSC_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="yHSC isophotal magnitude"
      verbLevel="1" />
    <column name="yhsc_magerr_iso"
      tablehead="yHSC_MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on yHSC isophotal magnitude"
      verbLevel="1" />
    <column name="yhsc_flags"
      tablehead="yHSC_Flags"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="yHSC extraction SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="yhsc_imaflags_iso"
      tablehead="yHSC_ImagFlag_ISO"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="Flag indicating saturation for yHSC"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="splash_1_flux"
      tablehead="SPLASH_1_Flux"
      type="real"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC 3.6μm flux density in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_1_flux_err"
      tablehead="SPLASH_1_Flux_Err"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertanty on splash_1_flux"
      verbLevel="1" />
    <column name="splash_1_mag"
      tablehead="SPLASH_1_Mag"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="IRAC 3.6μm magnitude in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_1_magerr"
      tablehead="SPLASH_1_MagErr"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Uncertanty on splash_1_mag"
      verbLevel="1" />
    <column name="splash_2_flux"
      tablehead="SPLASH_2_Flux"
      type="real"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC 4.5μm flux density in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_2_flux_err"
      tablehead="SPLASH_2_Flux_Err"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertanty on splash_2_flux"
      verbLevel="1" />
    <column name="splash_2_mag"
      tablehead="SPLASH_2_Mag"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="IRAC 4.5μm magnitude in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_2_magerr"
      tablehead="SPLASH_2_MagErr"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertanty on splash_2_mag"
      verbLevel="1" />
    <column name="splash_3_flux"
      tablehead="SPLASH_3_Flux"
      type="real"
      ucd="phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="IRAC 5.8μm flux density in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_3_flux_err"
      tablehead="SPLASH_3_Flux_Err"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="Uncertanty on splash_3_flux"
      verbLevel="1" />
    <column name="splash_3_mag"
      tablehead="SPLASH_3_Mag"
      type="real"
      ucd="phot.mag;em.IR.8-15um"
      unit="mag"
      description="IRAC 5.8μm magnitude in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_3_magerr"
      tablehead="SPLASH_3_MagErr"
      type="real"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="mag"
      description="Uncertanty on splash_3_mag"
      verbLevel="1" />
    <column name="splash_4_flux"
      tablehead="SPLASH_4_Flux"
      type="real"
      ucd="phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="IRAC 8.0μm flux density in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_4_flux_err"
      tablehead="SPLASH_4_Flux_Err"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="Uncertanty on splash_4_flux"
      verbLevel="1" />
    <column name="splash_4_mag"
      tablehead="SPLASH_4_Mag"
      type="real"
      ucd="phot.mag;em.IR.8-15um"
      unit="mag"
      description="IRAC 8.0μm magnitude in 3 arcsec aperture"
      verbLevel="1" />
    <column name="splash_4_magerr"
      tablehead="SPLASH_4_MagErr"
      type="real"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="mag"
      description="Uncertanty on splash_4_mag"
      verbLevel="1" />
    <column name="flux_24"
      tablehead="Flux_24"
      type="real"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS 24µm flux density"
      verbLevel="1" />
    <column name="fluxerr_24"
      tablehead="FluxErr_24"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="Uncertainty on flux_24"
      verbLevel="1" />
    <column name="mag_24"
      tablehead="Mag_24"
      type="real"
      ucd="phot.mag;em.IR.15-30um"
      unit="mag"
      description="MIPS 24µm magnitude"
      verbLevel="1" />
    <column name="magerr_24"
      tablehead="MagErr_24"
      type="real"
      ucd="stat.error;phot.mag;em.IR.15-30um"
      unit="mag"
      description="Uncertainty on mag_24"
      verbLevel="1" />
    <column name="id_a24"
      tablehead="Id_A24"
      type="bigint"
      ucd="meta.id"
      description="Identifier in the 24µm catalogue (Le Floc'h, 2009)."
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="flux_100"
      tablehead="Flux_100"
      type="real"
      ucd="phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="PACS 100µm flux density."
      verbLevel="1" />
    <column name="fluxerr_100"
      tablehead="FluxErr_100"
      type="real"
      ucd="stat.error;phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="Uncertainty on flux_100"
      verbLevel="1" />
    <column name="flux_160"
      tablehead="Flux_160"
      type="real"
      ucd="phot.flux.density;em.mm.1500-3000GHz"
      unit="mJy"
      description="PACS 160µm flux density."
      verbLevel="1" />
    <column name="fluxerr_160"
      tablehead="FluxErr_160"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.1500-3000GHz"
      unit="mJy"
      description="Uncertainty on flux_160"
      verbLevel="1" />
    <column name="flux_250"
      tablehead="Flux_250"
      type="real"
      ucd="phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="SPIRE 250µm flux density"
      verbLevel="1" />
    <column name="fluxerr_250"
      tablehead="FluxErr_250"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="Error (inst.) on flux density at 250µm"
      verbLevel="1" />
    <column name="fluxerrtot_250"
      tablehead="FluxErrTot_250"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="Total error (inst.+conf.) on flux density at 250µm"
      verbLevel="1" />
    <column name="flux_350"
      tablehead="Flux_350"
      type="real"
      ucd="phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="SPIRE 350µm flux density"
      verbLevel="1" />
    <column name="fluxerr_350"
      tablehead="FluxErr_350"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="Error (inst.) on flux density at 350µm"
      verbLevel="1" />
    <column name="fluxerrtot_350"
      tablehead="FluxErrTot_350"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.750-1500GHz"
      unit="mJy"
      description="Total error (inst.+conf.) on flux density at 350µm"
      verbLevel="1" />
    <column name="flux_500"
      tablehead="Flux_500"
      type="real"
      ucd="phot.flux.density;em.mm.400-750GHz"
      unit="mJy"
      description="SPIRE 500µm flux density"
      verbLevel="1" />
    <column name="fluxerr_500"
      tablehead="FluxErr_500"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.400-750GHz"
      unit="mJy"
      description="Error (inst.) on flux density at 500µm"
      verbLevel="1" />
    <column name="fluxerrtot_500"
      tablehead="FluxErrTot_500"
      type="real"
      ucd="stat.error;phot.flux.density;em.mm.400-750GHz"
      unit="mJy"
      description="Total error (inst.+conf.) on flux density at 500µm"
      verbLevel="1" />
    <column name="mag_galex_nuv"
      tablehead="Mag_GALEX_NUV"
      type="real"
      ucd="phot.mag;em.UV.200-300nm"
      unit="mag"
      description="GALEX NUV magnitude"
      verbLevel="1" />
    <column name="magerr_galex_nuv"
      tablehead="MagErr_GALEX_NUV"
      type="real"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      unit="mag"
      description="Uncertainty on mag_galex_nuv"
      verbLevel="1" />
    <column name="mag_galex_fuv"
      tablehead="Mag_GALEX_FUV"
      type="real"
      ucd="phot.mag;em.UV.100-200nm"
      unit="mag"
      description="GALEX FUV magnitude"
      verbLevel="1" />
    <column name="magerr_galex_fuv"
      tablehead="MagErr_GALEX_FUV"
      type="real"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      unit="mag"
      description="Uncertainty on mag_galex_fuv"
      verbLevel="1" />
    <column name="flux_galex_nuv"
      tablehead="Flux_GALEX_NUV"
      type="real"
      ucd="phot.flux.density;em.UV.200-300nm"
      unit="uJy"
      description="GALEX NUV flux"
      verbLevel="1" />
    <column name="fluxerr_galex_nuv"
      tablehead="FluxErr_GALEX_NUV"
      type="real"
      ucd="stat.error;phot.flux.density;em.UV.200-300nm"
      unit="uJy"
      description="Uncertainty on flux_galex_nuv"
      verbLevel="1" />
    <column name="flux_galex_fuv"
      tablehead="Flux_GALEX_FUV"
      type="real"
      ucd="phot.flux.density;em.UV.100-200nm"
      unit="uJy"
      description="GALEX FUV flux"
      verbLevel="1" />
    <column name="fluxerr_galex_fuv"
      tablehead="FluxErr_GALEX_FUV"
      type="real"
      ucd="stat.error;phot.flux.density;em.UV.100-200nm"
      unit="uJy"
      description="Uncertainty on flux_galex_fuv"
      verbLevel="1" />
    <column name="id_chandra2016"
      tablehead="ID_Chandra2016"
      type="text"
      ucd="meta.id"
      description="Name of the source in the Civano+ 2016, Marchesi+ 2016
      Chandra catalogue"
      verbLevel="30" />
    <column name="id_chandra09"
      tablehead="ID_Chandra09"
      type="integer"
      ucd="meta.id"
      description="Name of the source in the Elvis+ 2009 Chandra catalogue"
      verbLevel="30">
        <values nullLiteral="-2147483648"/>
    </column>
    <column name="flux_chandra_0_5_2"
      tablehead="Flux_Chandra_0_5_2"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.soft (Chandra)"
      unit="cm**-2.erg.s**-1"
      description="0.5-2 keV band flux"
      verbLevel="1" />
    <column name="flux_chandra_2_10"
      tablehead="Flux_Chandra_2_10"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.medium (Chandra)"
      unit="cm**-2.erg.s**-1"
      description="2-10 keV band flux"
      verbLevel="1" />
    <column name="flux_chandra_0_5_10"
      tablehead="Flux_Chandra_0_5_10"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.medium (Chandra)"
      unit="cm**-2.erg.s**-1"
      description="0.5-10 keV band flux"
      verbLevel="1" />
    <column name="id_xmm"
      tablehead="ID_XMM"
      type="integer"
      ucd="meta.id"
      description="Name of the source in Cappelluti+ 2009 XMM/Newton catalogue"
      verbLevel="30">
        <values nullLiteral="-2147483648"/>
    </column>
    <column name="flux_xmm_0_5_2"
      tablehead="Flux_XMM_0_5_2"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.soft (XMM)"
      unit="cm**-2.erg.s**-1"
      description="0.5-2 keV band flux"
      verbLevel="1" />
    <column name="flux_xmm_2_10"
      tablehead="Flux_XMM_2_10"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.medium (XMM)"
      unit="cm**-2.erg.s**-1"
      description="2-10 keV band flux"
      verbLevel="1" />
    <column name="flux_xmm_5_10"
      tablehead="Flux_XMM_5_10"
      type="double precision"
      ucd="phot.flux.density;em.X-ray.medium (XMM)"
      unit="cm**-2.erg.s**-1"
      description="5-10 keV band flux"
      verbLevel="1" />
    <column name="hardness_xmm"
      tablehead="Hardness_XMM"
      type="real"
      ucd="phot.flux;arith.ratio"
      description="Hardness ratio (XMM)"
      verbLevel="30" />
    <column name="id_nustar"
      tablehead="ID_Nusta"
      type="text"
      ucd="meta.id"
      description="Name of the source in the Civano+ 2015 Nustar catalogue"
      verbLevel="30" />
    <column name="flux_nustar_3_24"
      tablehead="Flux_NuSTAR_3_24"
      type="real"
      ucd="phot.flux.density;em.X-ray.hard"
      unit="cm**-2.erg.s**-1"
      description="3-24 keV band flux (NuSTAR)"
      verbLevel="1" />
    <column name="fluxerr_nustar_3_24"
      tablehead="FluxErr_NuSTAR_3_24"
      type="real"
      ucd="stat.error;phot.flux.density;em.X-ray.hard"
      unit="cm**-2.erg.s**-1"
      description="Uncertainty on flux_nustar_3_24"
      verbLevel="1" />
    <column name="flux_nustar_3_8"
      tablehead="Flux_NuSTAR_3_8"
      type="real"
      ucd="phot.flux.density;em.X-ray.medium"
      unit="cm**-2.erg.s**-1"
      description="3-8 keV band flux (NuSTAR)"
      verbLevel="1" />
    <column name="fluxerr_nustar_3_8"
      tablehead="FluxErr_NuSTAR_3_8"
      type="real"
      ucd="stat.error;phot.flux.density;em.X-ray.medium"
      unit="cm**-2.erg.s**-1"
      description="Uncertainty on flux_nustar_3_8"
      verbLevel="1" />
    <column name="flux_nustar_8_24"
      tablehead="Flux_NuSTAR_8_24"
      type="real"
      ucd="phot.flux.density;em.X-ray.hard"
      unit="cm**-2.erg.s**-1"
      description="8-24 keV band flux (NuSTAR)"
      verbLevel="1" />
    <column name="fluxerr_nustar_8_24"
      tablehead="FluxErr_NuSTAR_8_24"
      type="real"
      ucd="stat.error;phot.flux.density;em.X-ray.hard"
      unit="cm**-2.erg.s**-1"
      description="Uncertainty on flux_nustar_8_24"
      verbLevel="1" />
    <column name="hardness_nustar"
      tablehead="Hardness_NuSTAR"
      type="real"
      ucd="phot.flux;arith.ratio"
      description="Hardness ratio (NuSTAR)"
      verbLevel="30" />
    <column name="hardnesslow_nustar"
      tablehead="HardnessLow_NuSTAR"
      type="real"
      ucd="phot.flux;arith.ratio;stat.min"
      description="Hardness ratio lower bound (NuSTAR)"
      verbLevel="30" />
    <column name="hardnessup_nustar"
      tablehead="HardnessUp_NuSTAR"
      type="real"
      ucd="phot.flux;arith.ratio;stat.max"
      description="Hardness ratio upper bound (NuSTAR)"
      verbLevel="30" />
    <column name="flag_xrayblend"
      tablehead="Flag_XRayBlend"
      type="smallint"
      ucd="meta.code"
      description="Flag for blended sources"
      verbLevel="1">
        <values nullLiteral="-32768"/>
    </column>
    <column name="flux_814w"
      tablehead="Flux_814W"
      type="real"
      ucd="phot.flux.density;em.opt.I"
      unit="mJy"
      description="Flux in F814W ACS filter"
      verbLevel="1" />
    <column name="fluxerr_814w"
      tablehead="FluxErr_814W"
      type="real"
      ucd="stat.error;phot.flux.density;em.opt.I"
      unit="mJy"
      description="Uncertainty on flux_814w"
      verbLevel="1" />
    <column name="fluxpeak_20cm"
      tablehead="FluxPeak_20cm"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Peak 20cm flux of the radio source"
      verbLevel="1" />
    <column name="fluxpeakerr_20cm"
      tablehead="FluxPeakErr_20cm"
      type="real"
      ucd="stat.error.phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Uncertainty on fluxpeak_20cm"
      verbLevel="1" />
    <column name="fluxint_20cm"
      tablehead="FluxInt_20cm"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Total integrated 20cm flux of the radio source"
      verbLevel="1" />
    <column name="fluxinterr_20cm"
      tablehead="FluxIntErr_20cm"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Uncertainty on fluxint_20cm"
      verbLevel="1" />
    <column name="rmsbkg_20cm"
      tablehead="RMSBkg_20cm"
      type="real"
      ucd="stat.stdev;instr.background;em.radio.750-1500MHz"
      unit="mJy"
      description="Measured local 20cm RMS noise at the source position"
      verbLevel="1" />
    <column name="fluxpeak_90cm"
      tablehead="FluxPeak_90cm"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Peak 90cm flux of the radio source"
      verbLevel="1" />
    <column name="fluxpeakerr_90cm"
      tablehead="FluxPeakErr_90cm"
      type="real"
      ucd="stat.error.phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Uncertainty on fluxpeak_90cm"
      verbLevel="1" />
    <column name="fluxint_90cm"
      tablehead="FluxInt_90cm"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Total integrated 90cm flux of the radio source"
      verbLevel="1" />
    <column name="fluxinterr_90cm"
      tablehead="FluxIntErr_90cm"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Uncertainty on fluxint_90cm"
      verbLevel="1" />
    <column name="rmsbkg_90cm"
      tablehead="RMSBkg_90cm"
      type="real"
      ucd="stat.stdev;instr.background;em.radio.200-400MHz"
      unit="mJy"
      description="Measured local 90cm RMS noise at the source position"
      verbLevel="1" />
    <column name="name_vla90cm"
      tablehead="Name_VLA90cm"
      type="text"
      ucd="meta.id"
      description="Name of the source in the VLA 90cm catalogue"
      verbLevel="30" />
    <column name="name_jvldeep"
      tablehead="Name_JVLDeep"
      type="text"
      ucd="meta.id"
      description="Name in the JVL Deep catalogue"
      verbLevel="30" />
    <column name="name_jvllarge"
      tablehead="Name_JVLLarge"
      type="text"
      ucd="meta.id"
      description="Name in the JVL Large catalogue"
      verbLevel="30" />
    <column name="id2006"
      tablehead="ID2006"
      type="integer"
      ucd="meta.id"
      description="Name of the source in 1st version of the catalogue from
      Capak+ 2007"
      verbLevel="30">
        <values nullLiteral="-32768"/>
    </column>
    <column name="id2008"
      tablehead="ID2008"
      type="integer"
      ucd="meta.id"
      description="Name of the source in 2nd version of the catalogue from
      Capak+ 2007"
      verbLevel="30">
        <values nullLiteral="-32768"/>
    </column>
    <column name="id2013"
      tablehead="ID2013"
      type="integer"
      ucd="meta.id"
      description="Name of the source in the catalogue from Ilbert+ 2013."
      verbLevel="30">
        <values nullLiteral="-32768"/>
    </column>
    <column name="off_set"
      tablehead="Off_set"
      type="double precision"
      ucd="meta.number"
      description="Offset applied to the aperture magnitudes to obtain total
      quantities"
      verbLevel="1" />
    <column name="photoz"
      tablehead="PhotoZ"
      type="real"
      ucd="src.redshift.phot;meta.main"
      description="Photometric redshift: zPDF if galaxy (median of the
      likelihood distribution), 0 is star, 9.99 if Xray source based on Chandra
      (Civano programme), -99 if masked area in flag_capak."
      verbLevel="1" />
    <column name="type"
      tablehead="Type"
      type="smallint"
      ucd="meta.code"
      description="Object type"
      note="2"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="zpdf"
      tablehead="zPDF"
      type="real"
      ucd="src.redshift.phot"
      description="Photo-z measured using the galaxy templates. Median of the
      likelihood distribution."
      verbLevel="30" />
    <column name="zpdf_l68"
      tablehead="zpdf_l68"
      type="real"
      ucd="src.redshift.phot;stat.min"
      description="Lower limit, 68% confidence level (a comparison
      photo-z/spec-z shows that these errors could be underestimated by a factor
      0.1*I-0.8 at I&gt;20 and 1.2 at I&lt;20)"
      verbLevel="30" />
    <column name="zpdf_u68"
      tablehead="zpdf_u68"
      type="real"
      ucd="src.redshift.phot;stat.max"
      description="Upper limit, 68% confidence level (a comparison
      photo-z/spec-z shows that these errors could be underestimated by a factor
      0.1*I-0.8 at I&gt;20 and 1.2 at I&gt;20)"
      verbLevel="30" />
    <column name="zminchi2"
      tablehead="zMinChi2"
      type="real"
      ucd="src.redshift.phot"
      description="Photo-z measured using the galaxy templates. Photo-z defined
      as the minimum of the chi2 distribution."
      verbLevel="30" />
    <column name="chi2_best"
      tablehead="Chi2_Best"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced chi2 [-99 if less than 3 filters] for zminchi2"
      verbLevel="30" />
    <column name="zp_2"
      tablehead="zP_2"
      type="real"
      ucd="src.redshift.phot"
      description="Second photo-z solution if a second peak is detected with
      P&gt;5% in the PDF"
      verbLevel="30" />
    <column name="chi2_2"
      tablehead="Chi2_2"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced chi2 for the second photo-z solution"
      verbLevel="30" />
    <column name="nbfilt"
      tablehead="NbFilt"
      type="smallint"
      ucd="meta.number"
      description="Number of filters used in the fit"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="zq"
      tablehead="zQ"
      type="real"
      ucd="src.redshift.phot"
      description="Photoz for the AGN library"
      verbLevel="30" />
    <column name="chiq"
      tablehead="ChiQ"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced Chi2 for the AGN library"
      verbLevel="30" />
    <column name="modq"
      tablehead="modQ"
      type="smallint"
      ucd="meta.id"
      description="Best fit template in the AGN library"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="mods"
      tablehead="modS"
      type="smallint"
      ucd="meta.id"
      description="Best fit template in the star library"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="chis"
      tablehead="chiS"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced Chi2 for the star library"
      verbLevel="30" />
    <column name="model"
      tablehead="Model"
      type="smallint"
      ucd="meta.id"
      description="Best fit BC03 model at zPDF"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="age"
      tablehead="Age"
      type="double precision"
      ucd="time.age;meta.modelled"
      unit="Gyr"
      description="LePhare derived age"
      verbLevel="1" />
    <column name="extinction"
      tablehead="Extinction"
      type="real"
      ucd="phys.absorption.coeff;meta.modelled"
      description="LePhare derived extinction"
      verbLevel="1" />
    <column name="mnuv"
      tablehead="MNUV"
      type="real"
      ucd="phot.mag;em.UV.200-300nm;meta.modelled"
      unit="mag"
      description="LePhare derived GALEX NUV absolute magnitude"
      verbLevel="30" />
    <column name="mu"
      tablehead="Mu"
      type="real"
      ucd="phot.mag;em.opt.U;meta.modelled"
      unit="mag"
      description="LePhare derived CFHT u* absolute magnitude"
      verbLevel="30" />
    <column name="mb"
      tablehead="MB"
      type="real"
      ucd="phot.mag;em.opt.B;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru B absolute magnitude"
      verbLevel="30" />
    <column name="mv"
      tablehead="MV"
      type="real"
      ucd="phot.mag;em.opt.V;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru V absolute magnitude"
      verbLevel="30" />
    <column name="mr"
      tablehead="Mr"
      type="real"
      ucd="phot.mag;em.opt.R;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru r+ absolute magnitude"
      verbLevel="30" />
    <column name="mi"
      tablehead="Mi"
      type="real"
      ucd="phot.mag;em.opt.I;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru i+ absolute magnitude"
      verbLevel="30" />
    <column name="mz"
      tablehead="Mz"
      type="real"
      ucd="phot.mag;em.opt.I;meta.modelled"
      unit="mag"
      description="LePhare derived Subaru z (new filter) absolute magnitude"
      verbLevel="30" />
    <column name="my"
      tablehead="MY"
      type="real"
      ucd="phot.mag;em.IR.J;meta.modelled"
      unit="mag"
      description="LePhare derived VISTA Y absolute magnitude"
      verbLevel="30" />
    <column name="mj"
      tablehead="MJ"
      type="real"
      ucd="phot.mag;em.IR.J;meta.modelled"
      unit="mag"
      description="LePhare derived VISTA J absolute magnitude"
      verbLevel="30" />
    <column name="mh"
      tablehead="MH"
      type="real"
      ucd="phot.mag;em.IR.H;meta.modelled"
      unit="mag"
      description="LePhare derived VISTA H absolute magnitude"
      verbLevel="30" />
    <column name="mk"
      tablehead="MK"
      type="real"
      ucd="phot.mag;em.IR.K;meta.modelled"
      unit="mag"
      description="LePhare derived VISTA K absolute magnitude"
      verbLevel="30" />
    <column name="mnuv_mr"
      tablehead="MNUV_Mr"
      type="real"
      ucd="phot.color;meta.modelled"
      unit="mag"
      description="NUV-r corrected from dust extinction"
      verbLevel="30" />
    <column name="class"
      tablehead="Class"
      type="smallint"
      ucd="src.class.color;meta.modelled"
      description="0:quiescent/1:star-forming based on NUV-R/R-J"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="mass_med"
      tablehead="Mass_Med"
      type="double precision"
      ucd="phys.mass;meta.modelled"
      unit="log(Msun)"
      description="Log stellar mass from BC03 best-fit template, median of the
      PDF"
      verbLevel="1" />
    <column name="mass_med_min68"
      tablehead="Mass_Med_min68"
      type="double precision"
      ucd="phys.mass;meta.modelled;stat.min"
      unit="log(Msun)"
      description="Log stellar mass from BC03 best-fit template, lower limit,
      68% confidence level"
      verbLevel="30" />
    <column name="mass_med_max68"
      tablehead="Mass_Med_max68"
      type="double precision"
      ucd="phys.mass;meta.modelled;stat.max"
      unit="log(Msun)"
      description="Log stellar mass from BC03 best-fit template, upper limit,
      68% confidence level"
      verbLevel="30" />
    <column name="mass_best"
      tablehead="Mass_Best"
      type="double precision"
      ucd="phys.mass;meta.modelled"
      unit="log(Msun)"
      description="Log stellar mass from BC03 best-fit template, taken at the
      minimum chi2"
      verbLevel="30" />
    <column name="sfr_med"
      tablehead="SFR_Med"
      type="double precision"
      ucd="phys.SFR;meta.modelled"
      unit="log(Msun/yr)"
      description="Log SFR from BC03 best-fit template, median of the PDF"
      note="3"
      verbLevel="1" />
    <column name="sfr_med_min68"
      tablehead="SFR_Med_min68"
      type="double precision"
      ucd="phys.SFR;meta.modelled;stat.min"
      unit="log(Msun/yr)"
      description="Log SFR from BC03 best-fit template, lower limit, 68%
      confidence level"
      note="3"
      verbLevel="30" />
    <column name="sfr_med_max68"
      tablehead="SFR_Med_max68"
      type="double precision"
      ucd="phys.SFR;meta.modelled;stat.max"
      unit="log(Msun/yr)"
      description="Log SFR from BC03 best-fit template, upper limit, 68%
      confidence level"
      note="3"
      verbLevel="30" />
    <column name="sfr_best"
      tablehead="SFR_Best"
      type="double precision"
      ucd="phys.SFR;meta.modelled"
      unit="log(Msun/yr)"
      description="Log SFR from BC03 best-fit template, taken at minimum chi2"
      note="3"
      verbLevel="30" />
    <column name="ssfr_med"
      tablehead="sSFR_Med"
      type="double precision"
      ucd="phys.SFR;meta.modelled"
      unit="log(yr**-1)"
      description="Log sSFR from BC03 best-fit template, median of the PDF"
      note="3"
      verbLevel="1" />
    <column name="ssfr_med_min68"
      tablehead="sSFR_Med_min68"
      type="double precision"
      ucd="phys.SFR;meta.modelled;stat.min"
      unit="log(yr**-1)"
      description="Log sSFR from BC03 best-fit template, lower limit, 68%
      confidence level"
      note="3"
      verbLevel="30" />
    <column name="ssfr_med_max68"
      tablehead="sSFR_Med_max68"
      type="double precision"
      ucd="phys.SFR;meta.modelled;stat.max"
      unit="log(yr**-1)"
      description="Log sSFR from BC03 best-fit template, upper limit, 68%
      confidence level"
      note="3"
      verbLevel="30" />
    <column name="ssfr_best"
      tablehead="sSFR_Best"
      type="double precision"
      ucd="phys.SFR;meta.modelled"
      unit="log(yr**-1)"
      description="Log sSFR from BC03 best-fit template, taken at minimum chi2"
      note="3"
      verbLevel="30" />
    <column name="l_nu"
      tablehead="L_NU"
      type="double precision"
      ucd="phot.mag;em.UV.200-300nm:meta.modelled"
      unit="log(erg.s**-1.Hz**-1)"
      description="log(luminosity in erg/s/Hz) in NUV filter"
      verbLevel="30" />
    <column name="l_r"
      tablehead="L_r"
      type="double precision"
      ucd="phot.mag;em.opt.R:meta.modelled"
      unit="log(erg.s**-1.Hz**-1)"
      description="log(luminosity in erg/s/Hz) in r filter"
      verbLevel="30" />
    <column name="l_k"
      tablehead="L_K"
      type="double precision"
      ucd="phot.mag;em.IR.K:meta.modelled"
      unit="log(erg.s**-1.Hz**-1)"
      description="log(luminosity in erg/s/Hz) in K filter"
      verbLevel="30" />

    <meta name="note" tag="1"><![CDATA[
      SExtractor flags:

      === ===================================================================
        1 The object has neighbours, bright and close enough to significantly
          bias the MAG_AUTO photometry, or bad pixels (more than 10% of the
          integrated area affected),
        2 The object was originally blended with another one,
        4 At least one pixel of the object is saturated (or very close to),
        8 The object is truncated (too close to an image boundary),
       16 Object's aperture data are incomplete or corrupted,
       32 Object's isophotal data are incomplete or corrupted,
       64 A memory overflow occurred during deblending,
      128 A memory overflow occurred during extraction.
      === ===================================================================

      ]]></meta>

    <meta name="note" tag="2"><![CDATA[
      Object type, given even in masked regions:

      == =======================================================================
       0 Galaxy
       1 Star (mainly based on the chi2, only for objects detected in NIR or
         3.6)
       2 X-ray source
      -9 If failure in the fit (most of these objects have less than one band)
      == =======================================================================

      ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      *WARNING* Computed without IR, large uncertainty with such methods.
      ]]></meta>

  </table>
  <data id="import_main">
    <sources>data/cosmos2015_corrected.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          alpha_j2000:ALPHA_J2000,
          delta_j2000:DELTA_J2000,
          number:NUMBER,
          x_image:X_IMAGE,
          y_image:Y_IMAGE,
          errx2_image:ERRX2_IMAGE,
          erry2_image:ERRY2_IMAGE,
          errxy_image:ERRXY_IMAGE,
          flag_hjmcc:FLAG_HJMCC,
          flux_radius:FLUX_RADIUS,
          ebv:EBV,
          flag_peter:FLAG_PETER,
          flag_cosmos:FLAG_COSMOS,
          flag_deep:FLAG_DEEP,
          ks_flux_aper2:Ks_FLUX_APER2,
          ks_fluxerr_aper2:Ks_FLUXERR_APER2,
          ks_flux_aper3:Ks_FLUX_APER3,
          ks_fluxerr_aper3:Ks_FLUXERR_APER3,
          ks_mag_aper2:Ks_MAG_APER2,
          ks_magerr_aper2:Ks_MAGERR_APER2,
          ks_mag_aper3:Ks_MAG_APER3,
          ks_magerr_aper3:Ks_MAGERR_APER3,
          ks_mag_auto:Ks_MAG_AUTO,
          ks_magerr_auto:Ks_MAGERR_AUTO,
          ks_mag_iso:Ks_MAG_ISO,
          ks_magerr_iso:Ks_MAGERR_ISO,
          ks_flags:Ks_FLAGS,
          ks_imaflags_iso:Ks_IMAFLAGS_ISO,
          y_flux_aper2:Y_FLUX_APER2,
          y_fluxerr_aper2:Y_FLUXERR_APER2,
          y_flux_aper3:Y_FLUX_APER3,
          y_fluxerr_aper3:Y_FLUXERR_APER3,
          y_mag_aper2:Y_MAG_APER2,
          y_magerr_aper2:Y_MAGERR_APER2,
          y_mag_aper3:Y_MAG_APER3,
          y_magerr_aper3:Y_MAGERR_APER3,
          y_mag_auto:Y_MAG_AUTO,
          y_magerr_auto:Y_MAGERR_AUTO,
          y_mag_iso:Y_MAG_ISO,
          y_magerr_iso:Y_MAGERR_ISO,
          y_flags:Y_FLAGS,
          y_imaflags_iso:Y_IMAFLAGS_ISO,
          h_flux_aper2:H_FLUX_APER2,
          h_fluxerr_aper2:H_FLUXERR_APER2,
          h_flux_aper3:H_FLUX_APER3,
          h_fluxerr_aper3:H_FLUXERR_APER3,
          h_mag_aper2:H_MAG_APER2,
          h_magerr_aper2:H_MAGERR_APER2,
          h_mag_aper3:H_MAG_APER3,
          h_magerr_aper3:H_MAGERR_APER3,
          h_mag_auto:H_MAG_AUTO,
          h_magerr_auto:H_MAGERR_AUTO,
          h_mag_iso:H_MAG_ISO,
          h_magerr_iso:H_MAGERR_ISO,
          h_flags:H_FLAGS,
          h_imaflags_iso:H_IMAFLAGS_ISO,
          j_flux_aper2:J_FLUX_APER2,
          j_fluxerr_aper2:J_FLUXERR_APER2,
          j_flux_aper3:J_FLUX_APER3,
          j_fluxerr_aper3:J_FLUXERR_APER3,
          j_mag_aper2:J_MAG_APER2,
          j_magerr_aper2:J_MAGERR_APER2,
          j_mag_aper3:J_MAG_APER3,
          j_magerr_aper3:J_MAGERR_APER3,
          j_mag_auto:J_MAG_AUTO,
          j_magerr_auto:J_MAGERR_AUTO,
          j_mag_iso:J_MAG_ISO,
          j_magerr_iso:J_MAGERR_ISO,
          j_flags:J_FLAGS,
          j_imaflags_iso:J_IMAFLAGS_ISO,
          b_flux_aper2:B_FLUX_APER2,
          b_fluxerr_aper2:B_FLUXERR_APER2,
          b_flux_aper3:B_FLUX_APER3,
          b_fluxerr_aper3:B_FLUXERR_APER3,
          b_mag_aper2:B_MAG_APER2,
          b_magerr_aper2:B_MAGERR_APER2,
          b_mag_aper3:B_MAG_APER3,
          b_magerr_aper3:B_MAGERR_APER3,
          b_mag_auto:B_MAG_AUTO,
          b_magerr_auto:B_MAGERR_AUTO,
          b_mag_iso:B_MAG_ISO,
          b_magerr_iso:B_MAGERR_ISO,
          b_flags:B_FLAGS,
          b_imaflags_iso:B_IMAFLAGS_ISO,
          v_flux_aper2:V_FLUX_APER2,
          v_fluxerr_aper2:V_FLUXERR_APER2,
          v_flux_aper3:V_FLUX_APER3,
          v_fluxerr_aper3:V_FLUXERR_APER3,
          v_mag_aper2:V_MAG_APER2,
          v_magerr_aper2:V_MAGERR_APER2,
          v_mag_aper3:V_MAG_APER3,
          v_magerr_aper3:V_MAGERR_APER3,
          v_mag_auto:V_MAG_AUTO,
          v_magerr_auto:V_MAGERR_AUTO,
          v_mag_iso:V_MAG_ISO,
          v_magerr_iso:V_MAGERR_ISO,
          v_flags:V_FLAGS,
          v_imaflags_iso:V_IMAFLAGS_ISO,
          ip_flux_aper2:ip_FLUX_APER2,
          ip_fluxerr_aper2:ip_FLUXERR_APER2,
          ip_flux_aper3:ip_FLUX_APER3,
          ip_fluxerr_aper3:ip_FLUXERR_APER3,
          ip_mag_aper2:ip_MAG_APER2,
          ip_magerr_aper2:ip_MAGERR_APER2,
          ip_mag_aper3:ip_MAG_APER3,
          ip_magerr_aper3:ip_MAGERR_APER3,
          ip_mag_auto:ip_MAG_AUTO,
          ip_magerr_auto:ip_MAGERR_AUTO,
          ip_mag_iso:ip_MAG_ISO,
          ip_magerr_iso:ip_MAGERR_ISO,
          ip_flags:ip_FLAGS,
          ip_imaflags_iso:ip_IMAFLAGS_ISO,
          r_flux_aper2:r_FLUX_APER2,
          r_fluxerr_aper2:r_FLUXERR_APER2,
          r_flux_aper3:r_FLUX_APER3,
          r_fluxerr_aper3:r_FLUXERR_APER3,
          r_mag_aper2:r_MAG_APER2,
          r_magerr_aper2:r_MAGERR_APER2,
          r_mag_aper3:r_MAG_APER3,
          r_magerr_aper3:r_MAGERR_APER3,
          r_mag_auto:r_MAG_AUTO,
          r_magerr_auto:r_MAGERR_AUTO,
          r_mag_iso:r_MAG_ISO,
          r_magerr_iso:r_MAGERR_ISO,
          r_flags:r_FLAGS,
          r_imaflags_iso:r_IMAFLAGS_ISO,
          u_flux_aper2:u_FLUX_APER2,
          u_fluxerr_aper2:u_FLUXERR_APER2,
          u_flux_aper3:u_FLUX_APER3,
          u_fluxerr_aper3:u_FLUXERR_APER3,
          u_mag_aper2:u_MAG_APER2,
          u_magerr_aper2:u_MAGERR_APER2,
          u_mag_aper3:u_MAG_APER3,
          u_magerr_aper3:u_MAGERR_APER3,
          u_mag_auto:u_MAG_AUTO,
          u_magerr_auto:u_MAGERR_AUTO,
          u_mag_iso:u_MAG_ISO,
          u_magerr_iso:u_MAGERR_ISO,
          u_flags:u_FLAGS,
          u_imaflags_iso:u_IMAFLAGS_ISO,
          zp_flux_aper2:zp_FLUX_APER2,
          zp_fluxerr_aper2:zp_FLUXERR_APER2,
          zp_flux_aper3:zp_FLUX_APER3,
          zp_fluxerr_aper3:zp_FLUXERR_APER3,
          zp_mag_aper2:zp_MAG_APER2,
          zp_magerr_aper2:zp_MAGERR_APER2,
          zp_mag_aper3:zp_MAG_APER3,
          zp_magerr_aper3:zp_MAGERR_APER3,
          zp_mag_auto:zp_MAG_AUTO,
          zp_magerr_auto:zp_MAGERR_AUTO,
          zp_mag_iso:zp_MAG_ISO,
          zp_magerr_iso:zp_MAGERR_ISO,
          zp_flags:zp_FLAGS,
          zp_imaflags_iso:zp_IMAFLAGS_ISO,
          zpp_flux_aper2:zpp_FLUX_APER2,
          zpp_fluxerr_aper2:zpp_FLUXERR_APER2,
          zpp_flux_aper3:zpp_FLUX_APER3,
          zpp_fluxerr_aper3:zpp_FLUXERR_APER3,
          zpp_mag_aper2:zpp_MAG_APER2,
          zpp_magerr_aper2:zpp_MAGERR_APER2,
          zpp_mag_aper3:zpp_MAG_APER3,
          zpp_magerr_aper3:zpp_MAGERR_APER3,
          zpp_mag_auto:zpp_MAG_AUTO,
          zpp_magerr_auto:zpp_MAGERR_AUTO,
          zpp_mag_iso:zpp_MAG_ISO,
          zpp_magerr_iso:zpp_MAGERR_ISO,
          zpp_flags:zpp_FLAGS,
          zpp_imaflags_iso:zpp_IMAFLAGS_ISO,
          ia484_flux_aper2:IA484_FLUX_APER2,
          ia484_fluxerr_aper2:IA484_FLUXERR_APER2,
          ia484_flux_aper3:IA484_FLUX_APER3,
          ia484_fluxerr_aper3:IA484_FLUXERR_APER3,
          ia484_mag_aper2:IA484_MAG_APER2,
          ia484_magerr_aper2:IA484_MAGERR_APER2,
          ia484_mag_aper3:IA484_MAG_APER3,
          ia484_magerr_aper3:IA484_MAGERR_APER3,
          ia484_mag_auto:IA484_MAG_AUTO,
          ia484_magerr_auto:IA484_MAGERR_AUTO,
          ia484_mag_iso:IA484_MAG_ISO,
          ia484_magerr_iso:IA484_MAGERR_ISO,
          ia484_flags:IA484_FLAGS,
          ia484_imaflags_iso:IA484_IMAFLAGS_ISO,
          ia527_flux_aper2:IA527_FLUX_APER2,
          ia527_fluxerr_aper2:IA527_FLUXERR_APER2,
          ia527_flux_aper3:IA527_FLUX_APER3,
          ia527_fluxerr_aper3:IA527_FLUXERR_APER3,
          ia527_mag_aper2:IA527_MAG_APER2,
          ia527_magerr_aper2:IA527_MAGERR_APER2,
          ia527_mag_aper3:IA527_MAG_APER3,
          ia527_magerr_aper3:IA527_MAGERR_APER3,
          ia527_mag_auto:IA527_MAG_AUTO,
          ia527_magerr_auto:IA527_MAGERR_AUTO,
          ia527_mag_iso:IA527_MAG_ISO,
          ia527_magerr_iso:IA527_MAGERR_ISO,
          ia527_flags:IA527_FLAGS,
          ia527_imaflags_iso:IA527_IMAFLAGS_ISO,
          ia624_flux_aper2:IA624_FLUX_APER2,
          ia624_fluxerr_aper2:IA624_FLUXERR_APER2,
          ia624_flux_aper3:IA624_FLUX_APER3,
          ia624_fluxerr_aper3:IA624_FLUXERR_APER3,
          ia624_mag_aper2:IA624_MAG_APER2,
          ia624_magerr_aper2:IA624_MAGERR_APER2,
          ia624_mag_aper3:IA624_MAG_APER3,
          ia624_magerr_aper3:IA624_MAGERR_APER3,
          ia624_mag_auto:IA624_MAG_AUTO,
          ia624_magerr_auto:IA624_MAGERR_AUTO,
          ia624_mag_iso:IA624_MAG_ISO,
          ia624_magerr_iso:IA624_MAGERR_ISO,
          ia624_flags:IA624_FLAGS,
          ia624_imaflags_iso:IA624_IMAFLAGS_ISO,
          ia679_flux_aper2:IA679_FLUX_APER2,
          ia679_fluxerr_aper2:IA679_FLUXERR_APER2,
          ia679_flux_aper3:IA679_FLUX_APER3,
          ia679_fluxerr_aper3:IA679_FLUXERR_APER3,
          ia679_mag_aper2:IA679_MAG_APER2,
          ia679_magerr_aper2:IA679_MAGERR_APER2,
          ia679_mag_aper3:IA679_MAG_APER3,
          ia679_magerr_aper3:IA679_MAGERR_APER3,
          ia679_mag_auto:IA679_MAG_AUTO,
          ia679_magerr_auto:IA679_MAGERR_AUTO,
          ia679_mag_iso:IA679_MAG_ISO,
          ia679_magerr_iso:IA679_MAGERR_ISO,
          ia679_flags:IA679_FLAGS,
          ia679_imaflags_iso:IA679_IMAFLAGS_ISO,
          ia738_flux_aper2:IA738_FLUX_APER2,
          ia738_fluxerr_aper2:IA738_FLUXERR_APER2,
          ia738_flux_aper3:IA738_FLUX_APER3,
          ia738_fluxerr_aper3:IA738_FLUXERR_APER3,
          ia738_mag_aper2:IA738_MAG_APER2,
          ia738_magerr_aper2:IA738_MAGERR_APER2,
          ia738_mag_aper3:IA738_MAG_APER3,
          ia738_magerr_aper3:IA738_MAGERR_APER3,
          ia738_mag_auto:IA738_MAG_AUTO,
          ia738_magerr_auto:IA738_MAGERR_AUTO,
          ia738_mag_iso:IA738_MAG_ISO,
          ia738_magerr_iso:IA738_MAGERR_ISO,
          ia738_flags:IA738_FLAGS,
          ia738_imaflags_iso:IA738_IMAFLAGS_ISO,
          ia767_flux_aper2:IA767_FLUX_APER2,
          ia767_fluxerr_aper2:IA767_FLUXERR_APER2,
          ia767_flux_aper3:IA767_FLUX_APER3,
          ia767_fluxerr_aper3:IA767_FLUXERR_APER3,
          ia767_mag_aper2:IA767_MAG_APER2,
          ia767_magerr_aper2:IA767_MAGERR_APER2,
          ia767_mag_aper3:IA767_MAG_APER3,
          ia767_magerr_aper3:IA767_MAGERR_APER3,
          ia767_mag_auto:IA767_MAG_AUTO,
          ia767_magerr_auto:IA767_MAGERR_AUTO,
          ia767_mag_iso:IA767_MAG_ISO,
          ia767_magerr_iso:IA767_MAGERR_ISO,
          ia767_flags:IA767_FLAGS,
          ia767_imaflags_iso:IA767_IMAFLAGS_ISO,
          ib427_flux_aper2:IB427_FLUX_APER2,
          ib427_fluxerr_aper2:IB427_FLUXERR_APER2,
          ib427_flux_aper3:IB427_FLUX_APER3,
          ib427_fluxerr_aper3:IB427_FLUXERR_APER3,
          ib427_mag_aper2:IB427_MAG_APER2,
          ib427_magerr_aper2:IB427_MAGERR_APER2,
          ib427_mag_aper3:IB427_MAG_APER3,
          ib427_magerr_aper3:IB427_MAGERR_APER3,
          ib427_mag_auto:IB427_MAG_AUTO,
          ib427_magerr_auto:IB427_MAGERR_AUTO,
          ib427_mag_iso:IB427_MAG_ISO,
          ib427_magerr_iso:IB427_MAGERR_ISO,
          ib427_flags:IB427_FLAGS,
          ib427_imaflags_iso:IB427_IMAFLAGS_ISO,
          ib464_flux_aper2:IB464_FLUX_APER2,
          ib464_fluxerr_aper2:IB464_FLUXERR_APER2,
          ib464_flux_aper3:IB464_FLUX_APER3,
          ib464_fluxerr_aper3:IB464_FLUXERR_APER3,
          ib464_mag_aper2:IB464_MAG_APER2,
          ib464_magerr_aper2:IB464_MAGERR_APER2,
          ib464_mag_aper3:IB464_MAG_APER3,
          ib464_magerr_aper3:IB464_MAGERR_APER3,
          ib464_mag_auto:IB464_MAG_AUTO,
          ib464_magerr_auto:IB464_MAGERR_AUTO,
          ib464_mag_iso:IB464_MAG_ISO,
          ib464_magerr_iso:IB464_MAGERR_ISO,
          ib464_flags:IB464_FLAGS,
          ib464_imaflags_iso:IB464_IMAFLAGS_ISO,
          ib505_flux_aper2:IB505_FLUX_APER2,
          ib505_fluxerr_aper2:IB505_FLUXERR_APER2,
          ib505_flux_aper3:IB505_FLUX_APER3,
          ib505_fluxerr_aper3:IB505_FLUXERR_APER3,
          ib505_mag_aper2:IB505_MAG_APER2,
          ib505_magerr_aper2:IB505_MAGERR_APER2,
          ib505_mag_aper3:IB505_MAG_APER3,
          ib505_magerr_aper3:IB505_MAGERR_APER3,
          ib505_mag_auto:IB505_MAG_AUTO,
          ib505_magerr_auto:IB505_MAGERR_AUTO,
          ib505_mag_iso:IB505_MAG_ISO,
          ib505_magerr_iso:IB505_MAGERR_ISO,
          ib505_flags:IB505_FLAGS,
          ib505_imaflags_iso:IB505_IMAFLAGS_ISO,
          ib574_flux_aper2:IB574_FLUX_APER2,
          ib574_fluxerr_aper2:IB574_FLUXERR_APER2,
          ib574_flux_aper3:IB574_FLUX_APER3,
          ib574_fluxerr_aper3:IB574_FLUXERR_APER3,
          ib574_mag_aper2:IB574_MAG_APER2,
          ib574_magerr_aper2:IB574_MAGERR_APER2,
          ib574_mag_aper3:IB574_MAG_APER3,
          ib574_magerr_aper3:IB574_MAGERR_APER3,
          ib574_mag_auto:IB574_MAG_AUTO,
          ib574_magerr_auto:IB574_MAGERR_AUTO,
          ib574_mag_iso:IB574_MAG_ISO,
          ib574_magerr_iso:IB574_MAGERR_ISO,
          ib574_flags:IB574_FLAGS,
          ib574_imaflags_iso:IB574_IMAFLAGS_ISO,
          ib709_flux_aper2:IB709_FLUX_APER2,
          ib709_fluxerr_aper2:IB709_FLUXERR_APER2,
          ib709_flux_aper3:IB709_FLUX_APER3,
          ib709_fluxerr_aper3:IB709_FLUXERR_APER3,
          ib709_mag_aper2:IB709_MAG_APER2,
          ib709_magerr_aper2:IB709_MAGERR_APER2,
          ib709_mag_aper3:IB709_MAG_APER3,
          ib709_magerr_aper3:IB709_MAGERR_APER3,
          ib709_mag_auto:IB709_MAG_AUTO,
          ib709_magerr_auto:IB709_MAGERR_AUTO,
          ib709_mag_iso:IB709_MAG_ISO,
          ib709_magerr_iso:IB709_MAGERR_ISO,
          ib709_flags:IB709_FLAGS,
          ib709_imaflags_iso:IB709_IMAFLAGS_ISO,
          ib827_flux_aper2:IB827_FLUX_APER2,
          ib827_fluxerr_aper2:IB827_FLUXERR_APER2,
          ib827_flux_aper3:IB827_FLUX_APER3,
          ib827_fluxerr_aper3:IB827_FLUXERR_APER3,
          ib827_mag_aper2:IB827_MAG_APER2,
          ib827_magerr_aper2:IB827_MAGERR_APER2,
          ib827_mag_aper3:IB827_MAG_APER3,
          ib827_magerr_aper3:IB827_MAGERR_APER3,
          ib827_mag_auto:IB827_MAG_AUTO,
          ib827_magerr_auto:IB827_MAGERR_AUTO,
          ib827_mag_iso:IB827_MAG_ISO,
          ib827_magerr_iso:IB827_MAGERR_ISO,
          ib827_flags:IB827_FLAGS,
          ib827_imaflags_iso:IB827_IMAFLAGS_ISO,
          nb711_flux_aper2:NB711_FLUX_APER2,
          nb711_fluxerr_aper2:NB711_FLUXERR_APER2,
          nb711_flux_aper3:NB711_FLUX_APER3,
          nb711_fluxerr_aper3:NB711_FLUXERR_APER3,
          nb711_mag_aper2:NB711_MAG_APER2,
          nb711_magerr_aper2:NB711_MAGERR_APER2,
          nb711_mag_aper3:NB711_MAG_APER3,
          nb711_magerr_aper3:NB711_MAGERR_APER3,
          nb711_mag_auto:NB711_MAG_AUTO,
          nb711_magerr_auto:NB711_MAGERR_AUTO,
          nb711_mag_iso:NB711_MAG_ISO,
          nb711_magerr_iso:NB711_MAGERR_ISO,
          nb711_flags:NB711_FLAGS,
          nb711_imaflags_iso:NB711_IMAFLAGS_ISO,
          nb816_flux_aper2:NB816_FLUX_APER2,
          nb816_fluxerr_aper2:NB816_FLUXERR_APER2,
          nb816_flux_aper3:NB816_FLUX_APER3,
          nb816_fluxerr_aper3:NB816_FLUXERR_APER3,
          nb816_mag_aper2:NB816_MAG_APER2,
          nb816_magerr_aper2:NB816_MAGERR_APER2,
          nb816_mag_aper3:NB816_MAG_APER3,
          nb816_magerr_aper3:NB816_MAGERR_APER3,
          nb816_mag_auto:NB816_MAG_AUTO,
          nb816_magerr_auto:NB816_MAGERR_AUTO,
          nb816_mag_iso:NB816_MAG_ISO,
          nb816_magerr_iso:NB816_MAGERR_ISO,
          nb816_flags:NB816_FLAGS,
          nb816_imaflags_iso:NB816_IMAFLAGS_ISO,
          splash_1_flux:SPLASH_1_FLUX,
          splash_1_flux_err:SPLASH_1_FLUX_ERR,
          splash_1_mag:SPLASH_1_MAG,
          splash_1_magerr:SPLASH_1_MAGERR,
          splash_2_flux:SPLASH_2_FLUX,
          splash_2_flux_err:SPLASH_2_FLUX_ERR,
          splash_2_mag:SPLASH_2_MAG,
          splash_2_magerr:SPLASH_2_MAGERR,
          splash_3_flux:SPLASH_3_FLUX,
          splash_3_flux_err:SPLASH_3_FLUX_ERR,
          splash_3_mag:SPLASH_3_MAG,
          splash_3_magerr:SPLASH_3_MAGERR,
          splash_4_flux:SPLASH_4_FLUX,
          splash_4_flux_err:SPLASH_4_FLUX_ERR,
          splash_4_mag:SPLASH_4_MAG,
          splash_4_magerr:SPLASH_4_MAGERR,
          hw_flux_aper2:Hw_FLUX_APER2,
          hw_fluxerr_aper2:Hw_FLUXERR_APER2,
          hw_flux_aper3:Hw_FLUX_APER3,
          hw_fluxerr_aper3:Hw_FLUXERR_APER3,
          hw_mag_aper2:Hw_MAG_APER2,
          hw_magerr_aper2:Hw_MAGERR_APER2,
          hw_mag_aper3:Hw_MAG_APER3,
          hw_magerr_aper3:Hw_MAGERR_APER3,
          hw_mag_auto:Hw_MAG_AUTO,
          hw_magerr_auto:Hw_MAGERR_AUTO,
          hw_mag_iso:Hw_MAG_ISO,
          hw_magerr_iso:Hw_MAGERR_ISO,
          hw_flags:Hw_FLAGS,
          hw_imaflags_iso:Hw_IMAFLAGS_ISO,
          ksw_flux_aper2:Ksw_FLUX_APER2,
          ksw_fluxerr_aper2:Ksw_FLUXERR_APER2,
          ksw_flux_aper3:Ksw_FLUX_APER3,
          ksw_fluxerr_aper3:Ksw_FLUXERR_APER3,
          ksw_mag_aper2:Ksw_MAG_APER2,
          ksw_magerr_aper2:Ksw_MAGERR_APER2,
          ksw_mag_aper3:Ksw_MAG_APER3,
          ksw_magerr_aper3:Ksw_MAGERR_APER3,
          ksw_mag_auto:Ksw_MAG_AUTO,
          ksw_magerr_auto:Ksw_MAGERR_AUTO,
          ksw_mag_iso:Ksw_MAG_ISO,
          ksw_magerr_iso:Ksw_MAGERR_ISO,
          ksw_flags:Ksw_FLAGS,
          ksw_imaflags_iso:Ksw_IMAFLAGS_ISO,
          yhsc_flux_aper2:yHSC_FLUX_APER2,
          yhsc_fluxerr_aper2:yHSC_FLUXERR_APER2,
          yhsc_flux_aper3:yHSC_FLUX_APER3,
          yhsc_fluxerr_aper3:yHSC_FLUXERR_APER3,
          yhsc_mag_aper2:yHSC_MAG_APER2,
          yhsc_magerr_aper2:yHSC_MAGERR_APER2,
          yhsc_mag_aper3:yHSC_MAG_APER3,
          yhsc_magerr_aper3:yHSC_MAGERR_APER3,
          yhsc_mag_auto:yHSC_MAG_AUTO,
          yhsc_magerr_auto:yHSC_MAGERR_AUTO,
          yhsc_mag_iso:yHSC_MAG_ISO,
          yhsc_magerr_iso:yHSC_MAGERR_ISO,
          yhsc_flags:yHSC_FLAGS,
          yhsc_imaflags_iso:yHSC_IMAFLAGS_ISO,
          flux_24:FLUX_24,
          fluxerr_24:FLUXERR_24,
          mag_24:MAG_24,
          magerr_24:MAGERR_24,
          id_a24:ID_A24,
          flux_100:FLUX_100,
          fluxerr_100:FLUXERR_100,
          flux_160:FLUX_160,
          fluxerr_160:FLUXERR_160,
          flux_250:FLUX_250,
          fluxerr_250:FLUXERR_250,
          fluxerrtot_250:FLUXERRTOT_250,
          flux_350:FLUX_350,
          fluxerr_350:FLUXERR_350,
          fluxerrtot_350:FLUXERRTOT_350,
          flux_500:FLUX_500,
          fluxerr_500:FLUXERR_500,
          fluxerrtot_500:FLUXERRTOT_500,
          id_chandra2016:ID_CHANDRA2016,
          id2006:ID2006,
          id2008:ID2008,
          id2013:ID2013,
          mag_galex_nuv:MAG_GALEX_NUV,
          magerr_galex_nuv:MAGERR_GALEX_NUV,
          mag_galex_fuv:MAG_GALEX_FUV,
          magerr_galex_fuv:MAGERR_GALEX_FUV,
          flux_galex_nuv:FLUX_GALEX_NUV,
          fluxerr_galex_nuv:FLUXERR_GALEX_NUV,
          flux_galex_fuv:FLUX_GALEX_FUV,
          fluxerr_galex_fuv:FLUXERR_GALEX_FUV,
          flux_814w:FLUX_814W,
          fluxerr_814w:FLUXERR_814W,
          name_vla90cm:NAME_VLA90CM,
          fluxpeak_90cm:FLUXPEAK_90CM,
          fluxpeakerr_90cm:FLUXPEAKERR_90CM,
          fluxint_90cm:FLUXINT_90CM,
          fluxinterr_90cm:FLUXINTERR_90CM,
          rmsbkg_90cm:RMSBKG_90CM,
          name_jvldeep:NAME_JVLDEEP,
          name_jvllarge:NAME_JVLLARGE,
          fluxpeak_20cm:FLUXPEAK_20CM,
          fluxpeakerr_20cm:FLUXPEAKERR_20CM,
          fluxint_20cm:FLUXINT_20CM,
          fluxinterr_20cm:FLUXINTERR_20CM,
          rmsbkg_20cm:RMSBKG_20CM,
          id_xmm:ID_XMM,
          flux_xmm_0_5_2:FLUX_XMM_0_5_2,
          flux_xmm_2_10:FLUX_XMM_2_10,
          flux_xmm_5_10:FLUX_XMM_5_10,
          hardness_xmm:HARDNESS_XMM,
          id_chandra09:ID_CHANDRA09,
          flux_chandra_0_5_2:FLUX_CHANDRA_0_5_2,
          flux_chandra_2_10:FLUX_CHANDRA_2_10,
          flux_chandra_0_5_10:FLUX_CHANDRA_0_5_10,
          id_nustar:ID_NUSTAR,
          flux_nustar_3_24:FLUX_NUSTAR_3_24,
          fluxerr_nustar_3_24:FLUXERR_NUSTAR_3_24,
          flux_nustar_3_8:FLUX_NUSTAR_3_8,
          fluxerr_nustar_3_8:FLUXERR_NUSTAR_3_8,
          flux_nustar_8_24:FLUX_NUSTAR_8_24,
          fluxerr_nustar_8_24:FLUXERR_NUSTAR_8_24,
          hardness_nustar:HARDNESS_NUSTAR,
          hardnesslow_nustar:HARDNESSLOW_NUSTAR,
          hardnessup_nustar:HARDNESSUP_NUSTAR,
          flag_xrayblend:FLAG_XRAYBLEND,
          off_set:OFFSET,
          photoz:PHOTOZ,
          type:TYPE,
          zpdf:ZPDF,
          zpdf_l68:ZPDF_L68,
          zpdf_u68:ZPDF_H68,
          zminchi2:ZMINCHI2,
          chi2_best:CHI2_BEST,
          zp_2:ZP_2,
          chi2_2:CHI2_2,
          nbfilt:NBFILT,
          zq:ZQ,
          chiq:CHIQ,
          modq:MODQ,
          mods:MODS,
          chis:CHIS,
          model:MODEL,
          age:AGE,
          extinction:EXTINCTION,
          mnuv:MNUV,
          mu:MU,
          mb:MB,
          mv:MV,
          mr:MR,
          mi:MI,
          mz:MZ,
          my:MY,
          mj:MJ,
          mh:MH,
          mk:MK,
          mnuv_mr:MNUV_MR,
          class:CLASS,
          mass_med:MASS_MED,
          mass_med_min68:MASS_MED_MIN68,
          mass_med_max68:MASS_MED_MAX68,
          mass_best:MASS_BEST,
          sfr_med:SFR_MED,
          sfr_med_min68:SFR_MED_MIN68,
          sfr_med_max68:SFR_MED_MAX68,
          sfr_best:SFR_BEST,
          ssfr_med:SSFR_MED,
          ssfr_med_min68:SSFR_MED_MIN68,
          ssfr_med_max68:SSFR_MED_MAX68,
          ssfr_best:SSFR_BEST,
          l_nu:L_NU,
          l_r:L_R,
          l_k:L_K,
          id:id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_hsel">
    <sources>data/help_cosmos2015.csv</sources>
    <csvGrammar />
    <make table="hsel">
      <rowmaker idmaps="*">
        <simplemaps>
          alpha_j2000:ALPHA_J2000,
          delta_j2000:DELTA_J2000,
          number:NUMBER,
          x_image:X_IMAGE,
          y_image:Y_IMAGE,
          errx2_image:ERRX2_IMAGE,
          erry2_image:ERRY2_IMAGE,
          errxy_image:ERRXY_IMAGE,
          flag_hjmcc:FLAG_HJMCC,
          flux_radius:FLUX_RADIUS,
          ebv:EBV,
          flag_peter:FLAG_PETER,
          flag_cosmos:FLAG_COSMOS,
          flag_deep:FLAG_DEEP,
          ks_flux_aper2:Ks_FLUX_APER2,
          ks_fluxerr_aper2:Ks_FLUXERR_APER2,
          ks_flux_aper3:Ks_FLUX_APER3,
          ks_fluxerr_aper3:Ks_FLUXERR_APER3,
          ks_mag_aper2:Ks_MAG_APER2,
          ks_magerr_aper2:Ks_MAGERR_APER2,
          ks_mag_aper3:Ks_MAG_APER3,
          ks_magerr_aper3:Ks_MAGERR_APER3,
          ks_mag_auto:Ks_MAG_AUTO,
          ks_magerr_auto:Ks_MAGERR_AUTO,
          ks_mag_iso:Ks_MAG_ISO,
          ks_magerr_iso:Ks_MAGERR_ISO,
          ks_flags:Ks_FLAGS,
          ks_imaflags_iso:Ks_IMAFLAGS_ISO,
          y_flux_aper2:Y_FLUX_APER2,
          y_fluxerr_aper2:Y_FLUXERR_APER2,
          y_flux_aper3:Y_FLUX_APER3,
          y_fluxerr_aper3:Y_FLUXERR_APER3,
          y_mag_aper2:Y_MAG_APER2,
          y_magerr_aper2:Y_MAGERR_APER2,
          y_mag_aper3:Y_MAG_APER3,
          y_magerr_aper3:Y_MAGERR_APER3,
          y_mag_auto:Y_MAG_AUTO,
          y_magerr_auto:Y_MAGERR_AUTO,
          y_mag_iso:Y_MAG_ISO,
          y_magerr_iso:Y_MAGERR_ISO,
          y_flags:Y_FLAGS,
          y_imaflags_iso:Y_IMAFLAGS_ISO,
          h_flux_aper2:H_FLUX_APER2,
          h_fluxerr_aper2:H_FLUXERR_APER2,
          h_flux_aper3:H_FLUX_APER3,
          h_fluxerr_aper3:H_FLUXERR_APER3,
          h_mag_aper2:H_MAG_APER2,
          h_magerr_aper2:H_MAGERR_APER2,
          h_mag_aper3:H_MAG_APER3,
          h_magerr_aper3:H_MAGERR_APER3,
          h_mag_auto:H_MAG_AUTO,
          h_magerr_auto:H_MAGERR_AUTO,
          h_mag_iso:H_MAG_ISO,
          h_magerr_iso:H_MAGERR_ISO,
          h_flags:H_FLAGS,
          h_imaflags_iso:H_IMAFLAGS_ISO,
          j_flux_aper2:J_FLUX_APER2,
          j_fluxerr_aper2:J_FLUXERR_APER2,
          j_flux_aper3:J_FLUX_APER3,
          j_fluxerr_aper3:J_FLUXERR_APER3,
          j_mag_aper2:J_MAG_APER2,
          j_magerr_aper2:J_MAGERR_APER2,
          j_mag_aper3:J_MAG_APER3,
          j_magerr_aper3:J_MAGERR_APER3,
          j_mag_auto:J_MAG_AUTO,
          j_magerr_auto:J_MAGERR_AUTO,
          j_mag_iso:J_MAG_ISO,
          j_magerr_iso:J_MAGERR_ISO,
          j_flags:J_FLAGS,
          j_imaflags_iso:J_IMAFLAGS_ISO,
          b_flux_aper2:B_FLUX_APER2,
          b_fluxerr_aper2:B_FLUXERR_APER2,
          b_flux_aper3:B_FLUX_APER3,
          b_fluxerr_aper3:B_FLUXERR_APER3,
          b_mag_aper2:B_MAG_APER2,
          b_magerr_aper2:B_MAGERR_APER2,
          b_mag_aper3:B_MAG_APER3,
          b_magerr_aper3:B_MAGERR_APER3,
          b_mag_auto:B_MAG_AUTO,
          b_magerr_auto:B_MAGERR_AUTO,
          b_mag_iso:B_MAG_ISO,
          b_magerr_iso:B_MAGERR_ISO,
          b_flags:B_FLAGS,
          b_imaflags_iso:B_IMAFLAGS_ISO,
          v_flux_aper2:V_FLUX_APER2,
          v_fluxerr_aper2:V_FLUXERR_APER2,
          v_flux_aper3:V_FLUX_APER3,
          v_fluxerr_aper3:V_FLUXERR_APER3,
          v_mag_aper2:V_MAG_APER2,
          v_magerr_aper2:V_MAGERR_APER2,
          v_mag_aper3:V_MAG_APER3,
          v_magerr_aper3:V_MAGERR_APER3,
          v_mag_auto:V_MAG_AUTO,
          v_magerr_auto:V_MAGERR_AUTO,
          v_mag_iso:V_MAG_ISO,
          v_magerr_iso:V_MAGERR_ISO,
          v_flags:V_FLAGS,
          v_imaflags_iso:V_IMAFLAGS_ISO,
          ip_flux_aper2:ip_FLUX_APER2,
          ip_fluxerr_aper2:ip_FLUXERR_APER2,
          ip_flux_aper3:ip_FLUX_APER3,
          ip_fluxerr_aper3:ip_FLUXERR_APER3,
          ip_mag_aper2:ip_MAG_APER2,
          ip_magerr_aper2:ip_MAGERR_APER2,
          ip_mag_aper3:ip_MAG_APER3,
          ip_magerr_aper3:ip_MAGERR_APER3,
          ip_mag_auto:ip_MAG_AUTO,
          ip_magerr_auto:ip_MAGERR_AUTO,
          ip_mag_iso:ip_MAG_ISO,
          ip_magerr_iso:ip_MAGERR_ISO,
          ip_flags:ip_FLAGS,
          ip_imaflags_iso:ip_IMAFLAGS_ISO,
          r_flux_aper2:r_FLUX_APER2,
          r_fluxerr_aper2:r_FLUXERR_APER2,
          r_flux_aper3:r_FLUX_APER3,
          r_fluxerr_aper3:r_FLUXERR_APER3,
          r_mag_aper2:r_MAG_APER2,
          r_magerr_aper2:r_MAGERR_APER2,
          r_mag_aper3:r_MAG_APER3,
          r_magerr_aper3:r_MAGERR_APER3,
          r_mag_auto:r_MAG_AUTO,
          r_magerr_auto:r_MAGERR_AUTO,
          r_mag_iso:r_MAG_ISO,
          r_magerr_iso:r_MAGERR_ISO,
          r_flags:r_FLAGS,
          r_imaflags_iso:r_IMAFLAGS_ISO,
          u_flux_aper2:u_FLUX_APER2,
          u_fluxerr_aper2:u_FLUXERR_APER2,
          u_flux_aper3:u_FLUX_APER3,
          u_fluxerr_aper3:u_FLUXERR_APER3,
          u_mag_aper2:u_MAG_APER2,
          u_magerr_aper2:u_MAGERR_APER2,
          u_mag_aper3:u_MAG_APER3,
          u_magerr_aper3:u_MAGERR_APER3,
          u_mag_auto:u_MAG_AUTO,
          u_magerr_auto:u_MAGERR_AUTO,
          u_mag_iso:u_MAG_ISO,
          u_magerr_iso:u_MAGERR_ISO,
          u_flags:u_FLAGS,
          u_imaflags_iso:u_IMAFLAGS_ISO,
          zp_flux_aper2:zp_FLUX_APER2,
          zp_fluxerr_aper2:zp_FLUXERR_APER2,
          zp_flux_aper3:zp_FLUX_APER3,
          zp_fluxerr_aper3:zp_FLUXERR_APER3,
          zp_mag_aper2:zp_MAG_APER2,
          zp_magerr_aper2:zp_MAGERR_APER2,
          zp_mag_aper3:zp_MAG_APER3,
          zp_magerr_aper3:zp_MAGERR_APER3,
          zp_mag_auto:zp_MAG_AUTO,
          zp_magerr_auto:zp_MAGERR_AUTO,
          zp_mag_iso:zp_MAG_ISO,
          zp_magerr_iso:zp_MAGERR_ISO,
          zp_flags:zp_FLAGS,
          zp_imaflags_iso:zp_IMAFLAGS_ISO,
          zpp_flux_aper2:zpp_FLUX_APER2,
          zpp_fluxerr_aper2:zpp_FLUXERR_APER2,
          zpp_flux_aper3:zpp_FLUX_APER3,
          zpp_fluxerr_aper3:zpp_FLUXERR_APER3,
          zpp_mag_aper2:zpp_MAG_APER2,
          zpp_magerr_aper2:zpp_MAGERR_APER2,
          zpp_mag_aper3:zpp_MAG_APER3,
          zpp_magerr_aper3:zpp_MAGERR_APER3,
          zpp_mag_auto:zpp_MAG_AUTO,
          zpp_magerr_auto:zpp_MAGERR_AUTO,
          zpp_mag_iso:zpp_MAG_ISO,
          zpp_magerr_iso:zpp_MAGERR_ISO,
          zpp_flags:zpp_FLAGS,
          zpp_imaflags_iso:zpp_IMAFLAGS_ISO,
          ia484_flux_aper2:IA484_FLUX_APER2,
          ia484_fluxerr_aper2:IA484_FLUXERR_APER2,
          ia484_flux_aper3:IA484_FLUX_APER3,
          ia484_fluxerr_aper3:IA484_FLUXERR_APER3,
          ia484_mag_aper2:IA484_MAG_APER2,
          ia484_magerr_aper2:IA484_MAGERR_APER2,
          ia484_mag_aper3:IA484_MAG_APER3,
          ia484_magerr_aper3:IA484_MAGERR_APER3,
          ia484_mag_auto:IA484_MAG_AUTO,
          ia484_magerr_auto:IA484_MAGERR_AUTO,
          ia484_mag_iso:IA484_MAG_ISO,
          ia484_magerr_iso:IA484_MAGERR_ISO,
          ia484_flags:IA484_FLAGS,
          ia484_imaflags_iso:IA484_IMAFLAGS_ISO,
          ia527_flux_aper2:IA527_FLUX_APER2,
          ia527_fluxerr_aper2:IA527_FLUXERR_APER2,
          ia527_flux_aper3:IA527_FLUX_APER3,
          ia527_fluxerr_aper3:IA527_FLUXERR_APER3,
          ia527_mag_aper2:IA527_MAG_APER2,
          ia527_magerr_aper2:IA527_MAGERR_APER2,
          ia527_mag_aper3:IA527_MAG_APER3,
          ia527_magerr_aper3:IA527_MAGERR_APER3,
          ia527_mag_auto:IA527_MAG_AUTO,
          ia527_magerr_auto:IA527_MAGERR_AUTO,
          ia527_mag_iso:IA527_MAG_ISO,
          ia527_magerr_iso:IA527_MAGERR_ISO,
          ia527_flags:IA527_FLAGS,
          ia527_imaflags_iso:IA527_IMAFLAGS_ISO,
          ia624_flux_aper2:IA624_FLUX_APER2,
          ia624_fluxerr_aper2:IA624_FLUXERR_APER2,
          ia624_flux_aper3:IA624_FLUX_APER3,
          ia624_fluxerr_aper3:IA624_FLUXERR_APER3,
          ia624_mag_aper2:IA624_MAG_APER2,
          ia624_magerr_aper2:IA624_MAGERR_APER2,
          ia624_mag_aper3:IA624_MAG_APER3,
          ia624_magerr_aper3:IA624_MAGERR_APER3,
          ia624_mag_auto:IA624_MAG_AUTO,
          ia624_magerr_auto:IA624_MAGERR_AUTO,
          ia624_mag_iso:IA624_MAG_ISO,
          ia624_magerr_iso:IA624_MAGERR_ISO,
          ia624_flags:IA624_FLAGS,
          ia624_imaflags_iso:IA624_IMAFLAGS_ISO,
          ia679_flux_aper2:IA679_FLUX_APER2,
          ia679_fluxerr_aper2:IA679_FLUXERR_APER2,
          ia679_flux_aper3:IA679_FLUX_APER3,
          ia679_fluxerr_aper3:IA679_FLUXERR_APER3,
          ia679_mag_aper2:IA679_MAG_APER2,
          ia679_magerr_aper2:IA679_MAGERR_APER2,
          ia679_mag_aper3:IA679_MAG_APER3,
          ia679_magerr_aper3:IA679_MAGERR_APER3,
          ia679_mag_auto:IA679_MAG_AUTO,
          ia679_magerr_auto:IA679_MAGERR_AUTO,
          ia679_mag_iso:IA679_MAG_ISO,
          ia679_magerr_iso:IA679_MAGERR_ISO,
          ia679_flags:IA679_FLAGS,
          ia679_imaflags_iso:IA679_IMAFLAGS_ISO,
          ia738_flux_aper2:IA738_FLUX_APER2,
          ia738_fluxerr_aper2:IA738_FLUXERR_APER2,
          ia738_flux_aper3:IA738_FLUX_APER3,
          ia738_fluxerr_aper3:IA738_FLUXERR_APER3,
          ia738_mag_aper2:IA738_MAG_APER2,
          ia738_magerr_aper2:IA738_MAGERR_APER2,
          ia738_mag_aper3:IA738_MAG_APER3,
          ia738_magerr_aper3:IA738_MAGERR_APER3,
          ia738_mag_auto:IA738_MAG_AUTO,
          ia738_magerr_auto:IA738_MAGERR_AUTO,
          ia738_mag_iso:IA738_MAG_ISO,
          ia738_magerr_iso:IA738_MAGERR_ISO,
          ia738_flags:IA738_FLAGS,
          ia738_imaflags_iso:IA738_IMAFLAGS_ISO,
          ia767_flux_aper2:IA767_FLUX_APER2,
          ia767_fluxerr_aper2:IA767_FLUXERR_APER2,
          ia767_flux_aper3:IA767_FLUX_APER3,
          ia767_fluxerr_aper3:IA767_FLUXERR_APER3,
          ia767_mag_aper2:IA767_MAG_APER2,
          ia767_magerr_aper2:IA767_MAGERR_APER2,
          ia767_mag_aper3:IA767_MAG_APER3,
          ia767_magerr_aper3:IA767_MAGERR_APER3,
          ia767_mag_auto:IA767_MAG_AUTO,
          ia767_magerr_auto:IA767_MAGERR_AUTO,
          ia767_mag_iso:IA767_MAG_ISO,
          ia767_magerr_iso:IA767_MAGERR_ISO,
          ia767_flags:IA767_FLAGS,
          ia767_imaflags_iso:IA767_IMAFLAGS_ISO,
          ib427_flux_aper2:IB427_FLUX_APER2,
          ib427_fluxerr_aper2:IB427_FLUXERR_APER2,
          ib427_flux_aper3:IB427_FLUX_APER3,
          ib427_fluxerr_aper3:IB427_FLUXERR_APER3,
          ib427_mag_aper2:IB427_MAG_APER2,
          ib427_magerr_aper2:IB427_MAGERR_APER2,
          ib427_mag_aper3:IB427_MAG_APER3,
          ib427_magerr_aper3:IB427_MAGERR_APER3,
          ib427_mag_auto:IB427_MAG_AUTO,
          ib427_magerr_auto:IB427_MAGERR_AUTO,
          ib427_mag_iso:IB427_MAG_ISO,
          ib427_magerr_iso:IB427_MAGERR_ISO,
          ib427_flags:IB427_FLAGS,
          ib427_imaflags_iso:IB427_IMAFLAGS_ISO,
          ib464_flux_aper2:IB464_FLUX_APER2,
          ib464_fluxerr_aper2:IB464_FLUXERR_APER2,
          ib464_flux_aper3:IB464_FLUX_APER3,
          ib464_fluxerr_aper3:IB464_FLUXERR_APER3,
          ib464_mag_aper2:IB464_MAG_APER2,
          ib464_magerr_aper2:IB464_MAGERR_APER2,
          ib464_mag_aper3:IB464_MAG_APER3,
          ib464_magerr_aper3:IB464_MAGERR_APER3,
          ib464_mag_auto:IB464_MAG_AUTO,
          ib464_magerr_auto:IB464_MAGERR_AUTO,
          ib464_mag_iso:IB464_MAG_ISO,
          ib464_magerr_iso:IB464_MAGERR_ISO,
          ib464_flags:IB464_FLAGS,
          ib464_imaflags_iso:IB464_IMAFLAGS_ISO,
          ib505_flux_aper2:IB505_FLUX_APER2,
          ib505_fluxerr_aper2:IB505_FLUXERR_APER2,
          ib505_flux_aper3:IB505_FLUX_APER3,
          ib505_fluxerr_aper3:IB505_FLUXERR_APER3,
          ib505_mag_aper2:IB505_MAG_APER2,
          ib505_magerr_aper2:IB505_MAGERR_APER2,
          ib505_mag_aper3:IB505_MAG_APER3,
          ib505_magerr_aper3:IB505_MAGERR_APER3,
          ib505_mag_auto:IB505_MAG_AUTO,
          ib505_magerr_auto:IB505_MAGERR_AUTO,
          ib505_mag_iso:IB505_MAG_ISO,
          ib505_magerr_iso:IB505_MAGERR_ISO,
          ib505_flags:IB505_FLAGS,
          ib505_imaflags_iso:IB505_IMAFLAGS_ISO,
          ib574_flux_aper2:IB574_FLUX_APER2,
          ib574_fluxerr_aper2:IB574_FLUXERR_APER2,
          ib574_flux_aper3:IB574_FLUX_APER3,
          ib574_fluxerr_aper3:IB574_FLUXERR_APER3,
          ib574_mag_aper2:IB574_MAG_APER2,
          ib574_magerr_aper2:IB574_MAGERR_APER2,
          ib574_mag_aper3:IB574_MAG_APER3,
          ib574_magerr_aper3:IB574_MAGERR_APER3,
          ib574_mag_auto:IB574_MAG_AUTO,
          ib574_magerr_auto:IB574_MAGERR_AUTO,
          ib574_mag_iso:IB574_MAG_ISO,
          ib574_magerr_iso:IB574_MAGERR_ISO,
          ib574_flags:IB574_FLAGS,
          ib574_imaflags_iso:IB574_IMAFLAGS_ISO,
          ib709_flux_aper2:IB709_FLUX_APER2,
          ib709_fluxerr_aper2:IB709_FLUXERR_APER2,
          ib709_flux_aper3:IB709_FLUX_APER3,
          ib709_fluxerr_aper3:IB709_FLUXERR_APER3,
          ib709_mag_aper2:IB709_MAG_APER2,
          ib709_magerr_aper2:IB709_MAGERR_APER2,
          ib709_mag_aper3:IB709_MAG_APER3,
          ib709_magerr_aper3:IB709_MAGERR_APER3,
          ib709_mag_auto:IB709_MAG_AUTO,
          ib709_magerr_auto:IB709_MAGERR_AUTO,
          ib709_mag_iso:IB709_MAG_ISO,
          ib709_magerr_iso:IB709_MAGERR_ISO,
          ib709_flags:IB709_FLAGS,
          ib709_imaflags_iso:IB709_IMAFLAGS_ISO,
          ib827_flux_aper2:IB827_FLUX_APER2,
          ib827_fluxerr_aper2:IB827_FLUXERR_APER2,
          ib827_flux_aper3:IB827_FLUX_APER3,
          ib827_fluxerr_aper3:IB827_FLUXERR_APER3,
          ib827_mag_aper2:IB827_MAG_APER2,
          ib827_magerr_aper2:IB827_MAGERR_APER2,
          ib827_mag_aper3:IB827_MAG_APER3,
          ib827_magerr_aper3:IB827_MAGERR_APER3,
          ib827_mag_auto:IB827_MAG_AUTO,
          ib827_magerr_auto:IB827_MAGERR_AUTO,
          ib827_mag_iso:IB827_MAG_ISO,
          ib827_magerr_iso:IB827_MAGERR_ISO,
          ib827_flags:IB827_FLAGS,
          ib827_imaflags_iso:IB827_IMAFLAGS_ISO,
          nb711_flux_aper2:NB711_FLUX_APER2,
          nb711_fluxerr_aper2:NB711_FLUXERR_APER2,
          nb711_flux_aper3:NB711_FLUX_APER3,
          nb711_fluxerr_aper3:NB711_FLUXERR_APER3,
          nb711_mag_aper2:NB711_MAG_APER2,
          nb711_magerr_aper2:NB711_MAGERR_APER2,
          nb711_mag_aper3:NB711_MAG_APER3,
          nb711_magerr_aper3:NB711_MAGERR_APER3,
          nb711_mag_auto:NB711_MAG_AUTO,
          nb711_magerr_auto:NB711_MAGERR_AUTO,
          nb711_mag_iso:NB711_MAG_ISO,
          nb711_magerr_iso:NB711_MAGERR_ISO,
          nb711_flags:NB711_FLAGS,
          nb711_imaflags_iso:NB711_IMAFLAGS_ISO,
          nb816_flux_aper2:NB816_FLUX_APER2,
          nb816_fluxerr_aper2:NB816_FLUXERR_APER2,
          nb816_flux_aper3:NB816_FLUX_APER3,
          nb816_fluxerr_aper3:NB816_FLUXERR_APER3,
          nb816_mag_aper2:NB816_MAG_APER2,
          nb816_magerr_aper2:NB816_MAGERR_APER2,
          nb816_mag_aper3:NB816_MAG_APER3,
          nb816_magerr_aper3:NB816_MAGERR_APER3,
          nb816_mag_auto:NB816_MAG_AUTO,
          nb816_magerr_auto:NB816_MAGERR_AUTO,
          nb816_mag_iso:NB816_MAG_ISO,
          nb816_magerr_iso:NB816_MAGERR_ISO,
          nb816_flags:NB816_FLAGS,
          nb816_imaflags_iso:NB816_IMAFLAGS_ISO,
          splash_1_flux:SPLASH_1_FLUX,
          splash_1_flux_err:SPLASH_1_FLUX_ERR,
          splash_1_mag:SPLASH_1_MAG,
          splash_1_magerr:SPLASH_1_MAGERR,
          splash_2_flux:SPLASH_2_FLUX,
          splash_2_flux_err:SPLASH_2_FLUX_ERR,
          splash_2_mag:SPLASH_2_MAG,
          splash_2_magerr:SPLASH_2_MAGERR,
          splash_3_flux:SPLASH_3_FLUX,
          splash_3_flux_err:SPLASH_3_FLUX_ERR,
          splash_3_mag:SPLASH_3_MAG,
          splash_3_magerr:SPLASH_3_MAGERR,
          splash_4_flux:SPLASH_4_FLUX,
          splash_4_flux_err:SPLASH_4_FLUX_ERR,
          splash_4_mag:SPLASH_4_MAG,
          splash_4_magerr:SPLASH_4_MAGERR,
          hw_flux_aper2:Hw_FLUX_APER2,
          hw_fluxerr_aper2:Hw_FLUXERR_APER2,
          hw_flux_aper3:Hw_FLUX_APER3,
          hw_fluxerr_aper3:Hw_FLUXERR_APER3,
          hw_mag_aper2:Hw_MAG_APER2,
          hw_magerr_aper2:Hw_MAGERR_APER2,
          hw_mag_aper3:Hw_MAG_APER3,
          hw_magerr_aper3:Hw_MAGERR_APER3,
          hw_mag_auto:Hw_MAG_AUTO,
          hw_magerr_auto:Hw_MAGERR_AUTO,
          hw_mag_iso:Hw_MAG_ISO,
          hw_magerr_iso:Hw_MAGERR_ISO,
          hw_flags:Hw_FLAGS,
          hw_imaflags_iso:Hw_IMAFLAGS_ISO,
          ksw_flux_aper2:Ksw_FLUX_APER2,
          ksw_fluxerr_aper2:Ksw_FLUXERR_APER2,
          ksw_flux_aper3:Ksw_FLUX_APER3,
          ksw_fluxerr_aper3:Ksw_FLUXERR_APER3,
          ksw_mag_aper2:Ksw_MAG_APER2,
          ksw_magerr_aper2:Ksw_MAGERR_APER2,
          ksw_mag_aper3:Ksw_MAG_APER3,
          ksw_magerr_aper3:Ksw_MAGERR_APER3,
          ksw_mag_auto:Ksw_MAG_AUTO,
          ksw_magerr_auto:Ksw_MAGERR_AUTO,
          ksw_mag_iso:Ksw_MAG_ISO,
          ksw_magerr_iso:Ksw_MAGERR_ISO,
          ksw_flags:Ksw_FLAGS,
          ksw_imaflags_iso:Ksw_IMAFLAGS_ISO,
          yhsc_flux_aper2:yHSC_FLUX_APER2,
          yhsc_fluxerr_aper2:yHSC_FLUXERR_APER2,
          yhsc_flux_aper3:yHSC_FLUX_APER3,
          yhsc_fluxerr_aper3:yHSC_FLUXERR_APER3,
          yhsc_mag_aper2:yHSC_MAG_APER2,
          yhsc_magerr_aper2:yHSC_MAGERR_APER2,
          yhsc_mag_aper3:yHSC_MAG_APER3,
          yhsc_magerr_aper3:yHSC_MAGERR_APER3,
          yhsc_mag_auto:yHSC_MAG_AUTO,
          yhsc_magerr_auto:yHSC_MAGERR_AUTO,
          yhsc_mag_iso:yHSC_MAG_ISO,
          yhsc_magerr_iso:yHSC_MAGERR_ISO,
          yhsc_flags:yHSC_FLAGS,
          yhsc_imaflags_iso:yHSC_IMAFLAGS_ISO,
          flux_24:FLUX_24,
          fluxerr_24:FLUXERR_24,
          mag_24:MAG_24,
          magerr_24:MAGERR_24,
          id_a24:ID_A24,
          flux_100:FLUX_100,
          fluxerr_100:FLUXERR_100,
          flux_160:FLUX_160,
          fluxerr_160:FLUXERR_160,
          flux_250:FLUX_250,
          fluxerr_250:FLUXERR_250,
          fluxerrtot_250:FLUXERRTOT_250,
          flux_350:FLUX_350,
          fluxerr_350:FLUXERR_350,
          fluxerrtot_350:FLUXERRTOT_350,
          flux_500:FLUX_500,
          fluxerr_500:FLUXERR_500,
          fluxerrtot_500:FLUXERRTOT_500,
          id_chandra2016:ID_CHANDRA2016,
          id2006:ID2006,
          id2008:ID2008,
          id2013:ID2013,
          mag_galex_nuv:MAG_GALEX_NUV,
          magerr_galex_nuv:MAGERR_GALEX_NUV,
          mag_galex_fuv:MAG_GALEX_FUV,
          magerr_galex_fuv:MAGERR_GALEX_FUV,
          flux_galex_nuv:FLUX_GALEX_NUV,
          fluxerr_galex_nuv:FLUXERR_GALEX_NUV,
          flux_galex_fuv:FLUX_GALEX_FUV,
          fluxerr_galex_fuv:FLUXERR_GALEX_FUV,
          flux_814w:FLUX_814W,
          fluxerr_814w:FLUXERR_814W,
          name_vla90cm:NAME_VLA90CM,
          fluxpeak_90cm:FLUXPEAK_90CM,
          fluxpeakerr_90cm:FLUXPEAKERR_90CM,
          fluxint_90cm:FLUXINT_90CM,
          fluxinterr_90cm:FLUXINTERR_90CM,
          rmsbkg_90cm:RMSBKG_90CM,
          name_jvldeep:NAME_JVLDEEP,
          name_jvllarge:NAME_JVLLARGE,
          fluxpeak_20cm:FLUXPEAK_20CM,
          fluxpeakerr_20cm:FLUXPEAKERR_20CM,
          fluxint_20cm:FLUXINT_20CM,
          fluxinterr_20cm:FLUXINTERR_20CM,
          rmsbkg_20cm:RMSBKG_20CM,
          id_xmm:ID_XMM,
          flux_xmm_0_5_2:FLUX_XMM_0_5_2,
          flux_xmm_2_10:FLUX_XMM_2_10,
          flux_xmm_5_10:FLUX_XMM_5_10,
          hardness_xmm:HARDNESS_XMM,
          id_chandra09:ID_CHANDRA09,
          flux_chandra_0_5_2:FLUX_CHANDRA_0_5_2,
          flux_chandra_2_10:FLUX_CHANDRA_2_10,
          flux_chandra_0_5_10:FLUX_CHANDRA_0_5_10,
          id_nustar:ID_NUSTAR,
          flux_nustar_3_24:FLUX_NUSTAR_3_24,
          fluxerr_nustar_3_24:FLUXERR_NUSTAR_3_24,
          flux_nustar_3_8:FLUX_NUSTAR_3_8,
          fluxerr_nustar_3_8:FLUXERR_NUSTAR_3_8,
          flux_nustar_8_24:FLUX_NUSTAR_8_24,
          fluxerr_nustar_8_24:FLUXERR_NUSTAR_8_24,
          hardness_nustar:HARDNESS_NUSTAR,
          hardnesslow_nustar:HARDNESSLOW_NUSTAR,
          hardnessup_nustar:HARDNESSUP_NUSTAR,
          flag_xrayblend:FLAG_XRAYBLEND,
          off_set:OFFSET,
          photoz:PHOTOZ,
          type:TYPE,
          zpdf:ZPDF,
          zpdf_l68:ZPDF_L68,
          zpdf_u68:ZPDF_H68,
          zminchi2:ZMINCHI2,
          chi2_best:CHI2_BEST,
          zp_2:ZP_2,
          chi2_2:CHI2_2,
          nbfilt:NBFILT,
          zq:ZQ,
          chiq:CHIQ,
          modq:MODQ,
          mods:MODS,
          chis:CHIS,
          model:MODEL,
          age:AGE,
          extinction:EXTINCTION,
          mnuv:MNUV,
          mu:MU,
          mb:MB,
          mv:MV,
          mr:MR,
          mi:MI,
          mz:MZ,
          my:MY,
          mj:MJ,
          mh:MH,
          mk:MK,
          mnuv_mr:MNUV_MR,
          class:CLASS,
          mass_med:MASS_MED,
          mass_med_min68:MASS_MED_MIN68,
          mass_med_max68:MASS_MED_MAX68,
          mass_best:MASS_BEST,
          sfr_med:SFR_MED,
          sfr_med_min68:SFR_MED_MIN68,
          sfr_med_max68:SFR_MED_MAX68,
          sfr_best:SFR_BEST,
          ssfr_med:SSFR_MED,
          ssfr_med_min68:SSFR_MED_MIN68,
          ssfr_med_max68:SSFR_MED_MAX68,
          ssfr_best:SSFR_BEST,
          l_nu:L_NU,
          l_r:L_R,
          l_k:L_K,
          help_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">COSMOS2015</meta>
    <meta name="shortName">COSMOS2015</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <service id="cone_hsel" allowed="scs.xml,form,static">
    <meta name="title">COSMOS2015 (HELP selected)</meta>
    <meta name="shortName">COSMOS2015</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="hsel">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="help_id" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
</resource>

<!--
vim:et:sta:sw=2
-->
