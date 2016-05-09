<resource schema="vipers_mls">
  <meta name="title">VIPERS Multi-λ Survey</meta>
  <meta name="creationDate">2016-05-02T18:11:22+0200</meta>
  <meta name="description">
    VIPERS Multi-Lambda Survey on W1 field.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">UV</meta>
    <meta name="waveband">Optical</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the W1 catalogue of the VIPERS Multi-Lambda Survey
    (VIPERS-MLS, PI: S. Arnouts) limited to HELP coverage.

    Full catalogues and documentation are available at
    http://cesam.lam.fr/vipers-mls/. In particular, users should first read the
    photometric procedure described in Moutard et al. 2016a and Moutard et al.
    2016b before using the catalogues.

    All the sources of the catalogue falls in the XMM-LSS field.

    Note that even if this catalogue is based on the CFHTLS T0007 release, it is
    a little different from the CFHTLS catalogues as Moutard et al. worked on
    the individual tile catalogues and merged them in a slightly different way
    compared to the CFHTLS release.

    History
    -------

    ======== =============================================================
    20160502 Catalogue retrieved from VIPERS-MLS site.
    ======== =============================================================

    RAW data
    --------

    You may also `download raw catalogues and MOC coverage`__.

    __ /vipers_mls/q/cone/static

    ]]> </meta>

  <meta name="source">2016arXiv160205915M</meta>

  <table id="w1" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="ident">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="ident"
      tablehead="Ident"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Source identifier"
      required="True"
      verbLevel="1" />
    <column name="tile_t0007"
      tablehead="Tile_T0007"
      type="text"
      ucd="meta.id;instr.plate"
      description="CFHTLS T0007 Tile"
      verbLevel="30" />
    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="CFHTLS T0007 Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="CHFTLS T0007 Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="fuv"
      tablehead="FUV"
      type="real"
      ucd="phot.mag;em.UV.100-200nm"
      unit="mag"
      description="FUV (GALEX) magnitude (based on EMphot total flux)"
      verbLevel="1" />
    <column name="nuv"
      tablehead="NUV"
      type="real"
      ucd="phot.mag;em.UV.200-300nm"
      unit="mag"
      description="NUV (GALEX) magnitude (based on EMphot total flux)"
      verbLevel="1" />
    <column name="u"
      tablehead="u"
      type="real"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="u (CFTHLS) magnitude (TOTAL = ISO + delta_m)"
      verbLevel="1" />
    <column name="g"
      tablehead="g"
      type="real"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="g (CFHTLS) magnitude (TOTAL = ISO + delta_m)"
      verbLevel="1" />
    <column name="r"
      tablehead="r"
      type="real"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="r (CFHTLS) magnitude (TOTAL = ISO + delta_m)"
      verbLevel="1" />
    <column name="i"
      tablehead="i"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="i (CFHTLS) magnitude (TOTAL = ISO + delta_m)"
      verbLevel="1" />
    <column name="y"
      tablehead="y"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="y (CFHTLS) magnitude (TOTAL = ISO + delta_m)"
      verbLevel="1" />
    <column name="z"
      tablehead="z"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="z (CFHTLS) magnitude (TOTAL = ISO + delta_m)"
      verbLevel="1" />
    <column name="ks"
      tablehead="Ks"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ls (WIRCam) magnitude (TOTAL = ISO + delta_m)"
      verbLevel="1" />
    <column name="err_fuv"
      tablehead="err_FUV"
      type="real"
      ucd="stat.error;phot.mag;em.UV.100-200nm"
      unit="mag"
      description="FUV magnitude error"
      verbLevel="30" />
    <column name="err_nuv"
      tablehead="err_NUV"
      type="real"
      ucd="stat.error;phot.mag;em.UV.200-300nm"
      unit="mag"
      description="NUV magnitude error"
      verbLevel="30" />
    <column name="err_u"
      tablehead="err_u"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="u magnitude error"
      verbLevel="30" />
    <column name="err_g"
      tablehead="err_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="g magnitude error"
      verbLevel="30" />
    <column name="err_r"
      tablehead="err_r"
      type="real"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="r magnitude error"
      verbLevel="30" />
    <column name="err_i"
      tablehead="err_i"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="i magnitude error"
      verbLevel="30" />
    <column name="err_y"
      tablehead="err_y"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="y magnitude error"
      verbLevel="30" />
    <column name="err_z"
      tablehead="err_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="z magnitude error"
      verbLevel="30" />
    <column name="err_ks"
      tablehead="err_Ks"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Ks magnitude error"
      verbLevel="30" />
    <column name="iband"
      tablehead="i-band"
      type="real"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="CFHTLS combined i-bands (i.e. i and y)"
      verbLevel="30" />
    <column name="err_iband"
      tablehead="err_i-bands"
      type="real"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="i-band magnitude error"
      verbLevel="30" />
    <column name="delta_m"
      tablehead="δm"
      type="double precision"
      ucd="arith.factor;stat.mean"
      description="Weighted mean rescaling factor (from ISO to AUTO pseudo-total
      fluxes; see Moutard et al. 2016a)"
      verbLevel="1" />
    <column name="r2"
      tablehead="r2"
      type="double precision"
      ucd="phys.angSize;src"
      unit="arcsec"
      description="Half-light radius (see T0007 doc)"
      verbLevel="1" />
    <column name="mu_max_i"
      tablehead="μ max (i-band)"
      type="real"
      ucd="phot.mag.sb;em.opt.I"
      unit="mag/arcsec^2"
      description="i-band maximum surface brightness"
      verbLevel="1" />
    <column name="flag_pls"
      tablehead="PLS flag"
      type="smallint"
      ucd="meta.code.class"
      description="Point-Like Source flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="flag_fake"
      tablehead="Fake detection flag"
      type="smallint"
      ucd="meta.code.qual"
      description="Potential fake object flag"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="context"
      tablehead="CONTEXT"
      type="real"
      ucd="meta.code"
      description="Selected bands for SED fitting (LePhare definition)"
      verbLevel="30" />
    <column name="nband_used"
      tablehead="NBAND_USED"
      type="smallint"
      ucd="meta.number"
      description="Number of bands used in SED fitting"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="chi_best"
      tablehead="CHI_BEST"
      type="double precision"
      ucd="stat.fit.chi2;meta.modelled"
      description="Minimum chi-square for the galaxy template library"
      verbLevel="30" />
    <column name="mod_best"
      tablehead="MOD_BEST"
      type="smallint"
      ucd="meta.id;meta.modelled"
      description="Best model from the galaxy template library"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="z_best"
      tablehead="Z_BEST"
      type="real"
      ucd="src.redshift.phot;meta.modelled"
      description="Redshift at minimum chi-square / maximum PDF(z)"
      verbLevel="30" />
    <column name="pdz_best"
      tablehead="PDZ_BEST"
      type="real"
      ucd="src.redshift;meta.modelled"
      description="Integrated PDF(z) in between Z_BEST ± 0.1(1+z): sharpness of
      the PDF"
      verbLevel="30" />
    <column name="z_sec"
      tablehead="Z_SEC"
      type="real"
      ucd="src.redshift.phot;meta.modelled"
      description="Redshift at the second significant PDF peak"
      verbLevel="10" />
    <column name="chi_star"
      tablehead="CHI_STAR"
      type="double precision"
      ucd="stat.fit.chi2;meta.modelled"
      description="Minimum chi-square for the STAR template library"
      verbLevel="30" />
    <column name="mod_star"
      tablehead="MOD_STAR"
      type="smallint"
      ucd="meta.id;meta.modelled"
      description="Best model from the STAR template library"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="chi_qso"
      tablehead="CHI_QSO"
      type="double precision"
      ucd="stat.fit.chi2;meta.modelled"
      description="Minimum chi-square for the QSO template library"
      verbLevel="30" />
    <column name="mod_qso"
      tablehead="MOD_QSO"
      type="smallint"
      ucd="meta.id;meta.modelled"
      description="Best model from the QSO template library"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="z_qso"
      tablehead="Z_QSO"
      type="real"
      ucd="src.redshift.phot;meta.modelled"
      unit=""
      description="Best redshift for the QSO"
      verbLevel="10" />
    <column name="class_ks"
      tablehead="NIR-base classification"
      type="smallint"
      ucd="meta.code.class;em.IR.K"
      description="Photometric classification flag based on optical and Ks
      observations"
      note="3"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="zphot"
      tablehead="ZPHOT"
      type="real"
      ucd="src.redshift.phot;meta.main"
      description="Most reliable photo-z based on marginalized PDFz (Z_ML in
      LePhare)"
      verbLevel="1" />
    <column name="zphot68_low"
      tablehead="ZPHOT_LOW"
      type="real"
      ucd="stat.error;stat.max;src.redshift.phot"
      description="ZPHOT lower error (delimiting the 32% of the PDFz bellow
      ZPHOT)"
      verbLevel="1" />
    <column name="zphot68_high"
      tablehead="ZPHOT_UP"
      type="real"
      ucd="stat.error;stat.max;src.redshift.phot"
      description="ZPHOT upper error (delimiting the 32% or the PDFz above
      ZPHOT)"
      verbLevel="1" />
    <column name="mask_opt"
      tablehead="Optical masking"
      type="smallint"
      ucd="meta.code.qual;em.opt"
      description="CHFTLenS masks: 0 - good object / 1 - bad object"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="mask_galex"
      tablehead="UV masking"
      type="smallint"
      ucd="meta.code.qual;em.UV"
      description="GALEX masks: 0 - outside / 1 - inside"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="layout_fuv"
      tablehead="FUV layout"
      type="smallint"
      ucd="meta.code.qual;em.UV.100-200nm"
      description="FUV observed region: 0 - inside (good object) / 1 - outside"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="layout_nuv"
      tablehead="NUV layout"
      type="smallint"
      ucd="meta.code.qual;em.UV.200-300nm"
      description="NUV observed region: 0 - inside (good object) / 1 - outside"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="layout_ks"
      tablehead="Ks layout"
      type="smallint"
      ucd="meta.code.qual;em.UV.200-300nm"
      description="WIRCam observed region: 0 - inside (good object)
      / 1 - outside"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <meta name="note" tag="1"><![CDATA[
      Point-Like Source flag:

      = ==============================================================
      0 Extended
      1 Point-like source in at least two detection bands OR saturated
      = ==============================================================
    ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      Potential fake object flag:

      = ===========
      0 Good object
      1 Fake object
      = ===========
    ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      Photometric classification flag based on optical & Ks observations:

      ===== ======
       0-9  Galaxy
      10-19 Star
      20-29 QSO
      ===== ======

      Ks from VIDEO (Jarvis et al. 2013) is used in W1 where WIRCam observations
      are missing.
      ]]></meta>
  </table>
  <data id="import">
    <sources>data/vipers_mls_w1_help.csv</sources>
    <csvGrammar />
    <make table="w1">
      <rowmaker idmaps="*">
        <simplemaps>
          chi_best:chi_best,
          chi_qso:chi_qso,
          chi_star:chi_star,
          class_ks:class_ks,
          context:context,
          dec:dec,
          delta_m:delta_mag,
          err_fuv:err_fuv,
          err_g:err_g,
          err_i:err_i,
          err_iband:err_iband,
          err_ks:err_ks,
          err_nuv:err_nuv,
          err_r:err_r,
          err_u:err_u,
          err_y:err_y,
          err_z:err_z,
          flag_fake:flag_fake,
          flag_pls:flag_pls,
          fuv:fuv,
          g:g,
          i:i,
          iband:iband,
          ident:ident,
          ks:ks,
          layout_fuv:layout_fuv,
          layout_ks:layout_ks,
          layout_nuv:layout_nuv,
          mask_galex:mask_galex,
          mask_opt:mask_opt,
          mod_best:mod_best,
          mod_qso:mod_qso,
          mod_star:mod_star,
          mu_max_i:mu_max_i,
          nband_used:nband_used,
          nuv:nuv,
          pdz_best:pdz_best,
          r:r,
          r2:r2,
          ra:ra,
          tile_t0007:tile_t0007,
          u:u,
          y:y,
          z:z,
          z_best:z_best,
          z_qso:z_qso,
          z_sec:z_sec,
          zphot:zphot,
          zphot68_high:zphot68_high,
          zphot68_low:zphot68_low
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">VIPERS multi-lambda survey</meta>
    <meta name="shortName">VIPERS-MLS</meta>
    <meta name="testQuery">
      <meta name="ra">35.1</meta>
      <meta name="dec">-4.528</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="w1">
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
