<resource schema="zbootes">
  <meta name="title">zBootes</meta>
  <meta name="creationDate">2016-07-11T16:20:35+0200</meta>
  <meta name="description">
    z-band observations of the NOAO Deep Wide-Field Survey Boötes field.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the zBootes catalogue: z-band observations of the
    NOAO Deep Wide-Field Survey Boötes field.

    These data were released and described in Cool, 2007 (ApJS, 169, 21). That
    paper should be used as a reference for using any of the data products as
    several key properties of the images and catalogues are described in that
    document.

    The original web site is http://r2.sdm.noao.edu/nsa/zbootes.html

    We added an `internal_id` column to uniquely identify each sources, please
    use this identifier when cross-matching.

    Note that some columns of the catalogue are not described in the
    documentation. We used the Sextractor documentation but some units may not
    be accurate.

    Survey identification
    ---------------------

    +-----------------+-----------------------------------------------+
    | Survey          | zBootes: z-band Observations of the NOAO Deep |
    |                 | Wide-Field Survey Bootes Field                |
    +-----------------+-----------------------------------------------+
    | Telescope       | Steward 2.3m Bok                              |
    +-----------------+-----------------------------------------------+
    | Instrument      | 90Prime imager                                |
    +-----------------+-----------------------------------------------+
    | Filters         | z                                             |
    +-----------------+-----------------------------------------------+
    | Reference       | 2007ApJS..169...21C                           |
    +-----------------+-----------------------------------------------+
    | URL             | http://r2.sdm.noao.edu/nsa/zbootes.html       |
    +-----------------+-----------------------------------------------+

    History
    -------

    ======== ============================================
    20160711 First ingestion of the catalogue.
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /zbootes/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "alpha_j2000" "delta_j2000"
    </stc>
    <column name="internal_id"
      tablehead="Internal_ID"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <column name="number"
      tablehead="Number"
      type="integer"
      ucd="meta.id"
      description="Identifier in the original catalogue"
      verbLevel="30">
        <values nullLiteral="-9999"/>
    </column>
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
    <column name="x_image"
        tablehead="X_image"
        type="real"
        ucd="pos.cartesian.x"
        unit="pixel"
        description="X position of the barycentre of the source."
        verbLevel="30" />
    <column name="y_image"
        tablehead="Y_image"
        type="real"
        ucd="pos.cartesian.y"
        unit="pixel"
        description="Y position of the barycentre of the source."
        verbLevel="30" />
    <column name="threshold"
      tablehead="Threshold"
      type="real"
      ucd="instr.sensitivity;em.opt.I"
      unit="count"
      description="Detection threshold above background"
      verbLevel="30" />
    <column name="flux_iso"
      tablehead="Flux_ISO"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Isophotal flux"
      verbLevel="30" />
    <column name="fluxerr_iso"
      tablehead="FluxErr_ISO"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for isophotal flux"
      verbLevel="30" />
    <column name="mag_iso"
      tablehead="Mag_ISO"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Isophotal magnitude"
      verbLevel="1" />
    <column name="magerr_iso"
      tablehead="MagErr_ISO"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for isophotal magnitude"
      verbLevel="1" />
    <column name="flux_isocor"
      tablehead="Flux_ISOcor"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Corrected isophotal flux"
      verbLevel="30" />
    <column name="fluxerr_isocor"
      tablehead="FluxErr_ISOcor"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS for corrected isophotal flux"
      verbLevel="30" />
    <column name="mag_isocor"
      tablehead="Mag_ISOcor"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Corrected isophotal magnitude"
      verbLevel="1" />
    <column name="magerr_isocor"
      tablehead="MagERR_ISOcor"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for correct isophotal magnitude"
      verbLevel="1" />
    <column name="flux_auto"
      tablehead="Flux_Auto"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Automatic aperture flux"
      verbLevel="30" />
    <column name="fluxerr_auto"
      tablehead="FluxErr_Auto"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error on automatic flux"
      verbLevel="30" />
    <column name="mag_auto"
      tablehead="Mag_Auto"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Automatic aperture magnitude"
      verbLevel="1" />
    <column name="magerr_auto"
      tablehead="MagErr_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error on automatic magnitude"
      verbLevel="1" />
    <column name="flux_aper_01"
      tablehead="Flux_Aper_01"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_01"
      tablehead="FluxErr_Aper_01"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 1 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_02"
      tablehead="Flux_Aper_02"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_02"
      tablehead="FluxErr_Aper_02"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 2 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_03"
      tablehead="Flux_Aper_03"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_03"
      tablehead="FluxErr_Aper_03"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 3 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_04"
      tablehead="Flux_Aper_04"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_04"
      tablehead="FluxErr_Aper_04"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 4 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_05"
      tablehead="Flux_Aper_05"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_05"
      tablehead="FluxErr_Aper_05"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 5 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_06"
      tablehead="Flux_Aper_06"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_06"
      tablehead="FluxErr_Aper_06"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 6 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_07"
      tablehead="Flux_Aper_07"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_07"
      tablehead="FluxErr_Aper_07"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 7 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_08"
      tablehead="Flux_Aper_08"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_08"
      tablehead="FluxErr_Aper_08"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 8 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_09"
      tablehead="Flux_Aper_09"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_09"
      tablehead="FluxErr_Aper_09"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 9 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_10"
      tablehead="Flux_Aper_10"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_10"
      tablehead="FluxErr_Aper_10"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 10 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_15"
      tablehead="Flux_Aper_15"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_15"
      tablehead="FluxErr_Aper_15"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 15 arcsec aperture"
      verbLevel="30" />
    <column name="flux_aper_20"
      tablehead="Flux_Aper_20"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Flux vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="fluxerr_aper_20"
      tablehead="FluxErr_Aper_20"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for flux within 20 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_01"
      tablehead="Mag_Aper_01"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_01"
      tablehead="MagErr_Aper_01"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 1 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_02"
      tablehead="Mag_Aper_02"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_02"
      tablehead="MagErr_Aper_02"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 2 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_03"
      tablehead="Mag_Aper_03"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_03"
      tablehead="MagErr_Aper_03"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 3 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_04"
      tablehead="Mag_Aper_04"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_04"
      tablehead="MagErr_Aper_04"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 4 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_05"
      tablehead="Mag_Aper_05"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_05"
      tablehead="MagErr_Aper_05"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 5 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_06"
      tablehead="Mag_Aper_06"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_06"
      tablehead="MagErr_Aper_06"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 6 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_07"
      tablehead="Mag_Aper_07"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_07"
      tablehead="MagErr_Aper_07"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 7 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_08"
      tablehead="Mag_Aper_08"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_08"
      tablehead="MagErr_Aper_08"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 8 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_09"
      tablehead="Mag_Aper_09"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_09"
      tablehead="MagErr_Aper_09"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 9 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_10"
      tablehead="Mag_Aper_10"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_10"
      tablehead="MagErr_Aper_10"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 10 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_15"
      tablehead="Mag_Aper_15"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_15"
      tablehead="MagErr_Aper_15"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 15 arcsec aperture"
      verbLevel="30" />
    <column name="mag_aper_20"
      tablehead="Mag_Aper_20"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Magnitude vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="magerr_aper_20"
      tablehead="MagErr_Aper_20"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for magnitude within 20 arcsec aperture"
      verbLevel="30" />
    <column name="fwhm_image"
      tablehead="FWHM_image"
      type="real"
      ucd="phys.angSize"
      unit="pixel"
      description="FWHM assuming a Gaussian core (image units)"
      verbLevel="30" />
    <column name="fwhm_world"
      tablehead="FWHM_world"
      type="real"
      ucd="phys.angSize"
      unit="deg"
      description="FWHM assuming a Gaussian core"
      verbLevel="30" />
    <column name="theta_image"
      tablehead="Theta_image"
      type="real"
      ucd="pos.posAng"
      unit="pixel"
      description="Position angle"
      verbLevel="30" />
    <column name="theta_world"
      tablehead="Theta_world"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle"
      verbLevel="30" />
    <column name="theta_sky"
      tablehead="Theta_Sky"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle"
      verbLevel="30" />
    <column name="theta_j2000"
      tablehead="Theta_J2000"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle"
      verbLevel="30" />
    <column name="background"
      tablehead="Background"
      type="real"
      ucd="instr.background;em.opt.I"
      unit="count"
      description="Background at centroid position"
      verbLevel="30" />
    <column name="flux_max"
      tablehead="Flux_Max"
      type="real"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Peak flux above background"
      verbLevel="30" />
    <column name="class_star"
      tablehead="Class_Star"
      type="real"
      ucd="src.class.starGalaxy"
      description="S/G classifier output"
      verbLevel="1" />
    <column name="a_image"
      tablehead="A_image"
      type="real"
      ucd="stat.stdev;phys.angSize"
      unit="pixel"
      description="Profile RMS along major axis"
      verbLevel="30" />
    <column name="b_image"
      tablehead="B_image"
      type="real"
      ucd="stat.stdev;phys.angSize"
      unit="pixel"
      description="Profile RMS along minor axis"
      verbLevel="30" />
    <column name="a_world"
      tablehead="A_world"
      type="real"
      ucd="stat.stdev;phys.angSize"
      unit="deg"
      description="Profile RMS along major axis (world units)"
      verbLevel="30" />
    <column name="b_world"
      tablehead="B_world"
      type="real"
      ucd="stat.stdev;phys.angSize"
      unit="deg"
      description="Profile RMS along minor axis (world units)"
      verbLevel="30" />
    <column name="cxx_image"
      tablehead="CXX_image"
      type="real"
      ucd="meta.number"
      description="SExtractor CXX parameter (image units)"
      verbLevel="30" />
    <column name="cyy_image"
      tablehead="CYY_image"
      type="real"
      ucd="meta.number"
      description="SExtractor CYY parameter (image units)"
      verbLevel="30" />
    <column name="cxy_image"
      tablehead="CXY_image"
      type="real"
      ucd="meta.number"
      description="SExtractor CXY parameter (image units)"
      verbLevel="30" />
    <column name="cxx_world"
      tablehead="CXX_world"
      type="real"
      ucd="meta.number"
      description="SExtractor CXX parameter (world units)"
      verbLevel="30" />
    <column name="cyy_world"
      tablehead="CYY_world"
      type="real"
      ucd="meta.number"
      description="SExtractor CYY parameter (world units)"
      verbLevel="30" />
    <column name="cxy_world"
      tablehead="CXY_world"
      type="real"
      ucd="meta.number"
      description="SExtractor CXY parameter (world units)"
      verbLevel="30" />
    <column name="elongation"
      tablehead="Elongation"
      type="real"
      ucd="phys.size.axisRatio"
      description="Elongation A_image/B_image"
      verbLevel="30" />
    <column name="ellipticity"
      tablehead="Ellipticity"
      type="real"
      ucd="src.ellipticity"
      description="Ellipticity 1 - B_image/A_image"
      verbLevel="30" />
    <column name="isoarea_world"
      tablehead="ISOArea_world"
      type="real"
      ucd="phys.area;instr.sensitivity"
      unit="deg**2"
      description="Isophotal area above analysis threshold"
      verbLevel="30" />
    <column name="nobs"
      tablehead="nObs"
      type="integer"
      ucd="meta.number"
      description="Mean number of observations"
      note="1"
      verbLevel="1" />
    <column name="err_1"
      tablehead="Err_1"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="counts"
      description="Photometric error in 1 arcsec diameter aperture"
      note="2"
      verbLevel="1" />
    <column name="err_3"
      tablehead="Err_3"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="counts"
      description="Photometric error in 3 arcsec diameter aperture"
      note="2"
      verbLevel="1" />
    <column name="err_5"
      tablehead="Err_5"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="counts"
      description="Photometric error in 5 arcsec diameter aperture"
      note="2"
      verbLevel="1" />
    <column name="err_7"
      tablehead="Err_7"
      type="real"
      ucd="stat.error;phot.count;em.opt.I"
      unit="counts"
      description="Photometric error in 7 arcsec diameter aperture"
      note="2"
      verbLevel="1" />
    <column name="comp50"
      tablehead="Comp50"
      type="real"
      ucd="phot.mag;instr.sensitivity;em.opt.I"
      unit="mag"
      description="50% completeness limit"
      note="3"
      verbLevel="1" />
    <column name="detect_3sig_3arc"
      tablehead="Detect_3sig_3arc"
      type="real"
      ucd="phot.mag;instr.sensitivity;em.opt.I"
      unit="mag"
      description="Local 3 sigma detection limit"
      note="4"
      verbLevel="1" />
    <column name="photflag"
      tablehead="PhotFlag"
      type="smallint"
      ucd="meta.code"
      description="Photometry flag"
      note="5"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="fieldname"
      tablehead="FieldName"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the zBootes field in which the photometric quantities
      for each object were measured"
      verbLevel="30" />
    <column name="duplicate"
      tablehead="Duplicate"
      type="smallint"
      ucd="meta.code.multip"
      description="Duplicate flag"
      note="6"
      verbLevel="1" />
    <column name="ndwfs_name"
      tablehead="NDWFS_Name"
      type="text"
      ucd="meta.id"
      description="Name of the nearest NDWFS object"
      note="7"
      verbLevel="1" />
    <column name="ndwfs_ra"
      tablehead="NDWFS_RA"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension of the nearest NDWFS object"
      note="7"
      verbLevel="1" />
    <column name="ndwfs_dec"
      tablehead="NDWFS_Dec"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination of the nearest NDWFS object"
      note="7"
      verbLevel="1" />
    <meta name="note" tag="1"><![CDATA[
      nObs: Mean number of observations (300s exposures) that contributes to the
      pixels each object falls on. Objects with nObs lesser than 5 should be
      used with caution.
      ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      ERR_N: Photometric error in [1, 3, 5, 7] arcsec diameter aperture
      determined from the dispersion in the local sky background within
      a 6 minutes radius around each object.
      ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      Comp50: The 50% completeness limit determined by inserting 30000 fake
      point source into the images and measuring the fraction recovered using
      the same analysis procedure as that used when constructing the catalogue.
      The local completeness is calculated within a 10 minutes region around
      each object.
      ]]></meta>
    <meta name="note" tag="4"><![CDATA[
      Detect_3sig_3arc: Local 3 sigma detection limit determined in a 3 arcsec
      diameter aperture around each object based on measurements of the local
      variation in the sky background.
      ]]></meta>
    <meta name="note" tag="5"><![CDATA[
      PhotFlag: For each object, this flag is set if any of the pixels
      contributing to the object detection were in the non-linear or saturated
      regime on the 90Prime CCDs. Photometry for objects with this flag set
      should be used with caution.
      ]]></meta>
    <meta name="note" tag="6"><![CDATA[
      Duplicate: Flag that is set if a given object was detected in multiple
      catalogues. If an object was detected in multiple frames, then the
      observation with the lowest photo- metric error was declared to be the
      best and included in the final merged catalogue; each object is listed in
      the final catalogue only once.
      ]]></meta>
    <meta name="note" tag="7"><![CDATA[
      NDWFS_Name: Name of the nearest NDWFS object to each zBootes detection.
      The catalogues were compared with a 1 arcsec search radius; if there were
      no NDWFS objects within the search radius of the zBootes object, this
      entry is empty.
      ]]></meta>
  </table>
  <data id="import">
    <sources>data/zbootes.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          number:number,
          alpha_j2000:alpha_j2000,
          delta_j2000:delta_j2000,
          x_image:x_image,
          y_image:y_image,
          threshold:threshold,
          flux_iso:flux_iso,
          fluxerr_iso:fluxerr_iso,
          mag_iso:mag_iso,
          magerr_iso:magerr_iso,
          flux_isocor:flux_isocor,
          fluxerr_isocor:fluxerr_isocor,
          mag_isocor:mag_isocor,
          magerr_isocor:magerr_isocor,
          flux_auto:flux_auto,
          fluxerr_auto:fluxerr_auto,
          mag_auto:mag_auto,
          magerr_auto:magerr_auto,
          fwhm_image:fwhm_image,
          fwhm_world:fwhm_world,
          theta_image:theta_image,
          theta_world:theta_world,
          theta_sky:theta_sky,
          theta_j2000:theta_j2000,
          background:background,
          flux_max:flux_max,
          class_star:class_star,
          a_image:a_image,
          b_image:b_image,
          a_world:a_world,
          b_world:b_world,
          cxx_image:cxx_image,
          cyy_image:cyy_image,
          cxy_image:cxy_image,
          cxx_world:cxx_world,
          cyy_world:cyy_world,
          cxy_world:cxy_world,
          elongation:elongation,
          ellipticity:ellipticity,
          isoarea_world:isoarea_world,
          nobs:nobs,
          err_1:err_1,
          err_3:err_3,
          err_5:err_5,
          err_7:err_7,
          comp50:comp50,
          detect_3sig_3arc:detect_3sig_3arc,
          photflag:photflag,
          fieldname:fieldname,
          duplicate:duplicate,
          ndwfs_name:ndwfs_name,
          ndwfs_ra:ndwfs_ra,
          ndwfs_dec:ndwfs_dec,
          internal_id:internal_id,
          flux_aper_01:flux_aper_1,
          flux_aper_02:flux_aper_2,
          flux_aper_03:flux_aper_3,
          flux_aper_04:flux_aper_4,
          flux_aper_05:flux_aper_5,
          flux_aper_06:flux_aper_6,
          flux_aper_07:flux_aper_7,
          flux_aper_08:flux_aper_8,
          flux_aper_09:flux_aper_9,
          flux_aper_10:flux_aper_10,
          flux_aper_15:flux_aper_15,
          flux_aper_20:flux_aper_20,
          fluxerr_aper_01:fluxerr_aper_1,
          fluxerr_aper_02:fluxerr_aper_2,
          fluxerr_aper_03:fluxerr_aper_3,
          fluxerr_aper_04:fluxerr_aper_4,
          fluxerr_aper_05:fluxerr_aper_5,
          fluxerr_aper_06:fluxerr_aper_6,
          fluxerr_aper_07:fluxerr_aper_7,
          fluxerr_aper_08:fluxerr_aper_8,
          fluxerr_aper_09:fluxerr_aper_9,
          fluxerr_aper_10:fluxerr_aper_10,
          fluxerr_aper_15:fluxerr_aper_15,
          fluxerr_aper_20:fluxerr_aper_20,
          mag_aper_01:mag_aper_1,
          mag_aper_02:mag_aper_2,
          mag_aper_03:mag_aper_3,
          mag_aper_04:mag_aper_4,
          mag_aper_05:mag_aper_5,
          mag_aper_06:mag_aper_6,
          mag_aper_07:mag_aper_7,
          mag_aper_08:mag_aper_8,
          mag_aper_09:mag_aper_9,
          mag_aper_10:mag_aper_10,
          mag_aper_15:mag_aper_15,
          mag_aper_20:mag_aper_20,
          magerr_aper_01:magerr_aper_1,
          magerr_aper_02:magerr_aper_2,
          magerr_aper_03:magerr_aper_3,
          magerr_aper_04:magerr_aper_4,
          magerr_aper_05:magerr_aper_5,
          magerr_aper_06:magerr_aper_6,
          magerr_aper_07:magerr_aper_7,
          magerr_aper_08:magerr_aper_8,
          magerr_aper_09:magerr_aper_9,
          magerr_aper_10:magerr_aper_10,
          magerr_aper_15:magerr_aper_15,
          magerr_aper_20:magerr_aper_20
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">zBootes</meta>
    <meta name="shortName">zBootes</meta>
    <meta name="testQuery">
      <meta name="ra">218.2</meta>
      <meta name="dec">34.173</meta>
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

</resource>

<!--
vim:et:sta:sw=2
-->
