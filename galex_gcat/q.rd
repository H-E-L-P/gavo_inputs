<resource schema="galex_gcat">
  <meta name="title">GALEX GCAT catalogues</meta>
  <meta name="creationDate">2016-04-26T12:59:29+0200</meta>
  <meta name="description">
    GALEX All-Sky Source Catalog (GASC) and GALEX Medium Imaging Survey
    Catalog (GMSC).
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
    This resource contains the GALEX GCAT catalogues: the GALEX All-Sky Source
    Catalogue (GASC) and the GALEX Medium Imaging Survey Catalogue (GMSC).

    More information on the GCAT is available on `the Caltech GALEX site`__. In
    particular:

    __ http://www.galex.caltech.edu/wiki/GCAT_Manual

      GALEX has been undertaking a number of surveys covering large areas of sky
      at a variety of depths. However making use of this large data set can be
      difficult because the standard GALEX database contains all of the detected
      sources which include many duplicate observations of the same sources as
      well as numerous spurious low signal-to-noise sources. At the same time,
      the sky footprint associated with GALEX observations has not been well
      defined or presented in an easily useable format. In order to remedy these
      problems, we have constructed two catalogues of GALEX measurements, namely
      the GALEX All-Sky Survey Source Catalog (GASC) and the GALEX Medium
      Imaging Survey Catalog (GMSC). Our intention is that these catalogues will
      provide the primary reference catalog useful for matching GALEX
      measurements with other large surveys of the sky at other wavelengths.
      Covering a total of 26,300 deg2 of sky, the GASC consists of all GALEX
      observations with exposure times below 800 sec and reaches a depth of NUV
      21 (AB mag). The GMSC covers a smaller region of 5000 deg2 with exposure
      times between 800 and 10,000 sec and reaches a depth of NUV 23 mag.
      There are a total of 40 million unique sources in the GASC and 22
      million in the GMSC. Each catalogues accompanied by exposure time,
      coverage and flag maps in FITS and Healpix formats.

      These catalogues do not contain the deepest images available for the GALEX
      deep fields. While the sky covered by these tiles is included, we have
      limited the total exposure time to 10,000 sec. Crowding becomes
      a significant issue for the depths reached in the deep fields and thus
      requires more careful treatment than what is possible using the standard
      GALEX pipeline source detection. Users interested in these regions can
      find the deepest co-adds from the MAST archive and complete their own an
      analysis. Currently these catalogues only include GALEX data up to the GR6
      data release.

    To identify uniquely a source, one must use the name column.

    These catalogues were limited to HELP coverage and a ``field`` column has
    been added.


    HELP field coverage
    -------------------

    Here is the number of GMSC and GASC sources per HELP field:

           ==================  =============== ===============
                Field            GMSC counts     GASC counts
           ==================  =============== ===============
                    AKARI-NEP            6,142          14,563
                    AKARI-SEP           12,356           7,756
                       Bootes           61,748          20,059
                   CDFS-SWIRE           49,905          34,889
                       COSMOS           40,403          15,662
                          EGS           21,564           6,259
                     ELAIS-N1           60,774          28,561
                     ELAIS-N2           46,681          27,889
                     ELAIS-S1           39,405          26,354
                      GAMA-09          262,123         104,706
                      GAMA-12          219,450          80,206
                      GAMA-15          269,669          97,722
                        HDF-N            3,321           1,872
           Herschel-Stripe-82        1,318,546         468,385
                Lockman-SWIRE           97,661          26,865
                          NGP          185,199         217,288
                         SA13                              401
                          SGP          265,261         464,442
                    SPIRE-NEP                              346
                         SSDF           94,053         227,424
                         xFLS           36,163          15,790
                     XMM-13hr                              166
                      XMM-LSS           72,816          36,467
           ==================  =============== ===============


    History
    -------

    ======== =============================================================
    20160426 Addition of the GASC catalogue retrieved from STSCI GALEX
             CasJobs.
    20160303 Catalogue retrieved from STSCI GALEX CasJobs and ingested.
    ======== =============================================================

    RAW data
    --------

    You may also `download raw catalogues and MOC coverage`__.

    __ /galex_gcat/q/cone_gmsc/static

  </meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
    ]]> </meta>

  <table id="gmsc" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="name">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="field" />
    <index columns="flux_nuv" />
    <index columns="flux_fuv" />

    <column name="field"
      type="text"
      ucd="meta.id;obs.field"
      tablehead="Field"
      description="Name of the field in the HELP survey."
      verbLevel="30"/>
    <column name="ggoid"
      type="text"
      ucd="meta.id"
      tablehead="GGOID"
      description="Global object ID."
      note="1"
      required="True"
      verbLevel="40" />
    <column name="tilenum"
      type="integer"
      ucd="meta.id"
      tablehead="Tile number"
      description="Tile or target number."
      verbLevel="40">
        <values nullLiteral= "-99" />
    </column>
    <column name="ra"
      type="double precision"
      unit="deg"
      ucd="pos.eq.ra;meta.main"
      tablehead="RA"
      description="Right Ascension in a J2000 reference frame. This position is
      the NUV source position."
      required="True"/>
    <column name="dec"
      type="double precision"
      unit="deg"
      ucd="pos.eq.dec;meta.main"
      tablehead="Dec"
      description="Declination in a J2000 reference frame. This position is the
      NUV source position." required="True" />
    <column name="e_bv"
      type="real"
      unit="mag"
      ucd="phot.color.excess"
      tablehead="E(B-V)"
      description="The Galactic reddening expressed as E(B-V). This is derived
      from the Galactic extinctions maps from Schlegel et al. (1998)." />
    <column name="glon"
      type="real"
      unit="deg"
      ucd="pos.galactic.lon"
      tablehead="GLON"
      description="Galactic longitude."
      verbLevel="40" />
    <column name="glat"
      type="real"
      unit="deg"
      ucd="pos.galactic.lat"
      tablehead="GLAT"
      description="Galactic latitude."
      verbLevel="40" />
    <column name="fov_radius"
      type="real"
      unit="deg"
      ucd="pos.angDistance"
      tablehead="FOV radius"
      description="Distance from the centre of field of view for the tile in
      which this source was detected."
      verbLevel="40"/>
    <column name="flux_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="flux NUV"
      description="Calibrated NUV flux. This is currently always set to the
      SExtractor 'Auto' flux" />
    <column name="fluxerr_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="fluxerr NUV"
      description="The error in flux_NUV flux."/>
    <column name="mag_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="mag NUV"
      description="Calibrated NUV magnitude on the AB system. This is currently
      always set to the SExtractor 'AUTO' magnitude."
      verbLevel="40" />
    <column name="magerr_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="magerr NUV"
      description="The error on mag_NUV"
      verbLevel="40" />
    <column name="s2n_nuv"
      type="real"
      ucd="stat.snr;phot.flux;em.UV.200-300nm"
      tablehead="s/n NUV"
      description="The signal to noise ratio of the NUV flux, defined as the
      ratio of flux_NUV to fluxerr_NUV" />
    <column name="flux_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="flux FUV"
      description="Calibrated FUV flux measured within the NUV-defined 'AUTO'
      aperture. The value of the flux can be negative for FUV non-detections.
      Users can access the significance of a FUV detection using the
      S2N_FUV column. Sources with either no FUV data or with flux_FUV
      less than -99 are flagged with a value of -99." />
    <column name="fluxerr_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="fluxerr FUV"
      description="The error on flux_FUV" />
    <column name="mag_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="mag FUV"
      description="Calibrated FUV magnitude on the AB system measured within
      the NUV-defined 'AUTO' aperture. Sources with either a negative
      flux_FUV or without FUV observations will be flagged with values of
      either +99 or -99."
      verbLevel="40" />
    <column name="magerr_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="magerr_FUV"
      description="The error in M_GALEX_FUV. Sources with either a negative
      flux of without FUV observations will be flagged with values of either
      +99 or -99."
      verbLevel="40" />
    <column name="s2n_fuv"
      type="real"
      ucd="stat.snr;phot.flux;em.UV.100-200nm"
      tablehead="s/n FUV"
      description="The signal to noise ratio of the FUV flux, defined as the
      ratio of flux_FUV to fluxerr_FUV." />
    <column name="bkgrnd_flux_nuv"
      type="real"
      unit="uJy.arcsec-2"
      ucd="instr.background;phot.flux;em.UV.200-300nm"
      tablehead="bkgrnd flux NUV"
      description="The pipeline measured NUV background flux at the position of
      the source position.float"
      verbLevel="40" />
    <column name="bkgrnd_flux_fuv"
      type="real"
      unit="uJy.arcsec-2"
      ucd="instr.background;phot.flux;em.UV.100-200nm"
      tablehead="bkgrnd flux FUV"
      description="The pipeline measured FUV background flux at the position of
      the source position. If no FUV Observations are available at that
      location, then a value of -99.0 appears."
      verbLevel="40" />
    <column name="eff_exptime_nuv"
      type="real"
      unit="s"
      ucd="obs.exposure;em.UV.200-300nm"
      tablehead="Eff Exptime NUV"
      description="The effective exposure time in the NUV at the source
      location defined as the exposure time multiplied by the flat field." />
    <column name="eff_exptime_fuv"
      type="real"
      unit="s"
      ucd="obs.exposure;em.UV.100-200nm"
      tablehead="Eff Exptime FUV"
      description="The effective exposure time in the FUV at the source
      location defined as the exposure time multiplied by the flat field. If no
      FUV observations were taken at the location, then the value is -99.0" />
    <column name="artefact_nuv"
      type="integer"
      ucd="meta.code"
      tablehead="Artefact NUV"
      description="NUV artefact flag."
      note="2"
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="artefact_fuv"
      type="integer"
      ucd="meta.code"
      tablehead="Artefact FUV"
      description="FUV artefact flag."
      note="2"
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="poserr"
      type="real"
      unit="arcsec"
      ucd="stat.error;pos.posAng"
      tablehead="PosErr"
      description="This is the radial position error (1 sigma) which adds in
      quadrature the poisson position error and a constant systematic error in
      the absolute astrometry."
      verbLevel="40" />
    <column name="number_mcat"
      type="integer"
      ucd="meta.id"
      tablehead="Number MCAT"
      description="Running number for the source in the catalogue from the tile
      where this source was observed."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="flux_d3p0_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D3P0 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="flux_d4p5_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D4P5 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="flux_d7p5_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D7P5 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="flux_d12p0_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D12P0 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="flux_d18p0_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D18P0 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="flux_d25p5_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D25P5 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="flux_d34p5_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D34P5 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="fluxerr_d3p0_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D3P0 NUV"
      description = "The error on Flux_D3P0_NUV."
      verbLevel="30" />
    <column name="fluxerr_d4p5_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D4P5 NUV"
      description = "The error on Flux_D4P5_NUV."
      verbLevel="30" />
    <column name="fluxerr_d7p5_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D7P5 NUV"
      description = "The error on Flux_D7P5_NUV."
      verbLevel="30" />
    <column name="fluxerr_d12p0_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D12P0 NUV"
      description = "The error on Flux_D10P0_NUV."
      verbLevel="30" />
    <column name="fluxerr_d18p0_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D18P0 NUV"
      description = "The error on Flux_D18P0_NUV."
      verbLevel="30" />
    <column name="fluxerr_d25p5_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D25P5 NUV"
      description = "The error on Flux_D25P5_NUV."
      verbLevel="30" />
    <column name="fluxerr_d34p5_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D34P5 NUV"
      description = "The error on Flux_D34P5_NUV."
      verbLevel="30" />
    <column name="mag_d3p0_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D3P0 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="mag_d4p5_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D4P5 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="mag_d7p5_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D7P5 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="mag_d12p0_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D12P0 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="mag_d18p0_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D18P0 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="mag_d25p5_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D25P5 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="mag_d34p5_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D34P5 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="magerr_d3p0_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D3P0 NUV"
      description = "The error on Mag_D3P0_NUV."
      verbLevel="30" />
    <column name="magerr_d4p5_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D4P5 NUV"
      description = "The error on Mag_D4P5_NUV."
      verbLevel="30" />
    <column name="magerr_d7p5_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D7P5 NUV"
      description = "The error on Mag_D7P5_NUV."
      verbLevel="30" />
    <column name="magerr_d12p0_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D12P0 NUV"
      description = "The error on Mag_D10P0_NUV."
      verbLevel="30" />
    <column name="magerr_d18p0_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D18P0 NUV"
      description = "The error on Mag_D18P0_NUV."
      verbLevel="30" />
    <column name="magerr_d25p5_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D25P5 NUV"
      description = "The error on Mag_D25P5_NUV."
      verbLevel="30" />
    <column name="magerr_d34p5_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D34P5 NUV"
      description = "The error on Mag_D34P5_NUV."
      verbLevel="30" />
    <column name="flux20_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux20 radius NUV"
      description="Radius enclosing 20% of the total NUV light."
      verbLevel="30" />
    <column name="flux50_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux50 radius NUV"
      description="Radius enclosing 50% of the total NUV light."
      verbLevel="30" />
    <column name="flux80_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux80 radius NUV"
      description="Radius enclosing 80% of the total NUV light."
      verbLevel="30" />
    <column name="flux90_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux90 radius NUV"
      description="Radius enclosing 90% of the total NUV light."
      verbLevel="30" />
    <column name="flux95_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux95 radius NUV"
      description="Radius enclosing 95% of the total NUV light."
      verbLevel="30" />
    <column name="flux_max_nuv"
      type="real"
      unit="uJy.arcsec-2"
      ucd="phot.flux.sb;em.UV.200-300nm"
      tablehead="Flux max NUV"
      description="Peak NUV flux of the source above the background."
      verbLevel="30" />
    <column name="x_image"
      type="real"
      unit="pix"
      ucd="pos.cartesian.x"
      tablehead="X image"
      description="X centroid position of the source in the image in which it
      was detected."
      verbLevel="30" />
    <column name="y_image"
      type="real"
      unit="pix"
      ucd="pos.cartesian.y"
      tablehead="Y image"
      description="Y centroid position of the source in the image in which it
      was detected."
      verbLevel="30" />
    <column name="xpeak_image"
      type="integer"
      unit="pix"
      ucd="pos.cartesian.x"
      tablehead="Xpeak image"
      description="X centroid position of the peak flux in the source in the
      image in which it was detected."
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="ypeak_image"
      type="integer"
      unit="pix"
      ucd="pos.cartesian.y"
      tablehead="Ypeak image"
      description="Y centroid position of the peak flux in the source in the
      image in which it was detected."
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="semimajor"
      type="real"
      unit="arcsec"
      ucd="phys.angSize.smajAxis"
      tablehead="Semimajor"
      description="Semi-major axis of the elliptical aperture used to measure
      the total flux. This is taken from the 'AUTO' measurements made by the
      SExtractor programme."
      verbLevel="30" />
    <column name="posang"
      type="real"
      unit="deg"
      ucd="pos.posAng"
      tablehead="PosAng"
      description="Position angle in degrees east of north of the elliptical
      aperture used to measure the total flux."
      verbLevel="30" />
    <column name="semiminor"
      type="real"
      unit="arcsec"
      ucd="phys.angSize.sminAxis"
      tablehead="Semiminor"
      description="Semi-minor axis of the elliptical aperture used to measure
      the total flux. This is taken from the 'AUTO' measurements made by the
      SExtractor programme."
      verbLevel="30" />
    <column name="semimajorerr"
      type="real"
      unit="arcsec"
      ucd="stat.error;phys.angSize.smajAxis"
      tablehead="SemimajorErr"
      description="The error on Semimajor"
      verbLevel="30"/>
    <column name="semiminorerr"
      type="real"
      unit="arcsec"
      ucd="stat.error;phys.angSize.sminAxis"
      tablehead="SemiminorErr"
      description="The error on Semiminor"
      verbLevel="30"/>
    <column name="posangerr"
      type="real"
      unit="deg"
      ucd="stat.error;pos.posAng"
      tablehead="PosAngErr"
      description="The error on PosAng"
      verbLevel="30"/>
    <column name="fwhm_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.angSize"
      tablehead="FWHM_NUV"
      description="The full width half maximum of the source in the NUV."
      verbLevel="30"/>
    <column name="flags_nuv"
      type="integer"
      ucd="meta.code"
      tablehead="Flags_NUV"
      description="SExtractor flags for the NUV. See SExtractor manual for more
      details."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="class_star"
      type="real"
      ucd="stat.probability"
      tablehead="Class_Star"
      description="The SExtractor classification of the source indicating the
      probability that the source is unresolved. The classification ranges from
      0.0 (resolved) to 1.0 (unresolved)." />
    <column name="flux_d3p0_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D3P0FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="flux_d4p5_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D4P5 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="flux_d7p5_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D7P5 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="flux_d12p0_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D12P0 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="flux_d18p0_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D18P0 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="flux_d25p5_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D25P5 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="flux_d34p5_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D34P5 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="fluxerr_d3p0_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D3P0 FUV"
      description = "The error on Flux_D3P0_FUV."
      verbLevel="30" />
    <column name="fluxerr_d4p5_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D4P5 FUV"
      description = "The error on Flux_D4P5_FUV."
      verbLevel="30" />
    <column name="fluxerr_d7p5_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D7P5 FUV"
      description = "The error on Flux_D7P5_FUV."
      verbLevel="30" />
    <column name="fluxerr_d12p0_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D12P0 FUV"
      description = "The error on Flux_D10P0_FUV."
      verbLevel="30" />
    <column name="fluxerr_d18p0_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D18P0 FUV"
      description = "The error on Flux_D18P0_FUV."
      verbLevel="30" />
    <column name="fluxerr_d25p5_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D25P5 FUV"
      description = "The error on Flux_D25P5_FUV."
      verbLevel="30" />
    <column name="fluxerr_d34p5_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D34P5 FUV"
      description = "The error on Flux_D34P5_FUV."
      verbLevel="30" />
    <column name="mag_d3p0_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D3P0 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="mag_d4p5_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D4P5 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="mag_d7p5_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D7P5 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="mag_d12p0_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D12P0 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="mag_d18p0_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D18P0 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="mag_d25p5_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D25P5 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="mag_d34p5_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D34P5 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="magerr_d3p0_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D3P0 FUV"
      description = "The error on Mag_D3P0_FUV."
      verbLevel="30" />
    <column name="magerr_d4p5_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D4P5 FUV"
      description = "The error on Mag_D4P5_FUV."
      verbLevel="30" />
    <column name="magerr_d7p5_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D7P5 FUV"
      description = "The error on Mag_D7P5_FUV."
      verbLevel="30" />
    <column name="magerr_d12p0_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D12P0 FUV"
      description = "The error on Mag_D10P0_FUV."
      verbLevel="30" />
    <column name="magerr_d18p0_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D18P0 FUV"
      description = "The error on Mag_D18P0_FUV."
      verbLevel="30" />
    <column name="magerr_d25p5_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D25P5 FUV"
      description = "The error on Mag_D25P5_FUV."
      verbLevel="30" />
    <column name="magerr_d34p5_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D34P5 FUV"
      description = "The error on Mag_D34P5_FUV."
      verbLevel="30" />
    <column name="flux20_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux20 radius FUV"
      description="Radius enclosing 20% of the total FUV light."
      verbLevel="30" />
    <column name="flux50_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux50 radius FUV"
      description="Radius enclosing 50% of the total FUV light."
      verbLevel="30" />
    <column name="flux80_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux80 radius FUV"
      description="Radius enclosing 80% of the total FUV light."
      verbLevel="30" />
    <column name="flux90_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux90 radius FUV"
      description="Radius enclosing 90% of the total FUV light."
      verbLevel="30" />
    <column name="flux95_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux95 radius FUV"
      description="Radius enclosing 95% of the total FUV light."
      verbLevel="30" />
    <column name="fwhm_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.angSize"
      tablehead="FWHM FUV"
      description="The full width half maximum of the source in the FUV."
      verbLevel="30" />
    <column name="flags_fuv"
      type="integer"
      ucd="meta.code"
      tablehead="Flags FUV"
      description="SExtractor flags for the FUV. See SExtractor manual for more
      details."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="tile"
      type="text"
      ucd="meta.id"
      tablehead="Tile"
      description="Name of the tile in which the source was detected."
      verbLevel="40" />
    <column name="exptime_fuv"
      type="real"
      unit="s"
      ucd="obs.exposure"
      tablehead="ExpTime FUV"
      description="The FUV exposure time of the tile in which the source was
      detected."
      verbLevel="40" />
    <column name="exptime_nuv"
      type="real"
      unit="s"
      ucd="obs.exposure"
      tablehead="ExpTime NUV"
      description="The NUV exposure time of the tile in which the source was
      detected."
      verbLevel="40" />
    <column name="name"
      type="text"
      ucd="meta.id;meta.main"
      tablehead="Name"
      description="Name of the source in the IAU format."
      required="True"/>
    <column name="bkgrnd_mag_nuv"
      type="real"
      unit="mag.arcsec-2"
      ucd="instr.background;phot.mag;em.UV.200-300nm"
      tablehead="BKGRND MAG NUV"
      description="The NUV background surface brightness at the source position."
      verbLevel="40" />
    <column name="bkgrnd_mag_fuv"
      type="real"
      unit="mag.arcsec-2"
      ucd="instr.background;phot.mag;em.UV.100-200nm"
      tablehead="BKGRND MAG FUV"
      description="The FUV background surface brightness at the source position."
      verbLevel="40" />
    <column name="hp_pixel"
      type="text"
      ucd="pos.healpix"
      tablehead="HP pixel"
      description="String version of the 64-bit integer giving the Healpix pixel
      in which the source centroid is found. The pixels are in the nested scheme
      in Galactic coordinates and assume Nside = 16384."
      verbLevel="40" />
    <column name="extended"
      type="smallint"
      ucd="meta.code"
      tablehead="Extended"
      description="Flag indicating whether this source lies within a large
      extended galaxy."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="flux_3ul_fuv"
      type="real"
      unit="uJy"
      ucd="stat.max;phot.flux;em.UV.100-200nm"
      tablehead="Flux 3UL FUV"
      description="3-sigma upper limit to the FUV flux at this position given
      the FUV background and effective exposure time within the NUV defined
      'AUTO' aperture."
      verbLevel="40" />
    <column name="mag_3ul_fuv"
      type="real"
      unit="mag"
      ucd="stat.max;phot.mag;em.UV.100-200nm"
      tablehead="Mag 3UL FUV"
      description="3-sigma upper limit to the FUV magnitude at this position
      given the FUV background and effective exposure time within the NUV
      defined 'AUTO' aperture."
      verbLevel="40" />
    <column name="flux_d6p0_3ul_fuv"
      type="real"
      unit="uJy"
      ucd="stat.max;phot.flux;em.UV.100-200nm"
      tablehead="Flux D6P0 3UL FUV"
      description="3-sigma upper limit to the FUV flux at this position given
      the FUV background and effective exposure time within a fixed circular
      aperture with diameter 6 arcsec."
      verbLevel="40" />
    <column name="mag_d6p0_3ul_fuv"
      type="real"
      unit="mag"
      ucd="stat.max;phot.mag;em.UV.100-200nm"
      tablehead="Mag D6P0 3UL FUV"
      description="3-sigma upper limit to the FUV magnitude at this position
      given the FUV background and effective exposure time within a fixed
      circular aperture with diameter 6 arcsec."
      verbLevel="40" />
    <column name="manflag"
      type="integer"
      ucd="meta.code"
      tablehead="ManFlag"
      description="Flag describing whether the source lies within an image
      artefact due to bright stars off of the field of view. These areas are
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
      Logical OR of artefact flags for pixels within a 3x3 pixel box in the NUV
      or FUV flags image centred on the source centroid pixel. The artefact flag
      is a binary flag with each bit indicating a different artefact. The bits
      have the meanings indicated below. The decimal equivalent for each flag is
      given in parentheses.

      =========== ===== =======================================================
      Artefact  1 (  1) (edge) Detector bevel edge reflection (NUV only).
      Artefact  2 (  2) (window) Detector window reflection (NUV only).
      Artefact  3 (  4) (dichroic) Dichroic reflection.
      Artefact  4 (  8) (varpix) Varible pixel based on time slices.
      Artefact  5 ( 16) (brtedge) Bright star near field edge (NUV only)
      Artefact  6 ( 32) Detector rim(annulus) proximity(>0.6 deg fld ctr)
      Artefact  7 ( 64) (dimask) dichroic reflection artefact mask flag
      Artefact  8 (128) (varmask) Masked pixel determined by varpix.
      Artefact  9 (256) (hotmask) Detector hot spots.
      Artefact 10 (512) (yaghost) Possible ghost image from YA slope.
                        (This is not relevant for GR6 data but will become
                        relevant once we include GR7 data).
      =========== ===== =======================================================

      For FUV, if no FUV observations are available at that location then the
      value -99 appears.
    </meta>
  </table>

  <table id="gasc" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="name">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="field" />
    <index columns="flux_nuv" />
    <index columns="flux_fuv" />

    <column name="field"
      type="text"
      ucd="meta.id;obs.field"
      tablehead="Field"
      description="Name of the field in the HELP survey."
      verbLevel="30" />
    <column name="ggoid"
      type="text"
      ucd="meta.id"
      tablehead="GGOID"
      description="Global object ID."
      note="1"
      required="True"
      verbLevel="40" />
    <column name="tilenum"
      type="integer"
      ucd="meta.id"
      tablehead="Tile number"
      description="Tile or target number."
      verbLevel="40">
        <values nullLiteral= "-99" />
    </column>
    <column name="ra"
      type="double precision"
      unit="deg"
      ucd="pos.eq.ra;meta.main"
      tablehead="RA"
      description="Right Ascension in a J2000 reference frame. This position is
      the NUV source position."
      required="True"/>
    <column name="dec"
      type="double precision"
      unit="deg"
      ucd="pos.eq.dec;meta.main"
      tablehead="Dec"
      description="Declination in a J2000 reference frame. This position is the
      NUV source position." required="True" />
    <column name="e_bv"
      type="real"
      unit="mag"
      ucd="phot.color.excess"
      tablehead="E(B-V)"
      description="The Galactic reddening expressed as E(B-V). This is derived
      from the Galactic extinctions maps from Schlegel et al. (1998)." />
    <column name="glon"
      type="real"
      unit="deg"
      ucd="pos.galactic.lon"
      tablehead="GLON"
      description="Galactic longitude."
      verbLevel="40" />
    <column name="glat"
      type="real"
      unit="deg"
      ucd="pos.galactic.lat"
      tablehead="GLAT"
      description="Galactic latitude."
      verbLevel="40" />
    <column name="fov_radius"
      type="real"
      unit="deg"
      ucd="pos.angDistance"
      tablehead="FOV radius"
      description="Distance from the centre of field of view for the tile in
      which this source was detected."
      verbLevel="40"/>
    <column name="flux_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="flux NUV"
      description="Calibrated NUV flux. This is currently always set to the
      SExtractor 'Auto' flux" />
    <column name="fluxerr_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="fluxerr NUV"
      description="The error in flux_NUV flux."/>
    <column name="mag_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="mag NUV"
      description="Calibrated NUV magnitude on the AB system. This is currently
      always set to the SExtractor 'AUTO' magnitude."
      verbLevel="40" />
    <column name="magerr_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="magerr NUV"
      description="The error on mag_NUV"
      verbLevel="40" />
    <column name="s2n_nuv"
      type="real"
      ucd="stat.snr;phot.flux;em.UV.200-300nm"
      tablehead="s/n NUV"
      description="The signal to noise ratio of the NUV flux, defined as the
      ratio of flux_NUV to fluxerr_NUV" />
    <column name="flux_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="flux FUV"
      description="Calibrated FUV flux measured within the NUV-defined 'AUTO'
      aperture. The value of the flux can be negative for FUV non-detections.
      Users can access the significance of a FUV detection using the
      S2N_FUV column. Sources with either no FUV data or with flux_FUV
      less than -99 are flagged with a value of -99." />
    <column name="fluxerr_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="fluxerr FUV"
      description="The error on flux_FUV" />
    <column name="mag_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="mag FUV"
      description="Calibrated FUV magnitude on the AB system measured within
      the NUV-defined 'AUTO' aperture. Sources with either a negative
      flux_FUV or without FUV observations will be flagged with values of
      either +99 or -99."
      verbLevel="40" />
    <column name="magerr_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="magerr_FUV"
      description="The error in M_GALEX_FUV. Sources with either a negative
      flux of without FUV observations will be flagged with values of either
      +99 or -99."
      verbLevel="40" />
    <column name="s2n_fuv"
      type="real"
      ucd="stat.snr;phot.flux;em.UV.100-200nm"
      tablehead="s/n FUV"
      description="The signal to noise ratio of the FUV flux, defined as the
      ratio of flux_FUV to fluxerr_FUV." />
    <column name="bkgrnd_flux_nuv"
      type="real"
      unit="uJy.arcsec-2"
      ucd="instr.background;phot.flux;em.UV.200-300nm"
      tablehead="bkgrnd flux NUV"
      description="The pipeline measured NUV background flux at the position of
      the source position.float"
      verbLevel="40" />
    <column name="bkgrnd_flux_fuv"
      type="real"
      unit="uJy.arcsec-2"
      ucd="instr.background;phot.flux;em.UV.100-200nm"
      tablehead="bkgrnd flux FUV"
      description="The pipeline measured FUV background flux at the position of
      the source position. If no FUV Observations are available at that
      location, then a value of -99.0 appears."
      verbLevel="40" />
    <column name="eff_exptime_nuv"
      type="real"
      unit="s"
      ucd="obs.exposure;em.UV.200-300nm"
      tablehead="Eff Exptime NUV"
      description="The effective exposure time in the NUV at the source
      location defined as the exposure time multiplied by the flat field." />
    <column name="eff_exptime_fuv"
      type="real"
      unit="s"
      ucd="obs.exposure;em.UV.100-200nm"
      tablehead="Eff Exptime FUV"
      description="The effective exposure time in the FUV at the source
      location defined as the exposure time multiplied by the flat field. If no
      FUV observations were taken at the location, then the value is -99.0" />
    <column name="artefact_nuv"
      type="integer"
      ucd="meta.code"
      tablehead="Artefact NUV"
      description="NUV artefact flag."
      note="2"
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="artefact_fuv"
      type="integer"
      ucd="meta.code"
      tablehead="Artefact FUV"
      description="FUV artefact flag."
      note="2"
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="poserr"
      type="real"
      unit="arcsec"
      ucd="stat.error;pos.posAng"
      tablehead="PosErr"
      description="This is the radial position error (1 sigma) which adds in
      quadrature the poisson position error and a constant systematic error in
      the absolute astrometry."
      verbLevel="40" />
    <column name="number_mcat"
      type="integer"
      ucd="meta.id"
      tablehead="Number MCAT"
      description="Running number for the source in the catalogue from the tile
      where this source was observed."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="flux_d3p0_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D3P0 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="flux_d4p5_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D4P5 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="flux_d7p5_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D7P5 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="flux_d12p0_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D12P0 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="flux_d18p0_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D18P0 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="flux_d25p5_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D25P5 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="flux_d34p5_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="Flux D34P5 NUV"
      description="NUV flux measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="fluxerr_d3p0_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D3P0 NUV"
      description = "The error on Flux_D3P0_NUV."
      verbLevel="30" />
    <column name="fluxerr_d4p5_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D4P5 NUV"
      description = "The error on Flux_D4P5_NUV."
      verbLevel="30" />
    <column name="fluxerr_d7p5_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D7P5 NUV"
      description = "The error on Flux_D7P5_NUV."
      verbLevel="30" />
    <column name="fluxerr_d12p0_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D12P0 NUV"
      description = "The error on Flux_D10P0_NUV."
      verbLevel="30" />
    <column name="fluxerr_d18p0_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D18P0 NUV"
      description = "The error on Flux_D18P0_NUV."
      verbLevel="30" />
    <column name="fluxerr_d25p5_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D25P5 NUV"
      description = "The error on Flux_D25P5_NUV."
      verbLevel="30" />
    <column name="fluxerr_d34p5_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="FluxErr D34P5 NUV"
      description = "The error on Flux_D34P5_NUV."
      verbLevel="30" />
    <column name="mag_d3p0_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D3P0 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="mag_d4p5_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D4P5 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="mag_d7p5_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D7P5 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="mag_d12p0_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D12P0 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="mag_d18p0_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D18P0 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="mag_d25p5_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D25P5 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="mag_d34p5_nuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.200-300nm"
      tablehead="Mag D34P5 NUV"
      description="NUV magnitude measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="magerr_d3p0_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D3P0 NUV"
      description = "The error on Mag_D3P0_NUV."
      verbLevel="30" />
    <column name="magerr_d4p5_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D4P5 NUV"
      description = "The error on Mag_D4P5_NUV."
      verbLevel="30" />
    <column name="magerr_d7p5_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D7P5 NUV"
      description = "The error on Mag_D7P5_NUV."
      verbLevel="30" />
    <column name="magerr_d12p0_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D12P0 NUV"
      description = "The error on Mag_D10P0_NUV."
      verbLevel="30" />
    <column name="magerr_d18p0_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D18P0 NUV"
      description = "The error on Mag_D18P0_NUV."
      verbLevel="30" />
    <column name="magerr_d25p5_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D25P5 NUV"
      description = "The error on Mag_D25P5_NUV."
      verbLevel="30" />
    <column name="magerr_d34p5_nuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      tablehead="MagErr D34P5 NUV"
      description = "The error on Mag_D34P5_NUV."
      verbLevel="30" />
    <column name="flux20_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux20 radius NUV"
      description="Radius enclosing 20% of the total NUV light."
      verbLevel="30" />
    <column name="flux50_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux50 radius NUV"
      description="Radius enclosing 50% of the total NUV light."
      verbLevel="30" />
    <column name="flux80_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux80 radius NUV"
      description="Radius enclosing 80% of the total NUV light."
      verbLevel="30" />
    <column name="flux90_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux90 radius NUV"
      description="Radius enclosing 90% of the total NUV light."
      verbLevel="30" />
    <column name="flux95_radius_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.200-300nm"
      tablehead="Flux95 radius NUV"
      description="Radius enclosing 95% of the total NUV light."
      verbLevel="30" />
    <column name="flux_max_nuv"
      type="real"
      unit="uJy.arcsec-2"
      ucd="phot.flux.sb;em.UV.200-300nm"
      tablehead="Flux max NUV"
      description="Peak NUV flux of the source above the background."
      verbLevel="30" />
    <column name="x_image"
      type="real"
      unit="pix"
      ucd="pos.cartesian.x"
      tablehead="X image"
      description="X centroid position of the source in the image in which it
      was detected."
      verbLevel="30" />
    <column name="y_image"
      type="real"
      unit="pix"
      ucd="pos.cartesian.y"
      tablehead="Y image"
      description="Y centroid position of the source in the image in which it
      was detected."
      verbLevel="30" />
    <column name="xpeak_image"
      type="integer"
      unit="pix"
      ucd="pos.cartesian.x"
      tablehead="Xpeak image"
      description="X centroid position of the peak flux in the source in the
      image in which it was detected."
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="ypeak_image"
      type="integer"
      unit="pix"
      ucd="pos.cartesian.y"
      tablehead="Ypeak image"
      description="Y centroid position of the peak flux in the source in the
      image in which it was detected."
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="semimajor"
      type="real"
      unit="arcsec"
      ucd="phys.angSize.smajAxis"
      tablehead="Semimajor"
      description="Semi-major axis of the elliptical aperture used to measure
      the total flux. This is taken from the 'AUTO' measurements made by the
      SExtractor programme."
      verbLevel="30" />
    <column name="posang"
      type="real"
      unit="deg"
      ucd="pos.posAng"
      tablehead="PosAng"
      description="Position angle in degrees east of north of the elliptical
      aperture used to measure the total flux."
      verbLevel="30" />
    <column name="semiminor"
      type="real"
      unit="arcsec"
      ucd="phys.angSize.sminAxis"
      tablehead="Semiminor"
      description="Semi-minor axis of the elliptical aperture used to measure
      the total flux. This is taken from the 'AUTO' measurements made by the
      SExtractor programme."
      verbLevel="30" />
    <column name="semimajorerr"
      type="real"
      unit="arcsec"
      ucd="stat.error;phys.angSize.smajAxis"
      tablehead="SemimajorErr"
      description="The error on Semimajor"
      verbLevel="30"/>
    <column name="semiminorerr"
      type="real"
      unit="arcsec"
      ucd="stat.error;phys.angSize.sminAxis"
      tablehead="SemiminorErr"
      description="The error on Semiminor"
      verbLevel="30"/>
    <column name="posangerr"
      type="real"
      unit="deg"
      ucd="stat.error;pos.posAng"
      tablehead="PosAngErr"
      description="The error on PosAng"
      verbLevel="30"/>
    <column name="fwhm_nuv"
      type="real"
      unit="arcsec"
      ucd="phys.angSize"
      tablehead="FWHM_NUV"
      description="The full width half maximum of the source in the NUV."
      verbLevel="30"/>
    <column name="flags_nuv"
      type="integer"
      ucd="meta.code"
      tablehead="Flags_NUV"
      description="SExtractor flags for the NUV. See SExtractor manual for more
      details."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="class_star"
      type="real"
      ucd="stat.probability"
      tablehead="Class_Star"
      description="The SExtractor classification of the source indicating the
      probability that the source is unresolved. The classification ranges from
      0.0 (resolved) to 1.0 (unresolved)." />
    <column name="flux_d3p0_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D3P0FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="flux_d4p5_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D4P5 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="flux_d7p5_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D7P5 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="flux_d12p0_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D12P0 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="flux_d18p0_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D18P0 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="flux_d25p5_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D25P5 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="flux_d34p5_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="Flux D34P5 FUV"
      description="FUV flux measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="fluxerr_d3p0_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D3P0 FUV"
      description = "The error on Flux_D3P0_FUV."
      verbLevel="30" />
    <column name="fluxerr_d4p5_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D4P5 FUV"
      description = "The error on Flux_D4P5_FUV."
      verbLevel="30" />
    <column name="fluxerr_d7p5_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D7P5 FUV"
      description = "The error on Flux_D7P5_FUV."
      verbLevel="30" />
    <column name="fluxerr_d12p0_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D12P0 FUV"
      description = "The error on Flux_D10P0_FUV."
      verbLevel="30" />
    <column name="fluxerr_d18p0_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D18P0 FUV"
      description = "The error on Flux_D18P0_FUV."
      verbLevel="30" />
    <column name="fluxerr_d25p5_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D25P5 FUV"
      description = "The error on Flux_D25P5_FUV."
      verbLevel="30" />
    <column name="fluxerr_d34p5_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="FluxErr D34P5 FUV"
      description = "The error on Flux_D34P5_FUV."
      verbLevel="30" />
    <column name="mag_d3p0_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D3P0 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      3.0 arcsec."
      verbLevel="30" />
    <column name="mag_d4p5_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D4P5 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      4.5 arcsec"
      verbLevel="30" />
    <column name="mag_d7p5_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D7P5 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      7.5 arcsec"
      verbLevel="30" />
    <column name="mag_d12p0_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D12P0 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      12.0 arcsec"
      verbLevel="30" />
    <column name="mag_d18p0_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D18P0 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      18.0 arcsec"
      verbLevel="30" />
    <column name="mag_d25p5_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D25P5 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      25.5 arcsec"
      verbLevel="30" />
    <column name="mag_d34p5_fuv"
      type="real"
      unit="mag"
      ucd="phot.mag;em.UV.100-200nm"
      tablehead="Mag D34P5 FUV"
      description="FUV magnitude measured in a fixed circular aperture with diameter
      34.5 arcsec"
      verbLevel="30" />
    <column name="magerr_d3p0_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D3P0 FUV"
      description = "The error on Mag_D3P0_FUV."
      verbLevel="30" />
    <column name="magerr_d4p5_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D4P5 FUV"
      description = "The error on Mag_D4P5_FUV."
      verbLevel="30" />
    <column name="magerr_d7p5_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D7P5 FUV"
      description = "The error on Mag_D7P5_FUV."
      verbLevel="30" />
    <column name="magerr_d12p0_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D12P0 FUV"
      description = "The error on Mag_D10P0_FUV."
      verbLevel="30" />
    <column name="magerr_d18p0_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D18P0 FUV"
      description = "The error on Mag_D18P0_FUV."
      verbLevel="30" />
    <column name="magerr_d25p5_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D25P5 FUV"
      description = "The error on Mag_D25P5_FUV."
      verbLevel="30" />
    <column name="magerr_d34p5_fuv"
      type="real"
      unit="mag"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      tablehead="MagErr D34P5 FUV"
      description = "The error on Mag_D34P5_FUV."
      verbLevel="30" />
    <column name="flux20_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux20 radius FUV"
      description="Radius enclosing 20% of the total FUV light."
      verbLevel="30" />
    <column name="flux50_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux50 radius FUV"
      description="Radius enclosing 50% of the total FUV light."
      verbLevel="30" />
    <column name="flux80_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux80 radius FUV"
      description="Radius enclosing 80% of the total FUV light."
      verbLevel="30" />
    <column name="flux90_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux90 radius FUV"
      description="Radius enclosing 90% of the total FUV light."
      verbLevel="30" />
    <column name="flux95_radius_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.size.radius;phot.flux;em.UV.100-200nm"
      tablehead="Flux95 radius FUV"
      description="Radius enclosing 95% of the total FUV light."
      verbLevel="30" />
    <column name="fwhm_fuv"
      type="real"
      unit="arcsec"
      ucd="phys.angSize"
      tablehead="FWHM FUV"
      description="The full width half maximum of the source in the FUV."
      verbLevel="30" />
    <column name="flags_fuv"
      type="integer"
      ucd="meta.code"
      tablehead="Flags FUV"
      description="SExtractor flags for the FUV. See SExtractor manual for more
      details."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="tile"
      type="text"
      ucd="meta.id"
      tablehead="Tile"
      description="Name of the tile in which the source was detected."
      verbLevel="40" />
    <column name="exptime_fuv"
      type="real"
      unit="s"
      ucd="obs.exposure"
      tablehead="ExpTime FUV"
      description="The FUV exposure time of the tile in which the source was
      detected."
      verbLevel="40" />
    <column name="exptime_nuv"
      type="real"
      unit="s"
      ucd="obs.exposure"
      tablehead="ExpTime NUV"
      description="The NUV exposure time of the tile in which the source was
      detected."
      verbLevel="40" />
    <column name="name"
      type="text"
      ucd="meta.id;meta.main"
      tablehead="Name"
      description="Name of the source in the IAU format."
      required="True"/>
    <column name="bkgrnd_mag_nuv"
      type="real"
      unit="mag.arcsec-2"
      ucd="instr.background;phot.mag;em.UV.200-300nm"
      tablehead="BKGRND MAG NUV"
      description="The NUV background surface brightness at the source position."
      verbLevel="40" />
    <column name="bkgrnd_mag_fuv"
      type="real"
      unit="mag.arcsec-2"
      ucd="instr.background;phot.mag;em.UV.100-200nm"
      tablehead="BKGRND MAG FUV"
      description="The FUV background surface brightness at the source position."
      verbLevel="40" />
    <column name="hp_pixel"
      type="text"
      ucd="pos.healpix"
      tablehead="HP pixel"
      description="String version of the 64-bit integer giving the Healpix pixel
      in which the source centroid is found. The pixels are in the nested scheme
      in Galactic coordinates and assume Nside = 16384."
      verbLevel="40" />
    <column name="extended"
      type="smallint"
      ucd="meta.code"
      tablehead="Extended"
      description="Flag indicating whether this source lies within a large
      extended galaxy."
      verbLevel="40">
        <values nullLiteral="-99" />
    </column>
    <column name="flux_3ul_fuv"
      type="real"
      unit="uJy"
      ucd="stat.max;phot.flux;em.UV.100-200nm"
      tablehead="Flux 3UL FUV"
      description="3-sigma upper limit to the FUV flux at this position given
      the FUV background and effective exposure time within the NUV defined
      'AUTO' aperture."
      verbLevel="40" />
    <column name="mag_3ul_fuv"
      type="real"
      unit="mag"
      ucd="stat.max;phot.mag;em.UV.100-200nm"
      tablehead="Mag 3UL FUV"
      description="3-sigma upper limit to the FUV magnitude at this position
      given the FUV background and effective exposure time within the NUV
      defined 'AUTO' aperture."
      verbLevel="40" />
    <column name="flux_d6p0_3ul_fuv"
      type="real"
      unit="uJy"
      ucd="stat.max;phot.flux;em.UV.100-200nm"
      tablehead="Flux D6P0 3UL FUV"
      description="3-sigma upper limit to the FUV flux at this position given
      the FUV background and effective exposure time within a fixed circular
      aperture with diameter 6 arcsec."
      verbLevel="40" />
    <column name="mag_d6p0_3ul_fuv"
      type="real"
      unit="mag"
      ucd="stat.max;phot.mag;em.UV.100-200nm"
      tablehead="Mag D6P0 3UL FUV"
      description="3-sigma upper limit to the FUV magnitude at this position
      given the FUV background and effective exposure time within a fixed
      circular aperture with diameter 6 arcsec."
      verbLevel="40" />
    <column name="manflag"
      type="integer"
      ucd="meta.code"
      tablehead="ManFlag"
      description="Flag describing whether the source lies within an image
      artefact due to bright stars off of the field of view. These areas are
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
      Logical OR of artefact flags for pixels within a 3x3 pixel box in the NUV
      or FUV flags image centred on the source centroid pixel. The artefact flag
      is a binary flag with each bit indicating a different artefact. The bits
      have the meanings indicated below. The decimal equivalent for each flag is
      given in parentheses.

      =========== ===== =======================================================
      Artefact  1 (  1) (edge) Detector bevel edge reflecteon (NUV only).
      Artefact  2 (  2) (wendow) Detector wendow reflecteon (NUV only).
      Artefact  3 (  4) (dechroec) Dechroec reflecteon.
      Artefact  4 (  8) (varpex) Vareble pexel based on teme sleces.
      Artefact  5 ( 16) (brtedge) Breght star near feeld edge (NUV only)
      Artefact  6 ( 32) Detector rem(annulus) proxemety(>0.6 deg fld ctr)
      Artefact  7 ( 64) (demask) dechroec reflecteon artefact mask flag
      Artefact  8 (128) (varmask) Masked pexel determened by varpex.
      Artefact  9 (256) (hotmask) Detector hot spots.
      Artefact 10 (512) (yaghost) Posseble ghost emage from YA slope.
                        (This is not relevant for GR6 data but will become
                        relevant once we include GR7 data).
      =========== ===== =======================================================

      For FUV, if no FUV observations are available at that location then the
      value -99 appears.
    </meta>
  </table>

  <data id="import_gmsc">
    <sources>data/galex_gmsc_help.csv</sources>
    <csvGrammar />
    <make table="gmsc">
      <rowmaker idmaps="*">
        <simplemaps>
          ggoid:objid,
          tilenum:tilenum,
          ra:ra,
          dec:dec,
          e_bv:e_bv,
          glon:glon,
          glat:glat,
          fov_radius:fov_radius,
          flux_nuv:flux_nuv,
          fluxerr_nuv:fluxerr_nuv,
          mag_nuv:mag_nuv,
          magerr_nuv:magerr_nuv,
          s2n_nuv:s2n_nuv,
          flux_fuv:flux_fuv,
          fluxerr_fuv:fluxerr_fuv,
          mag_fuv:mag_fuv,
          magerr_fuv:magerr_fuv,
          s2n_fuv:s2n_fuv,
          bkgrnd_flux_nuv:bkgrnd_flux_nuv,
          bkgrnd_flux_fuv:bkgrnd_flux_fuv,
          eff_exptime_nuv:eff_exptime_nuv,
          eff_exptime_fuv:eff_exptime_fuv,
          artefact_nuv:artifact_nuv,
          artefact_fuv:artifact_fuv,
          poserr:poserr,
          number_mcat:number_mcat,
          flux_d3p0_nuv:flux_d3p0_nuv,
          flux_d4p5_nuv:flux_d4p5_nuv,
          flux_d7p5_nuv:flux_d7p5_nuv,
          flux_d12p0_nuv:flux_d12p0_nuv,
          flux_d18p0_nuv:flux_d18p0_nuv,
          flux_d25p5_nuv:flux_d25p5_nuv,
          flux_d34p5_nuv:flux_d34p5_nuv,
          fluxerr_d3p0_nuv:fluxerr_d3p0_nuv,
          fluxerr_d4p5_nuv:fluxerr_d4p5_nuv,
          fluxerr_d7p5_nuv:fluxerr_d7p5_nuv,
          fluxerr_d12p0_nuv:fluxerr_d12p0_nuv,
          fluxerr_d18p0_nuv:fluxerr_d18p0_nuv,
          fluxerr_d25p5_nuv:fluxerr_d25p5_nuv,
          fluxerr_d34p5_nuv:fluxerr_d34p5_nuv,
          mag_d3p0_nuv:mag_d3p0_nuv,
          mag_d4p5_nuv:mag_d4p5_nuv,
          mag_d7p5_nuv:mag_d7p5_nuv,
          mag_d12p0_nuv:mag_d12p0_nuv,
          mag_d18p0_nuv:mag_d18p0_nuv,
          mag_d25p5_nuv:mag_d25p5_nuv,
          mag_d34p5_nuv:mag_d34p5_nuv,
          magerr_d3p0_nuv:magerr_d3p0_nuv,
          magerr_d4p5_nuv:magerr_d4p5_nuv,
          magerr_d7p5_nuv:magerr_d7p5_nuv,
          magerr_d12p0_nuv:magerr_d12p0_nuv,
          magerr_d18p0_nuv:magerr_d18p0_nuv,
          magerr_d25p5_nuv:magerr_d25p5_nuv,
          magerr_d34p5_nuv:magerr_d34p5_nuv,
          flux20_radius_nuv:flux20_radius_nuv,
          flux50_radius_nuv:flux50_radius_nuv,
          flux80_radius_nuv:flux80_radius_nuv,
          flux90_radius_nuv:flux90_radius_nuv,
          flux95_radius_nuv:flux95_radius_nuv,
          flux_max_nuv:flux_max_nuv,
          x_image:x_image,
          y_image:y_image,
          xpeak_image:xpeak_image,
          ypeak_image:ypeak_image,
          semimajor:semimajor,
          posang:posang,
          semiminor:semiminor,
          semimajorerr:semimajorerr,
          semiminorerr:semiminorerr,
          posangerr:posangerr,
          fwhm_nuv:fwhm_nuv,
          flags_nuv:flags_nuv,
          class_star:class_star,
          flux_d3p0_fuv:flux_d3p0_fuv,
          flux_d4p5_fuv:flux_d4p5_fuv,
          flux_d7p5_fuv:flux_d7p5_fuv,
          flux_d12p0_fuv:flux_d12p0_fuv,
          flux_d18p0_fuv:flux_d18p0_fuv,
          flux_d25p5_fuv:flux_d25p5_fuv,
          flux_d34p5_fuv:flux_d34p5_fuv,
          fluxerr_d3p0_fuv:fluxerr_d3p0_fuv,
          fluxerr_d4p5_fuv:fluxerr_d4p5_fuv,
          fluxerr_d7p5_fuv:fluxerr_d7p5_fuv,
          fluxerr_d12p0_fuv:fluxerr_d12p0_fuv,
          fluxerr_d18p0_fuv:fluxerr_d18p0_fuv,
          fluxerr_d25p5_fuv:fluxerr_d25p5_fuv,
          fluxerr_d34p5_fuv:fluxerr_d34p5_fuv,
          mag_d3p0_fuv:mag_d3p0_fuv,
          mag_d4p5_fuv:mag_d4p5_fuv,
          mag_d7p5_fuv:mag_d7p5_fuv,
          mag_d12p0_fuv:mag_d12p0_fuv,
          mag_d18p0_fuv:mag_d18p0_fuv,
          mag_d25p5_fuv:mag_d25p5_fuv,
          mag_d34p5_fuv:mag_d34p5_fuv,
          magerr_d3p0_fuv:magerr_d3p0_fuv,
          magerr_d4p5_fuv:magerr_d4p5_fuv,
          magerr_d7p5_fuv:magerr_d7p5_fuv,
          magerr_d12p0_fuv:magerr_d12p0_fuv,
          magerr_d18p0_fuv:magerr_d18p0_fuv,
          magerr_d25p5_fuv:magerr_d25p5_fuv,
          magerr_d34p5_fuv:magerr_d34p5_fuv,
          flux20_radius_fuv:flux20_radius_fuv,
          flux50_radius_fuv:flux50_radius_fuv,
          flux80_radius_fuv:flux80_radius_fuv,
          flux90_radius_fuv:flux90_radius_fuv,
          flux95_radius_fuv:flux95_radius_fuv,
          fwhm_fuv:fwhm_fuv,
          flags_fuv:flags_fuv,
          tile:tile,
          exptime_fuv:exptime_fuv,
          exptime_nuv:exptime_nuv,
          name:name,
          bkgrnd_mag_nuv:bkgrnd_mag_nuv,
          bkgrnd_mag_fuv:bkgrnd_mag_fuv,
          hp_pixel:hp_pixel,
          extended:extended,
          flux_3ul_fuv:flux_3ul_fuv,
          mag_3ul_fuv:mag_3ul_fuv,
          flux_d6p0_3ul_fuv:flux_d6p0_3ul_fuv,
          mag_d6p0_3ul_fuv:mag_d6p0_3ul_fuv,
          manflag:manflag,
          field:Field
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_gasc">
    <sources>data/galex_gasc_help.csv</sources>
    <csvGrammar />
    <make table="gasc">
      <rowmaker idmaps="*">
        <simplemaps>
          ggoid:objid,
          tilenum:tilenum,
          ra:ra,
          dec:dec,
          e_bv:e_bv,
          glon:glon,
          glat:glat,
          fov_radius:fov_radius,
          flux_nuv:flux_nuv,
          fluxerr_nuv:fluxerr_nuv,
          mag_nuv:mag_nuv,
          magerr_nuv:magerr_nuv,
          s2n_nuv:s2n_nuv,
          flux_fuv:flux_fuv,
          fluxerr_fuv:fluxerr_fuv,
          mag_fuv:mag_fuv,
          magerr_fuv:magerr_fuv,
          s2n_fuv:s2n_fuv,
          bkgrnd_flux_nuv:bkgrnd_flux_nuv,
          bkgrnd_flux_fuv:bkgrnd_flux_fuv,
          eff_exptime_nuv:eff_exptime_nuv,
          eff_exptime_fuv:eff_exptime_fuv,
          artefact_nuv:artifact_nuv,
          artefact_fuv:artifact_fuv,
          poserr:poserr,
          number_mcat:number_mcat,
          flux_d3p0_nuv:flux_d3p0_nuv,
          flux_d4p5_nuv:flux_d4p5_nuv,
          flux_d7p5_nuv:flux_d7p5_nuv,
          flux_d12p0_nuv:flux_d12p0_nuv,
          flux_d18p0_nuv:flux_d18p0_nuv,
          flux_d25p5_nuv:flux_d25p5_nuv,
          flux_d34p5_nuv:flux_d34p5_nuv,
          fluxerr_d3p0_nuv:fluxerr_d3p0_nuv,
          fluxerr_d4p5_nuv:fluxerr_d4p5_nuv,
          fluxerr_d7p5_nuv:fluxerr_d7p5_nuv,
          fluxerr_d12p0_nuv:fluxerr_d12p0_nuv,
          fluxerr_d18p0_nuv:fluxerr_d18p0_nuv,
          fluxerr_d25p5_nuv:fluxerr_d25p5_nuv,
          fluxerr_d34p5_nuv:fluxerr_d34p5_nuv,
          mag_d3p0_nuv:mag_d3p0_nuv,
          mag_d4p5_nuv:mag_d4p5_nuv,
          mag_d7p5_nuv:mag_d7p5_nuv,
          mag_d12p0_nuv:mag_d12p0_nuv,
          mag_d18p0_nuv:mag_d18p0_nuv,
          mag_d25p5_nuv:mag_d25p5_nuv,
          mag_d34p5_nuv:mag_d34p5_nuv,
          magerr_d3p0_nuv:magerr_d3p0_nuv,
          magerr_d4p5_nuv:magerr_d4p5_nuv,
          magerr_d7p5_nuv:magerr_d7p5_nuv,
          magerr_d12p0_nuv:magerr_d12p0_nuv,
          magerr_d18p0_nuv:magerr_d18p0_nuv,
          magerr_d25p5_nuv:magerr_d25p5_nuv,
          magerr_d34p5_nuv:magerr_d34p5_nuv,
          flux20_radius_nuv:flux20_radius_nuv,
          flux50_radius_nuv:flux50_radius_nuv,
          flux80_radius_nuv:flux80_radius_nuv,
          flux90_radius_nuv:flux90_radius_nuv,
          flux95_radius_nuv:flux95_radius_nuv,
          flux_max_nuv:flux_max_nuv,
          x_image:x_image,
          y_image:y_image,
          xpeak_image:xpeak_image,
          ypeak_image:ypeak_image,
          semimajor:semimajor,
          posang:posang,
          semiminor:semiminor,
          semimajorerr:semimajorerr,
          semiminorerr:semiminorerr,
          posangerr:posangerr,
          fwhm_nuv:fwhm_nuv,
          flags_nuv:flags_nuv,
          class_star:class_star,
          flux_d3p0_fuv:flux_d3p0_fuv,
          flux_d4p5_fuv:flux_d4p5_fuv,
          flux_d7p5_fuv:flux_d7p5_fuv,
          flux_d12p0_fuv:flux_d12p0_fuv,
          flux_d18p0_fuv:flux_d18p0_fuv,
          flux_d25p5_fuv:flux_d25p5_fuv,
          flux_d34p5_fuv:flux_d34p5_fuv,
          fluxerr_d3p0_fuv:fluxerr_d3p0_fuv,
          fluxerr_d4p5_fuv:fluxerr_d4p5_fuv,
          fluxerr_d7p5_fuv:fluxerr_d7p5_fuv,
          fluxerr_d12p0_fuv:fluxerr_d12p0_fuv,
          fluxerr_d18p0_fuv:fluxerr_d18p0_fuv,
          fluxerr_d25p5_fuv:fluxerr_d25p5_fuv,
          fluxerr_d34p5_fuv:fluxerr_d34p5_fuv,
          mag_d3p0_fuv:mag_d3p0_fuv,
          mag_d4p5_fuv:mag_d4p5_fuv,
          mag_d7p5_fuv:mag_d7p5_fuv,
          mag_d12p0_fuv:mag_d12p0_fuv,
          mag_d18p0_fuv:mag_d18p0_fuv,
          mag_d25p5_fuv:mag_d25p5_fuv,
          mag_d34p5_fuv:mag_d34p5_fuv,
          magerr_d3p0_fuv:magerr_d3p0_fuv,
          magerr_d4p5_fuv:magerr_d4p5_fuv,
          magerr_d7p5_fuv:magerr_d7p5_fuv,
          magerr_d12p0_fuv:magerr_d12p0_fuv,
          magerr_d18p0_fuv:magerr_d18p0_fuv,
          magerr_d25p5_fuv:magerr_d25p5_fuv,
          magerr_d34p5_fuv:magerr_d34p5_fuv,
          flux20_radius_fuv:flux20_radius_fuv,
          flux50_radius_fuv:flux50_radius_fuv,
          flux80_radius_fuv:flux80_radius_fuv,
          flux90_radius_fuv:flux90_radius_fuv,
          flux95_radius_fuv:flux95_radius_fuv,
          fwhm_fuv:fwhm_fuv,
          flags_fuv:flags_fuv,
          tile:tile,
          exptime_fuv:exptime_fuv,
          exptime_nuv:exptime_nuv,
          name:name,
          bkgrnd_mag_nuv:bkgrnd_mag_nuv,
          bkgrnd_mag_fuv:bkgrnd_mag_fuv,
          hp_pixel:hp_pixel,
          extended:extended,
          flux_3ul_fuv:flux_3ul_fuv,
          mag_3ul_fuv:mag_3ul_fuv,
          flux_d6p0_3ul_fuv:flux_d6p0_3ul_fuv,
          mag_d6p0_3ul_fuv:mag_d6p0_3ul_fuv,
          manflag:manflag,
          field:Field
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
    <property name="staticData">data/files</property>

    <dbCore queriedTable="gmsc">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="flux_nuv" />
      <condDesc buildFrom="flux_fuv" />
      <condDesc buildFrom="field" />
      <condDesc>
        <inputKey original="name" required="False"/>
      </condDesc>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <service id="cone_gasc" allowed="scs.xml,form,static">
    <meta name="title">GALEX All-Sky Survey Source Catalogue</meta>
    <meta name="shortName">GASC</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="gasc">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="flux_nuv" />
      <condDesc buildFrom="flux_fuv" />
      <condDesc buildFrom="field" />
      <condDesc>
        <inputKey original="name" required="False"/>
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
