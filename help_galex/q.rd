<resource schema="help_galex">
  <meta name="title">GALEX GMSC catalogue on HELP fields</meta>
  <meta name="creationDate">2016-03-03T13:17:38+0100</meta>
  <meta name="description">
    This catalogue is the GALEX Medium Imaging Survey Catalogue (GMSC) that was
    limited to the HELP coverage.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>
  <meta name="type">Survey</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">UV</meta>
  </meta>

  <meta name="_longdoc" format="rst">
    More information on the GMSC is available on `the Caltech GALEX site`__. In
    particular:

    __ http://www.galex.caltech.edu/wiki/GCAT_Manual

      The typical observing time is 1500 s. However, exposure times vary above
      and below this value, only exposure times lower than 10 ks are considered,
      to avoid too large jumps in the exposure time. Another reason is the
      choice of the SExtractor parameters to deblend the images which are not
      efficient for deep, crowded images.  The GMSC is a NUV selected catalogue
      with the NUV signal to noise ratio larger than 3. FUV fluxes are measured
      using the NUV positions and aperture definitions (fd-ncat files from the
      original datasets)

      The deblending parameters in the SExtractor program are tuned to correctly
      measure most galaxies up to one arcminute in diameter. Galaxies larger
      than this will have a larger probability of being shredded into multiple
      sources by the GALEX pipeline. So that users can avoid these shredded
      galaxies in the catalog ("EXTENDED" flag in the catalog for known optical
      sources with diameters (typically 25th magnitude isophote optical
      diameters, D25) greater than 1.5 arcminute). If a source in the catalogs
      lies within an elliptical aperture with major axis scaled to 1.25*D25,
      then EXTENDED is equal to one and zero otherwise.


    HELP field coverage
    -------------------

    Here is the number of GMSC sources per HELP field:

           ==================  ============
                Field             Count
           ==================  ============
                    AKARI-NEP          6142
                    AKARI-SEP         12356
                       Bootes         61748
                   CDFS-SWIRE         49905
                       COSMOS         40403
                          EGS         21564
                     ELAIS-N1         60774
                     ELAIS-N2         46681
                     ELAIS-S1         39405
                      GAMA-09        262123
                      GAMA-12        219450
                      GAMA-15        269669
                        HDF-N          3321
           Herschel-Stripe-82       1318546
                Lockman-SWIRE         97661
                          NGP        185199
                          SGP        265261
                         SSDF         94053
                         xFLS         36163
                      XMM-LSS         72816
           ==================  ============


    History
    -------

    - 20160303: Catalogue retrieved from STSCI GALEX CasJobs and ingested.

  </meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
    ]]> </meta>

  <table id="gmsc" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="Name">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "Dec"
    </stc>

    <index columns="Field" />
    <index columns="F_GALEX_NUV" />
    <index columns="F_GALEX_FUV" />

    <column name="Field"
      type="text"
      ucd="meta.id;obs.field"
      tablehead="Field"
      description="Name of the field in the HELP survey."
      verbLevel="30"/>
    <column name="GGOID"
      type="text"
      ucd="meta.id"
      tablehead="GGOID"
      description="Global object ID."
      note="1"
      required="True"
      verbLevel="40" />
    <column name="TileNum"
      type="integer"
      ucd="meta.id"
      tablehead="Tile number"
      description="Tile or target number."
      verbLevel="40">
        <values nullLiteral= "-99" />
    </column>
    <column name="RA"
      type="double precision"
      unit="deg"
      ucd="pos.eq.ra;meta.main"
      tablehead="RA"
      description="Right Ascension in a J2000 reference frame. This position is
      the NUV source position."
      required="True"/>
    <column name="Dec"
      type="double precision"
      unit="deg"
      ucd="pos.eq.dec;meta.main"
      tablehead="Dec"
      description="Declination in a J2000 reference frame. This position is the
      NUV source position." required="True" />
    <column name="E_BV"
      type="real"
      unit="mag"
      ucd="phot.color.excess"
      tablehead="E(B-V)"
      description="The Galactic reddening expressed as E(B-V). This is derived
      from the Galactic extinctions maps from Schlegel et al. (1998)." />
    <column name="GLON"
      type="real"
      unit="deg"
      ucd="pos.galactic.lon"
      tablehead="GLON"
      description="Galactic longitude."
      verbLevel="40" />
    <column name="GLAT"
      type="real"
      unit="deg"
      ucd="pos.galactic.lat"
      tablehead="GLAT"
      description="Galactic latitude."
      verbLevel="40" />
    <column name="FOV_radius"
      type="real"
      unit="deg"
      ucd="pos.angDistance"
      tablehead="FOV radius"
      description="Distance from the centre of field of view for the tile in
      which this source was detected."
      verbLevel="40"/>
    <column name="F_GALEX_NUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="F_GALEX_NUV"
      description="Calibrated NUV flux. This is currently always set to the
      SExtractor 'Auto' flux" />
    <column name="FErr_GALEX_NUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FErr_GALEX_NUV"
      description="The error in F_GALEX_NUV flux."/>
    <column name="M_GALEX_NUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="M_GALEX_NUV"
      description="Calibrated NUV magnitude on the AB system. This is currently
      always set to the SExtractor 'AUTO' magnitude."
      verbLevel="40" />
    <column name="MErr_GALEX_NUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MErr_GALEX_NUV"
      description="The error on M_GALEX_NUV"
      verbLevel="40" />
    <column name="S2N_GALEX_NUV"
      type="real"
      ucd="stat.snr;phot.flux;em.UV.200-300nm"
      tablehead="S2N_GALEX_NUV"
      description="The signal to noise ratio of the NUV flux, defined as the
      ratio of F_GALEX_NUV to FErr_GALEX_NUV" />
    <column name="F_GALEX_FUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="F_GALEX_FUV"
      description="Calibrated FUV flux measured within the NUV-defined 'AUTO'
      aperture. The value of the flux can be negative for FUV non-detections.
      Users can access the significance of a FUV detection using the
      S2N_GALEX_FUV column. Sources with either no FUV data or with F_GALEX_FUV
      less than -99 are flagged with a value of -99." />
    <column name="FErr_GALEX_FUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FErr_GALEX_FUV"
      description="The error on F_GALEX_FUV" />
    <column name="M_GALEX_FUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="M_GALEX_FUV"
      description="Calibrated FUV magnitude on the AB system measured within
      the NUV-defined 'AUTO' aperture. Sources with either a negative
      F_GALEX_FUV or without FUV observations will be flagged with values of
      either +99 or -99."
      verbLevel="40" />
    <column name="MErr_GALEX_FUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MErr_GALEX_FUV"
      description="The error in M_GALEX_FUV. Sources with either a negative
      flux of without FUV observations will be flagged with values of either
      +99 or -99."
      verbLevel="40" />
    <column name="S2N_GALEX_FUV"
      type="real"
      ucd="stat.snr;phot.flux;em.UV.100-200nm"
      tablehead="S2N_GALEX_FUV"
      description="The signal to noise ratio of the FUV flux, defined as the
      ratio of F_GALEX_FUV to FErr_GALEX_FUV." />
    <column name="BKGRND_FLUX_NUV"
      type="real"
      unit="uJy.arcsec-2"
      ucd="instr.background;phot.flux;em.UV.200-300nm"
      tablehead="BKGRND_FLUX_NUV"
      description="The pipeline measured NUV background flux at the position of
      the source position.float"
      verbLevel="40" />
    <column name="BKGRND_FLUX_FUV"
      type="real"
      unit="uJy.arcsec-2"
      ucd="instr.background;phot.flux;em.UV.100-200nm"
      tablehead="BKGRND_FLUX_FUV"
      description="The pipeline measured FUV background flux at the position of
      the source position. If no FUV Observations are available at that
      location, then a value of -99.0 appears."
      verbLevel="40" />
    <column name="Eff_Exptime_NUV"
      type="real"
      unit="s"
      ucd="obs.exposure;em.UV.200-300nm"
      tablehead="Eff_Exptime_NUV"
      description="The effective exposure time in the NUV at the source
      location defined as the exposure time multiplied by the flat field." />
    <column name="Eff_Exptime_FUV"
      type="real"
      unit="s"
      ucd="obs.exposure;em.UV.100-200nm"
      tablehead="Eff_Exptime_FUV"
      description="The effective exposure time in the FUV at the source
      location defined as the exposure time multiplied by the flat field. If no
      FUV observations were taken at the location, then the value is -99.0" />
    <column name="Artefact_NUV"
      type="integer"
      ucd="meta.code"
      tablehead="Artefact_NUV"
      description="NUV artefact flag."
      note="2"
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="Artefact_FUV"
      type="integer"
      ucd="meta.code"
      tablehead="Artefact_FUV"
      description="FUV artefact flag."
      note="2"
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="PosErr"
      type="real"
      unit="arcsec"
      ucd="stat.error;pos.posAng"
      tablehead="PosErr"
      description="This is the radial position error (1 sigma) which adds in
      quadrature the poisson position error and a constant systematic error in
      the absolute astrometry."
      verbLevel="40" />
    <column name="Number_MCAT"
      type="integer"
      ucd="meta.id"
      tablehead="Number_MCAT"
      description="Running number for the source in the catalogue from the tile
      where this source was observed."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="Flux_D3P0_NUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux_D3P0_NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="Flux_D4P5_NUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux_D4P5_NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="Flux_D7P5_NUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux_D7P5_NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="Flux_D12P0_NUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux_D12P0_NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="Flux_D18P0_NUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux_D18P0_NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="Flux_D25P5_NUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux_D25P5_NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="Flux_D34P5_NUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux_D34P5_NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="FluxErr_D3P0_NUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr_D3P0_NUV"
      description = "The error on Flux_D3P0_NUV."
      verbLevel="30" />
    <column name="FluxErr_D4P5_NUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr_D4P5_NUV"
      description = "The error on Flux_D4P5_NUV."
      verbLevel="30" />
    <column name="FluxErr_D7P5_NUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr_D7P5_NUV"
      description = "The error on Flux_D7P5_NUV."
      verbLevel="30" />
    <column name="FluxErr_D12P0_NUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr_D12P0_NUV"
      description = "The error on Flux_D10P0_NUV."
      verbLevel="30" />
    <column name="FluxErr_D18P0_NUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr_D18P0_NUV"
      description = "The error on Flux_D18P0_NUV."
      verbLevel="30" />
    <column name="FluxErr_D25P5_NUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr_D25P5_NUV"
      description = "The error on Flux_D25P5_NUV."
      verbLevel="30" />
    <column name="FluxErr_D34P5_NUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr_D34P5_NUV"
      description = "The error on Flux_D34P5_NUV."
      verbLevel="30" />
    <column name="Mag_D3P0_NUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag_D3P0_NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="Mag_D4P5_NUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag_D4P5_NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="Mag_D7P5_NUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag_D7P5_NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="Mag_D12P0_NUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag_D12P0_NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="Mag_D18P0_NUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag_D18P0_NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="Mag_D25P5_NUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag_D25P5_NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="Mag_D34P5_NUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag_D34P5_NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="MagErr_D3P0_NUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr_D3P0_NUV"
      description = "The error on Mag_D3P0_NUV."
      verbLevel="30" />
    <column name="MagErr_D4P5_NUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr_D4P5_NUV"
      description = "The error on Mag_D4P5_NUV."
      verbLevel="30" />
    <column name="MagErr_D7P5_NUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr_D7P5_NUV"
      description = "The error on Mag_D7P5_NUV."
      verbLevel="30" />
    <column name="MagErr_D12P0_NUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr_D12P0_NUV"
      description = "The error on Mag_D10P0_NUV."
      verbLevel="30" />
    <column name="MagErr_D18P0_NUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr_D18P0_NUV"
      description = "The error on Mag_D18P0_NUV."
      verbLevel="30" />
    <column name="MagErr_D25P5_NUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr_D25P5_NUV"
      description = "The error on Mag_D25P5_NUV."
      verbLevel="30" />
    <column name="MagErr_D34P5_NUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr_D34P5_NUV"
      description = "The error on Mag_D34P5_NUV."
      verbLevel="30" />
    <column name="Flux20_radius_NUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux20_radius_NUV"
      description="Radius enclosing 20% of the total NUV light."
      verbLevel="30" />
    <column name="Flux50_radius_NUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux50_radius_NUV"
      description="Radius enclosing 50% of the total NUV light."
      verbLevel="30" />
    <column name="Flux80_radius_NUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux80_radius_NUV"
      description="Radius enclosing 80% of the total NUV light."
      verbLevel="30" />
    <column name="Flux90_radius_NUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux90_radius_NUV"
      description="Radius enclosing 90% of the total NUV light."
      verbLevel="30" />
    <column name="Flux95_radius_NUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux95_radius_NUV"
      description="Radius enclosing 95% of the total NUV light."
      verbLevel="30" />
    <column name="Flux_max_NUV"
      type="real"
      unit="uJy.arcsec-2"
      ucd="phot.flux.sb;em.UV.200-300nm"
      tablehead="Flux_max_NUV"
      description="Peak NUV flux of the source above the background."
      verbLevel="30" />
    <column name="X_image"
      type="real"
      unit="pix"
      ucd="pos.cartesian.x"
      tablehead="X_image"
      description="X centroid position of the source in the image in which it
      was detected."
      verbLevel="30" />
    <column name="Y_image"
      type="real"
      unit="pix"
      ucd="pos.cartesian.y"
      tablehead="Y_image"
      description="Y centroid position of the source in the image in which it
      was detected."
      verbLevel="30" />
    <column name="Xpeak_image"
      type="integer"
      unit="pix"
      ucd="pos.cartesian.x"
      tablehead="Xpeak_image"
      description="X centroid position of the peak flux in the source in the
      image in which it was detected."
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="Ypeak_image"
      type="integer"
      unit="pix"
      ucd="pos.cartesian.y"
      tablehead="Ypeak_image"
      description="Y centroid position of the peak flux in the source in the
      image in which it was detected."
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="Semimajor"
      type="real"
      unit="arcsec"
      ucd="phys.angSize.smajAxis"
      tablehead="Semimajor"
      description="Semi-major axis of the elliptical aperture used to measure
      the total flux. This is taken from the 'AUTO' measurements made by the
      SExtractor programme." />
    <column name="PosAng"
      type="real"
      unit="deg"
      ucd="pos.posAng"
      tablehead="PosAng"
      description="Position angle in degrees east of north of the elliptical
      aperture used to measure the total flux."
      verbLevel="30" />
    <column name="Semiminor"
      type="real"
      unit="arcsec"
      ucd="phys.angSize.sminAxis"
      tablehead="Semiminor"
      description="Semi-minor axis of the elliptical aperture used to measure
      the total flux. This is taken from the 'AUTO' measurements made by the
      SExtractor programme." />
    <column name="SemimajorErr"
      type="real"
      unit="arcsec"
      ucd="stat.error;phys.angSize.smajAxis"
      tablehead="SemimajorErr"
      description="The error on Semimajor"
      verbLevel="30"/>
    <column name="SemiminorErr"
      type="real"
      unit="arcsec"
      ucd="stat.error;phys.angSize.sminAxis"
      tablehead="SemiminorErr"
      description="The error on Semiminor"
      verbLevel="30"/>
    <column name="PosAngErr"
      type="real"
      unit="deg"
      ucd="stat.error;pos.posAng"
      tablehead="PosAngErr"
      description="The error on PosAng"
      verbLevel="30"/>
    <column name="FWHM_NUV"
      type="real"
      unit="arcsec"
      ucd="phys.angSize"
      tablehead="FWHM_NUV"
      description="The full width half maximum of the source in the NUV."
      verbLevel="30"/>
    <column name="Flags_NUV"
      type="integer"
      ucd="meta.code"
      tablehead="Flags_NUV"
      description="SExtractor flags for the NUV. See SExtractor manual for more
      details."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="Class_Star"
      type="real"
      ucd="stat.probability"
      tablehead="Class_Star"
      description="The SExtractor classification of the source indicating the
      probability that the source is unresolved. The classification ranges from
      0.0 (resolved) to 1.0 (unresolved)." />
    <column name="Flux_D3P0_FUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux_D3P0_FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="Flux_D4P5_FUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux_D4P5_FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="Flux_D7P5_FUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux_D7P5_FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="Flux_D12P0_FUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux_D12P0_FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="Flux_D18P0_FUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux_D18P0_FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="Flux_D25P5_FUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux_D25P5_FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="Flux_D34P5_FUV"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux_D34P5_FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="FluxErr_D3P0_FUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr_D3P0_FUV"
      description = "The error on Flux_D3P0_FUV."
      verbLevel="30" />
    <column name="FluxErr_D4P5_FUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr_D4P5_FUV"
      description = "The error on Flux_D4P5_FUV."
      verbLevel="30" />
    <column name="FluxErr_D7P5_FUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr_D7P5_FUV"
      description = "The error on Flux_D7P5_FUV."
      verbLevel="30" />
    <column name="FluxErr_D12P0_FUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr_D12P0_FUV"
      description = "The error on Flux_D10P0_FUV."
      verbLevel="30" />
    <column name="FluxErr_D18P0_FUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr_D18P0_FUV"
      description = "The error on Flux_D18P0_FUV."
      verbLevel="30" />
    <column name="FluxErr_D25P5_FUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr_D25P5_FUV"
      description = "The error on Flux_D25P5_FUV."
      verbLevel="30" />
    <column name="FluxErr_D34P5_FUV"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr_D34P5_FUV"
      description = "The error on Flux_D34P5_FUV."
      verbLevel="30" />
    <column name="Mag_D3P0_FUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag_D3P0_FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="Mag_D4P5_FUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag_D4P5_FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="Mag_D7P5_FUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag_D7P5_FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="Mag_D12P0_FUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag_D12P0_FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="Mag_D18P0_FUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag_D18P0_FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="Mag_D25P5_FUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag_D25P5_FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="Mag_D34P5_FUV"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag_D34P5_FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="MagErr_D3P0_FUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr_D3P0_FUV"
      description = "The error on Mag_D3P0_FUV."
      verbLevel="30" />
    <column name="MagErr_D4P5_FUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr_D4P5_FUV"
      description = "The error on Mag_D4P5_FUV."
      verbLevel="30" />
    <column name="MagErr_D7P5_FUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr_D7P5_FUV"
      description = "The error on Mag_D7P5_FUV."
      verbLevel="30" />
    <column name="MagErr_D12P0_FUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr_D12P0_FUV"
      description = "The error on Mag_D10P0_FUV."
      verbLevel="30" />
    <column name="MagErr_D18P0_FUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr_D18P0_FUV"
      description = "The error on Mag_D18P0_FUV."
      verbLevel="30" />
    <column name="MagErr_D25P5_FUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr_D25P5_FUV"
      description = "The error on Mag_D25P5_FUV."
      verbLevel="30" />
    <column name="MagErr_D34P5_FUV"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr_D34P5_FUV"
      description = "The error on Mag_D34P5_FUV."
      verbLevel="30" />
    <column name="Flux20_radius_FUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux20_radius_FUV"
      description="Radius enclosing 20% of the total FUV light."
      verbLevel="30" />
    <column name="Flux50_radius_FUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux50_radius_FUV"
      description="Radius enclosing 50% of the total FUV light."
      verbLevel="30" />
    <column name="Flux80_radius_FUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux80_radius_FUV"
      description="Radius enclosing 80% of the total FUV light."
      verbLevel="30" />
    <column name="Flux90_radius_FUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux90_radius_FUV"
      description="Radius enclosing 90% of the total FUV light."
      verbLevel="30" />
    <column name="Flux95_radius_FUV"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux95_radius_FUV"
      description="Radius enclosing 95% of the total FUV light."
      verbLevel="30" />
    <column name="FWHM_FUV"
      type="real"
      unit="arcsec"
      ucd="phys.angSize"
      tablehead="FWHM_FUV"
      description="The full width half maximum of the source in the FUV."
      verbLevel="30" />
    <column name="Flags_FUV"
      type="integer"
      ucd="meta.code"
      tablehead="Flags_FUV"
      description="SExtractor flags for the FUV. See SExtractor manual for more
      details."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="Tile"
      type="text"
      ucd="meta.id"
      tablehead="Tile"
      description="Name of the tile in which the source was detected."
      verbLevel="40" />
    <column name="ExpTime_FUV"
      type="real"
      unit="s"
      ucd="obs.exposure"
      tablehead="ExpTime_FUV"
      description="The FUV exposure time of the tile in which the source was
      detected."
      verbLevel="40" />
    <column name="ExpTime_NUV"
      type="real"
      unit="s"
      ucd="obs.exposure"
      tablehead="ExpTime_NUV"
      description="The NUV exposure time of the tile in which the source was
      detected."
      verbLevel="40" />
    <column name="Name"
      type="text"
      ucd="meta.id;meta.main"
      tablehead="Name"
      description="Name of the source in the IAU format."
      required="True"/>
    <column name="BKGRND_MAG_NUV"
      type="real"
      unit="mag.arcsec-2"
      ucd="instr.background;phot.mag;em.UV.200-300nm"
      tablehead="BKGRND_MAG_NUV"
      description="The NUV background surface brightness at the source position."
      verbLevel="40" />
    <column name="BKGRND_MAG_FUV"
      type="real"
      unit="mag.arcsec-2"
      ucd="instr.background;phot.mag;em.UV.100-200nm"
      tablehead="BKGRND_MAG_FUV"
      description="The FUV background surface brightness at the source position."
      verbLevel="40" />
    <column name="HP_pixel"
      type="text"
      ucd="pos.healpix"
      tablehead="HP_pixel"
      description="String version of the 64-bit integer giving the Healpix pixel
      in which the source centroid is found. The pixels are in the nested scheme
      in Galactic coordinates and assume Nside = 16384."
      verbLevel="40" />
    <column name="Extended"
      type="smallint"
      ucd="meta.code"
      tablehead="Extended"
      description="Flag indicating whether this source lies within a large
      extended galaxy."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="Flux_3UL_FUV"
      type="real"
      unit="uJy"
      ucd="stat.max;phot.flux;em.UV.100-200nm"
      tablehead="Flux_3UL_FUV"
      description="3-sigma upper limit to the FUV flux at this position given
      the FUV background and effective exposure time within the NUV defined
      'AUTO' aperture."
      verbLevel="40" />
    <column name="Mag_3UL_FUV"
      type="real"
      unit="mag"
      ucd="stat.max;phot.mag;em.UV.100-200nm"
      tablehead="Mag_3UL_FUV"
      description="3-sigma upper limit to the FUV magnitude at this position
      given the FUV background and effective exposure time within the NUV
      defined 'AUTO' aperture."
      verbLevel="40" />
    <column name="Flux_D6P0_3UL_FUV"
      type="real"
      unit="uJy"
      ucd="stat.max;phot.flux;em.UV.100-200nm"
      tablehead="Flux_D6P0_3UL_FUV"
      description="3-sigma upper limit to the FUV flux at this position given
      the FUV background and effective exposure time within a fixed circular
      aperture with diameter 6 arcsec."
      verbLevel="40" />
    <column name="Mag_D6P0_3UL_FUV"
      type="real"
      unit="mag"
      ucd="stat.max;phot.mag;em.UV.100-200nm"
      tablehead="Mag_D6P0_3UL_FUV"
      description="3-sigma upper limit to the FUV magnitude at this position
      given the FUV background and effective exposure time within a fixed
      circular aperture with diameter 6 arcsec."
      verbLevel="40" />
    <column name="ManFlag"
      type="integer"
      ucd="meta.code"
      tablehead="ManFlag"
      description="Flag describing whether the source lies within an image
      artifact due to bright stars off of the field of view. These areas are
      primarily flagged manually outside of the standard GALEX
      pipeline."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <meta name="note" tag="1">
      This is the 64-bit integer version of the global object ID uniquely
      identifying this source including the tile number, band, product number,
      reduction try (path), etc. These values are also given as individual
      columns (shown below). The bits from most significant to least significant
      are:

      ======= ==== =============================================================
       3 bits vsn  Version number (of the pipeline; currently only set to either
                   1 or 2)
      16 bits tile Tile or field or target number
       2 bits type Observation type (00=single,01=AIS(multi))
       2 bits ow   Optics wheel position (01=direct,10=grism,11=opaque,
                   00=undefined)
       4 bits prod Product number(_visits,_best,etc.)
      12 bits img  Visit/sub-visit number (when type=01: 5 bit subvis + 7 bit
                   visit)
                   (This is just the visit number, except for AIS (or multi-leg)
                   observations where the first (highest) 5 bits are used for
                   the sub-visit number. When the data is secondary AIS visit
                   data (vsn=2), then the first (highest) 7 bits are used for
                   the sub-visit number.)
       3 bits try  Try number (processing number)
       2 bits band Band (01=nuv,10=fuv,11=both,00=undefined)
      20 bits xid  Extraction ID
      ======= ==== =============================================================
    </meta>
    <meta name="note" tag="2">
      Logical OR of artifact flags for pixels within a 3x3 pixel box in the NUV
      or FUV flags image centred on the source centroid pixel. The artifact flag
      is a binary flag with each bit indicating a different artefact. The bits
      have the meanings indicated below. The decimal equivalent for each flag is
      given in parentheses.

      =========== ===== =======================================================
      Artifact  1 (  1) (edge) Detector bevel edge reflection (NUV only).
      Artifact  2 (  2) (window) Detector window reflection (NUV only).
      Artifact  3 (  4) (dichroic) Dichroic reflection.
      Artifact  4 (  8) (varpix) Varible pixel based on time slices.
      Artifact  5 ( 16) (brtedge) Bright star near field edge (NUV only)
      Artifact  6 ( 32) Detector rim(annulus) proximity(>0.6 deg fld ctr)
      Artifact  7 ( 64) (dimask) dichroic reflection artifact mask flag
      Artifact  8 (128) (varmask) Masked pixel determined by varpix.
      Artifact  9 (256) (hotmask) Detector hot spots.
      Artifact 10 (512) (yaghost) Possible ghost image from YA slope.
                        (This is not relevant for GR6 data but will become
                        relevant once we include GR7 data).
      =========== ===== =======================================================

      For FUV, if no FUV observations are available at that location then the
      value -99 appears.
    </meta>
  </table>

  <data id="import_gmsc">
    <sources>data/galex_gmsc.csv</sources>
    <csvGrammar />
    <make table="gmsc">
      <rowmaker idmaps="*">
        <simplemaps>
          Field:Field,
          GGOID:objid,
          TileNum:tilenum,
          RA:ra,
          Dec:dec,
          E_BV:e_bv,
          GLON:glon,
          GLAT:glat,
          FOV_radius:fov_radius,
          F_GALEX_NUV:flux_nuv,
          FErr_GALEX_NUV:fluxerr_nuv,
          M_GALEX_NUV:mag_nuv,
          MErr_GALEX_NUV:magerr_nuv,
          S2N_GALEX_NUV:s2n_nuv,
          F_GALEX_FUV:flux_fuv,
          FErr_GALEX_FUV:fluxerr_fuv,
          M_GALEX_FUV:mag_fuv,
          MErr_GALEX_FUV:magerr_fuv,
          S2N_GALEX_FUV:s2n_fuv,
          BKGRND_FLUX_NUV:bkgrnd_flux_nuv,
          BKGRND_FLUX_FUV:bkgrnd_flux_fuv,
          Eff_Exptime_NUV:eff_exptime_nuv,
          Eff_Exptime_FUV:eff_exptime_fuv,
          Artefact_NUV:artifact_nuv,
          Artefact_FUV:artifact_fuv,
          PosErr:poserr,
          Number_MCAT:number_mcat,
          Flux_D3P0_NUV:flux_d3p0_nuv,
          Flux_D4P5_NUV:flux_d4p5_nuv,
          Flux_D7P5_NUV:flux_d7p5_nuv,
          Flux_D12P0_NUV:flux_d12p0_nuv,
          Flux_D18P0_NUV:flux_d18p0_nuv,
          Flux_D25P5_NUV:flux_d25p5_nuv,
          Flux_D34P5_NUV:flux_d34p5_nuv,
          FluxErr_D3P0_NUV:fluxerr_d3p0_nuv,
          FluxErr_D4P5_NUV:fluxerr_d4p5_nuv,
          FluxErr_D7P5_NUV:fluxerr_d7p5_nuv,
          FluxErr_D12P0_NUV:fluxerr_d12p0_nuv,
          FluxErr_D18P0_NUV:fluxerr_d18p0_nuv,
          FluxErr_D25P5_NUV:fluxerr_d25p5_nuv,
          FluxErr_D34P5_NUV:fluxerr_d34p5_nuv,
          Mag_D3P0_NUV:mag_d3p0_nuv,
          Mag_D4P5_NUV:mag_d4p5_nuv,
          Mag_D7P5_NUV:mag_d7p5_nuv,
          Mag_D12P0_NUV:mag_d12p0_nuv,
          Mag_D18P0_NUV:mag_d18p0_nuv,
          Mag_D25P5_NUV:mag_d25p5_nuv,
          Mag_D34P5_NUV:mag_d34p5_nuv,
          MagErr_D3P0_NUV:magerr_d3p0_nuv,
          MagErr_D4P5_NUV:magerr_d4p5_nuv,
          MagErr_D7P5_NUV:magerr_d7p5_nuv,
          MagErr_D12P0_NUV:magerr_d12p0_nuv,
          MagErr_D18P0_NUV:magerr_d18p0_nuv,
          MagErr_D25P5_NUV:magerr_d25p5_nuv,
          MagErr_D34P5_NUV:magerr_d34p5_nuv,
          Flux20_radius_NUV:flux20_radius_nuv,
          Flux50_radius_NUV:flux50_radius_nuv,
          Flux80_radius_NUV:flux80_radius_nuv,
          Flux90_radius_NUV:flux90_radius_nuv,
          Flux95_radius_NUV:flux95_radius_nuv,
          Flux_max_NUV:flux_max_nuv,
          X_image:x_image,
          Y_image:y_image,
          Xpeak_image:xpeak_image,
          Ypeak_image:ypeak_image,
          Semimajor:semimajor,
          PosAng:posang,
          Semiminor:semiminor,
          SemimajorErr:semimajorerr,
          SemiminorErr:semiminorerr,
          PosAngErr:posangerr,
          FWHM_NUV:fwhm_nuv,
          Flags_NUV:flags_nuv,
          Class_Star:class_star,
          Flux_D3P0_FUV:flux_d3p0_fuv,
          Flux_D4P5_FUV:flux_d4p5_fuv,
          Flux_D7P5_FUV:flux_d7p5_fuv,
          Flux_D12P0_FUV:flux_d12p0_fuv,
          Flux_D18P0_FUV:flux_d18p0_fuv,
          Flux_D25P5_FUV:flux_d25p5_fuv,
          Flux_D34P5_FUV:flux_d34p5_fuv,
          FluxErr_D3P0_FUV:fluxerr_d3p0_fuv,
          FluxErr_D4P5_FUV:fluxerr_d4p5_fuv,
          FluxErr_D7P5_FUV:fluxerr_d7p5_fuv,
          FluxErr_D12P0_FUV:fluxerr_d12p0_fuv,
          FluxErr_D18P0_FUV:fluxerr_d18p0_fuv,
          FluxErr_D25P5_FUV:fluxerr_d25p5_fuv,
          FluxErr_D34P5_FUV:fluxerr_d34p5_fuv,
          Mag_D3P0_FUV:mag_d3p0_fuv,
          Mag_D4P5_FUV:mag_d4p5_fuv,
          Mag_D7P5_FUV:mag_d7p5_fuv,
          Mag_D12P0_FUV:mag_d12p0_fuv,
          Mag_D18P0_FUV:mag_d18p0_fuv,
          Mag_D25P5_FUV:mag_d25p5_fuv,
          Mag_D34P5_FUV:mag_d34p5_fuv,
          MagErr_D3P0_FUV:magerr_d3p0_fuv,
          MagErr_D4P5_FUV:magerr_d4p5_fuv,
          MagErr_D7P5_FUV:magerr_d7p5_fuv,
          MagErr_D12P0_FUV:magerr_d12p0_fuv,
          MagErr_D18P0_FUV:magerr_d18p0_fuv,
          MagErr_D25P5_FUV:magerr_d25p5_fuv,
          MagErr_D34P5_FUV:magerr_d34p5_fuv,
          Flux20_radius_FUV:flux20_radius_fuv,
          Flux50_radius_FUV:flux50_radius_fuv,
          Flux80_radius_FUV:flux80_radius_fuv,
          Flux90_radius_FUV:flux90_radius_fuv,
          Flux95_radius_FUV:flux95_radius_fuv,
          FWHM_FUV:fwhm_fuv,
          Flags_FUV:flags_fuv,
          Tile:tile,
          ExpTime_FUV:exptime_fuv,
          ExpTime_NUV:exptime_nuv,
          Name:name,
          BKGRND_MAG_NUV:bkgrnd_mag_nuv,
          BKGRND_MAG_FUV:bkgrnd_mag_fuv,
          HP_pixel:hp_pixel,
          Extended:extended,
          Flux_3UL_FUV:flux_3ul_fuv,
          Mag_3UL_FUV:mag_3ul_fuv,
          Flux_D6P0_3UL_FUV:flux_d6p0_3ul_fuv,
          Mag_D6P0_3UL_FUV:mag_d6p0_3ul_fuv,
          ManFlag:manflag
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone_gmsc" allowed="scs.xml,form,static">
    <meta name="title">GALEX Medium Imaging Survey Catalogue</meta>
    <meta name="shortName">GMSC</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="gmsc">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="F_GALEX_NUV" />
      <condDesc buildFrom="F_GALEX_FUV" />
      <condDesc buildFrom="Field" />
      <condDesc>
        <inputKey original="Name" required="False"/>
      </condDesc>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
