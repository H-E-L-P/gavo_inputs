<resource schema="sdss9">
  <meta name="title">SDSS DR9</meta>
  <meta name="creationDate">2016-01-21T16:32:51+0100</meta>
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

    WARNING: Because of a bug in CDS TAP access to SDSS9 data, all sources with
    a declination over 65 degrees are missing.

    The full documentation is available at:
    http://cdsarc.u-strasbg.fr/viz-bin/Cat?V/139

    A ``Field`` column was added containing the name of HELP field associated
    with each source to allow easy filtering. Also, an ``internal_idx`` column
    was added containing a unique identifier for each source; this was done
    because 2 different SDSS object may share the same SDSS9 name. If you need
    to refer to a row in the SDSS catalogue (e.g. when crossmatching) please use
    the internal index. Here is the number of sources per field:

    +--------------------+------------+
    | Field              | Count      |
    +====================+============+
    | AKARI-NEP          |      1,253 |
    +--------------------+------------+
    | Bootes             |    468,234 |
    +--------------------+------------+
    | COSMOS             |    191,484 |
    +--------------------+------------+
    | EGS                |     86,524 |
    +--------------------+------------+
    | ELAIS-N1           |    503,675 |
    +--------------------+------------+
    | ELAIS-N2           |    493,467 |
    +--------------------+------------+
    | GAMA-09            |  4,323,069 |
    +--------------------+------------+
    | GAMA-12            |  3,097,901 |
    +--------------------+------------+
    | GAMA-15            |  2,924,900 |
    +--------------------+------------+
    | HDF-N              |     31,172 |
    +--------------------+------------+
    | Herschel-Stripe-82 | 53,160,632 |
    +--------------------+------------+
    | Lockman-SWIRE      |  1,042,407 |
    +--------------------+------------+
    | NGP                |  5,113,268 |
    +--------------------+------------+
    | SA13               |      5,893 |
    +--------------------+------------+
    | xFLS               |    276,251 |
    +--------------------+------------+
    | XMM-13hr           |     33,765 |
    +--------------------+------------+
    | XMM-LSS            |    639,200 |
    +--------------------+------------+

    Within HELP, the SDSS 9 catalogue is used as astrometric reference for the
    fields GAMA-09, GAMA-12, GAMA-15, and Herschel-Stripe-82.

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
      primary="internal_idx">
    <stc>
      Position ICRS Epoch J2000.0 "RAJ2000" "DEJ2000"
    </stc>

    <index columns="Field" />
    <index columns="SDSS9" />

    <column name="mode" type="smallint" ucd="meta.code.class"
            description="1: primary, 2: secondary">
        <values nullLiteral="-1" />
    </column>
    <column name="q_mode" type="text" ucd="meta.code.qual;instr.setup"
        description="+ indicates clean photometry" />
    <column name="cl" type="smallint" ucd="src.class" note="1"
            description="Type (class) of object (3=galaxy, 6=star)">
        <values nullLiteral="-1" />
    </column>
    <column name="SDSS9" type="text" ucd="meta.id"
        description="SDSS-DR9 name, based on J2000 position" />
    <column name="m_SDSS9" type="text" ucd="meta.code.multip"
        description="The asterisk indicates that 2 different SDSS object share
            the same SDSS9 name" />
    <column name="RAJ2000" type="double precision" ucd="pos.eq.ra;meta.main"
        unit="deg" description="Right Ascension (J2000)" required="True"/>
    <column name="e_RAJ2000" type="real" ucd="stat.error;pos.eq.ra" unit="arcsec"
        description="Mean error on RAJ2000" />
    <column name="DEJ2000" type="double precision" ucd="pos.eq.dec;meta.main"
        unit="deg" description="Declination (J2000)" required="True"/>
    <column name="e_DEJ2000" type="real" ucd="stat.error;pos.eq.dec" unit="arcsec"
        description="Mean error on DEJ2000" />
    <column name="Q" type="smallint" ucd="meta.code.qual;obs.param;obs"
            description="Quality of the observation (0: unknown, 1:bad,
                2:acceptable, 3:good, 4:missing, 5:hole)">
        <values nullLiteral="-1" />
    </column>
    <column name="umag" type="real" ucd="phot.mag;em.opt.U" unit="mag"
        description="Model magnitude in u filter, AB scale" note="2" />
    <column name="e_umag" type="real" ucd="stat.error;phot.mag;em.opt.U"
        unit="mag" description="Mean error on umag" />
    <column name="gmag" type="real" ucd="phot.mag;em.opt.B" unit="mag"
        description="Model magnitude in g filter, AB scale" note="2" />
    <column name="e_gmag" type="real" ucd="stat.error;phot.mag;em.opt.B"
        unit="mag" description="Mean error on gmag" />
    <column name="rmag" type="real" ucd="phot.mag;em.opt.R" unit="mag"
        description="Model magnitude in r filter, AB scale" note="2" />
    <column name="e_rmag" type="real" ucd="stat.error;phot.mag;em.opt.R"
        unit="mag" description="Mean error on rmag" />
    <column name="imag" type="real" ucd="phot.mag;em.opt.I" unit="mag"
        description="Model magnitude in i filter, AB scale" note="2" />
    <column name="e_imag" type="real" ucd="stat.error;phot.mag;em.opt.I"
        unit="mag" description="Mean error on imag" />
    <column name="zmag" type="real" ucd="phot.mag;em.opt.I" unit="mag"
        description="Model magnitude in z filter, AB scale" note="2" />
    <column name="e_zmag" type="real" ucd="stat.error;phot.mag;em.opt.I"
        unit="mag" description="Mean error on zmag" />
    <column name="zsp" type="double precision" ucd="src.redshift"
        description="Spectrometric redshift" />
    <column name="Field" type="text" ucd="meta.id;obs.field"
        description="Name of the field in HELP survey" />
    <column name="internal_idx" type="bigint" ucd="meta.id;meta.main"
        description="Internal unique identifier" required="True" />
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
  </table>
  <data id="import">
    <sources>data/SDSS9_HELP.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          mode:mode,
          q_mode:q_mode,
          cl:cl,
          SDSS9:SDSS9,
          m_SDSS9:m_SDSS9,
          RAJ2000:RAJ2000,
          e_RAJ2000:e_RAJ2000,
          DEJ2000:DEJ2000,
          e_DEJ2000:e_DEJ2000,
          Q:Q,
          umag:umag,
          e_umag:e_umag,
          gmag:gmag,
          e_gmag:e_gmag,
          rmag:rmag,
          e_rmag:e_rmag,
          zmag:zmag,
          e_zmag:e_zmag,
          zsp:zsp,
          Field:Field,
          internal_idx:internal_idx
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
    <property name="staticData">data</property>

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
