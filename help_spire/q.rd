<resource schema="help_spire">
  <meta name="title">HELP SPIRE catalogues</meta>
  <meta name="creationDate">2015-12-09T13:45:28+01:00</meta>
  <meta name="description">
    SPIRE catalogues from the Herschel Extragalactic Legacy Project.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>
  <meta name="type">Survey</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst">
    The Herschel Extragalactic Legacy Project (HELP) intends to produce
    a multi-wavelength, comprehensive data set of the galaxy population at high
    redshift.  The Herschel Space Observatory has the unique property of being
    able to probe the presence of star formation in extremely dusty galaxies
    through observations of the far infra-red and sub-millimetre portion of the
    electromagnetic spectrum.  However, Herschel has relatively poor spatial
    resolution, making it difficult to disentangle which galaxies are
    responsible for what amount of flux.

    HELP aims to robustly address this issue with the use of as many
    complimentary data sets as possible.  With the inclusion of data at shorter
    wavelengths (such as the optical, radio and near-infra-red), which have much
    higher spatial resolution, the deblending of Herschel flux into component
    parts can be undertaken in a much more robust, informed manner.   The
    ultimate goal of HELP is to produce a multi-wavelength data set, which will
    be easy to use so that astronomers not currently used to working with
    Herschel data or high redshift surveys could make use of the statistical
    samples found within the HELP catalogue.

    These are the Herschel SPIRE catalogues from HELP.
  </meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="scat250" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="IAU_name">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "Dec"
    </stc>

    <index columns="F_SPIRE250" />
    <index columns="Field" />

    <column name="Field" type="text" ucd="meta.id;obs.field"
        tablehead="Field" verbLevel="30"
        description="Name of the field in the HerMES survey" />
    <column name="IAU_name" type="text" ucd="meta.id;meta.main"
        tablehead="IAU name" description="IAU name of the source"
        required="True"/>
    <column name="RA" type="double precision" ucd="pos.eq.ra;meta.main"
        tablehead="RA" unit="deg" description="Right Ascension"
        required="True"/>
    <column name="Dec" type="double precision" ucd="pos.eq.dec;meta.main"
        tablehead="Dec" unit="deg"
        description="Declination" required="True"/>
    <column name="F_SPIRE250" type="double precision"
        ucd="phot.flux;em.mm.750-1500GHz;meta.main"
        tablehead="F_SPIRE250" unit="mJy"
        description="Flux density at 250 micron" />
    <column name="FErr_SPIRE250" type="double precision"
        ucd="stat.error;phot.flux;em.mm.750-1500GHz"
        tablehead="FErr_SPIRE250" unit="mJy"
        description="Error (inst.) in flux density at 250 micron" />
    <column name="FErrTot_SPIRE250" type="double precision"
        ucd="stat.error;phot.flux;em.mm.750-1500GHz"
        tablehead="FErrTot_SPIRE250" unit="mJy"
        description="Total error (inst.+conf.) in flux density at 250 micron" />
    <column name="Chi250" type="double precision" ucd="stat.fit.chi2"
        tablehead="Chi250" verbLevel="30"
        description="Local reduced chi2 statistic of photometry fit in 11x11
        pixel window" />
    <column name="gID" type="integer" ucd="meta.id" tablehead="gID"
        description="ID of the segment where the source is">
        <values nullLiteral= "-9999" />
    </column>
    <column name="gSize" type="integer" ucd="meta.number" tablehead="gSize"
        description="Number of sources in the segment gID" verbLevel="30">
        <values nullLiteral= "-9999" />
    </column>
    <column name="Bkg250" type="double precision"
        ucd="instr.background;em.mm.750-1500GHz;" tablehead="Bkg250"
        description="Background substracted from 250 micron map"
        verbLevel="30" />
    <column name="Flag" type="text" ucd="meta.code" tablehead="Flag"
        description="Flag giving additional information on the source"
        note="scatflag" />

    <meta name="note" tag="scatflag">
        The source extracted from the deepest part of the CDFS-SWIRE map are
        flagged with "goods-s".
    </meta>
  </table>

  <table id="scat350" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="IAU_name">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "Dec"
    </stc>

    <index columns="F_SPIRE350" />
    <index columns="Field" />

    <column name="Field" type="text" ucd="meta.id;obs.field"
        tablehead="Field" verbLevel="30"
        description="Name of the field in the HerMES survey" />
    <column name="IAU_name" type="text" ucd="meta.id;meta.main"
        tablehead="IAU name" description="IAU name of the source"
        required="True"/>
    <column name="RA" type="double precision" ucd="pos.eq.ra;meta.main"
        tablehead="RA" unit="deg" description="Right Ascension"
        required="True"/>
    <column name="Dec" type="double precision" ucd="pos.eq.dec;meta.main"
        tablehead="Dec" unit="deg"
        description="Declination" required="True"/>
    <column name="F_SPIRE350" type="double precision"
        ucd="phot.flux;em.mm.750-1500GHz;meta.main"
        tablehead="F_SPIRE350" unit="mJy"
        description="Flux density at 350 micron" />
    <column name="FErr_SPIRE350" type="double precision"
        ucd="stat.error;phot.flux;em.mm.750-1500GHz"
        tablehead="FErr_SPIRE350" unit="mJy"
        description="Error (inst.) in flux density at 350 micron" />
    <column name="FErrTot_SPIRE350" type="double precision"
        ucd="stat.error;phot.flux;em.mm.750-1500GHz"
        tablehead="FErrTot_SPIRE350" unit="mJy"
        description="Total error (inst.+conf.) in flux density at 350 micron" />
    <column name="Chi350" type="double precision" ucd="stat.fit.chi2"
        tablehead="Chi350" verbLevel="30"
        description="Local reduced chi2 statistic of photometry fit in 11x11
        pixel window" />
    <column name="gID" type="integer" ucd="meta.id" tablehead="gID"
        description="ID of the segment where the source is">
        <values nullLiteral= "-9999" />
    </column>
    <column name="gSize" type="integer" ucd="meta.number" tablehead="gSize"
        description="Number of sources in the segment gID" verbLevel="30">
        <values nullLiteral= "-9999" />
    </column>
    <column name="Bkg350" type="double precision"
        ucd="instr.background;em.mm.750-1500GHz;" tablehead="Bkg350"
        description="Background substracted from 350 micron map"
        verbLevel="30" />
    <column name="Flag" type="text" ucd="meta.code" tablehead="Flag"
        description="Flag giving additional information on the source"
        note="scatflag" />

    <meta name="note" tag="scatflag">
        The source extracted from the deepest part of the CDFS-SWIRE map are
        flagged with "goods-s".
    </meta>
  </table>

  <table id="scat500" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="IAU_name">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "Dec"
    </stc>

    <index columns="F_SPIRE500" />
    <index columns="Field" />

    <column name="Field" type="text" ucd="meta.id;obs.field"
        tablehead="Field" verbLevel="30"
        description="Name of the field in the HerMES survey" />
    <column name="IAU_name" type="text" ucd="meta.id;meta.main"
        tablehead="IAU name" description="IAU name of the source"
        required="True"/>
    <column name="RA" type="double precision" ucd="pos.eq.ra;meta.main"
        tablehead="RA" unit="deg" description="Right Ascension"
        required="True"/>
    <column name="Dec" type="double precision" ucd="pos.eq.dec;meta.main"
        tablehead="Dec" unit="deg"
        description="Declination" required="True"/>
    <column name="F_SPIRE500" type="double precision"
        ucd="phot.flux;em.mm.400-750GHz;meta.main"
        tablehead="F_SPIRE500" unit="mJy"
        description="Flux density at 500 micron" />
    <column name="FErr_SPIRE500" type="double precision"
        ucd="stat.error;phot.flux;em.mm.400-750GHz"
        tablehead="FErr_SPIRE500" unit="mJy"
        description="Error (inst.) in flux density at 500 micron" />
    <column name="FErrTot_SPIRE500" type="double precision"
        ucd="stat.error;phot.flux;em.mm.400-750GHz"
        tablehead="FErrTot_SPIRE500" unit="mJy"
        description="Total error (inst.+conf.) in flux density at 500 micron" />
    <column name="Chi500" type="double precision" ucd="stat.fit.chi2"
        tablehead="Chi500" verbLevel="30"
        description="Local reduced chi2 statistic of photometry fit in 11x11
        pixel window" />
    <column name="gID" type="integer" ucd="meta.id" tablehead="gID"
        description="ID of the segment where the source is">
        <values nullLiteral= "-9999" />
    </column>
    <column name="gSize" type="integer" ucd="meta.number" tablehead="gSize"
        description="Number of sources in the segment gID" verbLevel="30">
        <values nullLiteral= "-9999" />
    </column>
    <column name="Bkg500" type="double precision"
        ucd="instr.background;em.mm.400-750GHz;" tablehead="Bkg500"
        description="Background substracted from 500 micron map"
        verbLevel="30" />
    <column name="Flag" type="text" ucd="meta.code" tablehead="Flag"
        description="Flag giving additional information on the source"
        note="scatflag" />

    <meta name="note" tag="scatflag">
        The source extracted from the deepest part of the CDFS-SWIRE map are
        flagged with "goods-s".
    </meta>
  </table>

  <table id="xid250" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="IAU_name">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "Dec"
    </stc>

    <index columns="F_SPIRE250" />
    <index columns="F_SPIRE350" />
    <index columns="F_SPIRE500" />
    <index columns="Field" />

    <column name="Field" type="text" ucd="meta.id;obs.field"
        tablehead="Field" verbLevel="30"
        description="Name of the field in the HerMES survey" />
    <column name="IAU_name" type="text" ucd="meta.id;meta.main"
        tablehead="IAU name" description="IAU name of the source"
        required="True"/>
    <column name="RA" type="double precision" ucd="pos.eq.ra;meta.main"
        tablehead="RA" unit="deg" description="Right Ascension"
        required="True"/>
    <column name="Dec" type="double precision" ucd="pos.eq.dec;meta.main"
        tablehead="Dec" unit="deg"
        description="Declination" required="True"/>
    <column name="F_SPIRE250" type="double precision"
        ucd="phot.flux;em.mm.750-1500GHz;meta.main"
        tablehead="F_SPIRE250" unit="mJy"
        description="Flux density at 250 micron" />
    <column name="FErr_SPIRE250" type="double precision"
        ucd="stat.error;phot.flux;em.mm.750-1500GHz"
        tablehead="FErr_SPIRE250" unit="mJy"
        description="Error (inst.) in flux density at 250 micron" />
    <column name="FErrTot_SPIRE250" type="double precision"
        ucd="stat.error;phot.flux;em.mm.750-1500GHz"
        tablehead="FErrTot_SPIRE250" unit="mJy"
        description="Total error (inst.+conf.) in flux density at 250 micron" />
    <column name="Chi250" type="double precision" ucd="stat.fit.chi2"
        tablehead="Chi250" verbLevel="30"
        description="Local reduced chi2 statistic of photometry fit in 11x11
        pixel window" />
    <column name="gID" type="integer" ucd="meta.id" tablehead="gID"
        description="ID of the segment where the source is">
        <values nullLiteral= "-9999" />
    </column>
    <column name="gSize" type="integer" ucd="meta.number" tablehead="gSize"
        description="Number of sources in the segment gID" verbLevel="30">
        <values nullLiteral= "-9999" />
    </column>
    <column name="Bkg250" type="double precision"
        ucd="instr.background;em.mm.750-1500GHz;" tablehead="Bkg250"
        description="Background substracted from 250 micron map"
        verbLevel="30" />
    <column name="F_SPIRE350" type="double precision"
        ucd="phot.flux;em.mm.750-1500GHz;meta.main"
        tablehead="F_SPIRE350" unit="mJy"
        description="Flux density at 350 micron" />
    <column name="FErr_SPIRE350" type="double precision"
        ucd="stat.error;phot.flux;em.mm.750-1500GHz"
        tablehead="FErr_SPIRE350" unit="mJy"
        description="Error (inst.) in flux density at 350 micron" />
    <column name="FErrTot_SPIRE350" type="double precision"
        ucd="stat.error;phot.flux;em.mm.750-1500GHz"
        tablehead="FErrTot_SPIRE350" unit="mJy"
        description="Total error (inst.+conf.) in flux density at 350 micron" />
    <column name="Chi350" type="double precision" ucd="stat.fit.chi2"
        tablehead="Chi350" verbLevel="30"
        description="Local reduced chi2 statistic of photometry fit in 11x11
        pixel window" />
    <column name="Bkg350" type="double precision"
        ucd="instr.background;em.mm.750-1500GHz;" tablehead="Bkg350"
        description="Background substracted from 350 micron map"
        verbLevel="30" />
    <column name="F_SPIRE500" type="double precision"
        ucd="phot.flux;em.mm.400-750GHz;meta.main"
        tablehead="F_SPIRE500" unit="mJy"
        description="Flux density at 500 micron" />
    <column name="FErr_SPIRE500" type="double precision"
        ucd="stat.error;phot.flux;em.mm.400-750GHz"
        tablehead="FErr_SPIRE500" unit="mJy"
        description="Error (inst.) in flux density at 500 micron" />
    <column name="FErrTot_SPIRE500" type="double precision"
        ucd="stat.error;phot.flux;em.mm.400-750GHz"
        tablehead="FErrTot_SPIRE500" unit="mJy"
        description="Total error (inst.+conf.) in flux density at 500 micron" />
    <column name="Chi500" type="double precision" ucd="stat.fit.chi2"
        tablehead="Chi500" verbLevel="30"
        description="Local reduced chi2 statistic of photometry fit in 11x11
        pixel window" />
    <column name="Bkg500" type="double precision"
        ucd="instr.background;em.mm.400-750GHz;" tablehead="Bkg500"
        description="Background substracted from 500 micron map"
        verbLevel="30" />
    <column name="Flag" type="text" ucd="meta.code" tablehead="Flag"
        description="Flag giving additional information on the source"
        note="scatflag" />

    <meta name="note" tag="scatflag">
        The source extracted from the deepest part of the CDFS-SWIRE map are
        flagged with "goods-s".
    </meta>
  </table>

  <data id="import_scat250">
    <sources>data/scat250.csv</sources>
    <csvGrammar />
    <make table="scat250">
      <rowmaker idmaps="*">
          <simplemaps>
            Field:Field,
            IAU_name:IAU,
            RA:RA,
            Dec:Dec,
            F_SPIRE250:F250,
            FErr_SPIRE250:e_F250,
            FErrTot_SPIRE250:et_F250,
            Chi250:Chi250,
            gID:gID,
            gSize:gSize,
            Bkg250:bkg250,
            Flag:Flag
          </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_scat350">
    <sources>data/scat350.csv</sources>
    <csvGrammar />
    <make table="scat350">
      <rowmaker idmaps="*">
          <simplemaps>
            Field:Field,
            IAU_name:IAU,
            RA:RA,
            Dec:Dec,
            F_SPIRE350:F350,
            FErr_SPIRE350:e_F350,
            FErrTot_SPIRE350:et_F350,
            Chi350:Chi350,
            gID:gID,
            gSize:gSize,
            Bkg350:bkg350,
            Flag:Flag
          </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_scat500">
    <sources>data/scat500.csv</sources>
    <csvGrammar />
    <make table="scat500">
      <rowmaker idmaps="*">
          <simplemaps>
            Field:Field,
            IAU_name:IAU,
            RA:RA,
            Dec:Dec,
            F_SPIRE500:F500,
            FErr_SPIRE500:e_F500,
            FErrTot_SPIRE500:et_F500,
            Chi500:Chi500,
            gID:gID,
            gSize:gSize,
            Bkg500:bkg500,
            Flag:Flag
          </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_xid250">
    <sources>data/xid250.csv</sources>
    <csvGrammar />
    <make table="xid250">
      <rowmaker idmaps="*">
          <simplemaps>
            Field:Field,
            IAU_name:IAU,
            RA:RA,
            Dec:Dec,
            F_SPIRE250:F250,
            FErr_SPIRE250:e_F250,
            FErrTot_SPIRE250:et_F250,
            Chi250:Chi250,
            Bkg250:bkg250,
            F_SPIRE350:F350,
            FErr_SPIRE350:e_F350,
            FErrTot_SPIRE350:et_F350,
            Chi350:Chi350,
            Bkg350:bkg350,
            F_SPIRE500:F500,
            FErr_SPIRE500:e_F500,
            FErrTot_SPIRE500:et_F500,
            Chi500:Chi500,
            Bkg500:bkg500,
            gID:gID,
            gSize:gSize,
            Flag:Flag
          </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone_scat250" allowed="scs.xml,form,static">
    <meta name="title">HerMES SCAT250 (blind SPIRE 250µm extraction)</meta>
    <meta name="shortName">HerMES SCAT250</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="scat250">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="F_SPIRE250" />
      <condDesc buildFrom="Field" />
      <condDesc>
        <inputKey original="IAU_name" required="False"/>
      </condDesc>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <service id="cone_scat350" allowed="scs.xml,form,static">
    <meta name="title">HerMES SCAT350 (blind SPIRE 350µm extraction)</meta>
    <meta name="shortName">HerMES SCAT350</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="scat350">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="F_SPIRE350" />
      <condDesc buildFrom="Field" />
      <condDesc>
        <inputKey original="IAU_name" required="False"/>
      </condDesc>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <service id="cone_scat500" allowed="scs.xml,form,static">
    <meta name="title">HerMES SCAT500 (blind SPIRE 500µm extraction)</meta>
    <meta name="shortName">HerMES SCAT500</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="scat500">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="F_SPIRE500" />
      <condDesc buildFrom="Field" />
      <condDesc>
        <inputKey original="IAU_name" required="False"/>
      </condDesc>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <service id="cone_xid250" allowed="scs.xml,form,static">
    <meta name="title">HerMES xID250 (SPIRE fluxes at SPIRE 250µm positions)</meta>
    <meta name="shortName">HerMES xID250</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="xid250">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="F_SPIRE250" />
      <condDesc buildFrom="F_SPIRE350" />
      <condDesc buildFrom="F_SPIRE500" />
      <condDesc buildFrom="Field" />
      <condDesc>
        <inputKey original="IAU_name" required="False"/>
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
