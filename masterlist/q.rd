<resource schema="masterlist">
  <meta name="title">HELP Master List</meta>
  <meta name="creationDate">2016-04-12T12:38:22+02:00</meta>
  <meta name="description">
    HELP K selected sources used for list-driven works.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the HELP master list. Each source is identified by
    a unique HELP_Id that must be used in all catalogues derived from the
    master list.

    +---------+--------------+
    | Field   | Count        |
    +=========+==============+
    | Bootes  |    2,973,539 |
    +---------+--------------+
    | COSMOS  |      694,478 |
    +---------+--------------+
    | XMM-LSS |    4,374,168 |
    +---------+--------------+

    History
    -------

    ======== ================================================================
    20160801 Ingestion of Bootes master list. Use of coverage flag instead of
             detection flag.
    20160617 Addition of the COSMOS master list.
    20160516 Addition of the detection_flag column.
    20160412 Ingestion of XMM-LSS master list.
    ======== ================================================================

    RAW data
    --------

    You may also `download raw catalogues and MOC coverage`__.

    __ /masterlist/q/cone/static
  ]]></meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="help_id">
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
    <column name="help_id"
      tablehead="HELP_Id"
      type="text"
      ucd="meta.id;meta.main"
      description="HELP identifier, based on J2000 position"
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
    <column name="ebv"
        tablehead="EBV"
        type="double precision"
        ucd="phot.color.excess"
        description="Galactic extinction (Schlegel et al. 1998) at the object
        position"
        verbLevel="1" />
    <column name="coverage"
      tablehead="Coverage"
      type="bigint"
      ucd="meta.code;obs.field"
      description="Binary coverage flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9999" />
    </column>
    <meta name="note" tag="1"><![CDATA[
      During the creation of the master list, the coverage of each survey
      / catalogue is byte encoded. Each source position is then flagged
      according to its belonging to the various coverages, whether the source
      was detected or not.

      The byte encoding depends on the field and is done according to the
      following tables.

      For Boötes:

      +--------+---------+
      | Number | Survey  |
      +--------+---------+
      | 1      | NDWFS   |
      +--------+---------+
      | 2      | IBIS    |
      +--------+---------+
      | 4      | zBootes |
      +--------+---------+
      | 8      | SDWFS   |
      +--------+---------+

      For XMM-LSS:

      +--------+--------+
      | Number | Survey |
      +--------+--------+
      | 1      | VIDEO  |
      +--------+--------+
      | 2      | VIKING |
      +--------+--------+
      | 4      | DXS    |
      +--------+--------+
      | 8      | VHS    |
      +--------+--------+
      | 16     | SERVS  |
      +--------+--------+
      | 32     | SWIRE  |
      +--------+--------+
      | 64     | CFHTLS |
      +--------+--------+

      ]]></meta>
  </table>
  <data id="import">
    <sources>
      <pattern>data/*.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps></simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">HELP Master-list</meta>
    <meta name="shortName">Master-list</meta>
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
      <condDesc buildFrom="field" />
      <condDesc buildFrom="help_id" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
