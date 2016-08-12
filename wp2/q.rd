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

    Catalogue descriptions
    ----------------------

    AKARI-NEP (table `wp2.akari_nep`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the AKARI-NEP field. It consists of a VLA
    1.4 GHz survey of the field (Kollgaard et al. 1994) and a deeper, narrower
    1.4 GHz WSRT survey (White et al. 2010), combined with the multi-band
    catalogue of Kimball et al. 2014. The Kimball et al. catalogue is
    a cross-match between the NVSS and FIRST surveys and also includes data at
    74 MHz and 4 GHz. The cross-matching between Kimball et al. and Kollgaard et
    al. & White et al. was done using the NVSS position using a match radius of
    30". (Note that this field does not fall within the FIRST coverage.)

    Boötes (table `wp2.bootes`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the Bootes field. It consists of (1) a GMRT
    153 MHz survey of the field (Williams et al. 2013) and (2) a 1.4 GHz survey
    of the inner region of the field (de Vries et al. 2002) combined with (3)
    the multi-band catalogue of Kimball et al. 2014. The Kimball et al.
    catalogue is a cross-match between the NVSS and FIRST surveys and also
    includes data at 74 MHz and 4 GHz. The cross-matching between GMRT & WSRT
    was done using a match radius of 30". The resulting catalogue was then
    cross-matched with  Kimball et al. using the FIRST and GMRT positions, with
    a match radius of 30".

    CDFS-SWIRE (table `wp2.cdfs_swire`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the CDFS-SWIRE field. It consists of a ATCA
    1.4 GHz survey of the field (ATLAS, Franzen et al. 2015) combined with the
    multi-band catalogue of Kimball et al. 2014. The Kimball et al. catalogue is
    a cross-match between the NVSS and FIRST surveys, but only the NVSS portion
    falls within the ATCA area. The cross-matching between Kimball et al. and
    Franzen et al. was done using the NVSS positions using a match radius of
    30".

    EGS (table `wp2.egs`)
    ~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the EGS field. It consists of (1) a deep VLA
    1.4 GHz survey of the field (AEGIS20; Ivison et al. 2007) and (2) a shallow,
    smaller, 4.8 GHz survey of the field (Willner et al. 2006) combined with (3)
    the multi-band catalogue of Kimball et al. 2014. The Kimball et al.
    catalogue is a cross-match between the NVSS and FIRST surveys and also
    includes data at 74 MHz and 4 GHz. The cross-matching between Ivison et al.
    and Willner et al. was done using a match radius of 30". The resulting
    catalogue was then cross-matched with  Kimball et al. using a match radius
    of 30".

    ELAIS-N1 (table `wp2.en1`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the ELAIS-N1 field. It consists of a GMRT
    610 MHz survey of the field (Garn et al. 2008) combined with the multi-band
    catalogue of Kimball et al. 2014. The Kimball et al. catalogue is
    a cross-match between the NVSS and FIRST surveys and also includes data at
    74 MHz and 4 GHz. The cross-matching between Kimball et al. and Garn et al.
    was done using the FIRST position using a match radius of 30".

    ELAIS-N2 (table `wp2.en2`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the ELAIS-N2 field. It consists of a GMRT
    610 MHz survey of the field (Garn et al. 2009) combined with the multi-band
    catalogue of Kimball et al. 2014. The Kimball et al. catalogue is
    a cross-match between the NVSS and FIRST surveys and also includes data at
    74 MHz and 4 GHz. The cross-matching between Kimball et al. and Garn et al.
    was done using the FIRST position using a match radius of 30".

    ELAIS-S1 (table `wp2.es1`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the ELAIS-S1 field. It consists of a ATCA
    1.4 GHz survey of the field (ATLAS; Franzen et al. 2015) with additional
    ATCA data at 2.3 GHz for a subset of sources (Zinn et al. 2012).

    GAMA-09 (table `wp2.g09`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the GAMA-9 field. It consists of a GMRT 325
    MHz survey of the field (Mauch et al. 2013) combined with the multi-band
    catalogue of Kimball et al. 2014. The Kimball et al. catalogue is
    a cross-match between the NVSS and FIRST surveys and also includes data at
    74 MHz and 4 GHz. The cross-matching between Kimball et al. and Mauch et al.
    was done using the FIRST position using a match radius of 30".

    GAMA-12 (table `wp2.g12`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the GAMA-12 field. It consists of a GMRT 325
    MHz survey of the field (Mauch et al. 2013) combined with the multi-band
    catalogue of Kimball et al. 2014. The Kimball et al. catalogue is
    a cross-match between the NVSS and FIRST surveys and also includes data at
    74 MHz and 4 GHz. The cross-matching between Kimball et al. and Mauch et al.
    was done using the FIRST position using a match radius of 30".

    GAMA-15 (table `wp2.g15`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the GAMA-15 field. It consists of a GMRT 325
    MHz survey of the field (Mauch et al. 2013) combined with the multi-band
    catalogue of Kimball et al. 2014. The Kimball et al. catalogue is
    a cross-match between the NVSS and FIRST surveys and also includes data at
    74 MHz and 4 GHz. The cross-matching between Kimball et al. and Mauch et al.
    was done using the FIRST position using a match radius of 30".

    Herschel-Stripe-82 (table `wp2.h82`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the Herschel-Stripe-82 field. It consists of
    a VLA 1.4 GHz survey of the field (Hodge et al. 2011) combined with the
    multi-band catalogue of Kimball et al. 2014. The Kimball et al. catalogue is
    a cross-match between the NVSS and FIRST surveys and also includes data at
    74 MHz and 4 GHz. The cross-matching between Kimball et al. and Hodge et al.
    was done using the FIRST position using a match radius of 30".

    Lockman-SWIRE (table `wp2.lswire`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catlogue for the Lockman-SWIRE field. It consists of (1)
    a GMRT 610 MHz survey of the field (Garn et al. 2008,2010) and (2) a 15.7
    GHz survey of the field (Davies et al. 2011) combined with (3) the
    multi-band catalogue of Kimball et al. 2014. The Kimball et al. catalogue is
    a cross-match between the NVSS and FIRST surveys and also includes data at
    74 MHz and 4 GHz. The cross-matching between Davies et al. and Garn et al.
    was done using a match radius of 30". The resulting catalogue was then
    cross-matched with  Kimball et al. using the FIRST and GMRT positions, with
    a match radius of 30".

    HATLAS-NGP (table `wp2.hatlas_ngp`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    This is the radio catalogue for the HATLAS-NGP fields. It comes from the
    Kimball et al. compilation - this is a cross-match between the NVSS and
    FIRST surveys and also includes data at 74 MHz and 4 GHz.

    Survey identifications
    ----------------------

    +------------+------------------------------------------+
    | Survey     | 1.4 GHz catalogue (de Vries et al. 2002) |
    +------------+------------------------------------------+
    | Telescope  | WSRT                                     |
    +------------+------------------------------------------+
    | Instrument | WSRT                                     |
    +------------+------------------------------------------+
    | Filters    | WSRT_1400                                |
    +------------+------------------------------------------+
    | Reference  | 2002AJ....123.1784D                      |
    +------------+------------------------------------------+

    +------------+--------------------------------------------------+
    | Survey     | 10C                                              |
    +------------+--------------------------------------------------+
    | Telescope  | AMI                                              |
    +------------+--------------------------------------------------+
    | Instrument | AMI                                              |
    +------------+--------------------------------------------------+
    | Filters    | AMI_15700                                        |
    +------------+--------------------------------------------------+
    | Reference  | 2011MNRAS.415.2708A                              |
    +------------+--------------------------------------------------+
    | URL        | http://www.mrao.cam.ac.uk/facilities/surveys/10c |
    +------------+--------------------------------------------------+

    +------------+------------------------------------------+
    | Survey     | 153 MHz catalogue (Williams et al. 2013) |
    +------------+------------------------------------------+
    | Telescope  | GMRT                                     |
    +------------+------------------------------------------+
    | Instrument | GMRT                                     |
    +------------+------------------------------------------+
    | Filters    | GMRT_153                                 |
    +------------+------------------------------------------+
    | Reference  | 2013A&A...549A..55W                      |
    +------------+------------------------------------------+

    +------------+--------------------------------------+
    | Survey     | 2.3 GHz catalogue (Zinn et al. 2012) |
    +------------+--------------------------------------+
    | Telescope  | ATCA                                 |
    +------------+--------------------------------------+
    | Instrument | ATCA                                 |
    +------------+--------------------------------------+
    | Filters    | ATCA_2300                            |
    +------------+--------------------------------------+
    | Reference  | 2012A&A...544A..38Z                  |
    +------------+--------------------------------------+

    +------------+---------------------------------------+
    | Survey     | 325 MHz catalogue (Mauch et al. 2013) |
    +------------+---------------------------------------+
    | Telescope  | GMRT                                  |
    +------------+---------------------------------------+
    | Instrument | GMRT                                  |
    +------------+---------------------------------------+
    | Filters    | GMRT_325                              |
    +------------+---------------------------------------+
    | Reference  | 2013MNRAS.435..650M                   |
    +------------+---------------------------------------+
    | URL        | http://gmrt-gama.extragalactic.info   |
    +------------+---------------------------------------+

    +------------+--------------------------------------------------------------+
    | Survey     | 4.85 GHz catalogue from Green Bank (via Kimball et al. 2014) |
    +------------+--------------------------------------------------------------+
    | Telescope  | Green Bank                                                   |
    +------------+--------------------------------------------------------------+
    | Instrument | Green Bank                                                   |
    +------------+--------------------------------------------------------------+
    | Filters    | GB_4850                                                      |
    +------------+--------------------------------------------------------------+
    | Reference  | 2014arXiv1401.1535K                                          |
    +------------+--------------------------------------------------------------+
    | URL        | http://www.aoc.nrao.edu/~akimball/radiocat.shtml             |
    +------------+--------------------------------------------------------------+

    +-----------------+--------------------------------------------------------------------+
    | Survey          | 6 cm (4.8 GHz) survey of Willner et al. 2006                       |
    +-----------------+--------------------------------------------------------------------+
    | Telescope       | VLA                                                                |
    +-----------------+--------------------------------------------------------------------+
    | Instrument      | VLA (BnA configuration)                                            |
    +-----------------+--------------------------------------------------------------------+
    | Filters         | VLA_4800                                                           |
    +-----------------+--------------------------------------------------------------------+
    | Reference       | 2006AJ....132.2159W                                                |
    +-----------------+--------------------------------------------------------------------+
    | Acknowledgement | This study makes use of data from AEGIS, a multiwavelength sky     |
    |                 | survey conducted with the Chandra, GALEX, Hubble, Keck, CFHT, MMT, |
    |                 | Subaru, Palomar, Spitzer, VLA, and other telescopes and supported  |
    |                 | in part by the NSF, NASA, and the STFC.                            |
    +-----------------+--------------------------------------------------------------------+

    +------------+-------------------------------------------------------+
    | Survey     | 610 MHz catalogue (Garn et al. 2008, ,2009, 2010)     |
    +------------+-------------------------------------------------------+
    | Telescope  | GMRT                                                  |
    +------------+-------------------------------------------------------+
    | Instrument | GMRT                                                  |
    +------------+-------------------------------------------------------+
    | Filters    | GMRT_610                                              |
    +------------+-------------------------------------------------------+
    | Reference  | 2008MNRAS.383...75G                                   |
    |            | 2009MNRAS.397.1101G                                   |
    |            | 2010BASI...38..103G                                   |
    +------------+-------------------------------------------------------+
    | URL        | http://www.mrao.cam.ac.uk/facilities/surveys/gmrt/lh/ |
    +------------+-------------------------------------------------------+

    +-----------------+--------------------------------------------------------------------+
    | Survey          | AEGIS20                                                            |
    +-----------------+--------------------------------------------------------------------+
    | Telescope       | VLA                                                                |
    +-----------------+--------------------------------------------------------------------+
    | Instrument      | VLA (B configuration)                                              |
    +-----------------+--------------------------------------------------------------------+
    | Filters         | VLA_1400                                                           |
    +-----------------+--------------------------------------------------------------------+
    | Reference       | 2007ApJ...660L..77I                                                |
    +-----------------+--------------------------------------------------------------------+
    | URL             | http://aegis.ucolick.org/astronomers.html#vla_6cm                  |
    +-----------------+--------------------------------------------------------------------+
    | Acknowledgement | This study makes use of data from AEGIS, a multiwavelength sky     |
    |                 | survey conducted with the Chandra, GALEX, Hubble, Keck, CFHT, MMT, |
    |                 | Subaru, Palomar, Spitzer, VLA, and other telescopes and supported  |
    |                 | in part by the NSF, NASA, and the STFC.                            |
    +-----------------+--------------------------------------------------------------------+

    +------------+---------------------------------------------------+
    | Survey     | ATLAS                                             |
    +------------+---------------------------------------------------+
    | Telescope  | ATCA                                              |
    +------------+---------------------------------------------------+
    | Instrument | ATCA                                              |
    +------------+---------------------------------------------------+
    | Filters    | ATCA_1400                                         |
    +------------+---------------------------------------------------+
    | Reference  | 2015arXiv150803150F                               |
    +------------+---------------------------------------------------+
    | URL        | http://www.atnf.csiro.au/research/deep/index.html |
    +------------+---------------------------------------------------+

    +------------+----------------------------------+
    | Survey     | FIRST (via Kimball et al. 2014)' |
    +------------+----------------------------------+
    | Telescope  | VLA                              |
    +------------+----------------------------------+
    | Instrument | VLA (A-array configuration)      |
    +------------+----------------------------------+
    | Filters    | VLA_1400                         |
    +------------+----------------------------------+
    | Reference  | 2014arXiv1401.1535K              |
    +------------+----------------------------------+

    +------------+------------------------------------------------------------+
    | Survey     | NVSS (via Kimball et al. 2014)                             |
    +------------+------------------------------------------------------------+
    | Telescope  | VLA                                                        |
    +------------+------------------------------------------------------------+
    | Instrument | VLA (D-array & DnC-array configurations)                   |
    +------------+------------------------------------------------------------+
    | Filters    | VLA_1400                                                   |
    +------------+------------------------------------------------------------+
    | Reference  | 2014arXiv1401.1535K                                        |
    +------------+------------------------------------------------------------+
    | URL        | http://www.aoc.nrao.edu/~akimball/radiocat.shtml           |
    +------------+------------------------------------------------------------+

    +------------+-------------------------------------------------------+
    | Survey     | VLA North Ecliptic Pole survey                        |
    +------------+-------------------------------------------------------+
    | Telescope  | VLA                                                   |
    +------------+-------------------------------------------------------+
    | Instrument | VLA (C configuration)                                 |
    +------------+-------------------------------------------------------+
    | Filters    | VLA_1400                                              |
    +------------+-------------------------------------------------------+
    | Reference  | 1994ApJS...93..145K                                   |
    +------------+-------------------------------------------------------+
    | URL        | http://heasarc.gsfc.nasa.gov/W3Browse/all/vlanep.html |
    +------------+-------------------------------------------------------+

    +------------+---------------------------------------------------------------------+
    | Survey     | VLA SDSS Stripe 82 Survey                                           |
    +------------+---------------------------------------------------------------------+
    | Telescope  | VLA                                                                 |
    +------------+---------------------------------------------------------------------+
    | Instrument | VLA (A & B configurations)                                          |
    +------------+---------------------------------------------------------------------+
    | Filters    | VLA_1400                                                            |
    +------------+---------------------------------------------------------------------+
    | Reference  | 2011AJ....142....3H                                                 |
    +------------+---------------------------------------------------------------------+
    | URL        | http://heasarc.gsfc.nasa.gov/W3Browse/radio-catalog/vlass821p4.html |
    +------------+---------------------------------------------------------------------+

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
    | URL        | http://www.aoc.nrao.edu/~akimball/radiocat.shtml           |
    +------------+------------------------------------------------------------+

    +------------+------------------------------+
    | Survey     | WSRT survey of the AKARI-NEP |
    +------------+------------------------------+
    | Telescope  | WSRT                         |
    +------------+------------------------------+
    | Instrument | WSRT                         |
    +------------+------------------------------+
    | Filters    | WSRT_1400                    |
    +------------+------------------------------+
    | Reference  | 2010A&A...517A..54W          |
    +------------+------------------------------+

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
  <data id="import_akari">
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
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <!-- Bootes -->
  <table id="bootes" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="internal_id">

    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="FIRST RA if present, GMRT if not; WSRT if neither GMRT or FIRST; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="FIRST Declination if present, GMRT if not; WSRT if neither GMRT or FIRST; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="name_gmrt_153"
      tablehead="NAME_GMRT_153"
      type="text"
      ucd="meta.id"
      description="Source identifier (JHHMMSS+DDMM)"
      verbLevel="1" />
    <column name="ra_gmrt_153"
      tablehead="RA_GMRT_153"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Centroid right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="e_ra_gmrt_153"
      tablehead="E_RA_GMRT_153"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="arcsec"
      description="rms uncertainty on RA (1 sigma)"
      verbLevel="30" />
    <column name="dec_gmrt_153"
      tablehead="DEC_GMRT_153"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Centroid declination (J2000) in deg"
      verbLevel="30" />
    <column name="e_dec_gmrt_153"
      tablehead="E_DEC_GMRT_153"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="arcsec"
      description="rms uncertainty on DEdeg (1 sigma)"
      verbLevel="30" />
    <column name="f_gmrt_153"
      tablehead="F_GMRT_153"
      type="real"
      ucd="phot.flux.density;em.radio.100-200MHz"
      unit="mJy"
      description="153MHz integrated flux density in mJy"
      verbLevel="1" />
    <column name="ferr_gmrt_153"
      tablehead="FErr_GMRT_153"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.100-200MHz"
      unit="mJy"
      description="rms uncertainty on S153 in mJy (1 sigma)"
      verbLevel="1" />
    <column name="fp_gmrt_153"
      tablehead="FP_GMRT_153"
      type="real"
      ucd="phot.flux.density;em.radio.100-200MHz"
      unit="mJy"
      description="153MHz peak flux density in mJy/beam"
      verbLevel="1" />
    <column name="fperr_gmrt_153"
      tablehead="FPERR_GMRT_153"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.100-200MHz"
      unit="mJy"
      description="rms uncertainty on peak flux density (1 sigma) in mJy/beam"
      verbLevel="1" />
    <column name="rms_gmrt_153"
      tablehead="RMS_GMRT_153"
      type="real"
      ucd="stat.stdev;instr.det.noise"
      unit="mJy"
      description="Local RMS image noise near source in mJy/beam"
      verbLevel="1" />
    <column name="ng"
      tablehead="NG"
      type="integer"
      ucd="meta.number"
      description="Number of Gaussians fitted to source"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="detection_gmrt_153"
      tablehead="DETECTION_GMRT_153"
      type="smallint"
      ucd="meta.code"
      description="153 MHz detection flag"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_wsrt_1400"
      tablehead="RA_WSRT_1400"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_wsrt_1400"
      tablehead="DEC_WSRT_1400"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) in deg"
      verbLevel="30" />
    <column name="name_wsrt_1400"
      tablehead="NAME_WSRT_1400"
      type="text"
      ucd="meta.id"
      description="Source name (JHHMMSS+DDMMSS)"
      verbLevel="30" />
    <column name="nm_flag"
      tablehead="NM_FLAG"
      type="text"
      ucd="meta.code"
      note="1"
      description="Indicates object has an alternative name"
      verbLevel="30" />
    <column name="epos_wsrt_1400"
      tablehead="EPOS_WSRT_1400"
      type="real"
      ucd="stat.error"
      unit="arcsec"
      description="1 sigma radio positional uncertainty in arcsec"
      verbLevel="30" />
    <column name="stype"
      tablehead="Stype"
      type="text"
      ucd="src.class"
      description="Source type"
      note="2"
      verbLevel="1" />
    <column name="f_wsrt_1400"
      tablehead="F_WSRT_1400"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="The integrated flux at 1400MHz in mJy"
      verbLevel="1" />
    <column name="ferr_wsrt_1400"
      tablehead="FErr_WSRT_1400"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Uncertainty on integrated flux in mJy"
      verbLevel="1" />
    <column name="rms_wsrt_1400"
      tablehead="RMS_WSRT_1400"
      type="real"
      ucd="stat.stdev;instr.det.noise"
      unit="mJy"
      description="Local sky rms in mJy"
      verbLevel="1" />
    <column name="major_wsrt_1400"
      tablehead="MAJOR_WSRT_1400"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Apparent major diameter in arcsec"
      verbLevel="30" />
    <column name="minor_wsrt_1400"
      tablehead="MINOR_WSRT_1400"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Apparent minor diameter in arcsec"
      verbLevel="30" />
    <column name="pa_wsrt_1400"
      tablehead="PA_WSRT_1400"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position Angle in deg"
      verbLevel="30" />
    <column name="las_wsrt_1400"
      tablehead="LAS_WSRT_1400"
      type="real"
      ucd="phys.angSize;stat.max"
      unit="arcsec"
      description="Largest Angular Size in arcsec"
      verbLevel="30" />
    <column name="x"
      tablehead="X"
      type="text"
      ucd="meta.code"
      description="O when a counterpart exists in APM within 1arcmin, W for a
      counterpart in the WENSS within 1arcmin"
      verbLevel="30" />
    <column name="detection_wsrt_1400"
      tablehead="DETECTION_WSRT_1400"
      type="smallint"
      ucd="meta.code"
      description="1.4 GHz detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation_wsrt_gmrt"
      tablehead="SEPARATION_WSRT_GMRT"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Distance between WSRT and GMRT positions in arcsec"
      verbLevel="30" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="set to -1 if FIRST is primary; otherwise equals rank of FIRST
      match"
      note="3"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="set to -1 if NVSS is primary; otherwise equals rank of NVSS
      match"
      note="3"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="nvss_first_distance"
      tablehead="NVSS_FIRST_Distance"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="integer"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="integer"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="integer"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="integer"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="integer"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source "
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="integer"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="real"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source "
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="1" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="1" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="1" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="1" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="double precision"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="double precision"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="30" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="integer"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="integer"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="integer"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation_gmrt_first"
      tablehead="Separation_gmrt_first"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between FIRST and GMRT source positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd=" meta.id;meta.main"
      description="Internal identifier"
      required="True"
      verbLevel="1" />

    <meta name="note" tag="1"><![CDATA[
      Note on Nm_flag column, alternative names:

      ============== ===========
      J142659+341159 7C 1412+344
      J142739+330750 7C 1425+333
      J143025+351914 NGC 5656
      J143048+333319 7C 1428+337
      J143052+331320 7C 1428+334
      J143134+351506 7C 1429+354
      J143317+345108 7C 1431+350
      J143342+341138 7C 1431+344
      J143749+345452 7C 1435+351
      ============== ===========

      ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      Note on Stype column, source type as follows:

      = ==============================================
      S point source, unresolved by 27.0x13.5" beam
      M resolved, with up to 4 Gaussian components
      E resolved, with more than 4 Gaussian components
      = ==============================================

      ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      Matchflag parameters
      --------------------

      the FIRST--NVSS matching was done twice: we both positionally matched NVSS
      objects to FIRST sources, and also positionally matched FIRST objects to
      NVSS sources. This dual matching method allows us to keep track of
      multiple FIRST components in close proximity to a single NVSS position,
      and vice versa. For a row with an NVSS primary, we set matchflag_nvss
      = -1. If no FIRST counterparts are found for that NVSS source, we set
      matchflag_first = 0. Otherwise, the catalog will contain up to three rows
      for that NVSS source, one for each of the three (or fewer) closest FIRST
      matches within 30″. We set matchflag_first = 1, 2, or 3 in each of those
      rows, ranking in order from closest to farthest FIRST counterpart. Any
      remaining matches within 30″ are not stored, although the number of such
      matches can be recovered from the matchtot_30 parameter.

      For rows with a FIRST detection as primary, we set matchflag_first = -1,
      and the values of matchflag_nvss are determined similarly to what was
      described in the previous paragraph.

      ]]></meta>

  </table>
  <data id="import_bootes">
    <sources>data/wp2_bootes.csv</sources>
    <csvGrammar />
    <make table="bootes">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          name_gmrt_153:name_gmrt_153,
          ra_gmrt_153:ra_gmrt_153,
          e_ra_gmrt_153:e_ra_gmrt_153,
          dec_gmrt_153:dec_gmrt_153,
          e_dec_gmrt_153:e_dec_gmrt_153,
          f_gmrt_153:fmjy_gmrt_153,
          ferr_gmrt_153:ferrmjy_gmrt_153,
          fp_gmrt_153:fp_mjy_gmrt_153,
          fperr_gmrt_153:fperr_mjy_gmrt_153,
          rms_gmrt_153:rms_mjy_gmrt_153,
          ng:ng,
          detection_gmrt_153:detection_gmrt_153,
          ra_wsrt_1400:ra_wsrt_1400,
          dec_wsrt_1400:dec_wsrt_1400,
          name_wsrt_1400:name_wsrt_1400,
          nm_flag:nm_flag,
          epos_wsrt_1400:epos_wsrt_1400,
          stype:stype,
          f_wsrt_1400:fmjy_wsrt_1400,
          ferr_wsrt_1400:ferrmjy_wsrt_1400,
          rms_wsrt_1400:rms_mjy_wsrt_1400,
          major_wsrt_1400:major_wsrt_1400,
          minor_wsrt_1400:minor_wsrt_1400,
          pa_wsrt_1400:pa_wsrt_1400,
          las_wsrt_1400:las_wsrt_1400,
          x:x,
          detection_wsrt_1400:detection_wsrt_1400,
          separation_wsrt_gmrt:separation_wsrt_gmrt,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          nvss_first_distance:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:fmjy_vla_1400__first,
          ferr_vla_1400__first:ferrmjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
          id_vla_1400__nvss:id_vla_1400__nvss,
          ra_vla_1400__nvss:ra_vla_1400__nvss,
          dec_vla_1400__nvss:dec_vla_1400__nvss,
          peak_vla_1400__nvss:peak_vla_1400__nvss,
          f_vla_1400__nvss:fmjy_vla_1400__nvss,
          ferr_vla_1400__nvss:ferrmjy_vla_1400__nvss,
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
          f_gb_4850:fmjy_gb_4850,
          ferr_gb_4850:ferrmjy_gb_4850,
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
          f_vla_74:fmjy_vla_74,
          ferr_vla_74:ferrmjy_vla_74,
          major_vla_74:major_vla_74,
          major_err_vla_74:major_err_vla_74,
          minor_vla_74:minor_vla_74,
          minor_err_vla_74:minor_err_vla_74,
          posangle_vla_74:posangle_vla_74,
          posangle_err_vla_74:posangle_err_vla_74,
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          separation_gmrt_first:separation_gmrt_first,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_boo" allowed="scs.xml,form,static">
    <meta name="title">WP2 Bootes Radio Catalogue</meta>
    <meta name="shortName">WP2 Bootes</meta>
    <meta name="testQuery">
      <meta name="ra">218.2</meta>
      <meta name="dec">34.173</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="bootes">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <!-- CDFS-SWIRE -->
  <table id="cdfs_swire" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="internal_id">

    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="ATCA RA if present NVSS if not"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="ATCA Declination if present NVSS if not"
      required="True"
      verbLevel="1" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="integer"
      ucd="meta.code"
      description="= 1 if a FIRST match exists = 0 if no FIRST match"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="integer"
      ucd="meta.code"
      description="= -1 as NVSS is the primary catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="1" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="1" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="1" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="1" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="integer"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_atca_1400"
      tablehead="ID_atca_1400"
      type="text"
      ucd="meta.id"
      description="Component number"
      verbLevel="1" />
    <column name="name_atca_1400"
      tablehead="Name_atca_1400"
      type="text"
      ucd="meta.id"
      description="Source name"
      verbLevel="1" />
    <column name="ra_atca_1400"
      tablehead="RA_atca_1400"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension in deg"
      verbLevel="30" />
    <column name="dec_atca_1400"
      tablehead="Dec_atca_1400"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination in deg"
      verbLevel="30" />
    <column name="ra_err_atca_1400"
      tablehead="RA_err_atca_1400"
      type="double precision"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="Error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_err_atca_1400"
      tablehead="Dec_err_atca_1400"
      type="double precision"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="Error on declination in deg"
      verbLevel="30" />
    <column name="rms_atca_1400"
      tablehead="rms_atca_1400"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="uJy"
      description="Local rms in uJy"
      verbLevel="1" />
    <column name="bws_atca_1400"
      tablehead="BWS_atca_1400"
      type="real"
      ucd="stat.value"
      description="local bandwidth smearing value"
      verbLevel="1" />
    <column name="obs_freq_atca_1400"
      tablehead="OBS_FREQ_atca_1400"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="MHz"
      description="Frequency at which Fp_mjy and F_mjy was measured in MHz"
      verbLevel="1" />
    <column name="fp"
      tablehead="Fp"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Fitted source peak measured at OBS_FREQ_atca_1400 in mJy/beam"
      verbLevel="1" />
    <column name="fperr"
      tablehead="FPerr"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Error in fitted source peak in mJy/beam"
      verbLevel="1" />
    <column name="f"
      tablehead="F"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Integrated flux density measured at OBS_FREQ_atca_1400 in mJy"
      verbLevel="1" />
    <column name="ferr"
      tablehead="Ferr"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Error in integrated flux density in mJy"
      verbLevel="1" />
    <column name="fp_atca_1400"
      tablehead="FP_atca_1400"
      type="double precision"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Peak 20 cm flux density in mJy/beam"
      verbLevel="1" />
    <column name="fperr_atca_1400"
      tablehead="FPerr_atca_1400"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="RMS error in peak 20 cm flux density in mJy/beam"
      verbLevel="1" />
    <column name="f_atca_1400"
      tablehead="F_atca_1400"
      type="double precision"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Integrated 20 cm flux density in mJy"
      verbLevel="1" />
    <column name="ferr_atca_1400"
      tablehead="FErr_atca_1400"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="RMS error in integrated flux density in mJy"
      verbLevel="1" />
    <column name="deconv_atca_1400"
      tablehead="DECONV_atca_1400"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Deconvolved angular size in arcsec"
      verbLevel="30" />
    <column name="deconv_err_atca_1400"
      tablehead="DECONV_ERR_atca_1400"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="Error in deconvolved angular size in arcsec"
      verbLevel="30" />
    <column name="class_atca_1400"
      tablehead="CLASS_atca_1400"
      type="text"
      ucd="meta.code"
      description="P = Point-Like Source or E = Extended Source"
      verbLevel="1" />
    <column name="sindex_atca_1400"
      tablehead="SINDEX_atca_1400"
      type="real"
      ucd="spect.index"
      description="Spectral index of source between 1400 and 1710 MHz"
      verbLevel="30" />
    <column name="sindex_err_atca_1400"
      tablehead="SINDEX_ERR_atca_1400"
      type="real"
      ucd="stat.error;spect.index"
      description="Error on spectral index"
      verbLevel="30" />
    <column name="detection_atca_1400"
      tablehead="Detection_atca_1400"
      type="smallint"
      ucd="meta.code"
      description="Detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation"
      tablehead="Separation"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between NVSS and ATLAS positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
  </table>
  <data id="import_cdfs_swire">
    <sources>data/wp2_cdfs-swire.csv</sources>
    <csvGrammar />
    <make table="cdfs_swire">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          id_vla_1400__nvss:id_vla_1400__nvss,
          ra_vla_1400__nvss:ra_vla_1400__nvss,
          dec_vla_1400__nvss:dec_vla_1400__nvss,
          peak_vla_1400__nvss:peak_vla_1400__nvss,
          f_vla_1400__nvss:fmjy_vla_1400__nvss,
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
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          id_atca_1400:id_atca_1400,
          name_atca_1400:name_atca_1400,
          ra_atca_1400:ra_atca_1400,
          dec_atca_1400:dec_atca_1400,
          ra_err_atca_1400:ra_err_atca_1400,
          dec_err_atca_1400:dec_err_atca_1400,
          rms_atca_1400:rms_atca_1400,
          bws_atca_1400:bws_atca_1400,
          obs_freq_atca_1400:obs_freq_atca_1400,
          fp:fpmjy,
          fperr:fperrmjy,
          f:fmjy,
          ferr:ferrmjy,
          fp_atca_1400:fpmjy_atca_1400,
          fperr_atca_1400:fperrmjy_atca_1400,
          f_atca_1400:fmjy_atca_1400,
          ferr_atca_1400:ferrmjy_atca_1400,
          deconv_atca_1400:deconv_atca_1400,
          deconv_err_atca_1400:deconv_err_atca_1400,
          class_atca_1400:class_atca_1400,
          sindex_atca_1400:sindex_atca_1400,
          sindex_err_atca_1400:sindex_err_atca_1400,
          detection_atca_1400:detection_atca_1400,
          separation:separation,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_cds" allowed="scs.xml,form,static">
    <meta name="title">WP2 CDFS-SWIRE Radio Catalogue</meta>
    <meta name="shortName">WP2 CDFS-SWIRE</meta>
    <meta name="testQuery">
      <meta name="ra">53.1</meta>
      <meta name="dec">-28.235</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="cdfs_swire">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>


  <!-- EGS -->
  <table id="egs" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="internal_id">

    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="AEGIS20 or 4.8 GHz  RA if present, FIRST if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="AEGIS20 or 4.8 GHz Declination if present, FIRST if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="id_vla_1400__aegis20"
      tablehead="ID_VLA_1400__AEGIS20"
      type="text"
      ucd="meta.id"
      description="Source name"
      verbLevel="1" />
    <column name="ra_vla_1400__aegis20"
      tablehead="RA_VLA_1400__AEGIS20"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__aegis20"
      tablehead="DEC_VLA_1400__AEGIS20"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_vla_1400__aegis20"
      tablehead="RA_ERR_VLA_1400__AEGIS20"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="Error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_err_vla_1400__aegis20"
      tablehead="DEC_ERR_VLA_1400__AEGIS20"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="Error on declination in deg"
      verbLevel="30" />
    <column name="fp_vla_1400__aegis20"
      tablehead="FP_VLA_1400__AEGIS20"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="uJy"
      description="Peak flux density at 1.4 GHz in uJy"
      verbLevel="1" />
    <column name="fperr_vla_1400__aegis20"
      tablehead="FPERR_VLA_1400__AEGIS20"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="uJy"
      description="Error on peak flux density in uJy"
      verbLevel="1" />
    <column name="f_vla_1400__aegis20"
      tablehead="F_VLA_1400__AEGIS20"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="uJy"
      description="Integrated flux density at 1.4 GHz in uJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__aegis20"
      tablehead="FERR_VLA_1400__AEGIS20"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="uJy"
      description="Error on integrated flux density in uJy"
      verbLevel="1" />
    <column name="major_vla_1400__aegis20"
      tablehead="MAJOR_VLA_1400__AEGIS20"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__aegis20"
      tablehead="MINOR_VLA_1400__AEGIS20"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Minor axis in arcsec"
      verbLevel="30" />
    <column name="pa_vla_1400__aegis20"
      tablehead="PA_VLA_1400__AEGIS20"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__aegis20"
      tablehead="DETECTION_VLA_1400__AEGIS20"
      type="smallint"
      ucd="meta.code"
      description="Detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_4800"
      tablehead="RA_VLA_4800"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_4800"
      tablehead="DEC_VLA_4800"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) in deg"
      verbLevel="30" />
    <column name="flag_vla_4800"
      tablehead="FLAG_VLA_4800"
      type="text"
      ucd="meta.code"
      description="[IP] I for Isolated Sources, P for Possible Multiple Sources"
      verbLevel="1" />
    <column name="name_vla_4800"
      tablehead="NAME_VLA_4800"
      type="integer"
      ucd="meta.id"
      description="Source name"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="name2_vla_4800"
      tablehead="NAME2_VLA_4800"
      type="text"
      ucd="meta.id"
      description="Name of additional component"
      verbLevel="30" />
    <column name="n_pos_vla_4800"
      tablehead="N_POS_VLA_4800"
      type="text"
      ucd="meta.code"
      description="[t] t for total (2 or 3 sources), no position (1)"
      verbLevel="30" />
    <column name="pbcorr_vla_4800"
      tablehead="PBCORR_VLA_4800"
      type="real"
      ucd="arith.factor"
      description="Primary beam correction applied to the flux densities"
      verbLevel="30" />
    <column name="f_vla_4800"
      tablehead="F_VLA_4800"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="Total flux density at 4.8 GHz in mJy"
      verbLevel="1" />
    <column name="ferr_vla_4800"
      tablehead="FErr_VLA_4800"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="Error on flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_4800"
      tablehead="MAJOR_VLA_4800"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Major axis in arcsec"
      verbLevel="30" />
    <column name="l_amin_vla_4800"
      tablehead="L_AMIN_VLA_4800"
      type="text"
      ucd="meta.code"
      description="Limit flag on minor axis"
      verbLevel="30" />
    <column name="minor_vla_4800"
      tablehead="MINOR_VLA_4800"
      type="text"
      ucd="phys.angSize"
      unit="arcsec"
      description="Minor axis in arcsec"
      verbLevel="30" />
    <column name="note_vla_4800"
      tablehead="NOTE_VLA_4800"
      type="text"
      ucd="meta.note"
      description="Comments"
      verbLevel="30" />
    <column name="detection_vla_4800"
      tablehead="DETECTION_VLA_4800"
      type="smallint"
      ucd="meta.code"
      description="Detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation_1400_4800"
      tablehead="SEPARATION_1400_4800"
      type="double precision"
      ucd="pos.angDistance"
      description="Separation between AEGIS20 1.4 GHz and 4.8 GHz positions"
      verbLevel="30" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="set to -1 if FIRST is primary; otherwise equals rank of
      FIRST"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="set to -1 if NVSS is primary; otherwise equals rank of NVSS
      match"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="integer"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="integer"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="integer"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="integer"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="integer"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="real"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="real"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source"
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation_first_aegis"
      tablehead="Separation_first_aegis"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between FIRST and GMRT source positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id"
      description="Internal identifier"
      required="True"
      verbLevel="1" />

    <meta name="note" tag="1"><![CDATA[
      Matchflag parameters
      --------------------

      the FIRST--NVSS matching was done twice: we both positionally matched NVSS
      objects to FIRST sources, and also positionally matched FIRST objects to
      NVSS sources. This dual matching method allows us to keep track of
      multiple FIRST components in close proximity to a single NVSS position,
      and vice versa. For a row with an NVSS primary, we set matchflag_nvss
      = -1. If no FIRST counterparts are found for that NVSS source, we set
      matchflag_first = 0. Otherwise, the catalog will contain up to three rows
      for that NVSS source, one for each of the three (or fewer) closest FIRST
      matches within 30″. We set matchflag_first = 1, 2, or 3 in each of those
      rows, ranking in order from closest to farthest FIRST counterpart. Any
      remaining matches within 30″ are not stored, although the number of such
      matches can be recovered from the matchtot_30 parameter.

      For rows with a FIRST detection as primary, we set matchflag_first = -1,
      and the values of matchflag_nvss are determined similarly to what was
      described in the previous paragraph.

      ]]></meta>


  </table>
  <data id="import_egs">
    <sources>data/wp2_egs.csv</sources>
    <csvGrammar />
    <make table="egs">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          id_vla_1400__aegis20:id_vla_1400__aegis20,
          ra_vla_1400__aegis20:ra_vla_1400__aegis20,
          dec_vla_1400__aegis20:dec_vla_1400__aegis20,
          ra_err_vla_1400__aegis20:ra_err_vla_1400__aegis20,
          dec_err_vla_1400__aegis20:dec_err_vla_1400__aegis20,
          fp_vla_1400__aegis20:fp_vla_1400__aegis20,
          fperr_vla_1400__aegis20:fperr_vla_1400__aegis20,
          f_vla_1400__aegis20:f_vla_1400__aegis20,
          ferr_vla_1400__aegis20:ferr_vla_1400__aegis20,
          major_vla_1400__aegis20:major_vla_1400__aegis20,
          minor_vla_1400__aegis20:minor_vla_1400__aegis20,
          pa_vla_1400__aegis20:pa_vla_1400__aegis20,
          detection_vla_1400__aegis20:detection_vla_1400__aegis20,
          ra_vla_4800:ra_vla_4800,
          dec_vla_4800:dec_vla_4800,
          flag_vla_4800:flag_vla_4800,
          name_vla_4800:name_vla_4800,
          name2_vla_4800:name2_vla_4800,
          n_pos_vla_4800:n_pos_vla_4800,
          pbcorr_vla_4800:pbcorr_vla_4800,
          f_vla_4800:fmjy_vla_4800,
          ferr_vla_4800:ferrmjy_vla_4800,
          major_vla_4800:major_vla_4800,
          l_amin_vla_4800:l_amin_vla_4800,
          minor_vla_4800:minor_vla_4800,
          note_vla_4800:note_vla_4800,
          detection_vla_4800:detection_vla_4800,
          separation_1400_4800:separation_1400_4800,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:fmjy_vla_1400__first,
          ferr_vla_1400__first:ferrmjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
          id_vla_1400__nvss:id_vla_1400__nvss,
          ra_vla_1400__nvss:ra_vla_1400__nvss,
          dec_vla_1400__nvss:dec_vla_1400__nvss,
          peak_vla_1400__nvss:peak_vla_1400__nvss,
          f_vla_1400__nvss:fmjy_vla_1400__nvss,
          ferr_vla_1400__nvss:ferrmjy_vla_1400__nvss,
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
          f_gb_4850:fmjy_gb_4850,
          ferr_gb_4850:ferrmjy_gb_4850,
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
          f_vla_74:fmjy_vla_74,
          ferr_vla_74:ferrmjy_vla_74,
          major_vla_74:major_vla_74,
          major_err_vla_74:major_err_vla_74,
          minor_vla_74:minor_vla_74,
          minor_err_vla_74:minor_err_vla_74,
          posangle_vla_74:posangle_vla_74,
          posangle_err_vla_74:posangle_err_vla_74,
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          separation_first_aegis:separation_first_aegis,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_egs" allowed="scs.xml,form,static">
    <meta name="title">WP2 EGS Radio Catalogue</meta>
    <meta name="shortName">WP2 EGS</meta>
    <meta name="testQuery">
      <meta name="ra">215.0</meta>
      <meta name="dec">52.72</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="egs">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <!-- ELAIS-N1 -->
  <table id="en1" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="FIRST RA if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="FIRST Declination if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="ra_gmrt_610"
      tablehead="RA_gmrt_610"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_gmrt_610"
      tablehead="Dec_gmrt_610"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) in deg"
      verbLevel="30" />
    <column name="gmrten1"
      tablehead="GMRTEN1"
      type="text"
      ucd="meta.id"
      description="IAU designation of source (JHHMMSS.s+DDMMSS)"
      verbLevel="1" />
    <column name="rah_gmrt_610"
      tablehead="RAh_gmrt_610"
      type="text"
      ucd="pos.eq.ra"
      description="Right ascension (J2000) in sexagesimal"
      verbLevel="30" />
    <column name="dech_gmrt_610"
      tablehead="Dech_gmrt_610"
      type="text"
      ucd="pos.eq.dec"
      description="Declination (J2000) in sexagesimal"
      verbLevel="30" />
    <column name="fp_gmrt_610"
      tablehead="FP_gmrt_610"
      type="real"
      ucd="phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Peak pixel brightness in mJy/bm"
      verbLevel="1" />
    <column name="rms_gmrt_610"
      tablehead="RMS_gmrt_610"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Local rms noise in uJy/bm"
      verbLevel="1" />
    <column name="f_gmrt_610"
      tablehead="F_gmrt_610"
      type="real"
      ucd="phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Integrated flux in mJy"
      verbLevel="1" />
    <column name="ferr_gmrt_610"
      tablehead="FErr_gmrt_610"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Error on integrated flux in mJy"
      verbLevel="1" />
    <column name="flags"
      tablehead="Flags"
      type="smallint"
      ucd="meta.code"
      description="Source SExtractor flags"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gmrt_610"
      tablehead="Detection_gmrt_610"
      type="smallint"
      ucd="meta.code"
      description="610 MHz detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="= -1 as first is the primary catalogue"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="= 1 if a nvss match exists, = 0 if no nvss match"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="real"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source"
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation"
      tablehead="Separation"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between FIRST and GMRT source positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id"
      description="Internal identifier"
      required="True"
      verbLevel="1" />

    <meta name="note" tag="1"><![CDATA[
      Notes on the Flags column:
      --------------------------

      = ========================================================================
      1 where a nearby bright source may be affecting the calculated flux
      2 where a source has been deblended into two or more components from a
        single initial island of flux
      3 when both 1 and 2 apply
      = ========================================================================

      ]]></meta>
  </table>
  <data id="import_en1">
    <sources>data/wp2_elais-n1.csv</sources>
    <csvGrammar />
    <make table="en1">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          ra_gmrt_610:ra_gmrt_610,
          dec_gmrt_610:dec_gmrt_610,
          gmrten1:gmrten1,
          rah_gmrt_610:rah_gmrt_610,
          dech_gmrt_610:dech_gmrt_610,
          fp_gmrt_610:fp_mjy_gmrt_610,
          rms_gmrt_610:rms_gmrt_610,
          f_gmrt_610:f_mjy_gmrt_610,
          ferr_gmrt_610:ferr_mjy_gmrt_610,
          flags:flags,
          detection_gmrt_610:detection_gmrt_610,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:f_mjy_vla_1400__first,
          ferr_vla_1400__first:ferr_mjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
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
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          separation:separation,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_en1" allowed="scs.xml,form,static">
    <meta name="title">WP2 ELAIS-N1 Radio Catalogue</meta>
    <meta name="shortName">WP2 ELAIS-N1</meta>
    <meta name="testQuery">
      <meta name="ra">242.9</meta>
      <meta name="dec">55.071</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="en1">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>


  <!-- ELAIS-N2 -->
  <table id="en2" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="FIRST RA if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="FIRST Declination if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="1" />
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="'= -1 as first is the primary catalogue"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="'= 1 if a nvss match exists, = 0 if no nvss match"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="real"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source"
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="30" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="arcsec"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gmrt_610"
      tablehead="RA_gmrt_610"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_gmrt_610"
      tablehead="Dec_gmrt_610"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) in deg"
      verbLevel="30" />
    <column name="name_gmrt_610"
      tablehead="Name_gmrt_610"
      type="text"
      ucd="meta.id"
      description="IAU designation of source (JHHMMSS.s+DDMMSS)"
      verbLevel="1" />
    <column name="rah_gmrt_610"
      tablehead="RAh_gmrt_610"
      type="text"
      ucd="pos.eq.ra"
      description="Right ascension (J2000) in sexagesimal"
      verbLevel="30" />
    <column name="dech_gmrt_610"
      tablehead="Dech_gmrt_610"
      type="text"
      ucd="pos.eq.dec"
      description="Declination (J2000) in sexagesimal"
      verbLevel="30" />
    <column name="fp_gmrt_610"
      tablehead="FP_gmrt_610"
      type="real"
      ucd="phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Peak pixel brightness in mJy/bm"
      verbLevel="1" />
    <column name="rms_gmrt_610"
      tablehead="RMS_gmrt_610"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Local rms noise in uJy/bm"
      verbLevel="1" />
    <column name="f_gmrt_610"
      tablehead="F_gmrt_610"
      type="real"
      ucd="phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Integrated flux in mJy"
      verbLevel="1" />
    <column name="ferr_gmrt_610"
      tablehead="FErr_gmrt_610"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Error on integrated flux in mJy"
      verbLevel="1" />
    <column name="flags"
      tablehead="Flags"
      type="smallint"
      ucd="meta.code"
      description="Source SExtractor flags"
      note="1"
      verbLevel="1" />
    <column name="detection_gmrt_610"
      tablehead="Detection_gmrt_610"
      type="smallint"
      ucd="meta.code"
      description="610 MHz detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation"
      tablehead="Separation"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between FIRST and GMRT source positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id"
      description="Internal identifier"
      required="True"
      verbLevel="1" />

    <meta name="note" tag="1"><![CDATA[
      Notes on the Flags column:
      --------------------------

      = ========================================================================
      1 where a nearby bright source may be affecting the calculated flux
      2 where a source has been deblended into two or more components from a
        single initial island of flux
      3 when both 1 and 2 apply
      = ========================================================================

      ]]></meta>
  </table>
  <data id="import_en2">
    <sources>data/wp2_elais-n2.csv</sources>
    <csvGrammar />
    <make table="en2">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:f_mjy_vla_1400__first,
          ferr_vla_1400__first:ferr_mjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
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
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          name_gmrt_610:name_gmrt_610,
          rah_gmrt_610:rah_gmrt_610,
          dech_gmrt_610:dech_gmrt_610,
          ra_gmrt_610:ra_gmrt_610,
          dec_gmrt_610:dec_gmrt_610,
          fp_gmrt_610:fpmjy_gmrt_610,
          rms_gmrt_610:rms_gmrt_610,
          f_gmrt_610:fmjy_gmrt_610,
          ferr_gmrt_610:ferrmjy_gmrt_610,
          flags:flags,
          detection_gmrt_610:detection_gmrt_610,
          separation:separation,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_en2" allowed="scs.xml,form,static">
    <meta name="title">WP2 ELAIS-N2 Radio Catalogue</meta>
    <meta name="shortName">WP2 ELAIS-N2</meta>
    <meta name="testQuery">
      <meta name="ra">249.2</meta>
      <meta name="dec">41.06</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="en2">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <!-- ELAIS-S1 -->
  <table id="es1" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="id_atca_1400"
      tablehead="ID_ATCA_1400"
      type="text"
      ucd="meta.id"
      description="Component number"
      verbLevel="30" />
    <column name="name_atca_1400"
      tablehead="NAME_ATCA_1400"
      type="text"
      ucd="meta.id"
      description="Source name"
      verbLevel="1" />
    <column name="ra_atca_1400"
      tablehead="RA_ATCA_1400"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension in deg"
      verbLevel="30" />
    <column name="dec_atca_1400"
      tablehead="DEC_ATCA_1400"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination in deg"
      verbLevel="30" />
    <column name="ra_err_atca_1400"
      tablehead="RA_ERR_ATCA_1400"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="Error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_err_atca_1400"
      tablehead="DEC_ERR_ATCA_1400"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="Error on declination in deg"
      verbLevel="30" />
    <column name="rms_atca_1400"
      tablehead="RMS_ATCA_1400"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="uJy"
      description="Local rms in uJy"
      verbLevel="1" />
    <column name="bws_atca_1400"
      tablehead="BWS_ATCA_1400"
      type="real"
      ucd="stat.value"
      description="local bandwidth smearing value"
      verbLevel="1" />
    <column name="obs_freq_atca_1400"
      tablehead="OBS_FREQ_ATCA_1400"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="MHz"
      description="Frequency at which Fp_mjy and F_mjy was measured in MHz"
      verbLevel="1" />
    <column name="fp"
      tablehead="FP"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Fitted source peak, measured at OBS_FREQ_atca_1400, in mJy/beam"
      verbLevel="1" />
    <column name="fperr"
      tablehead="FPERR"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Error in fitted source peak in mJy/beam"
      verbLevel="1" />
    <column name="f"
      tablehead="F"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Integrated flux density, measured at OBS_FREQ_atca_1400, in mJy"
      verbLevel="1" />
    <column name="ferr"
      tablehead="FERR"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Error in integrated flux density in mJy"
      verbLevel="1" />
    <column name="fp_atca_1400"
      tablehead="FP_ATCA_1400"
      type="double precision"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Peak 20 cm flux density in mJy/beam"
      verbLevel="1" />
    <column name="fperr_atca_1400"
      tablehead="FPERR_ATCA_1400"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="RMS error in peak 20 cm flux density in mJy/beam"
      verbLevel="1" />
    <column name="f_atca_1400"
      tablehead="F_ATCA_1400"
      type="double precision"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Integrated 20 cm flux density in mJy"
      verbLevel="1" />
    <column name="ferr_atca_1400"
      tablehead="FERR_ATCA_1400"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="RMS error in integrated flux density in mJy"
      verbLevel="1" />
    <column name="deconv_atca_1400"
      tablehead="DECONV_ATCA_1400"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Deconvolved angular size in arcsec"
      verbLevel="30" />
    <column name="deconv_err_atca_1400"
      tablehead="DECONV_ERR_ATCA_1400"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="Error in deconvolved angular size in arcsec"
      verbLevel="30" />
    <column name="class_atca_1400"
      tablehead="CLASS_ATCA_1400"
      type="text"
      ucd="meta.code"
      description="P = Point-Like Source or E = Extended Source"
      verbLevel="1" />
    <column name="sindex_atca_1400"
      tablehead="SINDEX_ATCA_1400"
      type="real"
      ucd="spect.index"
      description="Spectral index of source between 1400 and 1710 MHz"
      verbLevel="30" />
    <column name="sindex_err_atca_1400"
      tablehead="SINDEX_ERR_ATCA_1400"
      type="real"
      ucd="stat.error;spect.index"
      description="Error on spectral index"
      verbLevel="30" />
    <column name="detection_atca_1400"
      tablehead="DETECTION_ATCA_1400"
      type="smallint"
      ucd="meta.code"
      description="Detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="fld"
      tablehead="FLD"
      type="text"
      ucd="obs.field"
      description="[CE] Field: C for CDF-S or E for ELAIS-S1"
      verbLevel="30" />
    <column name="name_atca_2300"
      tablehead="NAME_ATCA_2300"
      type="text"
      ucd="meta.id"
      description="Source designation, NNNCN, within the field"
      verbLevel="1" />
    <column name="ra_atca_2300"
      tablehead="RA_ATCA_2300"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension in decimal degrees (J2000)"
      verbLevel="30" />
    <column name="dec_atca_2300"
      tablehead="DEC_ATCA_2300"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination in decimal degrees (J2000)"
      verbLevel="30" />
    <column name="s1_4hi"
      tablehead="S1_4HI"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Integrated flux density at 1.4GHz in high resolution map"
      verbLevel="1" />
    <column name="e_s1_4hi"
      tablehead="E_S1_4HI"
      type="real"
      ucd="stat.error"
      unit="mJy"
      description="Error of integrated flux density at 1.4GHz in high resolution map"
      verbLevel="1" />
    <column name="s1_4lo"
      tablehead="S1_4LO"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Integrated flux density at 1.4GHz in low resolution map"
      verbLevel="1" />
    <column name="e_s1_4lo"
      tablehead="E_S1_4LO"
      type="real"
      ucd="stat.error"
      unit="mJy"
      description="Error of integrated flux density at 1.4GHz in low resolution map"
      verbLevel="1" />
    <column name="rms1_4"
      tablehead="RMS1_4"
      type="real"
      ucd="instr.det.noise"
      unit="mJy"
      description="Local rms noise at 1.4GHz in low resolution map"
      verbLevel="1" />
    <column name="f_atca_2300"
      tablehead="F_ATCA_2300"
      type="double precision"
      ucd="phot.flux.density;em.radio.1500-3000MHz"
      unit="mJy"
      description="Integrated flux density at 2.3GHz"
      verbLevel="1" />
    <column name="ferr_atca_2300"
      tablehead="FERR_ATCA_2300"
      type="double precision"
      ucd="stat.error"
      unit="mJy"
      description="Error of integrated flux density at 2.3GHz"
      verbLevel="1" />
    <column name="rms_atca_2300"
      tablehead="RMS_ATCA_2300"
      type="real"
      ucd="instr.det.noise"
      unit="mJy"
      description="Local rms noise at 2.3GHz"
      verbLevel="1" />
    <column name="spix"
      tablehead="SPIX"
      type="real"
      ucd="spect.index"
      description="1.4GHz (low-res) to 2.3GHz spectral index"
      verbLevel="30" />
    <column name="e_spix"
      tablehead="E_SPIX"
      type="real"
      ucd="stat.error"
      description="Error of spectral index"
      verbLevel="30" />
    <column name="z"
      tablehead="Z"
      type="double precision"
      ucd="src.redshift"
      description="Spectroscopic redshift"
      verbLevel="1" />
    <column name="class"
      tablehead="CLASS"
      type="text"
      ucd="src.class"
      description="Spectral classification"
      note="1"
      verbLevel="1" />
    <column name="detection_atca_2300"
      tablehead="DETECTION_ATCA_2300"
      type="smallint"
      ucd="meta.code"
      description="Detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation"
      tablehead="SEPARATION"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Distance between matched objects along a great circle"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal identifier"
      required="True"
      verbLevel="1" />

    <meta name="note" tag="1"><![CDATA[
      Classifications from Mao et al. (2012, MNRAS, accepted):
      --------------------------------------------------------

      === ======================================================================
      SF  optical spectrum dominated by star formation activity
      AGN optical spectrum typical for AGN (e.g. AGNe for and AGN with
          characteristic emission lines)
      E   spectrum is that of an early-type galaxy and hence the radio emission
          must originate from an AGN hosted by it
      === ======================================================================

      ]]></meta>
  </table>
  <data id="import_es1">
    <sources>data/wp2_elais-s1.csv</sources>
    <csvGrammar />
    <make table="es1">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          id_atca_1400:id_atca_1400,
          name_atca_1400:name_atca_1400,
          ra_atca_1400:ra_atca_1400,
          dec_atca_1400:dec_atca_1400,
          ra_err_atca_1400:ra_err_atca_1400,
          dec_err_atca_1400:dec_err_atca_1400,
          rms_atca_1400:rms_atca_1400,
          bws_atca_1400:bws_atca_1400,
          obs_freq_atca_1400:obs_freq_atca_1400,
          fp:fpmjy,
          fperr:fperrmjy,
          f:fmjy,
          ferr:ferrmjy,
          fp_atca_1400:fpmjy_atca_1400,
          fperr_atca_1400:fperrmjy_atca_1400,
          f_atca_1400:fmjy_atca_1400,
          ferr_atca_1400:ferrmjy_atca_1400,
          deconv_atca_1400:deconv_atca_1400,
          deconv_err_atca_1400:deconv_err_atca_1400,
          class_atca_1400:class_atca_1400,
          sindex_atca_1400:sindex_atca_1400,
          sindex_err_atca_1400:sindex_err_atca_1400,
          detection_atca_1400:detection_atca_1400,
          fld:fld,
          name_atca_2300:name_atca_2300,
          ra_atca_2300:ra_atca_2300,
          dec_atca_2300:dec_atca_2300,
          s1_4hi:s1_4hi,
          e_s1_4hi:e_s1_4hi,
          s1_4lo:s1_4lo,
          e_s1_4lo:e_s1_4lo,
          rms1_4:rms1_4,
          f_atca_2300:fmjy_atca_2300,
          ferr_atca_2300:ferrmjy_atca_2300,
          rms_atca_2300:rms_mjy_atca_2300,
          spix:spix,
          e_spix:e_spix,
          z:z,
          class:class,
          detection_atca_2300:detection_atca_2300,
          separation:separation,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_es1" allowed="scs.xml,form,static">
    <meta name="title">WP2 ELAIS-S1 Radio Catalogue</meta>
    <meta name="shortName">WP2 ELAIS-S1</meta>
    <meta name="testQuery">
      <meta name="ra">8.8</meta>
      <meta name="dec">-43,586</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="es1">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <!-- GAMA-09 -->
  <table id="g09" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="FIRST RA if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="FIRST Declination if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="= -1 as first is the primary catalogue"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="= 1 if a nvss match exists, = 0 if no nvss match"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="double precision"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source"
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="30" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gmrt_325"
      tablehead="RA_gmrt_325"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Source right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="e_ra_gmrt_325"
      tablehead="e_RA_gmrt_325"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="arcsec"
      description="RMS uncertainty on RA in arcsec"
      verbLevel="30" />
    <column name="dec_gmrt_325"
      tablehead="Dec_gmrt_325"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Source declination (J2000) in deg"
      verbLevel="30" />
    <column name="e_dec_gmrt_325"
      tablehead="e_Dec_gmrt_325"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="arcsec"
      description="RMS uncertainty on declination in arcsec"
      verbLevel="30" />
    <column name="fp_gmrt_325"
      tablehead="FP_gmrt_325"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="325 MHz peak flux density in mJy"
      verbLevel="1" />
    <column name="fperr_gmrt_325"
      tablehead="FPErr_gmrt_325"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="RMS uncertainty on peak flux density in mJy"
      verbLevel="1" />
    <column name="f_gmrt_325"
      tablehead="F_gmrt_325"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="325 MHz total flux density in mJy"
      verbLevel="1" />
    <column name="ferr_gmrt_325"
      tablehead="FErr_gmrt_325"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="RMS uncertainty on total flux density in mJy"
      verbLevel="1" />
    <column name="major_gmrt_325"
      tablehead="Major_gmrt_325"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Major axis FWHM of the fitted elliptical Gaussian in arcsec"
      verbLevel="30" />
    <column name="e_maj_gmrt_325"
      tablehead="e_Maj_gmrt_325"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="RMS uncertainty on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gmrt_325"
      tablehead="Minor_gmrt_325"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Minor axis FWHM of the fitted elliptical Gaussian in arcsec"
      verbLevel="30" />
    <column name="e_min_gmrt_325"
      tablehead="e_Min_gmrt_325"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="RMS uncertainty on minor axis in arcsec"
      verbLevel="30" />
    <column name="pa_gmrt_325"
      tablehead="PA_gmrt_325"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle in deg"
      verbLevel="30" />
    <column name="e_pa_gmrt_325"
      tablehead="e_PA_gmrt_325"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="RMS uncertainty on position angle in deg"
      verbLevel="30" />
    <column name="rms_gmrt_325"
      tablehead="rms_gmrt_325"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Local RMS noise in mJy"
      verbLevel="1" />
    <column name="pointing_gmrt_325"
      tablehead="Pointing_gmrt_325"
      type="text"
      ucd="meta.id"
      description="Name of the GMRT mosaicked image containing the source"
      verbLevel="30" />
    <column name="detection_gmrt_325"
      tablehead="Detection_gmrt_325"
      type="smallint"
      ucd="meta.code"
      description="325 MHz detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation"
      tablehead="Separation"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between FIRST and GMRT source positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal identifier"
      required="True"
      verbLevel="1" />
  </table>
  <data id="import_g09">
    <sources>data/wp2_gama-09.csv</sources>
    <csvGrammar />
    <make table="g09">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:f_mjy_vla_1400__first,
          ferr_vla_1400__first:ferr_mjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
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
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          ra_gmrt_325:ra_gmrt_325,
          e_ra_gmrt_325:e_ra_gmrt_325,
          dec_gmrt_325:dec_gmrt_325,
          e_dec_gmrt_325:e_dec_gmrt_325,
          fp_gmrt_325:fp_mjy_gmrt_325,
          fperr_gmrt_325:fperr_mjy_gmrt_325,
          f_gmrt_325:f_mjy_gmrt_325,
          ferr_gmrt_325:ferr_mjy_gmrt_325,
          major_gmrt_325:major_gmrt_325,
          e_maj_gmrt_325:e_maj_gmrt_325,
          minor_gmrt_325:minor_gmrt_325,
          e_min_gmrt_325:e_min_gmrt_325,
          pa_gmrt_325:pa_gmrt_325,
          e_pa_gmrt_325:e_pa_gmrt_325,
          rms_gmrt_325:rms_mjy_gmrt_325,
          pointing_gmrt_325:pointing_gmrt_325,
          detection_gmrt_325:detection_gmrt_325,
          separation:separation,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_ g09" allowed="scs.xml,form,static">
    <meta name="title">WP2 GAMA-09 Radio Catalogue</meta>
    <meta name="shortName">WP2 GAMA-09</meta>
    <meta name="testQuery">
      <meta name="ra">134.7</meta>
      <meta name="dec">0.513</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="g09">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <!-- GAMA-12 -->
  <table id="g12" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="FIRST RA if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="FIRST Declination if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="= -1 as first is the primary catalogue"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="= 1 if a nvss match exists, = 0 if no nvss match"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="double precision"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source"
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="30" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gmrt_325"
      tablehead="RA_gmrt_325"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Source right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="e_ra_gmrt_325"
      tablehead="e_RA_gmrt_325"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="arcsec"
      description="RMS uncertainty on RA in arcsec"
      verbLevel="30" />
    <column name="dec_gmrt_325"
      tablehead="Dec_gmrt_325"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Source declination (J2000) in deg"
      verbLevel="30" />
    <column name="e_dec_gmrt_325"
      tablehead="e_Dec_gmrt_325"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="arcsec"
      description="RMS uncertainty on declination in arcsec"
      verbLevel="30" />
    <column name="fp_gmrt_325"
      tablehead="FP_gmrt_325"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="325 MHz peak flux density in mJy"
      verbLevel="1" />
    <column name="fperr_gmrt_325"
      tablehead="FPErr_gmrt_325"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="RMS uncertainty on peak flux density in mJy"
      verbLevel="1" />
    <column name="f_gmrt_325"
      tablehead="F_gmrt_325"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="325 MHz total flux density in mJy"
      verbLevel="1" />
    <column name="ferr_gmrt_325"
      tablehead="FErr_gmrt_325"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="RMS uncertainty on total flux density in mJy"
      verbLevel="1" />
    <column name="major_gmrt_325"
      tablehead="Major_gmrt_325"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Major axis FWHM of the fitted elliptical Gaussian in arcsec"
      verbLevel="30" />
    <column name="e_maj_gmrt_325"
      tablehead="e_Maj_gmrt_325"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="RMS uncertainty on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gmrt_325"
      tablehead="Minor_gmrt_325"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Minor axis FWHM of the fitted elliptical Gaussian in arcsec"
      verbLevel="30" />
    <column name="e_min_gmrt_325"
      tablehead="e_Min_gmrt_325"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="RMS uncertainty on minor axis in arcsec"
      verbLevel="30" />
    <column name="pa_gmrt_325"
      tablehead="PA_gmrt_325"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle in deg"
      verbLevel="30" />
    <column name="e_pa_gmrt_325"
      tablehead="e_PA_gmrt_325"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="RMS uncertainty on position angle in deg"
      verbLevel="30" />
    <column name="rms_gmrt_325"
      tablehead="rms_gmrt_325"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Local RMS noise in mJy"
      verbLevel="1" />
    <column name="pointing_gmrt_325"
      tablehead="Pointing_gmrt_325"
      type="text"
      ucd="meta.id"
      description="Name of the GMRT mosaicked image containing the source"
      verbLevel="30" />
    <column name="detection_gmrt_325"
      tablehead="Detection_gmrt_325"
      type="smallint"
      ucd="meta.code"
      description="325 MHz detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation"
      tablehead="Separation"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between FIRST and GMRT source positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal identifier"
      required="True"
      verbLevel="1" />
  </table>
  <data id="import_g12">
    <sources>data/wp2_gama-12.csv</sources>
    <csvGrammar />
    <make table="g12">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:f_mjy_vla_1400__first,
          ferr_vla_1400__first:ferr_mjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
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
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          ra_gmrt_325:ra_gmrt_325,
          e_ra_gmrt_325:e_ra_gmrt_325,
          dec_gmrt_325:dec_gmrt_325,
          e_dec_gmrt_325:e_dec_gmrt_325,
          fp_gmrt_325:fp_mjy_gmrt_325,
          fperr_gmrt_325:fperr_mjy_gmrt_325,
          f_gmrt_325:f_mjy_gmrt_325,
          ferr_gmrt_325:ferr_mjy_gmrt_325,
          major_gmrt_325:major_gmrt_325,
          e_maj_gmrt_325:e_maj_gmrt_325,
          minor_gmrt_325:minor_gmrt_325,
          e_min_gmrt_325:e_min_gmrt_325,
          pa_gmrt_325:pa_gmrt_325,
          e_pa_gmrt_325:e_pa_gmrt_325,
          rms_gmrt_325:rms_mjy_gmrt_325,
          pointing_gmrt_325:pointing_gmrt_325,
          detection_gmrt_325:detection_gmrt_325,
          separation:separation,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_g12" allowed="scs.xml,form,static">
    <meta name="title">WP2 GAMA-12 Radio Catalogue</meta>
    <meta name="shortName">WP2 GAMA-12</meta>
    <meta name="testQuery">
      <meta name="ra">179.8</meta>
      <meta name="dec">-0.482</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="g12">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <!-- GAMA-15 -->
  <table id="g15" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="FIRST RA if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="FIRST Declination if present, GMRT if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="= -1 as first is the primary catalogue"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="= 1 if a nvss match exists, = 0 if no nvss match"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="double precision"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source"
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="30" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="text"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30" />
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="text"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30" />
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="text"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30" />
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gmrt_325"
      tablehead="RA_gmrt_325"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Source right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="e_ra_gmrt_325"
      tablehead="e_RA_gmrt_325"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="arcsec"
      description="RMS uncertainty on RA in arcsec"
      verbLevel="30" />
    <column name="dec_gmrt_325"
      tablehead="Dec_gmrt_325"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Source declination (J2000) in deg"
      verbLevel="30" />
    <column name="e_dec_gmrt_325"
      tablehead="e_Dec_gmrt_325"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="arcsec"
      description="RMS uncertainty on declination in arcsec"
      verbLevel="30" />
    <column name="fp_gmrt_325"
      tablehead="FP_gmrt_325"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="325 MHz peak flux density in mJy"
      verbLevel="1" />
    <column name="fperr_gmrt_325"
      tablehead="FPErr_gmrt_325"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="RMS uncertainty on peak flux density in mJy"
      verbLevel="1" />
    <column name="f_gmrt_325"
      tablehead="F_gmrt_325"
      type="real"
      ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="325 MHz total flux density in mJy"
      verbLevel="1" />
    <column name="ferr_gmrt_325"
      tablehead="FErr_gmrt_325"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="RMS uncertainty on total flux density in mJy"
      verbLevel="1" />
    <column name="major_gmrt_325"
      tablehead="Major_gmrt_325"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Major axis FWHM of the fitted elliptical Gaussian in arcsec"
      verbLevel="30" />
    <column name="e_maj_gmrt_325"
      tablehead="e_Maj_gmrt_325"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="RMS uncertainty on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gmrt_325"
      tablehead="Minor_gmrt_325"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Minor axis FWHM of the fitted elliptical Gaussian in arcsec"
      verbLevel="30" />
    <column name="e_min_gmrt_325"
      tablehead="e_Min_gmrt_325"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="RMS uncertainty on minor axis in arcsec"
      verbLevel="30" />
    <column name="pa_gmrt_325"
      tablehead="PA_gmrt_325"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle in deg"
      verbLevel="30" />
    <column name="e_pa_gmrt_325"
      tablehead="e_PA_gmrt_325"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="RMS uncertainty on position angle in deg"
      verbLevel="30" />
    <column name="rms_gmrt_325"
      tablehead="rms_gmrt_325"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
      unit="mJy"
      description="Local RMS noise in mJy"
      verbLevel="1" />
    <column name="pointing_gmrt_325"
      tablehead="Pointing_gmrt_325"
      type="text"
      ucd="meta.id"
      description="Name of the GMRT mosaicked image containing the source"
      verbLevel="30" />
    <column name="detection_gmrt_325"
      tablehead="Detection_gmrt_325"
      type="smallint"
      ucd="meta.code"
      description="325 MHz detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation"
      tablehead="Separation"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between FIRST and GMRT source positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal identifier"
      required="True"
      verbLevel="1" />
  </table>
  <data id="import_g15">
    <sources>data/wp2_gama-15.csv</sources>
    <csvGrammar />
    <make table="g15">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:fmjy_vla_1400__first,
          ferr_vla_1400__first:ferrmjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
          id_vla_1400__nvss:id_vla_1400__nvss,
          ra_vla_1400__nvss:ra_vla_1400__nvss,
          dec_vla_1400__nvss:dec_vla_1400__nvss,
          peak_vla_1400__nvss:fp_mjy_vla_1400__nvss,
          f_vla_1400__nvss:fmjy_vla_1400__nvss,
          ferr_vla_1400__nvss:ferrmjy_vla_1400__nvss,
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
          f_gb_4850:fmjy_gb_4850,
          ferr_gb_4850:ferrmjy_gb_4850,
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
          f_vla_74:fmjy_vla_74,
          ferr_vla_74:ferrmjy_vla_74,
          major_vla_74:major_vla_74,
          major_err_vla_74:major_err_vla_74,
          minor_vla_74:minor_vla_74,
          minor_err_vla_74:minor_err_vla_74,
          posangle_vla_74:posangle_vla_74,
          posangle_err_vla_74:posangle_err_vla_74,
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          ra_gmrt_325:ra_gmrt_325,
          e_ra_gmrt_325:e_ra_gmrt_325,
          dec_gmrt_325:dec_gmrt_325,
          e_dec_gmrt_325:e_dec_gmrt_325,
          fp_gmrt_325:fp_mjy_gmrt_325,
          fperr_gmrt_325:fperr_mjy_gmrt_325,
          f_gmrt_325:fmjy_gmrt_325,
          ferr_gmrt_325:ferrmjy_gmrt_325,
          major_gmrt_325:major_gmrt_325,
          e_maj_gmrt_325:e_maj_gmrt_325,
          minor_gmrt_325:minor_gmrt_325,
          e_min_gmrt_325:e_min_gmrt_325,
          pa_gmrt_325:pa_gmrt_325,
          e_pa_gmrt_325:e_pa_gmrt_325,
          rms_gmrt_325:rms_mjy_gmrt_325,
          pointing_gmrt_325:pointing_gmrt_325,
          detection_gmrt_325:detection_gmrt_325,
          separation:separation,
          internal_id:id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_g15" allowed="scs.xml,form,static">
    <meta name="title">WP2 GAMA-15 Radio Catalogue</meta>
    <meta name="shortName">WP2 GAMA-15</meta>
    <meta name="testQuery">
      <meta name="ra">217.6</meta>
      <meta name="dec">0.456</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="g15">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>


  <!-- Herschel-Stripe-82 -->
  <table id="h82" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>
    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="FIRST RA if present, VLASDSS if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="FIRST Declination if present, VLASDSS if not; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="= -1 as first is the primary catalogue"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="= -1 as first is the primary catalogue"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="real"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="real"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source"
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="double precision"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="source_number_vla_1400__vlasdss"
      tablehead="SOURCE_NUMBER_vla_1400__vlasdss"
      type="bigint"
      ucd="meta.id"
      description="Source number"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="name_vla_1400__vlasdss"
      tablehead="NAME_vla_1400__vlasdss"
      type="text"
      ucd="meta.id"
      description="Source name"
      verbLevel="1" />
    <column name="ra_vla_1400__vlasdss"
      tablehead="RA_vla_1400__vlasdss"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension of VLASDSS in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__vlasdss"
      tablehead="Dec_vla_1400__vlasdss"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination of VLASDSS in deg"
      verbLevel="30" />
    <column name="fp_vla_1400__vlasdss"
      tablehead="Fp_vla_1400__vlasdss"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Peak 20 cm flux density in mJy"
      verbLevel="1" />
    <column name="f_vla_1400__vlasdss"
      tablehead="f_vla_1400__vlasdss"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="Integrated 20 cm flux density in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__vlasdss"
      tablehead="Ferr_vla_1400__vlasdss"
      type="real"
      ucd="instr.det.noise"
      unit="mJy"
      description="RMS error in peak flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__vlasdss"
      tablehead="MAJOR_vla_1400__vlasdss"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Source major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__vlasdss"
      tablehead="MINOR_vla_1400__vlasdss"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="Source minor axis in arcsec"
      verbLevel="30" />
    <column name="pa_vla_1400__vlasdss"
      tablehead="pa_vla_1400__vlasdss"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle of major axis in deg"
      verbLevel="30" />
    <column name="num_sdss_matches_vla_1400__vlasdss"
      tablehead="NUM_SDSS_MATCHES_vla_1400__vlasdss"
      type="smallint"
      ucd="meta.number"
      description="No. matches within a radius of 8 arcsec"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="min_vla_sdss_offset_vla_1400__vlasdss"
      tablehead="MIN_VLA_SDSS_OFFSET_vla_1400__vlasdss"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation of closest SDSS match in arcsec"
      verbLevel="1" />
    <column name="imag_vla_1400__vlasdss"
      tablehead="IMAG_vla_1400__vlasdss"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude of closest SDSS match"
      verbLevel="1" />
    <column name="sdss_morph_class_vla_1400__vlasdss"
      tablehead="SDSS_MORPH_CLASS_vla_1400__vlasdss"
      type="text"
      ucd="meta.code"
      description="SDSS morphological class code (s stellar, g non-stellar/galaxy)"
      verbLevel="1" />
    <column name="detection_vla_1400__vlasdss"
      tablehead="detection_vla_1400__vlasdss"
      type="smallint"
      ucd="meta.code"
      description="Detection flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation"
      tablehead="Separation"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Distance between VLASDSS and FIRST positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal identifier"
      required="True"
      verbLevel="1" />
  </table>
  <data id="import_h82">
    <sources>data/wp2_hs82.csv</sources>
    <csvGrammar />
    <make table="h82">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:f_mjy_vla_1400__first,
          ferr_vla_1400__first:ferr_mjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
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
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          source_number_vla_1400__vlasdss:source_number_vla_1400__vlasdss,
          name_vla_1400__vlasdss:name_vla_1400__vlasdss,
          ra_vla_1400__vlasdss:ra_vla_1400__vlasdss,
          dec_vla_1400__vlasdss:dec_vla_1400__vlasdss,
          fp_vla_1400__vlasdss:fp_mjy_vla_1400__vlasdss,
          f_vla_1400__vlasdss:f_mjy_vla_1400__vlasdss,
          ferr_vla_1400__vlasdss:ferr_mjy_vla_1400__vlasdss,
          major_vla_1400__vlasdss:major_vla_1400__vlasdss,
          minor_vla_1400__vlasdss:minor_vla_1400__vlasdss,
          pa_vla_1400__vlasdss:pa_vla_1400__vlasdss,
          num_sdss_matches_vla_1400__vlasdss:num_sdss_matches_vla_1400__vlasdss,
          min_vla_sdss_offset_vla_1400__vlasdss:min_vla_sdss_offset_vla_1400__vlasdss,
          imag_vla_1400__vlasdss:imag_vla_1400__vlasdss,
          sdss_morph_class_vla_1400__vlasdss:sdss_morph_class_vla_1400__vlasdss,
          detection_vla_1400__vlasdss:detection_vla_1400__vlasdss,
          separation:separation,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_h82" allowed="scs.xml,form,static">
    <meta name="title">WP2 Herschel-Stripe-82 Radio Catalogue</meta>
    <meta name="shortName">WP2 Herschel-Stripe-82</meta>
    <meta name="testQuery">
      <meta name="ra">14.3</meta>
      <meta name="dec">-0.034</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="h82">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>


  <!-- Lockman-SWIRE -->
  <table id="lhswire" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="FIRST RA if present, GMRT if not; AMI if neither GMRT or FIRST; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="FIRST Declination if present, GMRT if not; AMI if neither GMRT or FIRST; in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="ra_ami_15700"
      tablehead="RA_AMI_15700"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_ami_15700"
      tablehead="DEC_AMI_15700"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) in deg"
      verbLevel="30" />
    <column name="id10c"
      tablehead="ID10C"
      type="text"
      ucd="meta.id"
      description="ID from 10C catalogue (JHHMMSS+DDMMSS)"
      verbLevel="1" />
    <column name="fp_ami_15700"
      tablehead="FP_AMI_15700"
      type="real"
      ucd="phot.flux.density;em.radio.12-30GHz"
      unit="mJy"
      description="Peak flux density at 15.7 GHz in mJy"
      verbLevel="1" />
    <column name="fperr_ami_15700"
      tablehead="FPERR_AMI_15700"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.12-30GHz"
      unit="mJy"
      description="Error on peak flux density in mJy"
      verbLevel="1" />
    <column name="f_ami_15700"
      tablehead="F_AMI_15700"
      type="real"
      ucd="phot.flux.density;em.radio.12-30GHz"
      unit="mJy"
      description="Integrated flux density at 15.7 GHz in mJy"
      verbLevel="1" />
    <column name="ferr_ami_15700"
      tablehead="FErr_AMI_15700"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.12-30GHz"
      unit="mJy"
      description="Error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="detection_ami_15700"
      tablehead="DETECTION_AMI_15700"
      type="smallint"
      ucd="meta.code"
      description="15.7 GHz detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gmrt_610"
      tablehead="RA_GMRT_610"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_gmrt_610"
      tablehead="DEC_GMRT_610"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) in deg"
      verbLevel="30" />
    <column name="gmrtlh"
      tablehead="GMRTLH"
      type="text"
      ucd="meta.id"
      description="IAU designation of source (JHHMMSS.s+DDMMSS)"
      verbLevel="1" />
    <column name="fp_gmrt_610"
      tablehead="FP_GMRT_610"
      type="double precision"
      ucd="phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Peak pixel brightness in mJy/bm"
      verbLevel="1" />
    <column name="rms_gmrt_610"
      tablehead="RMS_GMRT_610"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.400-750MHz"
      unit="uJy"
      description="Local rms noise in uJy/bm"
      verbLevel="1" />
    <column name="f_gmrt_610"
      tablehead="F_GMRT_610"
      type="double precision"
      ucd="phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Integrated flux in mJy"
      verbLevel="1" />
    <column name="ferr_gmrt_610"
      tablehead="FErr_GMRT_610"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.400-750MHz"
      unit="mJy"
      description="Error on integrated flux in mJy"
      verbLevel="1" />
    <column name="flag_gmrt_610"
      tablehead="FLAG_GMRT_610"
      type="smallint"
      ucd="meta.code"
      description="Source SExtractor flags"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gmrt_610"
      tablehead="DETECTION_GMRT_610"
      type="smallint"
      ucd="meta.code"
      description="610 MHz detection flag"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation_gmrt_ami"
      tablehead="SEPARATION_GMRT_AMI"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between AMI and GMRT source positions in arcsec"
      verbLevel="30" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="= -1 as first is the primary catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="= 1 if a nvss match exists, = 0 if no nvss match"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="1" />
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="real"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source"
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1" />
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="30" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="30" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="separation_gmrt_first"
      tablehead="Separation_gmrt_first"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between FIRST and GMRT source positions in arcsec"
      verbLevel="30" />
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id"
      description="Internal identifier"
      required="True"
      verbLevel="1" />

    <meta name="note" tag="1"><![CDATA[
      Notes on the Flag_gmrt_610 column:
      ----------------------------------

      = ========================================================================
      1 where a nearby bright source may be affecting the calculated flux
      2 where a source has been deblended into two or more components from a
        single initial island of flux
      3 when both 1 and 2 apply
      = ========================================================================

      ]]></meta>
  </table>
  <data id="import_lhswire">
    <sources>data/wp2_lockman-swire.csv</sources>
    <csvGrammar />
    <make table="lhswire">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          ra_ami_15700:ra_ami_15700,
          dec_ami_15700:dec_ami_15700,
          id10c:id10c,
          fp_ami_15700:fp_mjy_ami_15700,
          fperr_ami_15700:fperr_mjy_ami_15700,
          f_ami_15700:fmjy_ami_15700,
          ferr_ami_15700:ferrmjy_ami_15700,
          detection_ami_15700:detection_ami_15700,
          ra_gmrt_610:ra_gmrt_610,
          dec_gmrt_610:dec_gmrt_610,
          gmrtlh:gmrtlh,
          fp_gmrt_610:fp_mjy_gmrt_610,
          rms_gmrt_610:rms_gmrt_610,
          f_gmrt_610:fmjy_gmrt_610,
          ferr_gmrt_610:ferrmjy_gmrt_610,
          flag_gmrt_610:flag_gmrt_610,
          detection_gmrt_610:detection_gmrt_610,
          separation_gmrt_ami:separation_gmrt_ami,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:fmjy_vla_1400__first,
          ferr_vla_1400__first:ferrmjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
          id_vla_1400__nvss:id_vla_1400__nvss,
          ra_vla_1400__nvss:ra_vla_1400__nvss,
          dec_vla_1400__nvss:dec_vla_1400__nvss,
          peak_vla_1400__nvss:peak_vla_1400__nvss,
          f_vla_1400__nvss:fmjy_vla_1400__nvss,
          ferr_vla_1400__nvss:ferrmjy_vla_1400__nvss,
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
          f_gb_4850:fmjy_gb_4850,
          ferr_gb_4850:ferrmjy_gb_4850,
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
          f_vla_74:fmjy_vla_74,
          ferr_vla_74:ferrmjy_vla_74,
          major_vla_74:major_vla_74,
          major_err_vla_74:major_err_vla_74,
          minor_vla_74:minor_vla_74,
          minor_err_vla_74:minor_err_vla_74,
          posangle_vla_74:posangle_vla_74,
          posangle_err_vla_74:posangle_err_vla_74,
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          separation_gmrt_first:separation_gmrt_first,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_lhswire" allowed="scs.xml,form,static">
    <meta name="title">WP2 Lockman-SWIRE Radio Catalogue</meta>
    <meta name="shortName">WP2 Lockman-SWIRE</meta>
    <meta name="testQuery">
      <meta name="ra">161.2</meta>
      <meta name="dec">58.058</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="lhswire">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <!-- HATLAS-NGP -->
  <table id="hatlas_ngp" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="NVSS RA in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="NVSS Declination in deg (J2000)"
      required="True"
      verbLevel="1" />
    <column name="uniq_id"
      tablehead="UNIQ_ID"
      type="integer"
      ucd="meta.id"
      description="Unique catalog row identifier in the Kimball et al. catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__first"
      tablehead="MATCHFLAG_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="= 1 if a first match exists, = 0 if no first match"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchflag_vla_1400__nvss"
      tablehead="MATCHFLAG_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="= -1 as nvss is the primary catalogue"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="distance_nvss_first"
      tablehead="Distance_NVSS_FIRST"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance between NVSS and FIRST source in arcsec"
      verbLevel="30" />
    <column name="matchtot_5"
      tablehead="MATCHTOT_5"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 5″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_10"
      tablehead="MATCHTOT_10"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 10″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_30"
      tablehead="MATCHTOT_30"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 30″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="matchtot_120"
      tablehead="MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of NVSS neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_matchtot_120"
      tablehead="GB6_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of GB6 neighbors within 120″ of primary source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gb6_distance"
      tablehead="GB6_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest GB6 source within 120″ in arcsec"
      verbLevel="30" />
    <column name="vlss_matchtot_120"
      tablehead="VLSS_MATCHTOT_120"
      type="smallint"
      ucd="meta.number"
      description="# of VLSS neighbors within 120″ of primary source in arcsec"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="vlss_distance"
      tablehead="VLSS_DISTANCE"
      type="real"
      ucd="pos.angDistance"
      unit="arcsec"
      description="distance to nearest VLSS source within 120″"
      verbLevel="30" />
    <column name="id_vla_1400__first"
      tablehead="ID_vla_1400__FIRST"
      type="integer"
      ucd="meta.id"
      description="unique FIRST identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__first"
      tablehead="RA_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__first"
      tablehead="DEC_vla_1400__FIRST"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="sideprob_vla_1400__first"
      tablehead="SIDEPROB_vla_1400__FIRST"
      type="real"
      ucd="stat.probability"
      description="probability that detection is a sidelobe of nearby bright source"
      verbLevel="30" />
    <column name="fp_vla_1400__first"
      tablehead="FP_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak flux density at 20cm in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__first"
      tablehead="F_vla_1400__FIRST"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__first"
      tablehead="FErr_vla_1400__FIRST"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="local noise estimate at source position in mJy/bm"
      verbLevel="1" />
    <column name="major_vla_1400__first"
      tablehead="MAJOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of major axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__first"
      tablehead="MINOR_vla_1400__FIRST"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM of minor axis (after PSF deconvolution) in arcsec"
      verbLevel="30" />
    <column name="posang_vla_1400__first"
      tablehead="POSANG_vla_1400__FIRST"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north (after PSF deconvolution) in deg"
      verbLevel="30" />
    <column name="id_vla_1400__nvss"
      tablehead="ID_vla_1400__NVSS"
      type="integer"
      ucd="meta.id"
      description="unique NVSS identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_1400__nvss"
      tablehead="RA_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_1400__nvss"
      tablehead="DEC_vla_1400__NVSS"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination in deg"
      verbLevel="30" />
    <column name="peak_vla_1400__nvss"
      tablehead="PEAK_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="peak intensity at 20cm (Stokes I) in mJy/bm"
      verbLevel="1" />
    <column name="f_vla_1400__nvss"
      tablehead="F_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated flux density at 20cm (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_1400__nvss"
      tablehead="FErr_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_1400__nvss"
      tablehead="MAJOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_1400__nvss"
      tablehead="MAJOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_1400__nvss"
      tablehead="MINOR_vla_1400__NVSS"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_1400__nvss"
      tablehead="MINOR_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_1400__nvss"
      tablehead="POSANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_1400__nvss"
      tablehead="POSANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="q_vla_1400__nvss"
      tablehead="Q_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes Q value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="u_vla_1400__nvss"
      tablehead="U_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="interpolated Stokes U value at position of I peak in mJy/bm"
      verbLevel="30" />
    <column name="pol_flux_vla_1400__nvss"
      tablehead="POL_FLUX_vla_1400__NVSS"
      type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="integrated linear polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_flux_err_vla_1400__nvss"
      tablehead="POL_FLUX_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
      unit="mJy"
      description="error on polarized flux in mJy"
      verbLevel="30" />
    <column name="pol_angle_vla_1400__nvss"
      tablehead="POL_ANGLE_vla_1400__NVSS"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="polarization angle in deg"
      verbLevel="30" />
    <column name="pol_angle_err_vla_1400__nvss"
      tablehead="POL_ANGLE_ERR_vla_1400__NVSS"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on polarization angle in deg"
      verbLevel="30" />
    <column name="id_gb_4850"
      tablehead="ID_gb_4850"
      type="integer"
      ucd="meta.id"
      description="unique GB6 identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_gb_4850"
      tablehead="RA_gb_4850"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="ra_err_gb_4850"
      tablehead="RA_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="error on right ascension in deg"
      verbLevel="30" />
    <column name="dec_gb_4850"
      tablehead="DEC_gb_4850"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="dec_err_gb_4850"
      tablehead="DEC_ERR_gb_4850"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="error on declination in deg"
      verbLevel="30" />
    <column name="f_gb_4850"
      tablehead="F_gb_4850"
      type="real"
      ucd="phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="peak flux density at 6cm  in mJy"
      verbLevel="1" />
    <column name="ferr_gb_4850"
      tablehead="FErr_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="error on peak flux density in mJy"
      verbLevel="1" />
    <column name="major_gb_4850"
      tablehead="MAJOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis in arcsec"
      verbLevel="30" />
    <column name="minor_gb_4850"
      tablehead="MINOR_gb_4850"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_gb_4850"
      tablehead="POSANGLE_gb_4850"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="fitted major axis position east of north in deg"
      verbLevel="30" />
    <column name="sky_gb_4850"
      tablehead="SKY_gb_4850"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
      unit="mJy"
      description="local sky level in mJy"
      verbLevel="1" />
    <column name="eflag_gb_4850"
      tablehead="EFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating significantly extended source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="wflag_gb_4850"
      tablehead="WFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="warning flag"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="cflag_gb_4850"
      tablehead="CFLAG_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="flag indicating confusion"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="id_vla_74"
      tablehead="ID_vla_74"
      type="integer"
      ucd="meta.id"
      description="unique VLSSr identifier"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_vla_74"
      tablehead="RA_vla_74"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="right ascension (J2000) in deg"
      verbLevel="30" />
    <column name="dec_vla_74"
      tablehead="DEC_vla_74"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="declination (J2000) in deg"
      verbLevel="30" />
    <column name="f_vla_74"
      tablehead="F_vla_74"
      type="real"
      ucd="phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="integrated flux density at 74 MHz (Stokes I) in mJy"
      verbLevel="1" />
    <column name="ferr_vla_74"
      tablehead="FErr_vla_74"
      type="real"
      ucd="stat.error;phot.flux.density;em.radio.20-100MHz"
      unit="mJy"
      description="error on integrated flux density in mJy"
      verbLevel="1" />
    <column name="major_vla_74"
      tablehead="MAJOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM major axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="major_err_vla_74"
      tablehead="MAJOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on major axis in arcsec"
      verbLevel="30" />
    <column name="minor_vla_74"
      tablehead="MINOR_vla_74"
      type="real"
      ucd="phys.angSize"
      unit="arcsec"
      description="FWHM minor axis after deconvolution in arcsec"
      verbLevel="30" />
    <column name="minor_err_vla_74"
      tablehead="MINOR_ERR_vla_74"
      type="real"
      ucd="stat.error;phys.angSize"
      unit="arcsec"
      description="error on minor axis in arcsec"
      verbLevel="30" />
    <column name="posangle_vla_74"
      tablehead="POSANGLE_vla_74"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="position angle east of north in deg"
      verbLevel="30" />
    <column name="posangle_err_vla_74"
      tablehead="POSANGLE_ERR_vla_74"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="error on position angle in deg"
      verbLevel="30" />
    <column name="detection_vla_1400__first"
      tablehead="DETECTION_vla_1400__FIRST"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for FIRST"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_1400__nvss"
      tablehead="DETECTION_vla_1400__NVSS"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for NVSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_gb_4850"
      tablehead="DETECTION_gb_4850"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for GB6"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="detection_vla_74"
      tablehead="DETECTION_vla_74"
      type="smallint"
      ucd="meta.code"
      description="Detection flag for VLSS"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />

  </table>
  <data id="import_hatlas_ngp">
    <sources>data/wp2_ngp.csv</sources>
    <csvGrammar />
    <make table="hatlas_ngp">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          uniq_id:uniq_id,
          matchflag_vla_1400__first:matchflag_vla_1400__first,
          matchflag_vla_1400__nvss:matchflag_vla_1400__nvss,
          distance_nvss_first:distance,
          matchtot_5:matchtot_5,
          matchtot_10:matchtot_10,
          matchtot_30:matchtot_30,
          matchtot_120:matchtot_120,
          gb6_matchtot_120:gb6_matchtot_120,
          gb6_distance:gb6_distance,
          vlss_matchtot_120:vlss_matchtot_120,
          vlss_distance:vlss_distance,
          id_vla_1400__first:id_vla_1400__first,
          ra_vla_1400__first:ra_vla_1400__first,
          dec_vla_1400__first:dec_vla_1400__first,
          sideprob_vla_1400__first:sideprob_vla_1400__first,
          fp_vla_1400__first:fp_mjy_vla_1400__first,
          f_vla_1400__first:f_mjy_vla_1400__first,
          ferr_vla_1400__first:ferr_mjy_vla_1400__first,
          major_vla_1400__first:major_vla_1400__first,
          minor_vla_1400__first:minor_vla_1400__first,
          posang_vla_1400__first:posang_vla_1400__first,
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
          detection_vla_1400__first:detection_vla_1400__first,
          detection_vla_1400__nvss:detection_vla_1400__nvss,
          detection_gb_4850:detection_gb_4850,
          detection_vla_74:detection_vla_74,
          internal_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_ngp" allowed="scs.xml,form,static">
    <meta name="title">WP2 HATLAS-NGP Radio Catalogue</meta>
    <meta name="shortName">WP2 HATLAS-NGP</meta>
    <meta name="testQuery">
      <meta name="ra">199.5</meta>
      <meta name="dec">29.215</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="hatlas_ngp">
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
