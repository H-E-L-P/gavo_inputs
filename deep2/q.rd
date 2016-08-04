<resource schema="deep2">
  <meta name="title">DEEP2 Photometric Catalogue</meta>
  <meta name="creationDate">2016-08-04T19:21:50+0200</meta>
  <meta name="description">
    Combined DEEP2 DR4 Photometric Catalogues limited to HELP coverage.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
    <meta name="waveband">Near-Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the DEEP2 DR4 photometric catalogues. Downloaded from
    http://deep.ps.uci.edu/DR4/photo.html

    The DEEP2 survey provide catalogues on several subfields. We merged all the
    catalogues adding a `subfield` column containing the subfield number of the
    sources (*e.g.*, the sources from `pcat.11.fits.gz` will have the value 11
    in the subfield column). Then we limited the table to the sources within
    HELP coverage and added a `field` column containing the name of the HELP
    field.


    Survey identification
    ---------------------

    +-----------------+---------------------------------------------------------+
    | Survey          | DEEP2 Galaxy Redshift Survey                            |
    +-----------------+---------------------------------------------------------+
    | Telescope       | Canada-France-Hawai'i Telescope (CFHT)                  |
    +-----------------+---------------------------------------------------------+
    | Instrument      | CFH12K                                                  |
    +-----------------+---------------------------------------------------------+
    | Filters         | B, R, I                                                 |
    +-----------------+---------------------------------------------------------+
    | Reference       | 2004ApJ...617..765C                                     |
    +-----------------+---------------------------------------------------------+
    | URL             | http://deep.ps.uci.edu/DR4/photo.html                   |
    +-----------------+---------------------------------------------------------+
    | Acknowledgement | Funding of the DEEP2 Galaxy Redshift Survey has been    |
    |                 | provided by NSF grants AST-95-09298, AST-0071048        |
    |                 | AST-0507428, and AST-0507483 as well as NASA LTSA grant |
    |                 | NNG04GC89G.                                             |
    +-----------------+---------------------------------------------------------+

    History
    -------

    ======== ============================================
    20160804 First ingestion
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /deep2/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="objno">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="field" />

    <column name="field"
      tablehead="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey"
      required="True"
      verbLevel="1" />
    <column name="subfield"
      tablehead="Subfield"
      type="integer"
      ucd="meta.id;obs.field"
      description="Subfield of the DEEP2 catalogue"
      required="True"
      verbLevel="1" />
    <column name="objno"
      tablehead="ObjNo"
      type="integer"
      ucd="meta.id;meta.main"
      description="DEEP2 object number"
      required="True"
      verbLevel="1" />
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
    <column name="magb"
      tablehead="MagB"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="CFHT B-band magnitude (AB)"
      verbLevel="1" />
    <column name="magr"
      tablehead="MagR"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="CFHT R-band magnitude (AB)"
      verbLevel="1" />
    <column name="magi"
      tablehead="MagI"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="CFHT I-band magnitude (AB)"
      verbLevel="1" />
    <column name="magberr"
      tablehead="MagBErr"
      type="real"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="B-band magnitude error (sky noise only)"
      verbLevel="1" />
    <column name="magrerr"
      tablehead="MagRErr"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="R-band magnitude error (sky noise only)"
      verbLevel="1" />
    <column name="magierr"
      tablehead="MagIErr"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="I-band magnitude error (sky noise only)"
      verbLevel="1" />
    <column name="rg"
      tablehead="RG"
      type="real"
      ucd="phys.angSize;em.opt.R"
      unit="pixel"
      description="Estimated R-band radius of object in 0.207 arcsec pixels
      (sigma of Gaussian fit)"
      verbLevel="1" />
    <column name="rh"
      tablehead="RH"
      type="real"
      ucd="phys.angSize;em.opt.R"
      unit="pixel"
      description="Estimated R-band half-light radius in pixels"
      verbLevel="1" />
    <column name="rp"
      tablehead="RP"
      type="real"
      ucd="phys.angSize;em.opt.R"
      unit="pixel"
      description="Estimated R-band Petrosian radius in pixels"
      verbLevel="1" />
    <column name="pgal"
      tablehead="pGal"
      type="real"
      ucd="src.class.starGalaxy"
      description="The probability (0-1) that the source is a galaxy for
      unresolved galaxies, 3 if resolved"
      note="1"
      verbLevel="1" />
    <column name="sfd_ebv"
      tablehead="SFD_EBV"
      type="real"
      ucd="phot.color.excess"
      description="E(B-V) from Schlegel, Finkbeiner, and Davis dust map"
      verbLevel="1" />
    <column name="badflag"
      tablehead="BadFlag"
      type="smallint"
      ucd="meta.code.qual"
      description="Nonzero if source may have missing data or be contaminated
      (see note)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-9" />
    </column>
    <meta name="note" tag="1"><![CDATA[
    pGal values
    -----------
    Each object in the photometric catalogues is assigned a PGAL value according
    to its probability of being a galaxy. PGAL values in the range 0-1 give the
    probability that a compact object is a galaxy (only compact sources will
    have PGAL values 0 - 1). A PGAL value > 1 indicates an extended source and
    definitely a galaxy.

    ]]></meta>
    <meta name="note" tag="2"><![CDATA[
    BadFlag codes
    -------------
    Each object in the photometric catalogues is assigned a value for the
    BADFLAG field based on the photometric bad-pixel-mask value at its central
    pixel.  For B, R, and I individually, a pixel has a flag value from 0-5;
    these are combined together to obtain the BADFLAG value according to

      BADFLAG = B_value + 6 × R_value + 36 × I_value

    The B, R, and I values may be obtained from the combined BADFLAG value via
    integer arithmetic (e.g. Bvalue = BADFLAG mod 6). The codes used for B, R,
    I separately are

    = =========================================================================
    0 good pixel
    1 no data available
    2 excessively bright object centred here
    3 saturated pixel at object location
    4 identified as a suspect pixel in the dilation process by `brightmask.pro`
    5 within 10-pixel buffer of a bad pixel (of type 1-4)
    = =========================================================================

    ]]></meta>
  </table>
  <data id="import">
    <sources>data/deep2_help.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          objno:objno,
          ra:ra,
          dec:dec,
          magb:magb,
          magr:magr,
          magi:magi,
          magberr:magberr,
          magrerr:magrerr,
          magierr:magierr,
          rg:rg,
          rh:rh,
          rp:rp,
          pgal:pgal,
          badflag:badflag,
          sfd_ebv:sfd_ebv,
          field:field,
          subfield:subfield
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">DEEP2 Photometric Catalogue</meta>
    <meta name="shortName">DEEP2</meta>
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
      <condDesc buildFrom="field" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
