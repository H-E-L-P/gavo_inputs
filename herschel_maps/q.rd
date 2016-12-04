<resource schema="herschel_maps">
  <meta name="title">Herschel maps</meta>
  <meta name="creationDate">2016-12-02T12:25:24+0100</meta>
  <meta name="description">
    Image maps from the Herschel Space Observatory.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Infrared</meta>
  <meta name="subject">Herschel</meta>
  <meta name="subject">SPIRE</meta>
  <meta name="subject">PACS</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="facility">Herschel Space Observatory</meta>
  <meta name="instrument">SPIRE</meta>
  <meta name="instrument">PACS</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This ressource contains the Herschel maps from projects members of HELP.

    History
    -------

    ======== ============================================
    20161202 First ingestion of the maps
    ======== ============================================

    Data_access
    -----------

    - `Query for maps containing a given position`__.

    __ /herschel_maps/q/browse/form

    - `Make a cutout of maps at a given position`__.

    __ /herschel_maps/q/cutout/form

  ]]> </meta>

  <table id="main" onDisk="True">
    <mixin>//siap#pgs</mixin>
    <column name="field"
      tablehead="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP."
      verbLevel="1" />
    <column name="type"
      tablehead="Type"
      type="text"
      ucd="meta.code"
      description="Type of image: image, error, or exposure."
      verbLevel="1">
      <values>
        <option>image</option>
        <option>error</option>
        <option>exposure</option>
      </values>
    </column>
  </table>

  <data id="import">
    <sources recurse="True">
      <pattern>data/*.fits</pattern>
    </sources>

    <fitsProdGrammar qnd="True">
      <maxHeaderBlocks>80</maxHeaderBlocks>
      <mapKeys>
        <map key="field">HFIELD</map>
        <map key="type">HTYPE</map>
      </mapKeys>
      <rowfilter procDef="//products#define">
        <bind key="table">"herschel_maps"</bind>
        <bind key="accref">\inputRelativePath{True}</bind>
        <bind name="preview_mime">"image/png"</bind>
        <bind name="preview">\inputRelativePath.replace("data/",
          "data/previews/").replace(".fits", ".png")</bind>
      </rowfilter>
    </fitsProdGrammar>

    <make table="main">
      <rowmaker id="gen_rmk" idmaps="type, field">
        <apply procDef="//siap#computePGS"/>
        <apply procDef="//siap#setMeta">
          <bind name="title">@HTITLE</bind>
          <bind name="instrument">@INSTRUME</bind>
          <bind name="bandpassId">@HBAND</bind>
        </apply>
      </rowmaker>
    </make>
  </data>

  <dbCore id="imcore" queriedTable="main">
    <condDesc original="//siap#protoInput"/>
    <condDesc original="//siap#humanInput"/>
    <condDesc buildFrom="field" />
    <condDesc>
      <inputKey original="bandpassId">
        <values fromdb="bandpassId from herschel_maps.main order by bandpassId"
          multiOk="True" />
      </inputKey>
    </condDesc>
    <condDesc buildFrom="type" />
  </dbCore>

  <service id="browse" allowed="form" core="imcore">
    <meta name="shortName">Herschel_maps_simple</meta>
    <meta name="title">Herschel maps (simple)</meta>
    <outputTable autoCols="accref, accsize, imageTitle, field, bandpassId"/>
  </service>

  <service id="s" allowed="form,siap.xml" core="imcore">
    <meta name="shortName">Herschel_maps</meta>
    <meta name="title">Herschel maps</meta>
    <meta name="sia.type">Pointed</meta>
    <meta name="testQuery.pos.ra">163.3</meta>
    <meta name="testQuery.pos.dec">57.8</meta>
    <meta name="testQuery.size.ra">0.1</meta>
    <meta name="testQuery.size.dec">0.1</meta>
    <publish render="siap.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local" service="browse"/>
  </service>

  <siapCutoutCore id="cutout_core" queriedTable="main">
    <condDesc original="//siap#protoInput"/>
    <condDesc original="//siap#humanInput"/>
    <condDesc>
      <inputKey original="bandpassId">
        <values fromdb="bandpassId from herschel_maps.main order by bandpassId"
          multiOk="True" />
      </inputKey>
    </condDesc>
    <condDesc buildFrom="type" />
  </siapCutoutCore>

  <service id="cutout" core="cutout_core" allowed="form,siap.xml">
    <meta name="title">Herschel map cutouts</meta>
    <meta name="shortName">Herschel_cutout</meta>
    <inputKey name="cutoutSize" unit="deg">0.1</inputKey>
    <meta name="_related" title="Herschel map query">/herschel_maps/q/browse/form</meta>
    <publish render="form" sets="local,ivo_managed"/>
    <publish render="siap.xml" sets="ivo_managed"/>
    <meta name="sia.type">Cutout</meta>
    <meta name="testQuery.pos.ra">36</meta>
    <meta name="testQuery.pos.dec">-6</meta>
    <meta name="testQuery.size.ra">0.05</meta>
    <meta name="testQuery.size.dec">0.05</meta>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
