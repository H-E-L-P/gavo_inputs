<resource schema="egs_palomar">
  <meta name="title">EGS Palomar WIRC Photometry</meta>
  <meta name="creationDate">2016-08-04</meta>
  <meta name="description">
    AEGIS Release of Palomar WIRC Photometry
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the near-infrared catalogue of Extended Groth Strip
    observations with the WIRC instrument at the Palomar Observatory. It was
    downloaded from http://www.astro.caltech.edu/AEGIS/ and is accompanied by
    these notes:

      Notes on AEGIS Release of Palomar WIRC Photometry
      Catalog File: palomar_2007jul28_simple.fits
      Date: July 28, 2007
      Contact: Kevin Bundy (bundy at astro.utoronto.ca)

      Notes:
      Magnitudes are given in the Vega system
      ERR2 fields give magnitude uncertainty based on inserting fake sources
      When using this catalog, please reference Bundy et al. 2006, ApJ, 651, 120
      J-band photometry is not complete across the field.  Missing data is
      assigned mag = -99

      For raw images and other information please contact K. Bundy

    In the original catalogue, the source with ID 14100107 was duplicated and
    only one row was kept.

    Survey identification
    ---------------------

    +------------+---------------------------------------------------+
    | Survey     | All-wavelength Extended Groth strip International |
    |            | Survey (AEGIS)                                    |
    +------------+---------------------------------------------------+
    | Telescope  | Palomar Observatory                               |
    +------------+---------------------------------------------------+
    | Instrument | WIRC                                              |
    +------------+---------------------------------------------------+
    | Filters    | J, Ks                                             |
    +------------+---------------------------------------------------+
    | P.I.       | Kevin Bundy                                       |
    +------------+---------------------------------------------------+
    | Reference  | 2006ApJ...651..120B                               |
    +------------+---------------------------------------------------+
    | URL        | http://www.astro.caltech.edu/AEGIS/               |
    +------------+---------------------------------------------------+

    History
    -------

    ======== ============================================
    20160804 First ingestion
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /egs_palomar/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="id"
      tablehead="ID"
      type="bigint"
      ucd="meta.id;meta.main"
      description="DEEP2 ObjNo - ??7xxxxx means K-band detection only"
      required="True"
      verbLevel="1" />
    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension using the DEEP2 astrometry solution"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination using the DEEP2 astrometry solution"
      required="True"
      verbLevel="1" />
    <column name="kmag_auto"
      tablehead="KMag_Auto"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="vega"
      description="WIRC Ks MAG_AUTO (Vega)"
      verbLevel="1" />
    <column name="kmag_d2"
      tablehead="KMag_D2"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="vega"
      description="2 arcsec diameter (1 arcsec radius) aperture photometry"
      verbLevel="1" />
    <column name="kmag_d3"
      tablehead="KMag_D3"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="vega"
      description="3 arcsec diameter (2 arcsec radius) aperture photometry"
      verbLevel="1" />
    <column name="kmag_d4"
      tablehead="KMag_D4"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="vega"
      description="4 arcsec diameter (2.5 arcsec radius) aperture photometry"
      verbLevel="1" />
    <column name="kmag_d5"
      tablehead="KMag_D5"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="vega"
      description="5 arcsec diameter (3 arcsec radius) aperture photometry"
      verbLevel="1" />
    <column name="kerr2_auto"
      tablehead="KErr2_Auto"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="vega"
      description="Monte Carlo error from inserted fake sources"
      verbLevel="1" />
    <column name="kerr2_d2"
      tablehead="KErr2_D2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="vega"
      description="Monte Carlo error from inserted fake sources"
      verbLevel="1" />
    <column name="kerr2_d3"
      tablehead="KErr2_D3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="vega"
      description="Monte Carlo error from inserted fake sources"
      verbLevel="1" />
    <column name="kerr2_d4"
      tablehead="KErr2_D4"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="vega"
      description="Monte Carlo error from inserted fake sources"
      verbLevel="1" />
    <column name="kerr2_d5"
      tablehead="KErr2_D5"
      type="real"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="vega"
      description="Monte Carlo error from inserted fake sources"
      verbLevel="1" />
    <column name="jmag_d2"
      tablehead="JMag_D2"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="vega"
      description="2 arcsec diameter (1 arcsec radius) aperture photometry"
      verbLevel="1" />
    <column name="jmag_d3"
      tablehead="JMag_D3"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="vega"
      description="3 arcsec diameter (2 arcsec radius) aperture photometry"
      verbLevel="1" />
    <column name="jmag_d4"
      tablehead="JMag_D4"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="vega"
      description="4 arcsec diameter (2.5 arcsec radius) aperture photometry"
      verbLevel="1" />
    <column name="jmag_d5"
      tablehead="JMag_D5"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="vega"
      description="5 arcsec diameter (3 arcsec radius) aperture photometry"
      verbLevel="1" />
    <column name="jerr2_d2"
      tablehead="JErr2_D2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="vega"
      description="Monte Carlo error from inserted fake sources"
      verbLevel="1" />
    <column name="jerr2_d3"
      tablehead="JErr2_D3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="vega"
      description="Monte Carlo error from inserted fake sources"
      verbLevel="1" />
    <column name="jerr2_d4"
      tablehead="JErr2_D4"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="vega"
      description="Monte Carlo error from inserted fake sources"
      verbLevel="1" />
    <column name="jerr2_d5"
      tablehead="JErr2_D5"
      type="real"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="vega"
      description="Monte Carlo error from inserted fake sources"
      verbLevel="1" />
  </table>
  <data id="import">
    <sources>data/EGS_Palomar.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          id:id,
          ra:ra,
          dec:dec,
          kmag_auto:kmag_auto,
          kmag_d2:kmag_d2,
          kmag_d3:kmag_d3,
          kmag_d4:kmag_d4,
          kmag_d5:kmag_d5,
          kerr2_auto:kerr2_auto,
          kerr2_d2:kerr2_d2,
          kerr2_d3:kerr2_d3,
          kerr2_d4:kerr2_d4,
          kerr2_d5:kerr2_d5,
          jmag_d2:jmag_d2,
          jmag_d3:jmag_d3,
          jmag_d4:jmag_d4,
          jmag_d5:jmag_d5,
          jerr2_d2:jerr2_d2,
          jerr2_d3:jerr2_d3,
          jerr2_d4:jerr2_d4,
          jerr2_d5:jerr2_d5
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">EGS Palomar WIRC Photometry</meta>
    <meta name="shortName">EGS_Palomar</meta>
    <meta name="testQuery">
      <meta name="ra">215.0</meta>
      <meta name="dec">52.72</meta>
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
