<resource schema="lofar_bootes">
  <meta name="title">LOFAR Bootes 150 MHz</meta>
  <meta name="creationDate">2016-05-02T16:13:15+0200</meta>
  <meta name="description">
    Sources extracted from the fourth version of the Boötes field imaged by
    LOFAR at central frequency of 150 MHz
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Radio</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This catalogue contains sources extracted from the fourth version of the
    Bootes field imaged by LOFAR at a central observing frequency of 150 MHz.
    The accompanying paper with the catalogue is currently in preparation
    (Williams et al. 2016) and the catalogue remains private until the
    publication of the paper.

    ==================== =======================================================
    Observers            Wendy Williams for the LOFAR Surveys Key Science
                         Team (PI: Huub Rottgering)

    Facility/Instrument  Low Frequency Array (LOFAR) / High Band Antenna (HBA)
    Observing Frequency  150 MHz
    Resolution           5 arcsec
    Field                Bootes
    ==================== =======================================================

    History
    -------
    ======== ================================================
    20160502 Ingestion of catalogue provided by Aayush Saxena
    ======== =====================================:==========

    RAW data
    --------

    You may also `download raw catalogues and MOC coverage`__.

    __ /lofar_bootes/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="source_name">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "Dec"
    </stc>

    <column name="source_name"
      tablehead="Source name"
      type="text"
      ucd="meta.id;meta.main"
      description="Unique source identifier"
      required="True"
      verbLevel="1" />
    <column name="RA"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="e_RA"
      tablehead="e_RA"
      type="double precision"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="Error on Right Ascension"
      verbLevel="1" />
    <column name="Dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="e_Dec"
      tablehead="e_Dec"
      type="double precision"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="Error on Declination"
      verbLevel="1" />
    <column name="S_int"
      tablehead="S_int"
      type="double precision"
      ucd="phot.flux;em.radio.100-200MHz"
      unit="mJy"
      description="Integrated flux"
      verbLevel="1" />
    <column name="e_S_int"
      tablehead="e_S_int"
      type="double precision"
      ucd="stat.error;phot.flux;em.radio.100-200MHz"
      description="Error on integrated flux"
      verbLevel="1" />
    <column name="S_peak"
      tablehead="S_peak"
      type="double precision"
      ucd="phot.flux;em.radio.100-200MHz"
      unit="mJy"
      description="Peak flux"
      verbLevel="1" />
    <column name="e_S_peak"
      tablehead="e_S_peak"
      type="double precision"
      ucd="stat.error;phot.flux;em.radio.100-200MHz"
      description="Error on peak flux"
      verbLevel="1" />
    <column name="F_smear"
      tablehead="F_smear"
      type="real"
      ucd="arith.factor;phot.flux;em.radio.100-200MHz"
      description="Estimated correction to peak fluxes for bandwidth and time
      smearing"
      verbLevel="1" />
    <column name="rms"
      tablehead="rms"
      type="real"
      ucd="stat.stdev;phot.flux;em.radio.100-200MHz"
      unit="mJy"
      description="Local rms noise around the source"
      verbLevel="1" />
    <column name="NGaus"
      tablehead="NGaus"
      type="smallint"
      ucd="meta.number;stat.fit.param"
      description="Number of Gaussians fit to the source"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="F_resolved"
      tablehead="F_resolved"
      type="text"
      ucd="meta.code;meta.code.class"
      description="Flag: U=unresolved, R=resolved"
      verbLevel="1" />
  </table>
  <data id="import">
    <sources>
      <pattern>data/lofar_bootes.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          source_name:Source_name,
          RA:RA,
          e_RA:e_RA,
          Dec:DEC,
          e_Dec:e_DEC,
          S_int:S_int,
          e_S_int:e_S_int,
          S_peak:S_peak,
          e_S_peak:e_S_peak,
          F_smear:F_smear,
          rms:rms,
          NGaus:NGaus,
          F_resolved:F_resolved
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">LOFAR Boötes 150 MHz</meta>
    <meta name="shortName">LOFAR Bootes</meta>
    <meta name="testQuery">
      <meta name="ra">218.2</meta>
      <meta name="dec">34.173</meta>
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
