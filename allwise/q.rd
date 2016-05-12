<resource schema="allwise">
  <meta name="title">AllWISE</meta>
  <meta name="creationDate">2016-05-12T13:25:17+0200</meta>
  <meta name="description">AllWISE Data Release (Cutri+ 2013) limited to HELP
    coverage.</meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the AllWISE Data Release catalogue ( Cutri et al.,
    2003) that was downloaded from Vizier and limited to HELP coverage. Its full
    documentation is available there:
    http://cdsarc.u-strasbg.fr/viz-bin/Cat?II/328

    A `field` column was added containing the name of HELP field associated with
    each source to allow easy filtering. Here is the number of sources per
    field:

    =================== =========
    Field               Count
    =================== =========
    AKARI-NEP              184904
    AKARI-SEP              171262
    Bootes                 193391
    CDFS-SWIRE             226243
    COSMOS                  71599
    EGS                     61022
    ELAIS-N1               267600
    ELAIS-N2               150687
    ELAIS-S1               131674
    GAMA-09                947803
    GAMA-12                837136
    GAMA-15                988404
    HDF-N                   11179
    Herschel-Stripe-82    4851288
    Lockman-SWIRE          340512
    NGP                   2648932
    SA13                     3707
    SGP                   4321775
    SPIRE-NEP               11939
    SSDF                  1752467
    XMM-13hr                12299
    XMM-LSS                321009
    xFLS                   135507
    =================== =========

    If you need to identify a source, when crossmatching for instance, please
    use the AllWISE identifier.

    History
    -------

    ======== ============================================
    20160512 Catalogue retrieved from Vizier and ingested
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /allwise/q/cone/static


  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="allwise">
    <stc>
      Position ICRS Epoch J2000.0 "raj2000" "dej2000"
    </stc>

    <index columns="field" />

    <column name="field"
      tablehead="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey"
      required="True"
      verbLevel="1" />
    <column
      name="allwise"
      tablehead="AllWISE"
      type="text"
      description="WISE All-Sky Release Catalog name, based on J2000 position"
      ucd="meta.id;meta.main"
      required="True"
      verbLevel="1" />
    <column name="raj2000"
      tablehead="RAJ2000"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dej2000"
      tablehead="DEJ2000"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="eemaj"
      tablehead="eeMaj"
      type="double precision"
      unit="arcsec"
      description="Semi-major axis of the error ellipse"
      note="1"
      ucd="stat.error"
      verbLevel="30" />
    <column name="eemin"
      tablehead="eeMin"
      type="double precision"
      unit="arcsec"
      description="Semi-minor axis of the error ellipse"
      note="1"
      ucd="stat.error"
      verbLevel="30" />
    <column name="eepa"
      tablehead="eePA"
      type="real"
      unit="deg"
      description="Position angle of the error ellipse"
      ucd="pos.posAng;pos.errorEllipse"
      verbLevel="30" />
    <column name="w1mag"
      tablehead="W1mag"
      type="real"
      unit="mag"
      description="W1 magnitude (3.35um)"
      ucd="phot.mag;em.IR.3-4um"
      verbLevel="1" />
    <column name="e_w1mag"
      tablehead="e_W1mag"
      type="real"
      unit="mag"
      description="Mean error on W1 magnitude"
      ucd="stat.error;phot.mag;em.IR-3-4um"
      verbLevel="1" />
    <column name="w2mag"
      tablehead="W2mag"
      type="real"
      unit="mag"
      description="W2 magnitude (4.6um)"
      ucd="phot.mag;em.IR.4-8um"
      verbLevel="1" />
    <column name="e_w2mag"
      tablehead="e_W2mag"
      type="real"
      unit="mag"
      description="Mean error on W2 magnitude"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      verbLevel="1" />
    <column name="w3mag"
      tablehead="W3mag"
      type="real"
      unit="mag"
      description="W3 magnitude (11.6um)"
      ucd="phot.mag;em.IR.8-15um" verbLevel="1" />
    <column name="e_w3mag"
      tablehead="e_W3mag"
      type="real"
      unit="mag"
      description="Mean error on W3 magnitude"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      verbLevel="1" />
    <column name="w4mag"
      tablehead="W4mag"
      type="real"
      unit="mag"
      description="W4 magnitude (22.1um)"
      ucd="phot.mag;em.IR.15-30um"
      verbLevel="1" />
    <column name="e_w4mag"
      tablehead="e_W4mag"
      type="real"
      unit="mag"
      description="Mean error on W4 magnitude"
      ucd="stat.error;phot.mag;em.IR.15-30um"
      verbLevel="1" />
    <column name="jmag"
      tablehead="Jmag"
      type="real"
      unit="mag"
      description="2MASS J magnitude (1.25um)"
      ucd="phot.mag;em.IR.J"
      verbLevel="1" />
    <column name="e_jmag"
      tablehead="e_Jmag"
      type="real"
      unit="mag"
      description="Mean error on J magnitude"
      ucd="stat.error;phot.mag;em.IR.J"
      verbLevel="1" />
    <column name="hmag"
      tablehead="Hmag"
      type="real"
      unit="mag"
      description="2MASS H magnitude (1.65um)"
      ucd="phot.mag;em.IR.H"
      verbLevel="1" />
    <column name="e_hmag"
      tablehead="e_Hmag"
      type="real"
      unit="mag"
      description="Mean error on H magnitude"
      ucd="stat.error;phot.mag;em.IR.H"
      verbLevel="1" />
    <column name="kmag"
      tablehead="Kmag"
      type="real"
      unit="mag"
      description="2MASS Ks magnitude (2.17um)"
      ucd="phot.mag;em.IR.K"
      verbLevel="1" />
    <column name="e_kmag"
      tablehead="e_Kmag"
      type="real"
      unit="mag"
      description="Mean error on Ks magnitude"
      ucd="stat.error;phot.mag;em.IR.K"
      verbLevel="1" />
    <column name="wx"
      tablehead="wx"
      type="double precision"
      unit="pix"
      description="x-pixel coordinate on the Atlas Image"
      ucd="pos.cartesian.x;instr.det"
      verbLevel="30" />
    <column name="wy"
      tablehead="wy"
      type="double precision"
      unit="pix"
      description="y-pixel coordinate on the Atlas Image"
      ucd="pos.cartesian.y;instr.det"
      verbLevel="30" />
    <column name="id"
      tablehead="ID"
      type="bigint"
      description="Unique source ID"
      ucd="meta.id.part;meta.main"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="snr1"
      tablehead="snr1"
      type="double precision"
      description="Signal to noise ratio for W1 filter"
      ucd="stat.snr;phot.mag;em.IR-3-4um"
      verbLevel="30" />
    <column name="chi2w1"
      tablehead="chi2W1"
      type="real"
      description="Reduced chi-square of the W1 profile fit"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="snr2"
      tablehead="snr2"
      type="double precision"
      description="Signal to noise ratio for W2 filter"
      ucd="stat.snr;phot.mag;em.IR.4-8um"
      verbLevel="30" />
    <column name="chi2w2"
      tablehead="chi2W2"
      type="real"
      description="Reduced chi-square of the W2 profile fit"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="snr3"
      tablehead="snr3"
      type="double precision"
      description="Signal to noise ratio for W3 filter"
      ucd="stat.snr;phot.mag;em.IR.8-15um"
      verbLevel="30" />
    <column name="chi2w3"
      tablehead="chi2W3"
      type="real"
      description="Reduced chi-square of the W3 profile fit"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="snr4"
      tablehead="snr4"
      type="double precision"
      description="Signal to noise ratio for W4 filter"
      ucd="stat.error;phot.mag;em.IR.15-30um"
      verbLevel="30" />
    <column name="chi2w4"
      tablehead="chi2W4"
      type="real"
      description="Reduced chi-square of the W4 profile fit"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="chi2"
      tablehead="chi2"
      type="real"
      description="All-band combined reduced chi-square"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="nb"
      tablehead="nb"
      type="smallint"
      description="Number of PSF components [1-4] used simultaneously in the
      profile-fitting"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="na"
      tablehead="na"
      type="smallint"
      description="Active deblending flag (1 if a detection was split into
      multiple sources)"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="sat1"
      tablehead="sat1"
      type="real"
      description="Saturated pixel fraction in W1"
      ucd="instr.saturation;em.IR.3-4um"
      verbLevel="30" />
    <column name="sat2"
      tablehead="sat2"
      type="real"
      description="Saturated pixel fraction in W2"
      ucd="instr.saturation;em.IR.4-8um"
      verbLevel="30" />
    <column name="sat3"
      tablehead="sat3"
      type="real"
      description="Saturated pixel fraction in W3"
      ucd="instr.saturation;em.IR.8-15um"
      verbLevel="30" />
    <column name="sat4"
      tablehead="sat4"
      type="real"
      description="Saturated pixel fraction in W4"
      ucd="instr.saturation;em.IR.15-30um" verbLevel="30" />
    <column name="ccf"
      tablehead="ccf"
      type="text"
      description="Contamination and confusion flag, one per band"
      note="2"
      ucd="meta.code"
      verbLevel="1" />
    <column name="ex"
      tablehead="ex" type="smallint"
      description="Extended source flag"
      note="3"
      ucd="meta.code"
      verbLevel="1">
        <values nullLiteral="-9" />
    </column>
    <column name="var"
      tablehead="var"
      type="text"
      description="Variability flag, one per band"
      note="4"
      ucd="meta.code;src.var"
      verbLevel="1" />
    <column name="nw1"
      tablehead="nW1"
      type="smallint"
      description="Frame detection count in W1 (w1nm)"
      note="5"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="mw1"
      tablehead="mW1"
      type="smallint"
      description="Integer frame coverage in W1"
      note="6"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="nw2"
      tablehead="nW2"
      type="smallint"
      description="Frame detection count in W2"
      note="5"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="mw2"
      tablehead="mW2"
      type="smallint"
      description="Integer frame coverage in W2"
      note="6"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="nw3"
      tablehead="nW3"
      type="smallint"
      description="Frame detection count in W3"
      note="5"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="mw3"
      tablehead="mW3"
      type="smallint"
      description="Integer frame coverage in W3"
      note="6"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="nw4"
      tablehead="nW4"
      type="smallint"
      description="Frame detection count in W4"
      note="5"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="mw4"
      tablehead="mW4"
      type="smallint"
      description="Integer frame coverage in W4"
      ucd="meta.number"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="satnum"
      tablehead="satnum"
      type="smallint"
      description="Minimum sample at which saturation occurs in each band"
      ucd="instr.saturation"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="ra_pm"
      tablehead="RA_pm"
      type="double precision"
      unit="deg"
      description="Right ascension at epoch MJD=55400.0 (2010.5589) from the
      profile-fitting measurement model that includes motion."
      ucd="pos.eq.ra"
      verbLevel="30" />
    <column name="e_ra_pm"
      tablehead="e_RA_pm"
      type="double precision"
      unit="arcsec"
      description="error on RA_pm"
      ucd="stat.error;pos.eq.ra"
      verbLevel="30" />
    <column name="de_pm"
      tablehead="DE_pm"
      type="double precision"
      unit="deg"
      description="Declination at epoch MJD=55400.0 (2010.5589) from the
      profile-fitting measurement model that includes motion."
      ucd="pos.eq.dec"
      verbLevel="30" />
    <column name="e_de_pm"
      tablehead="e_DE_pm"
      type="double precision"
      unit="arcsec"
      description="error on DE_pm"
      ucd="stat.error;pos.eq.dec"
      verbLevel="30" />
    <column name="cosig_pm"
      tablehead="cosig_pm"
      type="double precision"
      unit="arcsec"
      description="co-sigma of the equatorial position uncertainties"
      ucd="pos.posAng"
      verbLevel="30" />
    <column name="pmra"
      tablehead="pmRA"
      type="integer"
      unit="marcsec/yr"
      description="Proper motion in RA"
      ucd="pos.pm;pos.eq.ra"
      verbLevel="1">
        <values nullLiteral="-9999" />
    </column>
    <column name="e_pmra"
      tablehead="e_pmRA"
      type="integer"
      unit="marcsec/yr"
      description="Mean error on pmRA"
      ucd="stat.error;pos.pm;pos.eq.ra"
      verbLevel="1">
        <values nullLiteral="-99" />
    </column>
    <column name="pmde"
      tablehead="pmDE"
      type="integer"
      unit="marcsec/yr"
      description="Proper motion in DE"
      ucd="pos.pm;pos.eq.dec"
      verbLevel="1">
        <values nullLiteral="-9999" />
    </column>
    <column name="e_pmde"
      tablehead="e_pmDE"
      type="integer"
      unit="marcsec/yr"
      description="Mean error on pmDE"
      ucd="stat.error;pos.pm;pos.eq.dec"
      verbLevel="1">
        <values nullLiteral="-9999" />
    </column>
    <column name="chi2w1_pm"
      tablehead="chi2W1_pm"
      type="real"
      description="? Reduced chi-square of the W1 profile fit including motion
      estimation"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="chi2w2_pm"
      tablehead="chi2W2_pm"
      type="real"
      description="Reduced chi-square of the W2 profile fit including motion
      estimation"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="chi2w3_pm"
      tablehead="chi2W3_pm"
      type="real"
      description="Reduced chi-square of the W3 profile fit including motion
      estimation"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="chi2w4_pm"
      tablehead="chi2W4_pm"
      type="real"
      description="Reduced chi-square of the W4 profile fit including motion
      estimation"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="chi2pm"
      tablehead="chi2pm"
      type="real"
      description="Combined reduced chi-square profile fit including motion
      estimation"
      ucd="stat.fit.chi2"
      verbLevel="30" />
    <column name="qpm"
      tablehead="qpm"
      type="text"
      description="Motion estimation quality"
      note="7"
      ucd="meta.code.qual"
      verbLevel="30" />
    <column name="qph"
      tablehead="qph"
      type="text"
      description="Photometric quality flag"
      note="8"
      ucd="meta.code.qual;phot"
      verbLevel="1" />
    <column name="fdet"
      tablehead="fdet"
      type="smallint"
      description="Bit-encoded integer indicating bands in which a source has
      a w?snr>2 detection"
      ucd="meta.code"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="fmoon"
      tablehead="fmoon"
      type="smallint"
      description="Scattered moonlight contamination flag"
      ucd="meta.code"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="covw1"
      tablehead="covW1"
      type="double precision"
      description="Mean pixel coverage in W1"
      ucd="src.sample;stat.mean"
      verbLevel="30" />
    <column name="covw2"
      tablehead="covW2"
      type="double precision"
      description="Mean pixel coverage in W2"
      ucd="src.sample;stat.mean"
      verbLevel="30" />
    <column name="covw3"
      tablehead="covW3"
      type="double precision"
      description="Mean pixel coverage in W3"
      ucd="src.sample;stat.mean"
      verbLevel="30" />
    <column name="covw4"
      tablehead="covW4"
      type="double precision"
      description="Mean pixel coverage in W4"
      ucd="src.sample;stat.mean"
      verbLevel="30" />
    <column name="twomkey"
      tablehead="2Mkey"
      type="bigint"
      description="2MASS PSC association (not identification)"
      ucd="meta.id.assoc"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="d2m"
      tablehead="d2M"
      type="real"
      unit="arcsec"
      description="Distance separating the positions of the WISE source and
      associated 2MASS PSC source"
      ucd="pos;arith.diff"
      verbLevel="1" />
    <meta name="note" tag="1" format="rst"><![CDATA[
      The parameters of the error ellipse are computed from the 1-σ in RA and Dec
      (sigra, sigdec) and the co-σ sigradec with the formulae:


      ========= ========================================
      Δ         = (sigra2-sigdec2)2 + 4*sigradec2
      eeMaj2    = 0.5*(sigra2+sigdec2+sqrt(Δ))
      eeMin2    = 0.5*(sigra2+sigdec2-sqrt(Δ))
      tan(eePA) = (eeMaj2-sigdec2)/(sigradec*|sigradec|)

                = (sigradec*|sigradec|)/(eeMaj2-sigra2)
      ========= ========================================

      Conversely, the sigra/sigdec are given by:

      ======= ======================================
      sigra2  = eeMaj2sin2(eePA) + eeMin2cos2(eePA)
      sigdec2 = eeMaj2cos2(eePA) + eeMin2sin2(eePA)
      ======= ======================================

      ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      One character per band (W1/W2/W3/W4) that indicates that the photometry
      and/or position measurements of a source may be contaminated or biased due
      to proximity to an image artifact:

      === ======================================================================
      D,d Diffraction spike. Source may be a spurious detection of or
          contaminated by a diffraction spike from a nearby bright star on the
          same image
      P,p Persistence. Source may be a spurious detection of or contaminated by
          a latent image left by a bright star
      H,h Halo. Source photometry may be a spurious detection of or contaminated
          by the scattered light halo surrounding a nearby bright source
      O,o (letter "o") Optical ghost. Source may be a spurious detection of or
          contaminated by an optical ghost image caused by a nearby bright
          source
      0   (number zero) Source is unaffected by known artifacts.
      === ======================================================================

      ]]> </meta>
    <meta name="note" tag="3"><![CDATA[
      Extended source flag:

      == =======================================================================
      0  The source shape is consistent with a point-source and the source is
         not associated with or superimposed on a 2MASS XSC source.
      1  The profile-fit photometry goodness-of-fit, w?rchi2, is >3.0 in one or
         more bands.
      2  The source falls within the extrapolated isophotal footprint of a 2MASS
         XSC source.
      3  The profile-fit photometry goodness-of-fit, w?rchi2, is >3.0 in one or
         more bands, and The source falls within the extrapolated isophotal
         footprint of a 2MASS XSC source.
      4  The source position falls within 5" of a 2MASS XSC source.
      5+ The profile-fit photometry goodness-of-fit, w?rchi2, is >3.0 in one or
         more bands, and the source position falls within 5" of a 2MASS XSC
         source.
      == =======================================================================

      ]]> </meta>
    <meta name="note" tag="4"><![CDATA[
        The variability flag is a 4-character string, one character per band,
        containing a value related to the probability that the source flux
        measured on the individual WISE exposures is variable.

        === ====================================================================
         n  indicates insufficient or inadequate data to make a determination
            (<6 exposures)
        0-9 indicate increasing probabilities of variation:
        0-5 are most likely not variable
        6-7 are likely variables (but susceptible of false-positive
            variability)
         >7 have the highest probability of being true variables
        === ====================================================================

      ]]> </meta>
    <meta name="note" tag="5"><![CDATA[
        Integer frame detection count. This column gives the number of
        individual 7.7s exposures on which this source was detected with SNR>3
        in the W1 profile-fit measurement. This number can be zero for sources
        that are well-detected on the coadded Atlas Image, but too faint for
        detection on the single exposures.
      ]]> </meta>
    <meta name="note" tag="6"><![CDATA[
        Number of individual 7.7s W1 exposures on which a profile-fit
        measurement of this source was possible. This number can differ between
        the four bands because band-dependent criteria are used to select
        individual frames for inclusion in the coadded Atlas Images. This column
        is null if there is no frame coverage in this band at the position of
        this source.
      ]]> </meta>
    <meta name="note" tag="7"><![CDATA[
        Five character string that encodes information about factors that impact
        the accuracy of the motion estimation. These include the original blend
        count, whether a blend-swap took place, and the distance in hundredths
        of an arcsecond between the non-motion position and the motion
        mean-observation-epoch position. The format is NQDDD where N is the
        original blend count, Q is either "Y" or "N" for "yes" or "no"
        a blend-swap occurred (i.e., the original primary component was not the
        final primary component), and DDD is the radial distance between the
        non-motion and motion at mean-observation epoch positions in units of
        0.01 arcsec, clipped at 999 (almost 10 arcsec).
      ]]> </meta>
    <meta name="note" tag="8"><![CDATA[
        Four character flag, one character per band [W1/W2/W3/W4], that provides
        a shorthand summary of the quality of the profile-fit photometry
        measurement in each band, as derived from the measurement
        signal-to-noise ratio:

        = ======================================================================
        A Source is detected in this band with a flux signal-to-noise ratio
          w?snr>10.
        B Source is detected in this band with a flux signal-to-noise ratio
          3<w?snr<10.
        C Source is detected in this band with a flux signal-to-noise ratio
          2<w?snr<3.
        U Upper limit on magnitude. Source measurement has w?snr<2. The
          profile-fit magnitude w?mpro is a 95% confidence upper limit.
        X A profile-fit measurement was not possible at this location in this
          band. The value of w?mpro and w?sigmpro will be "null" in this band.
        Z A profile-fit source flux measurement was made at this location, but
          the flux uncertainty could not be measured. The value of w?sigmpro
          will be "null" in this band. The value of w?mpro will be "null" if the
          measured flux, w?flux, is negative, but will not be "null" if the flux
          is positive. If a non-null magnitude is present, it corresponds to the
          true flux, and not the 95% confidence upper limit. This occurs for
          a small number of sources found in a narrow range of ecliptic
          longitude which were covered by a large number of saturated pixels
          from 3-Band Cryo single-exposures.
        = ======================================================================

      ]]> </meta>
  </table>
  <data id="import">
    <sources>data/allwise_help.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          twomkey:_2Mkey,
          chi2w3_pm:chi2W3_pm,
          eepa:eePA,
          e_w1mag:e_W1mag,
          chi2pm:chi2pm,
          snr4:snr4,
          snr3:snr3,
          e_pmde:e_pmDE,
          snr2:snr2,
          snr1:snr1,
          wy:wy,
          wx:wx,
          satnum:satnum,
          de_pm:DE_pm,
          kmag:Kmag,
          e_hmag:e_Hmag,
          ccf:ccf,
          raj2000:RAJ2000,
          w1mag:W1mag,
          e_w2mag:e_W2mag,
          chi2:chi2,
          e_w4mag:e_W4mag,
          e_jmag:e_Jmag,
          pmde:pmDE,
          ra_pm:RA_pm,
          chi2w1_pm:chi2W1_pm,
          id:ID,
          cosig_pm:cosig_pm,
          hmag:Hmag,
          qpm:qpm,
          pmra:pmRA,
          chi2w2:chi2W2,
          chi2w2_pm:chi2W2_pm,
          qph:qph,
          chi2w1:chi2W1,
          chi2w4:chi2W4,
          chi2w3:chi2W3,
          w2mag:W2mag,
          var:var,
          chi2w4_pm:chi2W4_pm,
          e_pmra:e_pmRA,
          e_ra_pm:e_RA_pm,
          w4mag:W4mag,
          dej2000:DEJ2000,
          mw2:mW2,
          allwise:AllWISE,
          ex:ex,
          mw3:mW3,
          mw4:mW4,
          jmag:Jmag,
          fdet:fdet,
          w3mag:W3mag,
          fmoon:fmoon,
          e_w3mag:e_W3mag,
          covw1:covW1,
          covw2:covW2,
          covw3:covW3,
          eemaj:eeMaj,
          mw1:mW1,
          covw4:covW4,
          d2m:d2M,
          sat4:sat4,
          e_de_pm:e_DE_pm,
          sat2:sat2,
          na:na,
          sat3:sat3,
          nb:nb,
          sat1:sat1,
          eemin:eeMin,
          e_kmag:e_Kmag,
          nw1:nW1,
          nw2:nW2,
          nw3:nW3,
          nw4:nW4,
          field:Field
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">AllWISE Data Release</meta>
    <meta name="shortName">AllWISE</meta>
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
      <condDesc buildFrom="allwise" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
