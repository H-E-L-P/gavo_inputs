<resource schema="depth">
  <meta name="title">HELP depth values</meta>
  <meta name="creationDate">20161208</meta>
  <meta name="description">
    HELP depth values in various bands associated to HEALPix cells.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Depth</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the depth information for the HELP data. For each
    band (or equivalent, e.g. spectroscopic redsfhit) we store depth values
    (generally the limiting magnitude) associated with HEALPix cells identified
    by a HEALPix order and NPix. The HEALPix cells are expressed in equatorial
    coordinates (ICRS reference) and use the nested numbering scheme.

    History
    -------

    ======== ============================================
    20161208 Initial ingestion with test K depth data.
    ======== ============================================

  ]]> </meta>

  <table id="main" onDisk="True" adql="True">

    <index columns="band" />
    <index columns="healpix_order" />
    <index columns="depth" />

    <column name="band"
      tablehead="Band"
      type="text"
      ucd="instr.bandPass"
      description="Band or equivalent."
      required="True"
      verbLevel="1" />
    <column name="healpix_order"
      tablehead="HEALPix_Order"
      type="integer"
      ucd="meta.code"
      description="HEALPix order."
      required="True"
      verbLevel="1" />
    <column name="healpix_npix"
      tablehead="HEALPix_Npix"
      type="bigint"
      ucd="pos.healpix"
      description="HEALPix cell index."
      required="True"
      verbLevel="1" />
    <column name="depth"
      tablehead="Depth"
      type="double precision"
      ucd="meta.value"
      description="Depth value associated with the position (limiting magnitude
      or equivalent)."
      required="True"
      verbLevel="1" />
  </table>
  <data id="import">
    <sources>
      <pattern>data/*.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*" />
    </make>
  </data>

</resource>

<!--
vim:et:sta:sw=2
-->
