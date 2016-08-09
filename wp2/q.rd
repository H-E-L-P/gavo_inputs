<resource schema="wp2">
  <meta name="title">HELP WP2 Radio Catalogues</meta>
  <meta name="creationDate">2016-08-09T16:24:43+0200</meta>
  <meta name="description">
    Radio catalogues collated by work package 2.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Radio</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the various radio catalogues collated by work
    package 2 (Emma Rigby) on the various HELP fields.  Each catalogues is
    a cross-match of various catalogues on one field.

    [Longer description needed.]

    Each catalogue contains an `internal_id` column that uniquely identify each
    source. Please use this column when cross-matching.

    AKARI-NEP
    ---------

    +-------------------+-------------------------------------------------------+
    | Survey            | VLA North Ecliptic Pole survey                        |
    +-------------------+-------------------------------------------------------+
    | Telescope         | VLA                                                   |
    +-------------------+-------------------------------------------------------+
    | Instrument        | VLA (C configuration)                                 |
    +-------------------+-------------------------------------------------------+
    | Filters           | VLA_1400                                              |
    +-------------------+-------------------------------------------------------+
    | Reference         | 1994ApJS...93..145K                                   |
    +-------------------+-------------------------------------------------------+
    | URL               | http://heasarc.gsfc.nasa.gov/W3Browse/all/vlanep.html |
    +-------------------+-------------------------------------------------------+

    +-------------------+------------------------------+
    | Survey            | WSRT survey of the AKARI-NEP |
    +-------------------+------------------------------+
    | Telescope         | WSRT                         |
    +-------------------+------------------------------+
    | Instrument        | WSRT                         |
    +-------------------+------------------------------+
    | Filters           | WSRT_1400                    |
    +-------------------+------------------------------+
    | Reference         | 2010A&A...517A..54W          |
    +-------------------+------------------------------+


    +-------------------+------------------------------------------------------------+
    | Survey            | NVSS (via Kimball et al. 2014)'                            |
    +-------------------+------------------------------------------------------------+
    | Telescope         | VLA                                                        |
    +-------------------+------------------------------------------------------------+
    | Instrument        | VLA (D-array & DnC-array configurations)                   |
    +-------------------+------------------------------------------------------------+
    | Filters           | VLA_1400                                                   |
    +-------------------+------------------------------------------------------------+
    | Reference         | 2014arXiv1401.1535K                                        |
    +-------------------+------------------------------------------------------------+
    | URL               | http://www.atnf.csiro.au/people/Amy.Kimball/radiocat.shtml |
    +-------------------+------------------------------------------------------------+

    +-------------------+--------------------------------------------------------------+
    | Survey            | 4.85 GHz catalogue from Green Bank (via Kimball et al. 2014) |
    +-------------------+--------------------------------------------------------------+
    | Telescope         | Green Bank                                                   |
    +-------------------+--------------------------------------------------------------+
    | Instrument        | Green Bank                                                   |
    +-------------------+--------------------------------------------------------------+
    | Filters           | GB_4850                                                      |
    +-------------------+--------------------------------------------------------------+
    | Reference         | 2014arXiv1401.1535K                                          |
    +-------------------+--------------------------------------------------------------+
    | URL               | http://www.atnf.csiro.au/people/Amy.Kimball/radiocat.shtml   |
    +-------------------+--------------------------------------------------------------+

    +------------+------------------------------------------------------------+
    | Survey     | VLSSr (via Kimball et al. 2014)                            |
    +------------+------------------------------------------------------------+
    | Telescope  | VLA                                                        |
    +------------+------------------------------------------------------------+
    | Instrument | VLA                                                        |
    +------------+------------------------------------------------------------+
    | Filters    | VLA_74                                                     |
    +------------+------------------------------------------------------------+
    | Reference  | 2014arXiv1401.1535K                                        |
    +------------+------------------------------------------------------------+
    | URL        | http://www.atnf.csiro.au/people/Amy.Kimball/radiocat.shtml |
    +------------+------------------------------------------------------------+

    History
    -------

    ======== ============================================
    20160809 First ingestion in the VO server
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /wp2/q/cone/static

  ]]> </meta>

  <!-- AKARI-NEP -->
  <table id="akari_nep" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Master Right Ascension"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Master Declination"
      required="True"
      verbLevel="1" />
    <column name="name_vla_1400"
      tablehead="Name_VLA_1400"
      type="text"
      ucd="meta.id"
      description="VLA Recommended Source Designation"
      verbLevel="1" />
    <column name="ra_vla_1400"
      tablehead="RA_VLA_1400"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="VLA Right Ascension"
      verbLevel="30" />
    <column name="dec_vla_1400"
      tablehead="Dec_VLA_1400"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="VLA Declination"
      verbLevel="30" />
    <column name="fp_vla_1400"
      tablehead="Fp_VLA_1400"
      type="double precision"
      ucd="phot.flux.density;em.radio.1500-3000MHz"
      unit="mJy"
      description="Peak 20-cm (1.5-GHz) Flux Density (mJy)"
      verbLevel="1" />
    <column name="fperr_vla_1400"
      tablehead="Fperr_VLA_1400"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.radio.1500-3000MHz"
      unit="mJy"
      description="RMS Error in Peak Flux Density"
      verbLevel="1" />
    <column name="search_offset"
      tablehead="Search_Offset"
      type="double precision"
      ucd="meta.number"
      description="[To be completed]"
      verbLevel="30" />
    <column name="detection_vla_1400"
      tablehead="Detection_VLA_1400"
      type="smallint"
      ucd="meta.code"
      description="Detection flag"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_wsrt_1400"
      tablehead="RA_WSRT_1400"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="WSRT Right ascension (FK5 Equinox=J2000.0) (computed by
      VizieR not part of the original data)"
      verbLevel="30" />
    <column name="dec_wsrt_1400"
      tablehead="Dec_WSRT_1400"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="WSRT Declination (FK5 Equinox=J2000.0) (computed by
      VizieR not part of the original data)"
      verbLevel="30" />
    <column name="seq"
      tablehead="Seq"
      type="integer"
      ucd="meta.record"
      description="WSRT Sequential number"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="nep_wsrt_1400"
      tablehead="NEP_WSRT_1400"
      type="text"
      ucd="meta.id"
      description="WSRT Name (HHMMSS+DDMMSS)"
      verbLevel="1" />
    <column name="raj2000"
      tablehead="RAJ2000"
      type="text"
      ucd="pos.eq.ra"
      description="WSRT Right ascension (J2000)"
      verbLevel="30" />
    <column name="e_raj2000"
      tablehead="e_RAJ2000"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="arcsec"
      description="WSRT RMS uncertainty on RA"
      verbLevel="30" />
    <column name="dej2000"
      tablehead="DEJ2000"
      type="text"
      ucd="pos.eq.dec"
      description="WSRT Declination (J2000)"
      verbLevel="30" />
    <column name="e_dej2000"
      tablehead="e_DEJ2000"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="arcsec"
      description="WSRT RMS uncertainty on Dec"
      verbLevel="30" />
    <column name="fp_wsrt_1400"
      tablehead="Fp_WSRT_1400"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Peak flux density at 20cm (in mJy/beam)"
      verbLevel="1" />
    <column name="fperr_wsrt_1400"
      tablehead="Fperr_wsrt_1400"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="RMS uncertainty on peak flux density (in mJy/beam)"
      verbLevel="1" />
    <column name="f_wsrt_1400"
      tablehead="F_wsrt_1400"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Total flux density at 20cm"
      verbLevel="1" />
    <column name="ferr_wsrt_1400"
      tablehead="FErr_wsrt_1400"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="RMS uncertainty on total flux density"
      verbLevel="1" />
    <column name="major_wsrt_1400"
      tablehead="Major_WSRT_1400"
      type="real"
      ucd="phys.angSize;src"
      unit="arcsec"
      description="Major axis"
      verbLevel="30" />
    <column name="minor_wsrt_1400"
      tablehead="Minor_WSRT_1400"
      type="real"
      ucd="phys.angSize;src"
      unit="arcsec"
      description="Minor axis"
      verbLevel="30" />
    <column name="pa_wsrt_1400"
      tablehead="PA_WSRT_1400"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="[-90/90] Position angle"
      verbLevel="30" />
    <column name="detection_wsrt_1400"
      tablehead="Detection_WSRT_1400"
      type="smallint"
      ucd="meta.code"
      description="WSRT detection flag"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="separation_1"
      tablehead="Separation_1"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Distance between WSRT and VLANEP positions"
      verbLevel="30" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalogue row identifier in the Kimball et al. catalogue"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="real"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source "
      verbLevel="30" />
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      description="distance to nearest GB6 source within 120 in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="real"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30" />
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_VLA_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="Unique NVSS identifier"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_VLA_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="VLA NVSS Right Ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_VLA_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="VLA NVSS Declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_VLA_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__nvss"
      tablehead="F_VLA_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_VLA_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_VLA_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_VLA_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_VLA_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_VLA_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_VLA_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_VLA_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_VLA_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="1" />
    <column name="u_vla_1400__nvss"
      tablehead="U_VLA_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="1" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_VLA_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Integrated linear polarized flux in mJy"
      verbLevel="1" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_VLA_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="1" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_VLA_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_VLA_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_GB_4850"
      type="integer"
      ucd="meta.id"
      description="Unique GB6 identifier"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_GB_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="GB4850 Right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_GB_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="Error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="Dec_GB_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="GB4850 Declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_GB_4850"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="Error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_GB_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_GB_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="Error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_GB_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_GB_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_GB_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_GB_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="Local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_GB_4850"
      type="real"
      ucd="meta.code"
      description="Flag indicating significantly extended source"
      verbLevel="1" />
    <column name="wflag_gb_4850"
      tablehead="WFLAG_GB_4850"
      type="real"
      ucd="meta.code"
      description="Warning flag"
      verbLevel="1" />
    <column name="cflag_gb_4850"
      tablehead="CFLAG_GB_4850"
      type="real"
      ucd="meta.code"
      description="Flag indicating confusion"
      verbLevel="1" />
    <column name="id_vla_74"
      tablehead="ID_VLA_74"
      type="integer"
      ucd="meta.id"
      description="Unique VLSSr identifier"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_VLA_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="VLA74 Right Ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_VLA_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="VLA74 Declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_VLA_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="Integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_VLA_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="30" />
    <column name="major_vla_74"
      tablehead="MAJOR_VLA_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_VLA_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="Error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_VLA_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_VLA_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="Error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_VLA_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_VLA_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_VLA_1400__NVSS"
      type="integer"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_GB_4850"
      type="integer"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_VLA_74"
      type="integer"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="separation_2"
      tablehead="Separation_2"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Distance between NVSS and VLANEP positions"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
  </table>
  <data id="import">
    <sources>data/wp2_akari-nep.csv</sources>
    <csvGrammar />
    <make table="akari_nep">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          name_vla_1400:name_vla_1400,
          ra_vla_1400:ra_vla_1400,
          dec_vla_1400:dec_vla_1400,
          fp_vla_1400:fp_mjy_vla_1400,
          fperr_vla_1400:fperr_mjy_vla_1400,
          search_offset:search_offset,
          detection_vla_1400:detection_vla_1400,
          ra_wsrt_1400:ra_wsrt_1400,
          dec_wsrt_1400:dec_wsrt_1400,
          seq:seq,
          nep_wsrt_1400:nep_wsrt_1400,
          raj2000:raj2000,
          e_raj2000:e_raj2000,
          dej2000:dej2000,
          e_dej2000:e_dej2000,
          fp_wsrt_1400:fp_mjy_wsrt_1400,
          fperr_wsrt_1400:fperr_mjy_wsrt_1400,
          f_wsrt_1400:f_mjy_wsrt_1400,
          ferr_wsrt_1400:ferr_mjy_wsrt_1400,
          major_wsrt_1400:major_wsrt_1400,
          minor_wsrt_1400:minor_wsrt_1400,
          pa_wsrt_1400:pa_wsrt_1400,
          detection_wsrt_1400:detection_wsrt_1400,
          separation_1:separation_1,
          uniq_id:uniq_id,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__nvss:id_vla_1400__nvss,
          ra_vla_1400__nvss:ra_vla_1400__nvss,
          dec_vla_1400__nvss:dec_vla_1400__nvss,
          peak_vla_1400__nvss:peak_vla_1400__nvss,
          f_vla_1400__nvss:f_mjy_vla_1400__nvss,
          ferr_vla_1400__nvss:ferr_mjy_vla_1400__nvss,
          major_vla_1400__nvss:major_vla_1400__nvss,
          major_err_vla_1400__nvss:major_err_vla_1400__nvss,
          minor_vla_1400__nvss:minor_vla_1400__nvss,
          minor_err_vla_1400__nvss:minor_err_vla_1400__nvss,
          posangle_vla_1400__nvss:posangle_vla_1400__nvss,
          posangle_err_vla_1400__nvss:posangle_err_vla_1400__nvss,
          q_vla_1400__nvss:q_vla_1400__nvss,
          u_vla_1400__nvss:u_vla_1400__nvss,
          pol_flux_vla_1400__nvss:pol_flux_vla_1400__nvss,
          pol_flux_err_vla_1400__nvss:pol_flux_err_vla_1400__nvss,
          pol_angle_vla_1400__nvss:pol_angle_vla_1400__nvss,
          pol_angle_err_vla_1400__nvss:pol_angle_err_vla_1400__nvss,
          id_gb_4850:id_gb_4850,
          ra_gb_4850:ra_gb_4850,
          ra_err_gb_4850:ra_err_gb_4850,
          dec_gb_4850:dec_gb_4850,
          dec_err_gb_4850:dec_err_gb_4850,
          f_gb_4850:f_mjy_gb_4850,
          ferr_gb_4850:ferr_mjy_gb_4850,
          major_gb_4850:major_gb_4850,
          minor_gb_4850:minor_gb_4850,
          posangle_gb_4850:posangle_gb_4850,
          sky_gb_4850:sky_gb_4850,
          eflag_gb_4850:eflag_gb_4850,
          wflag_gb_4850:wflag_gb_4850,
          cflag_gb_4850:cflag_gb_4850,
          id_vla_74:id_vla_74,
          ra_vla_74:ra_vla_74,
          dec_vla_74:dec_vla_74,
          f_vla_74:f_mjy_vla_74,
          ferr_vla_74:ferr_mjy_vla_74,
          major_vla_74:major_vla_74,
          major_err_vla_74:major_err_vla_74,
          minor_vla_74:minor_vla_74,
          minor_err_vla_74:minor_err_vla_74,
          posangle_vla_74:posangle_vla_74,
          posangle_err_vla_74:posangle_err_vla_74,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          separation_2:separation,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_akn" allowed="scs.xml,form,static">
    <meta name="title">WP2 AKARI-NEP Radio Catalogue</meta>
    <meta name="shortName">WP2 AKARI-NEP</meta>
    <meta name="testQuery">
      <meta name="ra">270.0</meta>
      <meta name="dec">66.55</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="akari_nep">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="internal_id" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
</resource>

<!--
vim:et:sta:sw=2
-->
