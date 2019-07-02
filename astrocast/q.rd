<resource schema="astrocast">
  <meta name="title">Astrocast Prototyping</meta>
  <meta name="creationDate">20190626</meta>
  <meta name="description">
    Astrocast Prototype
  </meta>
  <meta name="creator.name">Andrew Bowell</meta>

  <meta name="source"></meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="Time">



    <index columns="Time" />
    <index columns="VCI" />
    <index columns="VCI3M" /> 
    <index columns="LocationKey" />

    <column name="Time"
      tablehead="Time"
      type="smallint"
      description="Julian Time since 01/01/2001"
      required="True"
      verbLevel="1" />
    <column name="VCI"
      tablehead="VCI"
      type="double precision"
      description="Weekly Vegetation Condition Index"
      required="True"
      verbLevel="1" />
    <column name="VCI3M"
      tablehead="VCI3M"
      type="double precision"
      description="3 Monthly Vegetation Condition Index"
      required="True"
      verbLevel="1" />
    <column name="LocationKey"
      tablehead="LocationKey"
      type="smallint"
      description="The Number Key relating to the location"
      required="True"
      verbLevel="1" />

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

</table>

</resource>

<!--
vim:et:sta:sw=2
-->