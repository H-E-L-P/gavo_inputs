<resource schema="cfhtls">
  <meta name="title">CFHTLS</meta>
  <meta name="creationDate">2016-04-20T17:58:29+02:00</meta>
  <meta name="description">
    The CFHTLS Survey (T0007 release) (Hudelot+ 2012)
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the T0007 release of the Canada-France-Hawaii
    Telescope Legacy Survey (CFHTLS, Hudelot+ 2012) downloaded from Vizier and
    limited to HELP coverage.  It comprises 2 components “CFHTLS Deep” and
    “CFHTLS Wide”.

    The full documentation is available at:
    http://cdsarc.u-strasbg.fr/viz-bin/Cat?II/317

    To identify uniquely a source, one must use the CFHTLS column.

    A ``Field`` column was added containing the name of HELP field associated
    with each source to allow easy filtering. Here is the number of sources per
    field:

    +---------+-------------+-------------+
    | Field   | Wide counts | Deep counts |
    +=========+=============+=============+
    | COSMOS  |             |     554,830 |
    +---------+-------------+-------------+
    | EGS     |     780,583 |     566,572 |
    +---------+-------------+-------------+
    | GAMA-09 |   1,044,973 |     592,457 |
    +---------+-------------+-------------+
    | XMM-LSS |   3,565,362 |             |
    +---------+-------------+-------------+

    History
    -------
    ======== =========================================================
    20160422 Catalogue downloaded again with missing a,b,pa columns.
    20160420 Catalogue downloaded from Vizier.
    ======== =========================================================

    RAW data
    --------

    You may also `download raw catalogues and MOC coverage`__.

    __ /cfhtls/q/cone_wide/static
  ]]></meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="wide" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="CFHTLS">
    <stc>
      Position ICRS Epoch J2000.0 "RAJ2000" "DEJ2000"
    </stc>

    <index columns="Field" />

    <column name="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey" />
    <column name="CFHTLS"
      tablehead="CFHTLS"
      type="text"
      description="Unique object identifier"
      ucd="meta.id;meta.main"
      verbLevel="1"
      note="1" />
    <column name="RAJ2000"
      tablehead="RAJ2000"
      type="double precision"
      unit="deg"
      description="Right ascension (J2000)"
      ucd="pos.eq.ra;meta.main"
      verbLevel="1" />
    <column name="DEJ2000"
      tablehead="DEJ2000"
      type="double precision"
      unit="deg"
      description="Declination (J2000)"
      ucd="pos.eq.dec;meta.main"
      verbLevel="1" />
    <column name="umag"
      tablehead="umag"
      type="real"
      unit="mag"
      description="u*-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.U"
      verbLevel="1" />
    <column name="e_umag"
      tablehead="e_umag"
      type="real"
      unit="mag"
      description="RMS error in umag"
      ucd="stat.error;phot.mag;em.opt.U"
      verbLevel="1" />
    <column name="gmag"
      tablehead="gmag"
      type="real"
      unit="mag"
      description="g-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.B"
      verbLevel="1" />
    <column name="e_gmag"
      tablehead="e_gmag"
      type="real"
      unit="mag"
      description="RMS error in gmag"
      ucd="stat.error;phot.mag;em.opt.B"
      verbLevel="1" />
    <column name="rmag"
      tablehead="rmag"
      type="real"
      unit="mag"
      description="r-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.R"
      verbLevel="1" />
    <column name="e_rmag"
      tablehead="e_rmag"
      type="real"
      unit="mag"
      description="RMS error in rmag"
      ucd="stat.error;phot.mag;em.opt.R"
      verbLevel="1" />
    <column name="imag"
      tablehead="imag"
      type="real"
      unit="mag"
      description="i/y-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.I"
      verbLevel="1"
      note="2" />
    <column name="e_imag"
      tablehead="e_imag"
      type="real"
      unit="mag"
      description="RMS error in imag"
      ucd="stat.error;phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="zmag"
      tablehead="zmag"
      type="real"
      unit="mag"
      description="z-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="e_zmag"
      tablehead="e_zmag"
      type="real"
      unit="mag"
      description="RMS error in zmag"
      ucd="stat.error;phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="Seq"
      tablehead="Seq"
      type="integer"
      description="Running object number"
      ucd="meta.id"
      verbLevel="30">
        <values nullLiteral="-9999"/>
      </column>
      <column name="Xpos"
        tablehead="Xpos"
        type="double precision"
        unit="pix"
        description="Object position along x"
        ucd="pos.cartesian.x;instr.det"
        verbLevel="30" />
      <column name="Ypos"
        tablehead="Ypos"
        type="double precision"
        unit="pix"
        description="Object position along y"
        ucd="pos.cartesian.y;instr.det"
        verbLevel="30" />
      <column name="a"
        tablehead="a"
        type="double precision"
        unit="arcsec"
        description="Profile RMS along major axis"
        ucd="phys.angSize.smajAxis"
        verbLevel="30" />
      <column name="b"
        tablehead="b"
        type="real"
        unit="arcsec"
        description="Profile RMS along minor axis"
        ucd="phys.angSize.sminAxis"
        verbLevel="30" />
      <column name="pa"
        tablehead="pa"
        type="smallint"
        unit="deg"
        description="Position angle"
        ucd="pos.posAng"
        verbLevel="30">
          <values nullLiteral="-32768"/>
      </column>
      <column name="Sfl"
        tablehead="Sfl"
        type="smallint"
        description="Sextractor extraction flags"
        ucd="meta.code"
        verbLevel="1"
        note="3">
          <values nullLiteral="-99"/>
      </column>
      <column name="Tfl"
        tablehead="Tfl"
        type="smallint"
        description="TERAPIX flag mask"
        ucd="meta.code"
        verbLevel="1"
        note="4">
          <values nullLiteral="-99"/>
      </column>
      <column name="ifl"
        tablehead="ifl"
        type="smallint"
        description="i-filter used"
        ucd="meta.code"
        verbLevel="1"
        note="2">
          <values nullLiteral="-99"/>
      </column>
      <column name="E_BV"
        tablehead="E(B-V)"
        type="real"
        unit="mag"
        description="E(B-V) extinction from Schlegel maps"
        ucd="phot.color.excess"
        verbLevel="10" />
      <column name="umagA"
        tablehead="umagA"
        type="real"
        unit="mag"
        description="u*-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.U"
        verbLevel="30" />
      <column name="e_umagA"
        tablehead="e_umagA"
        type="real"
        unit="mag"
        description="RMS error for umagA"
        ucd="stat.error;phot.mag;em.opt.U"
        verbLevel="30" />
      <column name="umag20"
        tablehead="umag20"
        type="real"
        unit="mag"
        description="u*-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.U"
        verbLevel="30" />
      <column name="e_umag20"
        tablehead="e_umag20"
        type="real"
        unit="mag"
        description="Mean error on umag20"
        ucd="stat.error;phot.mag;em.opt.U"
        verbLevel="30" />
      <column name="urad"
        tablehead="urad"
        type="double precision"
        unit="pix"
        description="u*-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="ucl"
        tablehead="ucl"
        type="real"
        description="Star/galaxy class in u*-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="uFpk"
        tablehead="uFpk"
        type="double precision"
        unit="ct"
        description="u*-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="umu"
        tablehead="umu"
        type="real"
        unit="mag/arcsec2"
        description="u*-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
      <column name="gmagA"
        tablehead="gmagA"
        type="real"
        unit="mag"
        description="g-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.B"
        verbLevel="30" />
      <column name="e_gmagA"
        tablehead="e_gmagA"
        type="real"
        unit="mag"
        description="RMS error for gmagA"
        ucd="stat.error;phot.mag;em.opt.B"
        verbLevel="30" />
      <column name="gmag20"
        tablehead="gmag20"
        type="real"
        unit="mag"
        description="g-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.B"
        verbLevel="30" />
      <column name="e_gmag20"
        tablehead="e_gmag20"
        type="real"
        unit="mag"
        description="Mean error on gmag20"
        ucd="stat.error;phot.mag;em.opt.B"
        verbLevel="30" />
      <column name="grad"
        tablehead="grad"
        type="double precision"
        unit="pix"
        description="g-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="gcl"
        tablehead="gcl"
        type="real"
        description="Star/galaxy class in g-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="gFpk"
        tablehead="gFpk"
        type="double precision"
        unit="ct"
        description="g-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="gmu"
        tablehead="gmu"
        type="real"
        unit="mag/arcsec2"
        description="g-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
      <column name="rmagA"
        tablehead="rmagA"
        type="real"
        unit="mag"
        description="r-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.R"
        verbLevel="30" />
      <column name="e_rmagA"
        tablehead="e_rmagA"
        type="real"
        unit="mag"
        description="RMS error for rmagA"
        ucd="stat.error;phot.mag;em.opt.R"
        verbLevel="30" />
      <column name="rmag20"
        tablehead="rmag20"
        type="real"
        unit="mag"
        description="r-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.R"
        verbLevel="30" />
      <column name="e_rmag20"
        tablehead="e_rmag20"
        type="real"
        unit="mag"
        description="Mean error on rmag20"
        ucd="stat.error;phot.mag;em.opt.R"
        verbLevel="30" />
      <column name="rrad"
        tablehead="rrad"
        type="double precision"
        unit="pix"
        description="r-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="rcl"
        tablehead="rcl"
        type="real"
        description="Star/galaxy class in r-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="rFpk"
        tablehead="rFpk"
        type="double precision"
        unit="ct"
        description="r-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="rmu"
        tablehead="rmu"
        type="real"
        unit="mag/arcsec2"
        description="r-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
      <column name="imagA"
        tablehead="imagA"
        type="real"
        unit="mag"
        description="i-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.I"
        verbLevel="30"
        note="2" />
      <column name="e_imagA"
        tablehead="e_imagA"
        type="real"
        unit="mag"
        description="RMS error for imagA"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="imag20"
        tablehead="imag20"
        type="real"
        unit="mag"
        description="i-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.I"
        verbLevel="30"
        note="2" />
      <column name="e_imag20"
        tablehead="e_imag20"
        type="real"
        unit="mag"
        description="Mean error on imag20"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="irad"
        tablehead="irad"
        type="double precision"
        unit="pix"
        description="i-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30"
        note="2" />
      <column name="icl"
        tablehead="icl"
        type="real"
        description="Star/galaxy class in i-band"
        ucd="src.class.starGalaxy"
        verbLevel="30"
        note="2" />
      <column name="iFpk"
        tablehead="iFpk"
        type="double precision"
        unit="ct"
        description="i-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="imu"
        tablehead="imu"
        type="real"
        unit="mag/arcsec2"
        description="i-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30"
        note="2" />
      <column name="zmagA"
        tablehead="zmagA"
        type="real"
        unit="mag"
        description="z-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="e_zmagA"
        tablehead="e_zmagA"
        type="real"
        unit="mag"
        description="RMS error for zmagA"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="zmag20"
        tablehead="zmag20"
        type="real"
        unit="mag"
        description="z-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="e_zmag20"
        tablehead="e_zmag20"
        type="real"
        unit="mag"
        description="Mean error on zmag20"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="zrad"
        tablehead="zrad"
        type="double precision"
        unit="pix"
        description="z-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="zcl"
        tablehead="zcl"
        type="real"
        description="Star/galaxy class in z-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="zFpk"
        tablehead="zFpk"
        type="double precision"
        unit="ct"
        description="z-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="zmu"
        tablehead="zmu"
        type="real"
        unit="mag/arcsec2"
        description="z-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
    <meta name="note" tag="1"><![CDATA[
      The unique object identifier in the CFHTLS survey is written
      "sptt_nnnnnn" with the meaning:

      ====== =========== =====================================
      s      digit 1     survey with deep = 0 / wide = 1
      p      digit 2     patch index (1 for W1, etc)
      tt     digits 3/4  tile index
      nnnnnn digits 6-11 object index in the survey/index/tile
      ====== =========== =====================================
      ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      Magnitude in i- or y-band filter, depending on the "ifl" flag:

      = =====================================================
      O the object was observed in filter i.MP9701
      1 the object was observed in filter i.MP9702 (y filter)
      = =====================================================
      ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      The Sextractor binary flags are:

      == ===========================================================
       1 object has neighbors or bad pixels that bias the photometry
       2 object originally blended with another one
       4 at least one pixel of the object is saturated
       8 object truncated (too close to an image boundary)
      16 aperture data are incomplete or corrupted
      32 isophotal data are incomplete or corrupted
      == ===========================================================
      ]]></meta>
    <meta name="note" tag="4"><![CDATA[
      The TERAPIX binary flags are:

      === ====================================
        1 star
        2 saturated star in one of the filters
        4 masked region in z-band
        8 masked region in y-band
       16 masked region in i-band
       32 masked region in r-band
       64 masked region in g-band
      128 masked region in u*-band
      === ====================================
      ]]></meta>
  </table>

   <table id="deep" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="CFHTLS">
    <stc>
      Position ICRS Epoch J2000.0 "RAJ2000" "DEJ2000"
    </stc>

    <index columns="Field" />

    <column name="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey" />
    <column name="CFHTLS"
      tablehead="CFHTLS"
      type="text"
      description="Unique object identifier"
      ucd="meta.id;meta.main"
      verbLevel="1"
      note="1" />
    <column name="RAJ2000"
      tablehead="RAJ2000"
      type="double precision"
      unit="deg"
      description="Right ascension (J2000)"
      ucd="pos.eq.ra;meta.main"
      verbLevel="1" />
    <column name="DEJ2000"
      tablehead="DEJ2000"
      type="double precision"
      unit="deg"
      description="Declination (J2000)"
      ucd="pos.eq.dec;meta.main"
      verbLevel="1" />
    <column name="umag"
      tablehead="umag"
      type="real"
      unit="mag"
      description="u*-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.U"
      verbLevel="1" />
    <column name="e_umag"
      tablehead="e_umag"
      type="real"
      unit="mag"
      description="RMS error in umag"
      ucd="stat.error;phot.mag;em.opt.U"
      verbLevel="1" />
    <column name="gmag"
      tablehead="gmag"
      type="real"
      unit="mag"
      description="g-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.B"
      verbLevel="1" />
    <column name="e_gmag"
      tablehead="e_gmag"
      type="real"
      unit="mag"
      description="RMS error in gmag"
      ucd="stat.error;phot.mag;em.opt.B"
      verbLevel="1" />
    <column name="rmag"
      tablehead="rmag"
      type="real"
      unit="mag"
      description="r-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.R"
      verbLevel="1" />
    <column name="e_rmag"
      tablehead="e_rmag"
      type="real"
      unit="mag"
      description="RMS error in rmag"
      ucd="stat.error;phot.mag;em.opt.R"
      verbLevel="1" />
    <column name="imag"
      tablehead="imag"
      type="real"
      unit="mag"
      description="i-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="e_imag"
      tablehead="e_imag"
      type="real"
      unit="mag"
      description="RMS error in imag"
      ucd="stat.error;phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="ymag"
      tablehead="ymag"
      type="real"
      unit="mag"
      description="y-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="e_ymag"
      tablehead="e_ymag"
      type="real"
      unit="mag"
      description="RMS error in ymag"
      ucd="stat.error;phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="zmag"
      tablehead="zmag"
      type="real"
      unit="mag"
      description="z-band 3″-aperture AB mag."
      ucd="phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="e_zmag"
      tablehead="e_zmag"
      type="real"
      unit="mag"
      description="RMS error in zmag"
      ucd="stat.error;phot.mag;em.opt.I"
      verbLevel="1" />
    <column name="Seq"
      tablehead="Seq"
      type="integer"
      description="Running object number"
      ucd="meta.id"
      verbLevel="30">
        <values nullLiteral="-9999"/>
      </column>
      <column name="Xpos"
        tablehead="Xpos"
        type="double precision"
        unit="pix"
        description="Object position along x"
        ucd="pos.cartesian.x;instr.det"
        verbLevel="30" />
      <column name="Ypos"
        tablehead="Ypos"
        type="double precision"
        unit="pix"
        description="Object position along y"
        ucd="pos.cartesian.y;instr.det"
        verbLevel="30" />
      <column name="a"
        tablehead="a"
        type="double precision"
        unit="arcsec"
        description="Profile RMS along major axis"
        ucd="phys.angSize.smajAxis"
        verbLevel="30" />
      <column name="b"
        tablehead="b"
        type="real"
        unit="arcsec"
        description="Profile RMS along minor axis"
        ucd="phys.angSize.sminAxis"
        verbLevel="30" />
      <column name="pa"
        tablehead="pa"
        type="smallint"
        unit="deg"
        description="Position angle"
        ucd="pos.posAng"
        verbLevel="30">
          <values nullLiteral="-32768"/>
      </column>
      <column name="Sfl"
        tablehead="Sfl"
        type="smallint"
        description="Sextractor extraction flags"
        ucd="meta.code"
        verbLevel="1"
        note="3">
          <values nullLiteral="-99"/>
      </column>
      <column name="Tfl"
        tablehead="Tfl"
        type="smallint"
        description="TERAPIX flag mask"
        ucd="meta.code"
        verbLevel="1"
        note="4">
          <values nullLiteral="-99"/>
      </column>
      <column name="E_BV"
        tablehead="E(B-V)"
        type="real"
        unit="mag"
        description="E(B-V) extinction from Schlegel maps"
        ucd="phot.color.excess"
        verbLevel="10" />
      <column name="umagA"
        tablehead="umagA"
        type="real"
        unit="mag"
        description="u*-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.U"
        verbLevel="30" />
      <column name="e_umagA"
        tablehead="e_umagA"
        type="real"
        unit="mag"
        description="RMS error for umagA"
        ucd="stat.error;phot.mag;em.opt.U"
        verbLevel="30" />
      <column name="umag20"
        tablehead="umag20"
        type="real"
        unit="mag"
        description="u*-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.U"
        verbLevel="30" />
      <column name="e_umag20"
        tablehead="e_umag20"
        type="real"
        unit="mag"
        description="Mean error on umag20"
        ucd="stat.error;phot.mag;em.opt.U"
        verbLevel="30" />
      <column name="urad"
        tablehead="urad"
        type="double precision"
        unit="pix"
        description="u*-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="ucl"
        tablehead="ucl"
        type="real"
        description="Star/galaxy class in u*-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="uFpk"
        tablehead="uFpk"
        type="double precision"
        unit="ct"
        description="u*-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="umu"
        tablehead="umu"
        type="real"
        unit="mag/arcsec2"
        description="u*-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
      <column name="gmagA"
        tablehead="gmagA"
        type="real"
        unit="mag"
        description="g-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.B"
        verbLevel="30" />
      <column name="e_gmagA"
        tablehead="e_gmagA"
        type="real"
        unit="mag"
        description="RMS error for gmagA"
        ucd="stat.error;phot.mag;em.opt.B"
        verbLevel="30" />
      <column name="gmag20"
        tablehead="gmag20"
        type="real"
        unit="mag"
        description="g-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.B"
        verbLevel="30" />
      <column name="e_gmag20"
        tablehead="e_gmag20"
        type="real"
        unit="mag"
        description="Mean error on gmag20"
        ucd="stat.error;phot.mag;em.opt.B"
        verbLevel="30" />
      <column name="grad"
        tablehead="grad"
        type="double precision"
        unit="pix"
        description="g-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="gcl"
        tablehead="gcl"
        type="real"
        description="Star/galaxy class in g-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="gFpk"
        tablehead="gFpk"
        type="double precision"
        unit="ct"
        description="g-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="gmu"
        tablehead="gmu"
        type="real"
        unit="mag/arcsec2"
        description="g-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
      <column name="rmagA"
        tablehead="rmagA"
        type="real"
        unit="mag"
        description="r-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.R"
        verbLevel="30" />
      <column name="e_rmagA"
        tablehead="e_rmagA"
        type="real"
        unit="mag"
        description="RMS error for rmagA"
        ucd="stat.error;phot.mag;em.opt.R"
        verbLevel="30" />
      <column name="rmag20"
        tablehead="rmag20"
        type="real"
        unit="mag"
        description="r-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.R"
        verbLevel="30" />
      <column name="e_rmag20"
        tablehead="e_rmag20"
        type="real"
        unit="mag"
        description="Mean error on rmag20"
        ucd="stat.error;phot.mag;em.opt.R"
        verbLevel="30" />
      <column name="rrad"
        tablehead="rrad"
        type="double precision"
        unit="pix"
        description="r-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="rcl"
        tablehead="rcl"
        type="real"
        description="Star/galaxy class in r-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="rFpk"
        tablehead="rFpk"
        type="double precision"
        unit="ct"
        description="r-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="rmu"
        tablehead="rmu"
        type="real"
        unit="mag/arcsec2"
        description="r-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
      <column name="imagA"
        tablehead="imagA"
        type="real"
        unit="mag"
        description="i-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="e_imagA"
        tablehead="e_imagA"
        type="real"
        unit="mag"
        description="RMS error for imagA"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="imag20"
        tablehead="imag20"
        type="real"
        unit="mag"
        description="i-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="e_imag20"
        tablehead="e_imag20"
        type="real"
        unit="mag"
        description="Mean error on imag20"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="irad"
        tablehead="irad"
        type="double precision"
        unit="pix"
        description="i-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="icl"
        tablehead="icl"
        type="real"
        description="Star/galaxy class in i-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="iFpk"
        tablehead="iFpk"
        type="double precision"
        unit="ct"
        description="i-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="imu"
        tablehead="imu"
        type="real"
        unit="mag/arcsec2"
        description="i-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
      <column name="ymagA"
        tablehead="ymagA"
        type="real"
        unit="mag"
        description="y-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="e_ymagA"
        tablehead="e_ymagA"
        type="real"
        unit="mag"
        description="RMS error for ymagA"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="ymag20"
        tablehead="ymag20"
        type="real"
        unit="mag"
        description="y-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="e_ymag20"
        tablehead="e_ymag20"
        type="real"
        unit="mag"
        description="Mean error on ymag20"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="yrad"
        tablehead="yrad"
        type="double precision"
        unit="pix"
        description="y-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="ycl"
        tablehead="ycl"
        type="real"
        description="Star/galaxy class in y-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="yFpk"
        tablehead="yFpk"
        type="double precision"
        unit="ct"
        description="y-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="ymu"
        tablehead="ymu"
        type="real"
        unit="mag/arcsec2"
        description="y-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
      <column name="zmagA"
        tablehead="zmagA"
        type="real"
        unit="mag"
        description="z-band Kron-like aperture mag."
        ucd="phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="e_zmagA"
        tablehead="e_zmagA"
        type="real"
        unit="mag"
        description="RMS error for zmagA"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="zmag20"
        tablehead="zmag20"
        type="real"
        unit="mag"
        description="z-band 20*FWHM magnitude"
        ucd="phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="e_zmag20"
        tablehead="e_zmag20"
        type="real"
        unit="mag"
        description="Mean error on zmag20"
        ucd="stat.error;phot.mag;em.opt.I"
        verbLevel="30" />
      <column name="zrad"
        tablehead="zrad"
        type="double precision"
        unit="pix"
        description="z-band half-light radius"
        ucd="phys.angSize;src"
        verbLevel="30" />
      <column name="zcl"
        tablehead="zcl"
        type="real"
        description="Star/galaxy class in z-band"
        ucd="src.class.starGalaxy"
        verbLevel="30" />
      <column name="zFpk"
        tablehead="zFpk"
        type="double precision"
        unit="ct"
        description="z-band peak flux above background"
        ucd="instr.background;stat.max"
        verbLevel="30" />
      <column name="zmu"
        tablehead="zmu"
        type="real"
        unit="mag/arcsec2"
        description="z-band peak surface brightness"
        ucd="phot.mag.sb"
        verbLevel="30" />
    <meta name="note" tag="1"><![CDATA[
      The unique object identifier in the CFHTLS survey is written
      "sptt_nnnnnn" with the meaning:

      ====== =========== =====================================
      s      digit 1     survey with deep = 0 / wide = 1
      p      digit 2     patch index (1 for W1, etc)
      tt     digits 3/4  tile index
      nnnnnn digits 6-11 object index in the survey/index/tile
      ====== =========== =====================================
      ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      The Sextractor binary flags are:

      == ===========================================================
       1 object has neighbors or bad pixels that bias the photometry
       2 object originally blended with another one
       4 at least one pixel of the object is saturated
       8 object truncated (too close to an image boundary)
      16 aperture data are incomplete or corrupted
      32 isophotal data are incomplete or corrupted
      == ===========================================================
      ]]></meta>
    <meta name="note" tag="4"><![CDATA[
      The TERAPIX binary flags are:

      === ====================================
        1 star
        2 saturated star in one of the filters
        4 masked region in z-band
        8 masked region in y-band
       16 masked region in i-band
       32 masked region in r-band
       64 masked region in g-band
      128 masked region in u*-band
      === ====================================
      ]]></meta>
  </table>

  <data id="import_wide">
    <sources>data/cfhtls_w_help.csv</sources>
    <csvGrammar />
    <make table="wide">
      <rowmaker idmaps="*">
        <simplemaps>
          umag:umag,
          umu:umu,
          rFpk:rFpk,
          E_BV:E_BV,
          iFpk:iFpk,
          rmagA:rmagA,
          e_gmag:e_gmag,
          imu:imu,
          e_imag:e_imag,
          e_zmag:e_zmag,
          RAJ2000:RAJ2000,
          umag20:umag20,
          Tfl:Tfl,
          imagA:imagA,
          e_umagA:e_umagA,
          uFpk:uFpk,
          zmag:zmag,
          gmag:gmag,
          imag:imag,
          zFpk:zFpk,
          e_gmagA:e_gmagA,
          rmag20:rmag20,
          zmag20:zmag20,
          rcl:rcl,
          ifl:ifl,
          zcl:zcl,
          rrad:rrad,
          ucl:ucl,
          e_rmag20:e_rmag20,
          grad:grad,
          e_zmagA:e_zmagA,
          gmag20:gmag20,
          icl:icl,
          rmag:rmag,
          e_rmag:e_rmag,
          Ypos:Ypos,
          e_rmagA:e_rmagA,
          Sfl:Sfl,
          imag20:imag20,
          gmagA:gmagA,
          CFHTLS:CFHTLS,
          DEJ2000:DEJ2000,
          e_gmag20:e_gmag20,
          e_imagA:e_imagA,
          gFpk:gFpk,
          gcl:gcl,
          urad:urad,
          rmu:rmu,
          zmu:zmu,
          zmagA:zmagA,
          e_umag20:e_umag20,
          e_umag:e_umag,
          gmu:gmu,
          Xpos:Xpos,
          umagA:umagA,
          Seq:Seq,
          irad:irad,
          zrad:zrad,
          e_imag20:e_imag20,
          e_zmag20:e_zmag20,
          Field:Field
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_deep">
    <sources>data/cfhtls_d_help.csv</sources>
    <csvGrammar />
    <make table="deep">
      <rowmaker idmaps="*">
        <simplemaps>
          umag:umag,
          umu:umu,
          rFpk:rFpk,
          E_BV:E_BV,
          iFpk:iFpk,
          ymag20:ymag20,
          e_ymagA:e_ymagA,
          rmagA:rmagA,
          e_gmag:e_gmag,
          imu:imu,
          e_imag:e_imag,
          ymagA:ymagA,
          e_zmag:e_zmag,
          RAJ2000:RAJ2000,
          umag20:umag20,
          e_ymag:e_ymag,
          ymag:ymag,
          Tfl:Tfl,
          imagA:imagA,
          e_umagA:e_umagA,
          uFpk:uFpk,
          gmag:gmag,
          zmag:zmag,
          imag:imag,
          zFpk:zFpk,
          e_gmagA:e_gmagA,
          rmag20:rmag20,
          zmag20:zmag20,
          ycl:ycl,
          rcl:rcl,
          zcl:zcl,
          yrad:yrad,
          rrad:rrad,
          yFpk:yFpk,
          ucl:ucl,
          e_rmag20:e_rmag20,
          grad:grad,
          e_zmagA:e_zmagA,
          gmag20:gmag20,
          icl:icl,
          rmag:rmag,
          e_ymag20:e_ymag20,
          e_rmag:e_rmag,
          Ypos:Ypos,
          Sfl:Sfl,
          e_rmagA:e_rmagA,
          imag20:imag20,
          CFHTLS:CFHTLS,
          gmagA:gmagA,
          DEJ2000:DEJ2000,
          e_gmag20:e_gmag20,
          e_imagA:e_imagA,
          ymu:ymu,
          gFpk:gFpk,
          gcl:gcl,
          urad:urad,
          rmu:rmu,
          zmu:zmu,
          zmagA:zmagA,
          e_umag:e_umag,
          e_umag20:e_umag20,
          Xpos:Xpos,
          gmu:gmu,
          umagA:umagA,
          Seq:Seq,
          irad:irad,
          e_imag20:e_imag20,
          zrad:zrad,
          e_zmag20:e_zmag20,
          Field:Field
        </simplemaps>
      </rowmaker>
    </make>
  </data>


  <service id="cone_wide" allowed="scs.xml,form,static">
    <meta name="title">CFHTLS Wide</meta>
    <meta name="shortName">CFHTLS_W</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="wide">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="Field" />
      <condDesc buildFrom="CFHTLS" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <service id="cone_deep" allowed="scs.xml,form,static">
    <meta name="title">CFHTLS Deep</meta>
    <meta name="shortName">CFHTLS_D</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="deep">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="Field" />
      <condDesc buildFrom="CFHTLS" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
</resource>

<!--
vim:et:sta:sw=2
-->
