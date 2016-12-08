<resource schema="tycho2">
  <meta name="title">Tycho 2</meta>
  <meta name="creationDate">2016-05-02T12:29:39+02:00</meta>
  <meta name="description">
    Tycho-2 astrometric and photometric reference catalogue.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Stars</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the Tycho-2 catalogue downloaded from Vizier and
    limited to HELP coverage.

    The full documentation is available at:
    http://cdsarc.u-strasbg.fr/viz-bin/Cat?I/259 and
    http://www.astro.ku.dk/~erik/Tycho-2/

    We added a ``tycho_id`` column to identify uniquely each source by
    concatenating the TYC1, TYC2, and TYC3 numbers separated by a hyphen which
    is the recommended star designation.

    A ``field`` column was added containing the name of HELP field associated
    with each source to allow easy filtering. Here is the number of sources per
    field:

    +--------------------+-------+
    | Field              | Count |
    +====================+=======+
    | AKARI-NEP          |   491 |
    +--------------------+-------+
    | AKARI-SEP          |   394 |
    +--------------------+-------+
    | Bootes             |   299 |
    +--------------------+-------+
    | COSMOS             |   149 |
    +--------------------+-------+
    | EGS                |    97 |
    +--------------------+-------+
    | ELAIS-N1           |   551 |
    +--------------------+-------+
    | ELAIS-N2           |   378 |
    +--------------------+-------+
    | ELAIS-S1           |   251 |
    +--------------------+-------+
    | GAMA-09            | 2,764 |
    +--------------------+-------+
    | GAMA-12            | 1,313 |
    +--------------------+-------+
    | GAMA-15            | 1,507 |
    +--------------------+-------+
    | HDF-N              |    14 |
    +--------------------+-------+
    | Herschel-Stripe-82 | 9,275 |
    +--------------------+-------+
    | Lockman-SWIRE      |   660 |
    +--------------------+-------+
    | NGP                | 4,243 |
    +--------------------+-------+
    | SA13               |     8 |
    +--------------------+-------+
    | SGP                | 7,742 |
    +--------------------+-------+
    | SPIRE-NEP          |    35 |
    +--------------------+-------+
    | SSDF               | 3,684 |
    +--------------------+-------+
    | xFLS               |   326 |
    +--------------------+-------+
    | XMM-13hr           |    16 |
    +--------------------+-------+
    | XMM-LSS            |   563 |
    +--------------------+-------+

    History
    -------
    ======== =====================================
    20160502 Catalogue retrieved from Vizier.
    ======== =====================================

    RAW data
    --------

    You may also `download raw catalogues and MOC coverage`__.

    __ /tycho2/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="tycho_id">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "Dec"
    </stc>

    <index columns="field" />

    <column name="field"
      tablehead="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey"
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
    <column name="Dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="tycho_id"
      tablehead="Tycho ID"
      type="text"
      ucd="meta.id.main"
      description="Unique identifier"
      required="True"
      note="1"
      verbLevel="1" />
    <column name="TYC1"
      tablehead="TYC1"
      type="smallint"
      description="TYC1 from TYC or GSC"
      ucd="meta.id.part"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="TYC2"
      tablehead="TYC3"
      type="smallint"
      description="TYC2 from TYC or GSC"
      ucd="meta.id.part"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="TYC3"
      tablehead="TYC3"
      type="smallint"
      description="TYC3 from TYC or GSC"
      ucd="meta.id.part"
      note="1"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="pflag"
      tablehead="pflag"
      type="text"
      description="Mean position flag"
      ucd="meta.code"
      note="2"
      verbLevel="30" />
    <column name="RAmdeg"
      tablehead="RAmdeg"
      type="double precision"
      unit="deg"
      description="Mean Right Asc, ICRS, epoch=J2000"
      ucd="pos.eq.ra"
      note="3"
      verbLevel="30" />
    <column name="DEmdeg"
      tablehead="DEmdeg"
      type="double precision"
      unit="deg"
      description="Mean Decl, ICRS, epoch=J2000"
      ucd="pos.eq.dec"
      note="3"
      verbLevel="30" />
    <column name="pmRA"
      tablehead="pmRA"
      type="real"
      unit="marcsec/yr"
      description="proper motion in RA*cos(dec)"
      ucd="pos.pm;pos.eq.ra"
      note="12"
      verbLevel="1" />
    <column name="pmDE"
      tablehead="pmDE"
      type="real"
      unit="marcsec/yr"
      description="proper motion in Dec"
      ucd="pos.pm;pos.eq.dec"
      note="12"
      verbLevel="1" />
    <column name="e_RAmdeg"
      tablehead="e_RAmdeg"
      type="smallint"
      unit="marcsec"
      description="standard error on RA*cos(Dec),at mean epoch"
      ucd="stat.error"
      note="5"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="e_DEmdeg"
      tablehead="e_DEmdeg"
      type="smallint"
      unit="marcsec"
      description="standard error on Dec,at mean epoch"
      ucd="stat.error"
      note="5"
      verbLevel="30">
        <values nullLiteral="-99"/>
      </column>
      <column name="e_pmRA"
        tablehead="e_pmRA"
        type="real"
        unit="marcsec/yr"
        description="Standard error of proper motion in RA*cos(Dec)"
        ucd="stat.error"
        note="5"
        verbLevel="30" />
      <column name="e_pmDE"
        tablehead="e_pmDE"
        type="real"
        unit="marcsec/yr"
        description="Standard error of proper motion in Dec"
        ucd="stat.error"
        note="5"
        verbLevel="30" />
      <column name="EpRAm"
        tablehead="EpRAm"
        type="real"
        unit="yr"
        description="Mean epoch of RA"
        ucd="time.epoch"
        note="4"
        verbLevel="30" />
      <column name="EpDEm"
        tablehead="EpDEm"
        type="real"
        unit="yr"
        description="Mean epoch of Dec"
        ucd="time.epoch"
        note="4"
        verbLevel="30" />
      <column name="Num"
        tablehead="Num"
        type="smallint"
        description="Number of positions used"
        ucd="meta.id"
        verbLevel="30">
          <values nullLiteral="-99"/>
      </column>
      <column name="q_RAmdeg"
        tablehead="q_RAmdeg"
        type="real"
        description="Goodness of fit for mean RA"
        ucd="meta.code.qual"
        note="6"
        verbLevel="30" />
      <column name="q_DEmdeg"
        tablehead="q_DEmdeg"
        type="real"
        description="Goodness of fit for mean Dec"
        ucd="meta.code.qual"
        note="6"
        verbLevel="30" />
      <column name="q_pmRA"
        tablehead="q_pmRA"
        type="real"
        description="Goodness of fit for pmRA"
        ucd="meta.code.qual"
        note="6"
        verbLevel="30" />
      <column name="q_pmDE"
        tablehead="q_pmDE"
        type="real"
        description="Goodness of fit for pmDE"
        ucd="meta.code.qual"
        note="6"
        verbLevel="30" />
      <column name="BTmag"
        tablehead="BTmag"
        type="real"
        unit="mag"
        description="Tycho-2 BT magnitude"
        ucd="phot.mag;em.opt.B"
        note="7"
        verbLevel="1" />
      <column name="e_BTmag"
        tablehead="e_BTmag"
        type="real"
        unit="mag"
        description="Standard error of BTmag"
        ucd="stat.error"
        note="7"
        verbLevel="30" />
      <column name="VTmag"
        tablehead="VTmag"
        type="real"
        unit="mag"
        description="Tycho-2 VT magnitude"
        ucd="phot.mag;em.opt.V"
        note="7"
        verbLevel="1" />
      <column name="e_VTmag"
        tablehead="e_VTmag"
        type="real"
        unit="mag"
        description="Standard error of VTmag"
        ucd="stat.error"
        note="7"
        verbLevel="30" />
      <column name="prox"
        tablehead="prox"
        type="smallint"
        description="Proximity indicator"
        ucd="meta.code"
        note="8"
        verbLevel="30">
          <values nullLiteral="-99"/>
      </column>
      <column name="TYC"
        tablehead="TYC"
        type="text"
        description="Tycho-1 star"
        ucd="meta.code"
        note="9"
        verbLevel="30" />
      <column name="HIP"
        tablehead="HIP"
        type="integer"
        description="Hipparcos number"
        ucd="meta.id"
        verbLevel="30">
          <values nullLiteral="-99"/>
      </column>
      <column name="CCDM"
        tablehead="CCDM"
        type="text"
        description="CCDM component identifier for HIP stars"
        ucd="meta.code.multip"
        note="10"
        verbLevel="30" />
      <column name="RA"
        tablehead="RA (ICRS)"
        type="double precision"
        unit="deg"
        description="Observed Tycho-2 Right Ascension, ICRS"
        ucd="pos.eq.ra;meta.main"
        required="True"
        verbLevel="1" />
      <column name="Dec" tablehead="Dec (ICRS)"
        type="double precision"
        unit="deg"
        description="Observed Tycho-2 Declination, ICRS"
        ucd="pos.eq.dec;meta.main"
        required="True"
        verbLevel="1" />
      <column name="EpRA_1990"
        tablehead="EpRA_1990"
        type="real"
        unit="yr"
        description="Epoch-1990 of RA"
        ucd="time.epoch"
        verbLevel="30" />
      <column name="EpDE_1990"
        tablehead="EpDE_1990"
        type="real"
        unit="yr"
        description="Epoch-1990 of Dec"
        ucd="time.epoch"
        verbLevel="30" />
      <column name="e_RA"
        tablehead="e_RA"
        type="real"
        unit="marcsec"
        description="Standard error of RA*cos(dec), of observed Tycho-2 RA"
        ucd="stat.error"
        note="5"
        verbLevel="30" />
      <column name="e_Dec" tablehead="e_Dec"
        type="real"
        unit="marcsec"
        description="Standard error of observed Tycho-2 Dec"
        ucd="stat.error"
        note="5"
        verbLevel="30" />
      <column name="posflg"
        tablehead="posflg"
        type="text"
        description="Type of Tycho-2 solution"
        ucd="meta.id;stat.fit"
        note="11"
        verbLevel="30" />
      <column name="corr"
        tablehead="corr"
        type="real"
        description="Correlation (RA,Dec)"
        ucd="stat.correlation"
        verbLevel="30" />

    <meta name="note" tag="1"><![CDATA[
      The TYC identifier is constructed from the GSC region number (TYC1), the
      running number within the region (TYC2) and a component identifier (TYC3)
      which is normally 1. Some non-GSC running numbers were constructed for the
      first Tycho Catalogue and for Tycho-2. The recommended star designation
      contains a hyphen between the TYC numbers, e.g. TYC 1-13-1.

      This recommended star designation has been added by HELP in the tycho_id
      column.
    ]]></meta>
    <meta name="note" tag="2"><![CDATA[

      == ====================================================================
      '' Normal mean position and proper motion.
      P  The mean position, proper motion, etc., refer to the photocentre of
         two Tycho-2 entries, where the BT magnitudes were used in weighting
         the positions.
      X  No mean position, no proper motion.
      == ====================================================================
    ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      The mean position is a weighted mean for the catalogues contributing to
      the proper motion determination. This mean has then been brought to epoch
      2000.0 by the computed proper motion. See Note(2) above for details.
      Tycho-2 is one of the several catalogues used to determine the mean
      position and proper motion. The observed Tycho-2 position is given in the
      fields RA and Dec.
    ]]></meta>
    <meta name="note" tag="4"><![CDATA[
      The mean epochs are given in Julian years.
    ]]></meta>
    <meta name="note" tag="5"><![CDATA[
      The errors are based on error models.
    ]]></meta>
    <meta name="note" tag="6"><![CDATA[
       This goodness of fit is the ratio of the scatter-based and the
       model-based error. It is only defined when Num > 2. Values exceeding 9.9
       are truncated to 9.9.
    ]]></meta>
    <meta name="note" tag="7"><![CDATA[
      Blank when no magnitude is available. Either BTmag or VTmag is always
      given. Approximate Johnson photometry may be obtained as:
      V = VT -0.090*(BT-VT)
      B-V = 0.850*(BT-VT)
      Consult Sect 1.3 of Vol 1 of "The Hipparcos and Tycho Catalogues",
      ESA SP-1200, 1997, for details.
    ]]></meta>
    <meta name="note" tag="8"><![CDATA[
       Distance in units of 100 mas to the nearest entry in the Tycho-2 main
       catalogue or supplement. The distance is computed for the epoch 1991.25.
       A value of 999 (i.e. 99.9 arcsec) is given if the distance exceeds 99.9
       arcsec.
    ]]></meta>
    <meta name="note" tag="9"><![CDATA[
      == ========================================================================
      '' No Tycho-1 star was found within 0.8 arcsec (quality 1-8) or
         2.4 arcsec (quality 9).
      T  This is a Tycho-1 star. The Tycho-1 identifier is given in the beginning
         of the record. For Tycho-1 stars, resolved in Tycho-2 as a close pair,
         both components are flagged as a Tycho-1 star and the Tycho-1 TYC3 is
         assigned to the brightest (VT) component. The HIP-only stars given in
         Tycho-1 are not flagged as Tycho-1 stars.
      == ========================================================================
    ]]></meta>
    <meta name="note" tag="10"><![CDATA[
      The CCDM component identifiers for double or multiple Hipparcos stars
      contributing to this Tycho-2 entry. For photocentre solutions, all
      components within 0.8 arcsec contribute. For double star solutions any
      unresolved component within 0.8 arcsec contributes. For single star
      solutions, the predicted signal from close stars were normally subtracted
      in the analysis of the photon counts and such stars therefore do not
      contribute to the solution. The components are given in lexical order.
    ]]></meta>
    <meta name="note" tag="11"><![CDATA[
      == ========================================================================
      '' Normal treatment, close stars were subtracted when possible.
      D  Double star treatment. Two stars were found. The companion is normally
         included as a separate Tycho-2 entry, but may have been rejected.
      P  Photocentre treatment, close stars were not subtracted. This special
         treatment was applied to known or suspected doubles which were not
         successfully (or reliably) resolved in the Tycho-2 double star
         processing.
      == ========================================================================
    ]]></meta>
    <meta name="note" tag="12"><![CDATA[
      Some Hipparcos stars (having a positive number in the HIP column) have no
      proper motions; these are virtually all in multiple systems.
    ]]></meta>
  </table>
  <data id="import">
    <sources>data/tycho2_help.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          BTmag:BTmag,
          CCDM:CCDM,
          Dec:DEC,
          DEmdeg:DEmdeg,
          EpDE_1990:EpDE_1990,
          EpDEm:EpDEm,
          EpRA_1990:EpRA_1990,
          EpRAm:EpRAm,
          field:Field,
          HIP:HIP,
          Num:Num,
          RA:RA,
          RAmdeg:RAmdeg,
          TYC:TYC,
          TYC1:TYC1,
          TYC2:TYC2,
          TYC3:TYC3,
          VTmag:VTmag,
          corr:corr,
          e_BTmag:e_BTmag,
          e_Dec:e_DEdeg,
          e_DEmdeg:e_DEmdeg,
          e_RA:e_RAdeg,
          e_RAmdeg:e_RAmdeg,
          e_VTmag:e_VTmag,
          e_pmDE:e_pmDE,
          e_pmRA:e_pmRA,
          pflag:pflag,
          pmDE:pmDE,
          pmRA:pmRA,
          posflg:posflg,
          prox:prox,
          q_DEmdeg:q_DEmdeg,
          q_RAmdeg:q_RAmdeg,
          q_pmDE:q_pmDE,
          q_pmRA:q_pmRA,
          tycho_id:tycho_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">Tycho-2</meta>
    <meta name="shortName">Tycho-2</meta>
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
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
