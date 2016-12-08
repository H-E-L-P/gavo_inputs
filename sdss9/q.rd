<resource schema="sdss9">
  <meta name="title">SDSS DR9</meta>
  <meta name="creationDate">2016-01-21T16:32:51+01:00</meta>
  <meta name="description">
    The SDSS Photometric Catalogue, Release 9 (Adelman-McCarthy+, 2012)
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Astrometry</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the 9th release of the SDSS Photometric Catalogues
    (Adelman-McCarthy+, 2012) downloaded from Vizier and limited to HELP
    coverage.

    The full documentation is available at:
    http://cdsarc.u-strasbg.fr/viz-bin/Cat?V/139

    To identify uniquely a source, one must use the objID column.

    A ``Field`` column was added containing the name of HELP field associated
    with each source to allow easy filtering. Here is the number of sources per
    field:

    +--------------------+------------+
    | Field              | Count      |
    +====================+============+
    | AKARI-NEP          |     97,130 |
    +--------------------+------------+
    | Bootes             |    468,234 |
    +--------------------+------------+
    | COSMOS             |    191,487 |
    +--------------------+------------+
    | EGS                |     86,526 |
    +--------------------+------------+
    | ELAIS-N1           |    503,732 |
    +--------------------+------------+
    | ELAIS-N2           |    493,468 |
    +--------------------+------------+
    | GAMA-09            |  4,323,069 |
    +--------------------+------------+
    | GAMA-12            |  3,097,907 |
    +--------------------+------------+
    | GAMA-15            |  2,924,906 |
    +--------------------+------------+
    | HDF-N              |     31,187 |
    +--------------------+------------+
    | Herschel-Stripe-82 | 53,160,781 |
    +--------------------+------------+
    | Lockman-SWIRE      |  1,042,556 |
    +--------------------+------------+
    | NGP                |  5,113,276 |
    +--------------------+------------+
    | SA13               |      5,893 |
    +--------------------+------------+
    | SPIRE-NEP          |     14,401 |
    +--------------------+------------+
    | xFLS               |    276,251 |
    +--------------------+------------+
    | XMM-13hr           |     33,765 |
    +--------------------+------------+
    | XMM-LSS            |    639,200 |
    +--------------------+------------+

    Within HELP, the SDSS 9 catalogue is used as astrometric reference for the
    fields GAMA-09, GAMA-12, GAMA-15, and Herschel-Stripe-82.

    History
    -------

    ======== =================================================================
    20160411 Catalogue redownloaded from Vizier with missing sources and all
             the columns.
    20160121 Catalogue retrieved from Vizier.
    ======== =================================================================

    RAW data
    --------

    You may also `download raw catalogues and MOC coverage`__.

    __ /sdss9/q/cone/static
  ]]></meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="objID">
    <stc>
      Position ICRS Epoch J2000.0 "RAJ2000" "DEJ2000"
    </stc>

    <index columns="Field" />
    <index columns="SDSS9" />

    <column name="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey" />
    <column name="mode"
      type="text"
      ucd="meta.code.class"
      description="1:primary, 2:secondary"
      verbLevel="30"/>
    <column name="q_mode"
      type="text"
      ucd="meta.code.qual;instr.setup"
      description="+ indicates clean photometry"
      verbLevel="30"/>
    <column name="cl"
      type="smallint"
      ucd="src.class"
      note="1"
      description="Type (class) of object (3=galaxy, 6=star)"
      verbLevel="1">
      <values nullLiteral="-1"/>
    </column>
    <column name="SDSS9"
      type="text"
      ucd="meta.id"
      description="SDSS-DR9 name, based on J2000 position"
      verbLevel="1" />
    <column name="m_SDSS9"
      type="text"
      ucd="meta.code.multip"
      description="The asterisk indicates that 2 different SDSS object share
      the same SDSS9 name"
      verbLevel="1" />
    <column name="SDSS_ID"
      tablehead="SDSS_ID"
      type="text"
      description="SDSS object identifier"
      ucd="meta.id"
      note="2"
      verbLevel="30" />
    <column name="objID"
      tablehead="objID"
      type="text"
      description="SDSS unique object identifier"
      ucd="meta.id;meta.main"
      note="2"
      verbLevel="1" />
    <column name="SpObjID"
      tablehead="SpObjID"
      type="text"
      description="Pointer to the spectrum of object, or 0 (Tip: to select SDSS
      spectroscopic sources, enter the condition *[1-9]*"
      ucd="meta.id"
      note="7"
      verbLevel="30" />
    <column name="parentID"
      tablehead="parentID"
      type="text"
      description="Pointer to parent (if object deblended)"
      ucd="meta.id.parent"
      verbLevel="30" />
    <column name="flags"
      tablehead="flags"
      type="text"
      description="Photo Object Attribute flags"
      ucd="meta.code.error"
      note="3"
      verbLevel="30" />
    <column name="Status"
      tablehead="Status"
      type="text"
      description="Hexadecimal status"
      ucd="meta.code"
      note="4"
      verbLevel="30" />
    <column name="RAJ2000"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="e_RAJ2000"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="arcsec"
      description="Mean error on RAJ2000"
      verbLevel="1" />
    <column name="DEJ2000"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="e_DEJ2000"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="arcsec"
      description="Mean error on DEJ2000"
      verbLevel="1" />
    <column name="ObsDate"
      tablehead="ObsDate"
      type="double precision"
      unit="yr"
      description="Mean Observation date"
      ucd="time.epoch;obs;stat.mean"
      verbLevel="30" />
    <column name="Q"
      tablehead="Q"
      type="smallint"
      description="Quality of the observation: 1=bad 2=acceptable 3=good
      4=missing 5=hole"
      ucd="meta.code.qual;obs.param;obs"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="umag"
      tablehead="umag"
      type="real"
      unit="mag"
      description="Model magnitude in u filter"
      ucd="phot.mag;em.opt.U"
      note="5"
      verbLevel="1" />
    <column name="e_umag"
      tablehead="e_umag"
      type="real"
      unit="mag"
      description="Mean error on umag"
      ucd="stat.error;phot.mag;em.opt.U"
      verbLevel="1" />
    <column name="gmag"
      tablehead="gmag"
      type="real"
      unit="mag"
      description="Model magnitude in g filter"
      ucd="phot.mag;em.opt.B"
      note="5"
      verbLevel="1" />
    <column name="e_gmag"
      tablehead="e_gmag"
      type="real"
      unit="mag"
      description="Mean error on gmag"
      ucd="stat.error;phot.mag;em.opt.B"
      verbLevel="1" />
    <column name="rmag"
      tablehead="rmag"
      type="real"
      unit="mag"
      description="Model magnitude in r filter"
      ucd="phot.mag;em.opt.R"
      note="5"
      verbLevel="1" />
    <column name="e_rmag"
      tablehead="e_rmag"
      type="real"
      unit="mag"
      description="Mean error on rmag"
      ucd="stat.error;phot.mag;em.opt.R"
      verbLevel="1" />
    <column name="imag"
      tablehead="imag"
      type="real"
      unit="mag"
      description="Model magnitude in i filter"
      ucd="phot.mag;em.opt.I"
      note="5"
      verbLevel="1" />
    <column name="e_imag"
      tablehead="e_imag"
      type="real"
      unit="mag"
      description="Mean error on imag"
      ucd="stat.error;phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="zmag"
      tablehead="zmag"
      type="real"
      unit="mag"
      description="Model magnitude in z filter"
      ucd="phot.mag;em.opt.I"
      note="5"
      verbLevel="1" />
    <column name="e_zmag"
      tablehead="e_zmag"
      type="real"
      unit="mag"
      description="Mean error on zmag"
      ucd="stat.error;phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="zsp"
      tablehead="zsp"
      type="double precision"
      description="Spectroscopic redshift (when SpObjID&gt;0)"
      ucd="src.redshift"
      verbLevel="1" />
    <column name="e_zsp"
      tablehead="e_zsp"
      type="real"
      description="Mean error on zsp"
      ucd="stat.error"
      verbLevel="30" />
    <column name="f_zsp"
      tablehead="f_zsp"
      type="smallint"
      description="zwarning flag"
      ucd="meta.code"
      note="9"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="Vdisp"
      tablehead="Vdisp"
      type="real"
      unit="km/s"
      description="Velocity dispersion"
      ucd="phys.veloc.dispersion"
      verbLevel="30" />
    <column name="e_Vdisp"
      tablehead="e_Vdisp"
      type="double precision"
      unit="km/s"
      description="Mean error on Vdisp"
      ucd="stat.error"
      verbLevel="30" />
    <column name="spInst"
      tablehead="spInst"
      type="text"
      description="[SDSS BOSS] Spectral instrument"
      ucd="meta.id;instr"
      verbLevel="30" />
    <column name="spType"
      tablehead="spType"
      type="text"
      description="Source type"
      ucd="src.class"
      note="10"
      verbLevel="30" />
    <column name="spClass"
      tablehead="spClass"
      type="text"
      description="Spectroscopic class: GALAXY, QSO, STAR"
      ucd="meta.code.class;pos.parallax.spect"
      verbLevel="30" />
    <column name="spSubClass"
      tablehead="spSubClass"
      type="text"
      description="Spectroscopic subclass"
      ucd="src.spType"
      note="11"
      verbLevel="30" />
    <column name="snMedian"
      tablehead="snMedia"
      type="real"
      description="Median signal-to-noise over all good pixels"
      ucd="em.wl.central;stat.median"
      verbLevel="30" />
    <column name="flags_u"
      tablehead="flags_u"
      type="text"
      description="Detection flags, u band"
      ucd="meta.code"
      note="3"
      verbLevel="30" />
    <column name="probpsf_u"
      tablehead="probPsf_u"
      type="smallint"
      description="0=notStar, 1=Star in u band"
      ucd="src.class.starGalaxy"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="type_u"
      tablehead="type_u"
      type="smallint"
      description="Phototype in u band, 6=Star"
      ucd="src.class.starGalaxy"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="uDate"
      tablehead="uDate"
      type="double precision"
      unit="yr"
      description="Date of observation in u band"
      ucd="time.epoch"
      note="6"
      verbLevel="30" />
    <column name="psfmag_u"
      tablehead="psfMag_u"
      type="real"
      unit="mag"
      description="PSF magnitude in u band"
      ucd="phot.mag;em.opt.U"
      verbLevel="30" />
    <column name="psfmagerr_u"
      tablehead="psfMagErr_u"
      type="real"
      unit="mag"
      description="Mean error on psfMag_u"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petromag_u"
      tablehead="petroMag_u"
      type="real"
      unit="mag"
      description="Petrosian magnitude in u band"
      ucd="phot.mag;em.opt.U"
      verbLevel="30" />
    <column name="petromagerr_u"
      tablehead="petroMagErr_u"
      type="real"
      unit="mag"
      description="Mean error on petroMag_u"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petrorad_u"
      tablehead="petroRad_u"
      type="double precision"
      unit="arcsec"
      description="Petrosian radius in u band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="petroraderr_u"
      tablehead="petroRadErr_u"
      type="double precision"
      unit="arcsec"
      description="Mean error on petroRad_u"
      ucd="stat.error"
      verbLevel="30" />
    <column name="offsetra_u"
      tablehead="offsetRa_u"
      type="real"
      unit="arcsec"
      description="Offset of u position along RA"
      ucd="pos.angDistance"
      verbLevel="30" />
    <column name="offsetdec_u"
      tablehead="offsetDec_u"
      type="real"
      unit="arcsec"
      description="Offset of u position along Dec"
      ucd="pos.angDistance"
      verbLevel="30" />
    <column name="udVrad"
      tablehead="udVrad"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit radius, u band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="udVell"
      tablehead="udVell"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit ellipt, u band"
      ucd="src.ellipticity"
      verbLevel="30" />
    <column name="uPA"
      tablehead="uPA"
      type="real"
      unit="deg"
      description="Position angle of dVrad in u band"
      ucd="pos.posAng"
      verbLevel="30" />
    <column name="flags_g"
      tablehead="flags_g"
      type="text"
      description="Detection flags, g band"
      ucd="meta.code"
      note="3"
      verbLevel="30" />
    <column name="probpsf_g"
      tablehead="probPsf_g"
      type="smallint"
      description="0=notStar, 1=Star in g band"
      ucd="src.class.starGalaxy"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="type_g"
      tablehead="type_g"
      type="smallint"
      description="Phototype in g band, 6=Star"
      ucd="src.class.starGalaxy"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="gDate"
      tablehead="gDate"
      type="double precision"
      unit="yr"
      description="Date of observation in g band"
      ucd="time.epoch"
      note="6"
      verbLevel="30" />
    <column name="psfmag_g"
      tablehead="psfMag_g"
      type="real"
      unit="mag"
      description="PSF magnitude in g band"
      ucd="phot.mag;em.opt.B"
      verbLevel="30" />
    <column name="psfmagerr_g"
      tablehead="psfMagErr_g"
      type="real"
      unit="mag"
      description="Mean error on psfMag_g"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petromag_g"
      tablehead="petroMag_g"
      type="real"
      unit="mag"
      description="Petrosian magnitude in g band"
      ucd="phot.mag;em.opt.B"
      verbLevel="30" />
    <column name="petromagerr_g"
      tablehead="petroMagErr_g"
      type="real"
      unit="mag"
      description="Mean error on petroMag_g"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petrorad_g"
      tablehead="petroRad_g"
      type="double precision"
      unit="arcsec"
      description="Petrosian radius in g band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="petroraderr_g"
      tablehead="petroRadErr_g"
      type="double precision"
      unit="arcsec"
      description="Mean error on petroRad_g"
      ucd="stat.error"
      verbLevel="30" />
    <column name="offsetra_g"
      tablehead="offsetRa_g"
      type="real"
      unit="arcsec"
      description="Offset of g position along RA"
      ucd="pos.angDistance"
      verbLevel="30" />
    <column name="offsetdec_g"
      tablehead="offsetDec_g"
      type="real"
      unit="arcsec"
      description="Offset of g position along Dec"
      ucd="pos.angDistance"
      verbLevel="30" />
   <column name="gdVrad"
      tablehead="gdVrad"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit radius, g band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="gdVell"
      tablehead="gdVell"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit ellipt, g band"
      ucd="src.ellipticity"
      verbLevel="30" />
    <column name="gPA"
      tablehead="gPA"
      type="real"
      unit="deg"
      description="Position angle of dVrad in g band"
      ucd="pos.posAng"
      verbLevel="30" />
    <column name="flags_r"
      tablehead="flags_r"
      type="text"
      description="Detection flags, r band"
      ucd="meta.code"
      note="3"
      verbLevel="30" />
    <column name="probpsf_r"
      tablehead="probPsf_r"
      type="smallint"
      description="0=notStar, 1=Star in r band"
      ucd="src.class.starGalaxy"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="type_r"
      tablehead="type_r"
      type="smallint"
      description="Phototype in r band, 6=Star"
      ucd="src.class.starGalaxy"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="rDate"
      tablehead="rDate"
      type="double precision"
      unit="yr"
      description="Date of observation in r band"
      ucd="time.epoch"
      note="6"
      verbLevel="30" />
    <column name="psfmag_r"
      tablehead="psfMag_r"
      type="real"
      unit="mag"
      description="PSF magnitude in r band"
      ucd="phot.mag;em.opt.R"
      verbLevel="30" />
    <column name="psfmagerr_r"
      tablehead="psfMagErr_r"
      type="real"
      unit="mag"
      description="Mean error on psfMag_r"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petromag_r"
      tablehead="petroMag_r"
      type="real"
      unit="mag"
      description="Petrosian magnitude in r band"
      ucd="phot.mag;em.opt.R"
      verbLevel="30" />
    <column name="petromagerr_r"
      tablehead="petroMagErr_r"
      type="real"
      unit="mag"
      description="Mean error on petroMag_r"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petrorad_r"
      tablehead="petroRad_r"
      type="double precision"
      unit="arcsec"
      description="Petrosian radius in r band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="petroraderr_r"
      tablehead="petroRadErr_r"
      type="double precision"
      unit="arcsec"
      description="Mean error on petroRad_r"
      ucd="stat.error"
      verbLevel="30" />
    <column name="offsetra_r"
      tablehead="offsetRa_r"
      type="real"
      unit="arcsec"
      description="Offset of r position along RA"
      ucd="pos.angDistance"
      verbLevel="30" />
    <column name="offsetdec_r"
      tablehead="offsetDec_r"
      type="real"
      unit="arcsec"
      description="Offset of r position along Dec"
      ucd="pos.angDistance"
      verbLevel="30" />
   <column name="rdVrad"
      tablehead="rdVrad"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit radius, r band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="rdVell"
      tablehead="rdVell"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit ellipt, r band"
      ucd="src.ellipticity"
      verbLevel="30" />
    <column name="rPA"
      tablehead="rPA"
      type="real"
      unit="deg"
      description="Position angle of dVrad in r band"
      ucd="pos.posAng"
      verbLevel="30" />
    <column name="flags_i"
      tablehead="flags_i"
      type="text"
      description="Detection flags, i band"
      ucd="meta.code"
      note="3"
      verbLevel="30" />
    <column name="probpsf_i"
      tablehead="probPsf_i"
      type="smallint"
      description="0=notStar, 1=Star in i band"
      ucd="src.class.starGalaxy"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="type_i"
      tablehead="type_i"
      type="smallint"
      description="Phototype in i band, 6=Star"
      ucd="src.class.starGalaxy"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="iDate"
      tablehead="iDate"
      type="double precision"
      unit="yr"
      description="Date of observation in i band"
      ucd="time.epoch"
      note="6"
      verbLevel="30" />
    <column name="psfmag_i"
      tablehead="psfMag_i"
      type="real"
      unit="mag"
      description="PSF magnitude in i band"
      ucd="phot.mag;em.opt.I"
      verbLevel="30" />
    <column name="psfmagerr_i"
      tablehead="psfMagErr_i"
      type="real"
      unit="mag"
      description="Mean error on psfMag_i"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petromag_i"
      tablehead="petroMag_i"
      type="real"
      unit="mag"
      description="Petrosian magnitude in i band"
      ucd="phot.mag;em.opt.I"
      verbLevel="30" />
    <column name="petromagerr_i"
      tablehead="petroMagErr_i"
      type="real"
      unit="mag"
      description="Mean error on petroMag_i"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petrorad_i"
      tablehead="petroRad_i"
      type="double precision"
      unit="arcsec"
      description="Petrosian radius in i band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="petroraderr_i"
      tablehead="petroRadErr_i"
      type="double precision"
      unit="arcsec"
      description="Mean error on petroRad_i"
      ucd="stat.error"
      verbLevel="30" />
    <column name="offsetra_i"
      tablehead="offsetRa_i"
      type="real"
      unit="arcsec"
      description="Offset of i position along RA"
      ucd="pos.angDistance"
      verbLevel="30" />
    <column name="offsetdec_i"
      tablehead="offsetDec_i"
      type="real"
      unit="arcsec"
      description="Offset of i position along Dec"
      ucd="pos.angDistance"
      verbLevel="30" />
   <column name="idVrad"
      tablehead="idVrad"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit radius, i band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="idVell"
      tablehead="idVell"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit ellipt, i band"
      ucd="src.ellipticity"
      verbLevel="30" />
    <column name="iPA"
      tablehead="iPA"
      type="real"
      unit="deg"
      description="Position angle of dVrad in i band"
      ucd="pos.posAng"
      verbLevel="30" />
    <column name="flags_z"
      tablehead="flags_z"
      type="text"
      description="Detection flags, z band"
      ucd="meta.code"
      note="3"
      verbLevel="30" />
    <column name="probpsf_z"
      tablehead="probPsf_z"
      type="smallint"
      description="0=notStar, 1=Star in z band"
      ucd="src.class.starGalaxy"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="type_z"
      tablehead="type_z"
      type="smallint"
      description="Phototype in z band, 6=Star"
      ucd="src.class.starGalaxy"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="zDate"
      tablehead="zDate"
      type="double precision"
      unit="yr"
      description="Date of observation in z band"
      ucd="time.epoch"
      note="6"
      verbLevel="30" />
    <column name="psfmag_z"
      tablehead="psfMag_z"
      type="real"
      unit="mag"
      description="PSF magnitude in z band"
      ucd="phot.mag;em.opt.I"
      verbLevel="30" />
    <column name="psfmagerr_z"
      tablehead="psfMagErr_z"
      type="real"
      unit="mag"
      description="Mean error on psfMag_z"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petromag_z"
      tablehead="petroMag_z"
      type="real"
      unit="mag"
      description="Petrosian magnitude in z band"
      ucd="phot.mag;em.opt.I"
      verbLevel="30" />
    <column name="petromagerr_z"
      tablehead="petroMagErr_z"
      type="real"
      unit="mag"
      description="Mean error on petroMag_z"
      ucd="stat.error;phot.mag"
      verbLevel="30" />
    <column name="petrorad_z"
      tablehead="petroRad_z"
      type="double precision"
      unit="arcsec"
      description="Petrosian radius in z band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="petroraderr_z"
      tablehead="petroRadErr_z"
      type="double precision"
      unit="arcsec"
      description="Mean error on petroRad_z"
      ucd="stat.error"
      verbLevel="30" />
    <column name="offsetra_z"
      tablehead="offsetRa_z"
      type="real"
      unit="arcsec"
      description="Offset of z position along RA"
      ucd="pos.angDistance"
      verbLevel="30" />
    <column name="offsetdec_z"
      tablehead="offsetDec_z"
      type="real"
      unit="arcsec"
      description="Offset of z position along Dec"
      ucd="pos.angDistance"
      verbLevel="30" />
   <column name="zdVrad"
      tablehead="zdVrad"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit radius, z band"
      ucd="phys.angSize;src"
      verbLevel="30" />
    <column name="zdVell"
      tablehead="zdVell"
      type="real"
      unit="arcsec"
      description="de Vaucouleurs fit ellipt, z band"
      ucd="src.ellipticity"
      verbLevel="30" />
    <column name="zPA"
      tablehead="zPA"
      type="real"
      unit="deg"
      description="Position angle of dVrad in z band"
      ucd="pos.posAng"
      verbLevel="30" />
    <column name="pmRA"
      tablehead="pmRA"
      type="real"
      unit="mas/yr"
      description="Proper motion along Right Ascension"
      ucd="pos.pm;pos.eq.ra"
      verbLevel="30" />
    <column name="e_pmRA"
      tablehead="e_pmRA"
      type="real"
      unit="mas/yr"
      description="Mean error on pmRA"
      ucd="stat.error;pos.pm;pos.eq.ra"
      verbLevel="30" />
    <column name="pmDec"
      tablehead="pmDec"
      type="real"
      unit="mas/yr"
      description="Proper motion along Declination"
      ucd="pos.pm;pos.eq.dec"
      verbLevel="30" />
    <column name="e_pmDec"
      tablehead="e_pmDec"
      type="real"
      unit="mas/yr"
      description="Mean error on pmDec"
      ucd="stat.error;pos.pm;pos.eq.dec"
      verbLevel="30" />
    <column name="sigRA"
      tablehead="sigRA"
      type="real"
      unit="arcsec"
      description="RMS residual of proper motion fit in RA"
      ucd="stat.fit.residual"
      verbLevel="30" />
    <column name="sigDec"
      tablehead="sigDec"
      type="real"
      unit="arcsec"
      description="RMS residual of proper motion fit in Dec"
      ucd="stat.fit.residual"
      verbLevel="30" />
    <column name="nMatch"
      tablehead="nMatch"
      type="smallint"
      description="Number of USNO-B objects matched within 1arcsec"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="nfit"
      tablehead="nFit"
      type="smallint"
      description="Number of detections used in the pm fit, including SDSS."
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="g_O"
      tablehead="g(O)"
      type="real"
      unit="mag"
      description="Magnitude from O plate recalibrated to g"
      ucd="phot.mag;em.opt.B"
      verbLevel="30" />
    <column name="r_E"
      tablehead="r(E)"
      type="real"
      unit="mag"
      description="Magnitude from E plate recalibrated to r"
      ucd="phot.mag;em.opt.R"
      verbLevel="30" />
    <column name="g_J"
      tablehead="g(J)"
      type="real"
      unit="mag"
      description="Magnitude from J plate recalibrated to g"
      ucd="phot.mag;em.opt.B"
      verbLevel="30" />
    <column name="r_F"
      tablehead="r(F)"
      type="real"
      unit="mag"
      description="Magnitude from F plate recalibrated to r"
      ucd="phot.mag;em.opt.R"
      verbLevel="30" />
    <column name="i_N"
      tablehead="i(N)"
      type="real"
      unit="mag"
      description="Magnitude from N plate recalibrated to i"
      ucd="phot.mag;em.opt.I"
      verbLevel="30" />
    <meta name="note" tag="1"><![CDATA[
      The type (class) is numbered as follows:

      = ===================================================================
      0 Unknown: Object type is not known.
      1 Cosmic-ray track (not used).
      2 Defect (not used)
      3 Galaxy: An extended object composed of many stars and other matter.
      4 Ghost: Object created by reflected or refracted light. (not used)
      5 KnownObject: Object came from some other catalog (not yet used)
      6 Star: A a self-luminous gaseous celestial body.
      7 Trail: A satellite or asteroid or meteor trail. (not yet used)
      8 Sky: Blank sky spectrogram (no objects in this arcsecond area).
      9 NotAType
      = ===================================================================
    ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      The SDSS identifier is composed of the 5 numbers run, rerun (301), camcol
      (1-6), field (11-1001) and object (1-16000). The SDSS-ID is written
      run-rerun-cam-field-obj (5 numbers and 4 dashes). The objID is also
      combined from these numbers (the «n operator represents the left shift of
      n bits, i.e. a multiplication by 2^n): objID = skyVersion«59 + rerun«48
      + run«32 + camcol«29 + field«16 + obj (in the case of DR8-9, skyVersion=2
      and rerun=301, i.e. objID is in the range
      1237645472596754432-1237926947573465087 (hexa
      112d000000000000-112dffffffffffff).
    ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      Fags written in hexadecimal, full description available at
      http://skyserver.sdss3.org/dr9/en/help/browser/enum.asp?n=PhotoFlags

      ================ ====================== =========================================
      0000000000000001 CANONICAL_CENTER       Measurements used the center in r*
      0000000000000002 BRIGHT                 Object detected in bright object-finding
      0000000000000004 EDGE                   Object is too close to edge of frame
      0000000000000008 BLENDED                Multiple peaks detected
      0000000000000010 CHILD                  Product of deblending a BLENDED object.
      0000000000000020 PEAKCENTER             Position of peak pixel rather than ML
      0000000000000040 NODEBLEND              No deblending attempted on BLENDED object
      0000000000000080 NOPROFILE              Radial profile could not be estimated
      0000000000000100 NOPETRO                No valid Petrosian radius found
      0000000000000200 MANYPETRO              More than one Petrosian radius found.
      0000000000000400 NOPETRO_BIG            Petrosian radius beyond radial profile.
      0000000000000800 DEBLENDTOOMANY_PEAKS   More than 25 peaks in this object
      0000000000001000 COSMIC_RAY             Contains a pixel part of a cosmic ray.
      0000000000002000 MANYR50                More than one 50% light radius.
      0000000000004000 MANYR90                More than one 90% light radius.
      0000000000008000 BAD_RADIAL             Some points in radial profile S/N<0
      0000000000010000 INCOMPLETE_PROFILE     Petrosian radius intersects frame edge
      0000000000020000 INTERP                 Pixel(s) determined by interpolation.
      0000000000040000 SATURATED              Saturated pixel(s)
      0000000000080000 NOTCHECKED             Not checked for local peaks
      0000000000100000 SUBTRACTED             BRIGHT object, wings subtracted
      0000000000200000 NOSTOKES               No measured Stokes params
      0000000000400000 BADSKY                 Sky level so bad that highest pixel <0.
      0000000000800000 PETROFAINT             Petrosian radius(es) rejected for low SB
      0000000001000000 TOO_LARGE              Object too large to measure its profile
      0000000002000000 DEBLENDEDASPSF         Deblender treated obj as PSF
      0000000004000000 DEBLEND_PRUNED         At least one child was removed
      0000000008000000 ELLIPFAINT             Object center fainter than the isophote
      0000000010000000 BINNED1                Object detected in 1x1 binned image
      0000000020000000 BINNED2                Object detected in 2x2 binned image
      0000000040000000 BINNED4                Object detected in 4x4 binned image
      0000000080000000 MOVED                  Possibly moving object
      0000000100000000 DEBLENDEDASMOVING      A MOVED object treated as moving.
      0000000200000000 NODEBLEND_MOVING       A MOVED object not treated as moving.
      0000000400000000 TOOFEWDETECTIONS       Too few detections to deblend as moving.
      0000000800000000 BADMOVINGFIT           Moving fit too poor to be believable.
      0000001000000000 STATIONARY             Object consistent with being stationary.
      0000002000000000 PEAKSTOOCLOSE          Some peaks merged into a single peak.
      0000004000000000 MEDIAN_CENTER          Center given is of median-smoothed image.
      0000008000000000 LOCAL_EDGE             Center too close to an edge.
      0000010000000000 BADCOUNTSERROR         Too few good pixels, error underestimated
      0000020000000000 BADMOVINGFIT_CHILD     Moving child's velocity fit too poor
      0000040000000000 DEBLENDUNASSIGNEDFLUX  After deblending flux not assigned
      0000080000000000 SATUR_CENTER           Center is close to saturated pixel(s)
      0000100000000000 INTERP_CENTER          Center is close to interpolated pixel(s)
      0000200000000000 DEBLENDEDATEDGE        Object close to edge was deblended
      0000400000000000 DEBLEND_NOPEAK         No detected peak within this child
      0000800000000000 PSFFLUXINTERP          PSF flux from interpolated pixels > 20%
      0001000000000000 TOOFEWGOOD_DETECTIONS  Too few good detections
      0002000000000000 CENTEROFFAIMAGE        At least one peak's center lay off image
      0004000000000000 DEBLEND_DEGENERATE     Identical candidate children, 1 retained
      0008000000000000 BRIGHTESTGALAXYCHILD   Brightest member classified as galaxy
      0010000000000000 CANONICAL_BAND         Band chosen as 'Canonical', generally r
      0020000000000000 AMOMENT_FAINT          Object too faint to measure moments
      0040000000000000 AMOMENT_SHIFT          Centroid shift too large
      0080000000000000 AMOMENT_MAXITER        Maximum number of iterations exceeded
      0100000000000000 MAYBE_CR               Object could actually be a cosmic ray
      0200000000000000 MAYBE_EGHOST           Object could actually be a ghost
      0400000000000000 NOTCHECKED_CENTER      Object center in a region not searched
      0800000000000000 OBJECT2HASSATUR_DN     Trails included in estimated flux.
      1000000000000020 OBJECT2DEBLENDPEEPHOLE Deblend modified by peephole
      2000000000000020 GROWN_MERGED           Growing led to a merger
      4000000000000020 HAS_CENTER             Object has a canonical center
      8000000000000020 RESERVED               Not used
      ================ ====================== =========================================
    ]]></meta>
    <meta name="note" tag="4"><![CDATA[
      Status flags written in hexadecimal, full description available at
      http://skyserver.sdss3.org/dr9/en/help/browser/enum.asp?n=ResolveStatus

      ======== ================ ===================================================
      00000001 RUN_PRIMARY      Object status set in reference to its own run
      00000002 RUN_RAMP         Object in what would be the overlap area of a field
      00000004 RUN_OVERLAPONLY  Object only appears in the overlap between 2 fields
      00000008 RUN_IGNORE       Bright or parent object that should be ignored
      00000010 RUN_EDGE         Object near lowest or highest column
      00000020 RUN_DUPLICATE    Duplicate measurements of same pixels in 2 fields
      00000100 SURVEY_PRIMARY   Primary observation within survey (mode=1)
      00000200 SURVEY_BEST      Best observation in full survey, but not primary.
      00000400 SURVEY_SECONDARY Repeat (independent) observation (mode=2)
      00000800 SURVEY_BADFIELD  In field with score=0
      00001000 SURVEY_EDGE      Not kept as secondary
      ======== ================ ===================================================
    ]]></meta>
    <meta name="note" tag="5"><![CDATA[
      The response curves of the SDSS filters (u g r i z) can be found on the
      SDSS pages: http://www.sdss.org/dr5/instruments/imager/index.html The
      central wavelength and FWHM are:

      ====== ====== ====== ====== ====== ======
       (nm)    u'     g'     r'     i'     z'
      ====== ====== ====== ====== ====== ======
      lambda  354.3  477.0  623.1  762.5  913.4
        FWHM   56.7  138.7  137.3  152.6   95.0
      ====== ====== ====== ====== ====== ======

      Note that the ugriz magnitudes are not exactly on the AB scale for the
      u-band (uAB=umag-0.04) and z-band (zAB=zmag+0.02)
      (http://www.sdss.org/DR7/algorithms/fluxcal.html)
    ]]></meta>
    <meta name="note" tag="6"><![CDATA[
      Dates of the observations for each colour, and their average.
      ]]></meta>
    <meta name="note" tag="7"><![CDATA[
      The "SpObjID" is composed of plate + mjd + fiber with formula (the «n
      operator represent the left shift of n bits, i.e. a multiplication by
      2^n):
      SpObjID = (plate«50) + (mjd-50000«24) + (fiber«38)+(run2d«10)
      ]]></meta>
    <meta name="note" tag="9"><![CDATA[
      The "zwarning" flag is a number made of the following bits:

      ========= =======================================================================
        1 (2^0) sky fiber
        2 (2^1) too little wavelength coverage
        4 (2^2) chi-squared of best fit is too close to that of second best
        8 (2^3) synthetic spectrum is negative
       16 (2^4) fraction of points more than 5σ away from best model is too large (>5%)
       32 (2^5) chi-squared minimum at edge of the redshift fitting range
       64 (2^6) a QSO line exhibits negative emission (triggered only in QSO
                spectra if CIV, CIII, MgII, Hβ, or Hα has lineArea+3σ(lineArea)<0)
      128 (2^7) the fiber was unplugged, so no spectrum obtained
      ========= =======================================================================
    ]]></meta>
    <meta name="note" tag="10"><![CDATA[
      List of SDSS-DR9 types.

      ===================== ==================================================
      Type                  Explanations
      ===================== ==================================================
      AMC                   Candidate Am CVn variables (ancillary target)
      BLAZGRFLAT            Candidate optical counterparts of sources detected
                            by γ-ray Fermi telescope: within 2" of a CRATES
                            radio source and within a Fermi error ellipse
                            (ancillary target)
      BLAZGRQSO             Candidate optical counterparts of sources detected
                            by γ-ray Fermi telescope: within 2" of a FIRST
                            radio source and within Fermi error ellipses
                            (ancillary target)
      BLAZGVAR              Candidate optical counterparts of sources detected
                            by γ-ray Fermi telescope: miscellaneous candidate
                            blazars (ancillary target)
      BLAZGX                Candidate optical counterparts of sources detected
                            by γ-ray Fermi telescope: within the Fermi error
                            ellipses and within 1' of a RASS X-ray source
                            (ancillary target)
      BLAZGXQSO             Candidate optical counterparts of sources detected
                            by γ-ray Fermi telescope: within 1' of ROSAT
                            source and within Fermi error ellipses (ancillary
                            target)
      BLAZGXR               Candidate optical counterparts of sources detected
                            by γ-ray Fermi telescope: within 1' of ROSAT
                            source and within 2' of a FIRST radio source.
                            (ancillary target)
      BLAZR                 miscellaneous candidate blazars (ancillary target)
      BLAZXR                Candidate optical counterparts of sources detected
                            by γ-ray Fermi telescope: plausible Fermi sources
                            (ancillary target)
      BLAZXRSAM             miscellaneous candidate blazars (ancillary target)
      BLUE_RADIO            radio galaxies with blue colors at z>0.3
                            (ancillary target)
      BRIGHTGAL
      CHANDRAv1             Optical counterparts of Chandra X-ray targets
                            (ancillary target)
      CXOBRIGHT             Remarkable X-ray sources that have bright 2-8 keV
                            fluxes (ancillary target)
      CXOGRIZ               Remarkable X-ray sources that have "outlier" SDSS
                            colors (g-r)>1.2 or r-i>1.0 or i-z>1.4. (ancillary
                            target)
      CXORED                Remarkable X-ray sources with red SDSS colors of
                            (g-i)>1.0 (ancillary target)
      ELG                   Luminous Blue Galaxies (ancillary target)
      FBQSBAL               Broad absorption line (BAL) quasar with spectrum
                            from the FIRST Bright Quasar Survey (FBQS) (Cat.
                            J/AJ/112/407 J/ApJS/126/133, J/ApJS/135/227)
                            (ancillary target)
      FLARE1                Flaring M stars (year 1 targets) (ancillary
                            target)
      FLARE2                Flaring M stars (year 2 targets) (ancillary
                            target)
      GALAXY                galaxy
      GAL_NEAR_QSO          galaxy that lies between 0.006' and 1' of the
                            line-of-sight for a spectroscopically-confirmed
                            quasar (ancillary target)
      HIZQSO82              Quasar candidate selected with UKIDSS YJHK
                            photometry (ancillary target)
      HIZQSOIR              Quasar candidate in SDSS Stripe 82, selected with
                            UKIDSS YJHK photometry (ancillary target)
      HOT_STD               Hot standard
      HPM                   High Proper Motion stars (ancillary target)
      KQSO_BOSS             Quasars selected from UKIDSS photometry (ancillary
                            target)
      LBQSBAL               Broad absorption line (BAL) quasar with spectrum
                            from the Large Bright Quasar Survey (LBQS) (Cat.
                            J/A+A/358/77 J/AJ/109/1498, J/AJ/122/518
                            (ancillary target)
      LOW_MET               Low-metallicity M dwarfs (ancillary target)
      LRG                   Luminous Red Galaxy
      MTEMP                 Template M-stars observed as a comparison sample
                            (ancillary target)
      NA                    (not applicable)
      NONLEGACY             (non-legacy observation)
      ODDBAL                Broad absorption line (BAL) quasar with various
                            unusual properties (ancillary target)
      OTBAL                 Photometrically-selected overlapping-trough (OT)
                            broad absorption line (BAL) quasar (ancillary
                            target)
      PREVBAL               Broad absorption line (BAL) quasar with prior
                            spectrum from SDSS-I/-II (ancillary target)
      QA                    Quality assurance target
      QSO                   Quasi-stellar object
      QSO_AAL               Radio-quiet, with one absorption system associated
                            with the quasar (ancillary target)
      QSO_AALs              Radio-quiet, with multiple absorption systems
                            associated with the quasar (ancillary target)
      QSO_GRI               Quasar candidate selected in gri color space
                            (ancillary target)
      QSO_HIZ               Quasar candidate detected only in SDSS i and z
                            filters (ancillary target)
      QSO_IAL               Radio-quiet, with one intervening absorption
                            system (ancillary target)
      QSO_RADIO             Radio-loud, with multiple absorption systems,
                            either local or intervening (ancillary target)
      QSO_RADIO_AAL         Radio-loud, with one absorption system associated
                            with the quasar (ancillary target)
      QSO_RADIO_IAL         Radio loud, with one intervening absorption system
                            (ancillary target)
      QSO_RIZ               Quasar candidate selected in riz color space
                            (ancillary target)
      QSO_SUPPZ             Known quasar with redhift 1.8<=z<=2.15
      QSO_VAR               Likely quasar selected by " No Quasar Left Behind"
                            program (ancillary target)
      QSO_VAR_FPG           Quasars selected by variability (ancillary target)
      QSO_VAR_SDSS          Quasar defined in VARQSO description
      QSO_noAALs            Radio-quiet, with multiple intervening absorption
                            systems and no associated absorption systems
                            (ancillary target)
      RADIO_2LOBE_QSO       Object near the midpoint of a double-lobed object
                            identified in FIRST (ancillary target)
      REDDEN_STD            Reddening standard star
      RED_KG                Red giants in the outer halo of the Milky Way
                            (ancillary target)
      ROSAT_D               ROSAT match, bright enough for SDSS spectroscopy
      RQSS_SF               Red QSO selected from SDSS and FIRST photometry
                            (ancillary target)
      RQSS_SFC              Red QSO selected from SDSS and FIRST photometry
                            (child object in SDSS imaging) (ancillary target)
      RQSS_STM              Red QSO selected from SDSS and 2MASS photometry
                            (ancillary target)
      RQSS_STMC             Red QSO selected from SDSS and 2MASS photometry
                            (child object in SDSS imaging) (ancillary target)
      RVTEST                stars previously observed spectroscopically as a
                            test of the reproducibility of velocity
                            measurements (ancillary target)
      SERENDIPITY_BLUE      Serendipity Blue target (SEGUE target)
      SERENDIPITY_DISTANT   Serendipity Distant target (SEGUE target)
      SERENDIPITY_FIRST     Serendipity FIRST target (FIRST radio source
                            within 1.5'') (SEGUE target)
      SERENDIPITY_MANUAL    Manual serendipity flag set
      SERENDIPITY_RED       Serendipity red target (SEGUE target)
      SKY
      SN_GAL1               Fiber assigned to the galaxy nearest the supernova
                            position (ancillary target)
      SN_GAL2               Fiber assigned to second-nearest galaxy (ancillary
                            target)
      SN_GAL3               Fiber assigned to third-nearest galaxy (ancillary
                            target)
      SN_LOC                Fiber assigned to position of original supernova
                            (ancillary target)
      SPECTROPHOTO_STD
      SPEC_SN               Target selected from spectroscopy instead of
                            photometric variation (ancillary target)
      SPOKE                 Widely-separated binary systems in which both
                            stars are low-mass (spectral class M) (ancillary
                            target)
      STANDARD              standard
      STAR                  stellar target
      STAR_BHB              Blue Horizontal-branch star (SEGUE target)
      STAR_BROWN_DWARF      Brown dwarf (SEGUE target)
      STAR_CARBON           Carbon star (SEGUE target)
      STAR_CATY_VAR         Cataclysmic variable (SEGUE target)
      STAR_PN               Central stars of planetary nebula (SEGUE target)
      STAR_RED_DWARF        (SEGUE target)
      STAR_SUB_DWARF        (SEGUE target)
      STAR_WHITE_DWARF      (SEGUE target)
      STD
      STRIPE82BCG           Brightest cluster galaxy in stripe 82 survey area
                            (ancillary target)
      TEMPLATE_GAL_PHOTO    Galaxy template
      TEMPLATE_QSO_SDSS1    Quasar template
      TEMPLATE_STAR_PHOTO   Stellar template
      TEMPLATE_STAR_SPECTRO Stellar template (spectroscopically known)
      VARBAL                Photometrically-selected candidate broad
                            absorption line (BAL) quasar (ancillary target)
      VARS                  Variables outside the stellar and quasar loci
                            (ancillary target)
      WHITEDWARF_NEW        White dwarf candidate whose spectrum had not been
                            observed previously by the SDSS (ancillary target)
      WHITEDWARF_SDSS       White dwarf candidate with a pre-existing SDSS
                            spectrum (ancillary target)
      XMMBRIGHT             Remarkable X-ray sources that have bright 2-12keV
                            fluxes (ancillary target)
      XMMGRIZ               Remarkable X-ray sources that have "outlier" SDSS
                            colors (g-r)>1.2 or r-i>1.0 or i-z>1.4. (ancillary
                            target)
      XMMHR                 Remarkable X-ray sources that have unusual
                            hardness ratios in the HR2-HR3 plane (ancillary
                            target)
      XMMRED                Remarkable X-ray sources with red SDSS colors of
                            (g-i)>1.0 (ancillary target)
      brighterL             Bright L dwarf candidates (ancillary target)
      brighterM             Bright M dwarf candidates (ancillary target)
      fainterL              Faint L dwarf candidates (ancillary target)
      fainterM              Faint M dwarf candidates (ancillary target)
      ===================== ==================================================
    ]]></meta>
    <meta name="note" tag="11"><![CDATA[
      The spectroscopic sublass includes:

      - for GALAXY classes: BROADLINE, STARFORMING, STARBURST, AGN
      - for STAR classes: MK spectral sub-classes, CV=Cataclysmic Variable,
        Carbon stars (Carbon, Carbon lines), white dwarfs (WD, WDcooler,
        WDhotter, WDmagnetic, CarbonWD, CalciumWD)

    ]]></meta>
  </table>
  <data id="import">
    <sources>data/sdss9_help.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          Field:Field,
          q_mode:q_mode,
          cl:cl,
          SDSS9:SDSS9,
          m_SDSS9:m_SDSS9,
          RAJ2000:RAJ2000,
          e_RAJ2000:e_RAJ2000,
          DEJ2000:DEJ2000,
          e_DEJ2000:e_DEJ2000,
          SDSS_ID:SDSS_ID,
          objID:objID,
          SpObjID:SpObjID,
          parentID:parentID,
          flags:flags,
          Status:Status,
          umag:umag,
          e_umag:e_umag,
          gmag:gmag,
          e_gmag:e_gmag,
          rmag:rmag,
          e_rmag:e_rmag,
          imag:imag,
          e_imag:e_imag,
          zmag:zmag,
          e_zmag:e_zmag,
          zsp:zsp,
          e_zsp:e_zsp,
          f_zsp:f_zsp,
          Vdisp:Vdisp,
          e_Vdisp:e_Vdisp,
          spInst:spInst,
          spType:spType,
          spClass:spCl,
          spSubClass:subClass,
          snMedian:spSN,
          flags_u:uFlags,
          probpsf_u:us,
          type_u:uc,
          uDate:uDate,
          psfmag_u:upmag,
          psfmagerr_u:e_upmag,
          petromag_u:upetromag,
          petromagerr_u:e_upetromag,
          petrorad_u:uPrad,
          petroraderr_u:e_uPrad,
          offsetra_u:uoRA,
          offsetdec_u:uoDE,
          udVrad:udVrad,
          udVell:udVell,
          uPA:uPA,
          flags_g:gFlags,
          probpsf_g:gs,
          type_g:gc,
          gDate:gDate,
          psfmag_g:gpmag,
          psfmagerr_g:e_gpmag,
          petromag_g:gpetromag,
          petromagerr_g:e_gpetromag,
          petrorad_g:gPrad,
          petroraderr_g:e_gPrad,
          offsetra_g:goRA,
          offsetdec_g:goDE,
          gdVrad:gdVrad,
          gdVell:gdVell,
          gPA:gPA,
          flags_r:rFlags,
          probpsf_r:rs,
          type_r:rc,
          rDate:rDate,
          psfmag_r:rpmag,
          psfmagerr_r:e_rpmag,
          petromag_r:rpetromag,
          petromagerr_r:e_rpetromag,
          petrorad_r:rPrad,
          petroraderr_r:e_rPrad,
          offsetra_r:roRA,
          offsetdec_r:roDE,
          rdVrad:rdVrad,
          rdVell:rdVell,
          rPA:rPA,
          flags_i:iFlags,
          probpsf_i:is,
          type_i:ic,
          iDate:iDate,
          psfmag_i:ipmag,
          psfmagerr_i:e_ipmag,
          petromag_i:ipetromag,
          petromagerr_i:e_ipetromag,
          petrorad_i:iPrad,
          petroraderr_i:e_iPrad,
          offsetra_i:ioRA,
          offsetdec_i:ioDE,
          idVrad:idVrad,
          idVell:idVell,
          iPA:iPA,
          flags_z:zFlags,
          probpsf_z:zs,
          type_z:zc,
          zDate:zDate,
          psfmag_z:zpmag,
          psfmagerr_z:e_zpmag,
          petromag_z:zpetromag,
          petromagerr_z:e_zpetromag,
          petrorad_z:zPrad,
          petroraderr_z:e_zPrad,
          offsetra_z:zoRA,
          offsetdec_z:zoDE,
          zdVrad:zdVrad,
          zdVell:zdVell,
          zPA:zPA,
          pmRA:pmRA,
          e_pmRA:e_pmRA,
          pmDec:pmDE,
          e_pmDec:e_pmDE,
          sigRA:sigRA,
          sigDec:sigDE,
          nMatch:M,
          nfit:N,
          g_O:g_O,
          r_E:r_E,
          g_J:g_J,
          r_F:r_F,
          i_N:i_N,
          ObsDate:ObsDate,
          Q:Q
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">SDSS DR9</meta>
    <meta name="shortName">SDSS9</meta>
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
      <condDesc buildFrom="Field" />
      <condDesc buildFrom="SDSS9" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
