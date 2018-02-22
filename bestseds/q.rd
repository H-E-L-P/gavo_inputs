<resource schema="bestseds">

  <!-- At one time, switch to SSAP with views when there are a lot of spectra -->
  <!-- (http://docs.g-vo.org/DaCHS/tutorial.html#ssap-with-views). -->

  <meta name="title">Herschel Extragalactic Legacy Project (HELP) - Best fitting
    spectra</meta>
  <meta name="description">
    Best fitting spectra found by CIGALE for each HELP source
  </meta>
  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the best fitting spectra resulting from the analysis
    of some HELP sources with CIGALE_.

    ================ ==== =====================================================
    Column           Unit Description
    ================ ==== =====================================================
    WAVE or SPECTRAL nm   Wavelength
    FLUX             mJy  Flux density (Fν)
    LUMIN            W/nm Total luminosity
    STELLAR          W/nm Luminosity of the stellar component
    DUST             W/nm Luminosity of the dust component
    AGN              W/nm Luminosity of the AGN component
    IGM              W/nm Effect of the Inter-Galactic Medium on the luminosity
    ================ ==== =====================================================

    History
    -------
    ======== ==================================================================
    20170505 First version with preliminary COSMOS data.
    ======== ==================================================================

    .. _CIGALE: http://cigale.lam.fr

  ]]> </meta>

  <meta name="creationDate">2017-05-02</meta>
  <meta name="creator">Yannick Roehlly</meta>

  <meta name="subject">Galaxy</meta>
  <meta name="subject">Spectrum</meta>
  <meta name="subject">SED fitting</meta>

  <meta name="ssap.dataSource">artificial</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">UV, Optical, Infrared</meta>
  </meta>

  <table id="data" onDisk="true">
    <mixin
      fluxUnit="mJy"
      fluxUCD="phot.flux.density"
      spectralUnit="nm">//ssap#mixc</mixin>
    <column name="datalink" type="text"
      ucd="meta.ref.url;meta.data.datalink"
      tablehead="Datalink"
      description="A link to a datalink document for this spectrum."
      verbLevel="15" displayHint="type=url"/>
    <!-- TODO: Add all CIGALE outputs that we include in the database. -->
  </table>

  <table id="spectrum">
    <mixin ssaTable="data"
      fluxDescription="Total flux"
      spectralDescription="Wavelength"
      >//ssap#sdm-instance</mixin>
    <!-- TODO: Check that these columns correspond to the final outputs of
    CIGALE -->
    <column name="lumin"
      tablehead="lumin"
      type="real"
      ucd="phys.luminosity"
      unit="W/nm"
      description="Total luminosity density"/>
    <column name="stellar"
      tablehead="stellar"
      type="real"
      ucd="phys.luminosity"
      unit="W/nm"
      description="Stellar (not reddened) luminosity density"/>
    <column name="dust"
      tablehead="dust"
      type="real"
      ucd="phys.luminosity"
      unit="W/nm"
      description="Luminosity density of the dust component"/>
    <column name="agn"
      tablehead="agn"
      type="real"
      ucd="phys.luminosity"
      unit="W/nm"
      description="Luminosity density of the AGN"/>
    <column name="igm"
      tablehead="igm"
      type="real"
      ucd="phys.luminosity"
      unit="W/nm"
      description="Effect of the Inter-Galactic Medium on the observed
      luminosity (negative)"/>
  </table>

  <data id="import">
    <sources recurse="True">
      <pattern>data/*.fits</pattern>
    </sources>
    <fitsProdGrammar qnd="False" hdu="1" hdusField="HDUS">
      <maxHeaderBlocks>80</maxHeaderBlocks>
      <rowfilter procDef="//products#define">
        <bind name="table">"\schema.data"</bind>
        <bind name="mime">"application/fits"</bind>
        <bind name="preview">\inputRelativePath.replace(".fits", ".png")</bind>
        <bind name="preview_mime">"image/png"</bind>
      </rowfilter>
    </fitsProdGrammar>
    <make table="data">
      <rowmaker idmaps="ssa_*">

        <var name="specAx">@HDUS[1].data["WAVE"]</var>
        <var name="specLen">len(@HDUS[1].data["WAVE"])</var>

        <apply procDef="//ssap#setMeta">
          <bind name="dstitle">"%s Best CIGALE SED"%(@OBJECT)</bind>
          <bind name="pubDID">\standardPubDID</bind>
          <bind name="targname">@OBJECT</bind>
          <bind name="alpha">@RA_TARG</bind>
          <bind name="delta">@DEC_TARG</bind>
          <bind name="bandpass">"UV, Optical, IR"</bind>
          <bind name="length">@specLen</bind>
          <bind name="specstart">@specAx[0]*1.e-9</bind>
          <bind name="specend">@specAx[-1]*1.e-9</bind>
          <bind name="redshift">@REDSHIFT</bind>
        </apply>

        <apply procDef="//ssap#setMixcMeta">
          <bind name="collection">"HELP best spectra"</bind>
          <bind name="creationType">"archival"</bind>
          <bind name="dataSource">"artificial"</bind>
          <bind name="fluxCalib">"ABSOLUTE"</bind>
          <bind name="specCalib">"ABSOLUTE"</bind>
        </apply>

        <map name="datalink">\dlMetaURI{sdl}</map>
      </rowmaker>
    </make>
  </data>

  <data id="build_sdm_data" auto="False">
    <embeddedGrammar>
      <iterator>
        <setup>
          <code>
            from gavo.protocols import products
            from gavo.utils import pyfits
          </code>
        </setup>
        <code>

          fitsPath = products.RAccref.fromString(
          self.sourceToken["accref"]).localpath
          hdus = pyfits.open(fitsPath)

          for row in hdus[1].data:
              yield {
                  "spectral": row['WAVE'],
                  "flux": row['FLUX'],
                  "lumin": row['LUMIN'],
                  "stellar": row['STELLAR'],
                  "dust": row['dust'],
                  "agn": row['agn'],
                  "igm": row['igm']
              }
          hdus.close()
        </code>
      </iterator>
    </embeddedGrammar>
    <make table="spectrum">
      <parmaker>
        <apply procDef="//ssap#feedSSAToSDM"/>
      </parmaker>
    </make>
  </data>

  <service id="sdl" allowed="dlget,dlmeta">
    <meta name="title">HELP Best Spectra Datalink Service</meta>

    <datalinkCore>
      <descriptorGenerator procDef="//soda#sdm_genDesc">
        <bind name="ssaTD">"\rdId#data"</bind>
      </descriptorGenerator>
      <dataFunction procDef="//soda#sdm_genData">
        <bind name="builder">"\rdId#build_sdm_data"</bind>
      </dataFunction>
      <FEED source="//soda#sdm_plainfluxcalib"/>
      <FEED source="//soda#sdm_cutout"/>
      <FEED source="//soda#sdm_format"/>
    </datalinkCore>
  </service>

  <service id="web" defaultRenderer="form">
    <meta name="shortName">HELP Spectra web</meta>
    <meta name="title">HELP sources best fitting spectra from CIGALE.</meta>

    <dbCore queriedTable="data">
      <condDesc buildFrom="ssa_location"/>
      <condDesc buildFrom="ssa_redshift"/>
      <condDesc>
        <inputKey original="mime">
          <property name="defaultForForm">application/x-votable+xml</property>
          <values>
            <option title="SDM VOTable">application/x-votable+xml</option>
            <option title="FITS table">application/fits</option>
          </values>
        </inputKey>
      </condDesc>
    </dbCore>

    <outputTable>
      <autoCols>accref, mime, ssa_targname, datalink</autoCols>
      <FEED source="//ssap#atomicCoords"/>
      <outputField original="ssa_specstart" displayHint="displayUnit=nm"/>
      <outputField original="ssa_specend" displayHint="displayUnit=nm"/>
    </outputTable>
  </service>

  <service id="ssa" allowed="form,ssap.xml">
    <meta name="shortName">HELP Spectra SSAP</meta>
    <meta name="title">HELP sources best fitting spectra from CIGALE</meta>
    <meta name="ssap.dataSource">artificial</meta>
    <meta name="ssap.testQuery">MAXREC=1</meta>
    <meta name="ssap.creationType">archival</meta>
    <meta name="ssap.complianceLevel">query</meta>
    <publish render="ssap.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local" service="web"/>

    <property name="datalink">sdl</property>

    <ssapCore queriedTable="data">
      <FEED source="//ssap#hcd_condDescs"/>
    </ssapCore>
  </service>

</resource>
