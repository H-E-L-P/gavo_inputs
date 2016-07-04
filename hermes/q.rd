<resource schema="hermes">
  <meta name="title">HerMES DR4 catalogues</meta>
  <meta name="creationDate">2016-07-04T17:00:14+0200</meta>
  <meta name="description">
    SPIRE catalogues from the Herschel Multi-tiered Extragalactic Survey
    (HerMES).
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
    HerMES is the Herschel Multi-tiered Extragalactic Survey, an astronomical
    project to study the evolution of galaxies in the distant Universe.It is the
    largest project on ESA's Herschel Space Observatory (900 hours).

    This resource contains the SPIRE catalogues that have been produced for
    HerMES as part of HELP project.

    The xID250 catalogue is a SPIRE multi-band catalogue of fluxes extracted at
    positions found in the 250µm map. The full documentation a available here_.

    .. _here: http://hedam.lam.fr/HerMES/data/DR3/documentation/HerMES_DR3-readme.txt

    History
    -------
    ======== =========================================================
    20160704 Initial ingestion with HerMES DR4 catalogues
    ======== =========================================================

    RAW data
    --------

    You may also `download raw catalogues and MOC coverage`__.

    __ /hermes/q/cone_xid250/static

  </meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="xid250" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="hermes_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="f250" />
    <index columns="f350" />
    <index columns="f500" />
    <index columns="field" />

    <column name="field"
      type="text"
      ucd="meta.id;obs.field"
      tablehead="Field"
      verbLevel="30"
      description="Name of the field in the HerMES survey"
      required="True"/>
    <column name="hermes_id"
      type="text"
      ucd="meta.id;meta.main"
      tablehead="HerMES_Id"
      description="IAU name of the source"
      required="True"/>
    <column name="ra"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      tablehead="RA"
      unit="deg"
      description="Right Ascension"
      required="True"/>
    <column name="dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      tablehead="Dec"
      unit="deg"
      description="Declination"
      required="True"/>
    <column name="f250"
      type="double precision"
      ucd="phot.flux;em.mm.750-1500GHz;meta.main"
      tablehead="F250"
      unit="mJy"
      description="Flux density at 250 micron" />
    <column name="e250"
      type="double precision"
      ucd="stat.error;phot.flux;em.mm.750-1500GHz"
      tablehead="E250"
      unit="mJy"
      description="Error (inst.) in flux density at 250 micron" />
    <column name="et250"
      type="double precision"
      ucd="stat.error;phot.flux;em.mm.750-1500GHz"
      tablehead="ET250"
      unit="mJy"
      description="Total error (inst.+conf.) in flux density at 250 micron" />
    <column name="chi250"
      type="double precision"
      ucd="stat.fit.chi2"
      tablehead="Chi250"
      verbLevel="30"
      description="Local reduced chi2 statistic of photometry fit in 11x11
      pixel window" />
    <column name="bkg250"
      type="double precision"
      ucd="instr.background;em.mm.750-1500GHz;"
      tablehead="Bkg250"
      unit="mJy/beam"
      description="Background subtracted from 250 micron map"
      verbLevel="30" />
    <column name="f350"
      type="double precision"
      ucd="phot.flux;em.mm.750-1500GHz;meta.main"
      tablehead="F350"
      unit="mJy"
      description="Flux density at 350 micron" />
    <column name="e350"
      type="double precision"
      ucd="stat.error;phot.flux;em.mm.750-1500GHz"
      tablehead="E350"
      unit="mJy"
      description="Error (inst.) in flux density at 350 micron" />
    <column name="et350"
      type="double precision"
      ucd="stat.error;phot.flux;em.mm.750-1500GHz"
      tablehead="ET350"
      unit="mJy"
      description="Total error (inst.+conf.) in flux density at 350 micron" />
    <column name="chi350"
      type="double precision"
      ucd="stat.fit.chi2"
      tablehead="Chi350"
      verbLevel="30"
      description="Local reduced chi2 statistic of photometry fit in 11x11
      pixel window" />
    <column name="bkg350"
      type="double precision"
      ucd="instr.background;em.mm.750-1500GHz;"
      tablehead="Bkg350"
      unit="mJy/beam"
      description="Background subtracted from 350 micron map"
      verbLevel="30" />
    <column name="f500"
      type="double precision"
      ucd="phot.flux;em.mm.400-750GHz;meta.main"
      tablehead="F500"
      unit="mJy"
      description="Flux density at 500 micron" />
    <column name="e500"
      type="double precision"
      ucd="stat.error;phot.flux;em.mm.400-750GHz"
      tablehead="E500"
      unit="mJy"
      description="Error (inst.) in flux density at 500 micron" />
    <column name="et500"
      type="double precision"
      ucd="stat.error;phot.flux;em.mm.400-750GHz"
      tablehead="ET500"
      unit="mJy"
      description="Total error (inst.+conf.) in flux density at 500 micron" />
    <column name="chi500"
      type="double precision"
      ucd="stat.fit.chi2"
      tablehead="Chi500"
      verbLevel="30"
      description="Local reduced chi2 statistic of photometry fit in 11x11
      pixel window" />
    <column name="bkg500"
      type="double precision"
      ucd="instr.background;em.mm.400-750GHz;"
      tablehead="Bkg500"
      unit="mJy/beam"
      description="Background subtracted from 500 micron map"
      verbLevel="30" />
    <column name="gid"
      type="integer"
      ucd="meta.id"
      tablehead="gID"
      description="ID of the segment where the source is"
      verbLevel="30">
      <values nullLiteral= "-9999" />
    </column>
    <column name="gsize"
      type="integer"
      ucd="meta.number"
      tablehead="gSize"
      description="Number of sources in the segment gID"
      verbLevel="30">
        <values nullLiteral= "-9999" />
    </column>
  </table>
  <data id="import_xid250">
    <sources>
      <pattern>data/*.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="xid250">
      <rowmaker idmaps="*">
          <simplemaps>
            field:field,
            hermes_id:hermes_id,
            ra:ra,
            dec:dec,
            f250:f250,
            e250:e250,
            et250:et250,
            bkg250:bkg250,
            chi250:chi250,
            f350:f350,
            e350:e350,
            et350:et350,
            bkg350:bkg350,
            chi350:chi350,
            f500:f500,
            e500:e500,
            et500:et500,
            bkg500:bkg500,
            chi500:chi500,
            gid:gid,
            gsize:gsize
          </simplemaps>
      </rowmaker>
    </make>
  </data>

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
      <condDesc buildFrom="f250" />
      <condDesc buildFrom="f350" />
      <condDesc buildFrom="f500" />
      <condDesc buildFrom="field" />
      <condDesc>
        <inputKey original="hermes_id" required="False"/>
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
