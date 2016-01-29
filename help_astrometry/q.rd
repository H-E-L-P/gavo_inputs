<resource schema="help_astrometry">
  <meta name="title">HELP astrometric reference catalogues</meta>
  <meta name="creationDate">2016-01-21T16:32:51+0100</meta>
  <meta name="description">
    2MASS, COSMOS-VLA, and SDSS catalogues to be used as astrometric references
    for HELP data products.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the various catalogues that are used within HELP as
    astrometric references. The reference to be used depends on the field:

        * COSMOS-VLA for COSMOS
        * SDSS for GAMA-09, GAMA-12, GAMA-15, and Herschel-Stripe-82
        * 2MASS for the other fields.

    Nevertheless, 2MASS and SDSS catalogues were extracted on all HELP coverage.

    COSMOS-VLA data
    ---------------

    The COSMOS-VLA catalogue was adapted from the catalogue provided by work
    package 2. It's readme is available at
    http://hedam.lam.fr/HELP/data/P1/WP2/COSMOS/WP2-COSMOS-VLA-v1.readme

    2MASS data
    ----------

    The 2MASS data was extracted on all HELP fields using Aladin MOC search
    functionality with the whole HELP coverage MOC (v0.9). The 2MASS catalogue
    documentation is available there:
    http://cdsarc.u-strasbg.fr/viz-bin/Cat?II/246

    A ``Field`` column was added containing the name of HELP field associated with
    each source to allow easy filtering. Here is the number of of sources per
    field:

    +--------------------+---------+
    | Field              | Count   |
    +====================+=========+
    | AKARI-NEP          |  32,491 |
    +--------------------+---------+
    | AKARI-SEP          |  20,739 |
    +--------------------+---------+
    | Bootes             |  17,953 |
    +--------------------+---------+
    | CDFS-SWIRE         |  21,132 |
    +--------------------+---------+
    | COSMOS             |   9,273 |
    +--------------------+---------+
    | EGS                |   5,226 |
    +--------------------+---------+
    | ELAIS-N1           |  29,958 |
    +--------------------+---------+
    | ELAIS-N2           |  23,751 |
    +--------------------+---------+
    | ELAIS-S1           |  14,190 |
    +--------------------+---------+
    | GAMA-09            | 192,994 |
    +--------------------+---------+
    | GAMA-12            |  98,490 |
    +--------------------+---------+
    | GAMA-15            | 128,992 |
    +--------------------+---------+
    | HDF-N              |     910 |
    +--------------------+---------+
    | Herschel-Stripe-82 | 590,090 |
    +--------------------+---------+
    | Lockman-SWIRE      |  34,313 |
    +--------------------+---------+
    | NGP                | 234,956 |
    +--------------------+---------+
    | SA13               |     355 |
    +--------------------+---------+
    | SGP                | 463,231 |
    +--------------------+---------+
    | SPIRE-NEP          |   1,741 |
    +--------------------+---------+
    | SSDF               | 211,459 |
    +--------------------+---------+
    | xFLS               |  21,355 |
    +--------------------+---------+
    | XMM-13hr           |   1,311 |
    +--------------------+---------+
    | XMM-LSS            |  35,043 |
    +--------------------+---------+

    SDSS data
    ---------

    The SDSS data was extracted from Vizier SDSS9 catalogue and matched against
    HELP MOC (v0.9) coverage. The documentation is available there:
    http://cdsarc.u-strasbg.fr/viz-bin/Cat?II/306

    A ``Field`` column was added containing the name of HELP field associated
    with each source to allow easy filtering. Also, an ``internal_idx`` column
    was added containing a unique identifier for each source; this was done
    because 2 different SDSS object may share the same SDSS9 name. If you need
    to refer to a row in the SDSS catalogue (e.g. when crossmatching) please use
    the internal index. Here is the number of sources per field:

    +--------------------+------------+
    | Field              | Count      |
    +====================+============+
    | AKARI-NEP          |      1,253 |
    +--------------------+------------+
    | Bootes             |    468,234 |
    +--------------------+------------+
    | COSMOS             |    191,484 |
    +--------------------+------------+
    | EGS                |     86,524 |
    +--------------------+------------+
    | ELAIS-N1           |    503,675 |
    +--------------------+------------+
    | ELAIS-N2           |    493,467 |
    +--------------------+------------+
    | GAMA-09            |  4,323,069 |
    +--------------------+------------+
    | GAMA-12            |  3,097,901 |
    +--------------------+------------+
    | GAMA-15            |  2,924,900 |
    +--------------------+------------+
    | HDF-N              |     31,172 |
    +--------------------+------------+
    | Herschel-Stripe-82 | 53,160,632 |
    +--------------------+------------+
    | Lockman-SWIRE      |  1,042,407 |
    +--------------------+------------+
    | NGP                |  5,113,268 |
    +--------------------+------------+
    | SA13               |      5,893 |
    +--------------------+------------+
    | xFLS               |    276,251 |
    +--------------------+------------+
    | XMM-13hr           |     33,765 |
    +--------------------+------------+
    | XMM-LSS            |    639,200 |
    +--------------------+------------+


  ]]></meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="twomass_astref" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="ID2MASS">
    <stc>
      Position ICRS Epoch J2000.0 "RAJ2000" "DEJ2000"
    </stc>

    <index columns="Field" />

    <column name="Field" type="text" ucd="meta.id;obs.field"
        description="Name of the field in HELP survey" />
    <column name="ID2MASS" type="text" ucd="meta.id;meta.main"
        description="Source designation" required="True" note="1"/>
    <column name="RAJ2000" type="double precision" ucd="pos.eq.ra;meta.main"
        unit="deg" description="Right Ascension (J2000)" required="True"/>
    <column name="DEJ2000" type="double precision" ucd="pos.eq.dec;meta.main"
        unit="deg" description="Declination (J2000)" required="True"/>
    <column name="errMaj" type="double precision" ucd="stat.error"
        unit="arcsec" description="Semi-major axis of position error ellipse"/>
    <column name="errMin" type="double precision" ucd="stat.error"
        unit="arcsec" description="Semi-minor axis of position error ellipse"/>
    <column name="errPA" type="integer" ucd="stat.error" unit="deg"
      description="Position angle of error ellipse major axis (E of N)">
      <values nullLiteral="-9999" />
    </column>
    <column name="Jmag" type="double precision" ucd="phot.mag;em.IR.J"
        unit="mag" description="J selected default magnitude" note="2"/>
    <column name="e_Jmag" type="double precision"
        ucd="stat.error;phot.mag;em.IR.J" unit="mag" description="J total
        magnitude uncertainty" note="3"/>
    <column name="Hmag" type="double precision" ucd="phot.mag;em.IR.H"
        unit="mag" description="H selected default magnitude" note="2"/>
    <column name="e_Hmag" type="double precision"
        ucd="stat.error;phot.mag;em.IR.H" unit="mag" description="H total
        magnitude uncertainty" note="3"/>
    <column name="Kmag" type="double precision" ucd="phot.mag;em.IR.K"
        unit="mag" description="K selected default magnitude" note="2"/>
    <column name="e_Kmag" type="double precision"
        ucd="stat.error;phot.mag;em.IR.K" unit="mag" description="K total
        :magnitude uncertainty" note="3"/>
    <column name="Qflg" type="text" ucd="meta.code.qual;phot" description="JHK
        Photometric quality flag" note="4"/>
    <column name="Rflg" type="text" ucd="meta.ref" description="Source of JHK
        default mag" note="5"/>
    <column name="Xflg" type="smallint" ucd="meta.code"
      description="Extended source contamination" note="6">
      <values nullLiteral="-9999" />
    </column>

    <meta name="note" tag="1">
        Sexagesimal, equatorial position-based source name in the form:
        hhmmssss+ddmmsss[ABC...].  The full naming convention for 2MASS All-Sky
        Release PSC sources has the form "2MASS Jhhmmssss+ddmmsss[ABC...]",
        where "2MASS" indicates that the source is from the All-Sky PSC, "J"
        indicates the position is J2000, and the optional trailing letters are
        used to distinguish sources with otherwise duplicate names. The "2MASS
        J" prefix is not listed explicitly in the designation column.
    </meta>
    <meta name="note" tag="2">
        This is the selected "default" magnitude for each band, [JHK]. If the
        source is not detected in the band, this is the 95% confidence upper
        limit derived from a 4" radius aperture measurement taken at the
        position of the source on the Atlas Image. The origin of the default
        magnitude is given by the first character of the Rflg value (Rflg). This
        column is null if the source is nominally detected in the band, but no
        useful brightness estimate could be made (Rflg="9").  Red values
        correspond to upper limits or very poor qualities (see the Qflg or Rflg
        columns).
    </meta>
    <meta name="note" tag="3">
        Combined, or total photometric uncertainty [JHK]msigcom for the default
        magnitude in that band. The combined uncertainty is derived from the
        following relation:

        e_[JHK]mag = sqrt([JHK]cmsig2 + [JHK]zperr2 + fferr2 + [r1normrms2])

        where

        ========= ============================================================
        cmsig     Corrected band photometric uncertainty
        zperr     Nightly photometric zero point uncertainty = 0.011 mag
        fferr     Flat-fielding residual error = 0.005 mags
        r1normrms R1 normalization uncertainty = 0.012 mags (applied only for
                  sources with Rflg="1")
        ========= ============================================================

        This column is null if the default magnitude is a 95% confidence upper
        limit (i.e. the source is not detected, or inconsistently deblended in the band).
    </meta>
    <meta name="note" tag="4"><![CDATA[
        Three character flag, one character per band [JHK], that provides
        a summary of the net quality of the default photometry in each band, as
        derived from the Read Flag (Rflg), measurement uncertainties
        ([jhk]cmsig), scan signal-to-noise ratios ([jhk]snr), frame-detection
        statistics (Ndet), and profile-fit reduced chi-squared values
        ([jhk]psfchi). The value for Qflg is set for a band according to the
        precedence of the table below. For example, a source that is tested and
        meets the conditions for category "X" is not tested for subsequent
        qualities.  X = 	There is a detection at this location, but no valid
        brightness estimate can be extracted using any algorithm. Rflg="9" and
        default magnitude is null.


        U = Upper limit on magnitude. Source is not detected in this band
        (Rflg="0"), or it is detected, but not resolved in a consistent fashion
        with other bands (Rflg="6"). A value of Qflg="U" does not necessarily
        mean that there is no flux detected in this band at the location.
        Whether or not flux has been detected can be determined from the value
        of Rflg. When Rflg="0", no flux has been detected. When Rflg="6", flux
        has been detected at the location where the images were not deblended
        consistently in all three bands (JHKs).


        F = This category includes Rflg="1" or Rflg="3" sources where a reliable
        estimate of the photometric error, [jhk]cmsig, could not be determined.
        The uncertainties reported for these sources in [jhk]cmsig and
        e_[jhk]mag are flags and have numeric values >8.0.


        E = This category includes detections where the goodness-of-fit quality
        of the profile-fit photometry was very poor (Rflg=2 and
        [jhk]psfchi>10.0), or detections where psf fit photometry did not
        converge and an aperture magnitude is reported (Rflg=4), or detections
        where the number of frames was too small in relation to the number of
        frames in which a detection was geometrically possible (Rflg="1" or
        Rflg="2").


        A = Detections in any brightness regime where valid measurements were
        made (Rflg="1","2" or "3") with [jhk]snr>10 AND [jhk]cmsig<0.10857.


        B = Detections in any brightness regime where valid measurements were
        made (Rflg="1","2" or "3") with [jhk]snr>7 AND [jhk]cmsig<0.15510.


        C = Detections in any brightness regime where valid measurements were
        made (Rflg="1","2" or "3") with [jhk]snr>5 AND [jhk]cmsig<0.21714.


        D = Detections in any brightness regime where valid measurements were
        made (Rflg="1","2" or "3") with no [jhk]snr OR [jhk]cmsig requirement.
    ]]></meta>
    <meta name="note" tag="5">
        The read flag indicates the source of J,H,K "default" magnitudes as
        a 3-digit integer, where the 1st digit corresponds to the J band, the
        2nd to the H band, and the 3rd to the Ks band. Rflg values of "1", "2"
        or "3" generally indicate the best quality detections, photometry and
        astrometry (although other quality flags must be considered). Values of
        "0", "4", "6" and "9" in a band indicate either non-detections, or
        generally poor quality photometry and positions. The definitions of the
        Rflg values are:

        = ======================================================================
        0 Source is not detected in this band. The default magnitude is the
          95% confidence upper limit derived from a 4" radius aperture
          measurement taken at the position of the source on the Atlas Image.
          The sky background is estimated in an annular region with inner radius
          of 14" and outer radius of 20".
        1 The default magnitude is derived from aperture photometry
          measurements on the 51 ms "Read_1" exposures. The aperture radius is
          4", with the sky background measured in an annulus with an inner
          radius of 14" and an outer radius of 20". Used for sources that
          saturate one or more of the 1.3s "Read_2" exposures, but are not
          saturated on at least one of the 51 ms "Read_1" frames.
        2 The default magnitude is derived from a profile-fitting measurement
          made on the 1.3 sec "Read_2" exposures. The profile-fit magnitudes are
          normalized to curve-of-growth corrected aperture magnitudes. This is
          the most common type in the PSC, and is used for sources that have no
          saturated pixels in any of the 1.3 sec exposures.
        3 The default magnitude is derived from a 1-d radial profile fitting
          measurement made on the 51 ms "Read_1" exposures. Used for very bright
          sources that saturate all of the 51 ms "Read 1" exposures.
        4 The default magnitude is derived from curve-of-growth-corrected 4"
          radius aperture photometry measurements on the 1.3 s "Read_2"
          exposures. This is used for sources that are not saturated in any of
          the Read_2 frames, but where the profile-fitting measurements fail to
          converge to a solution. These magnitudes are the same as the standard
          aperture magnitudes (Jstdap, Hstdap, Kstdap), but when they are the
          default magnitudes, it generally implies that they are low quality
          measurements.
        6 The default magnitude is the 95% confidence upper limit derived from
          a 4" radius aperture measurement taken at the position of the source
          on the Atlas Image. The sky background is estimated in an annular
          region with inner radius of 14" and outer radius of 20". This is used
          for pairs of sources which are detected and resolved in another band,
          but are detected and not resolved in this band. This differs from
          a Rflg="0" because in this case there is a detection of the source in
          this band, but it is not consistently resolved across all bands.
        9 The default magnitude is the 95% confidence upper limit derived from
          a 4" radius aperture measurement taken at the position of the source
          on the Atlas Image. The sky background is estimated in an annular
          region with inner radius of 14" and outer radius of 20". This is used
          for sources that were nominally detected in this band, but which could
          not have a useful brightness measurement from either profile fitting
          or aperture photometry. This often occurs in highly confused regions,
          or very near Tile edges where a significant fraction of the
          measurement aperture of sky annulus falls off the focal plane.
        = ======================================================================
      </meta>
      <meta name="note" tag="6"><![CDATA[
          Extended source "contamination" flag. A value of Xflg="2" indicates
          that this point source falls within the elliptical boundary of an XSC
          source defined by the semi-major axis and ellipticity of the 20
          mag.arcsec–2 Ks-band elliptical isophote (r_k20fe)+10%, for XSC
          sources where r_k20fe is >10''. Sources so indicated are often
          foreground stars superimposed on background galaxies, or sometimes
          extractions of pieces of the galaxy or nebula. The point source
          photometry for these sources is probably contaminated by the
          surrounding structured extended emission. Point sources can still be
          superimposed on extended sources and remain unflagged if the XSC
          source shape is not well-described by an ellipse.

          This flag also denotes (Xflg="1") PSC sources that are equivalent to
          sources in the XSC, but only for XSC sources with r_k20fe is >10''.
          Since most XSC sources have semi-major axes <10'', Xflg does not
          identify all PSC sources with exact XSC counterparts. Use the extKey
          to identify all PSC sources that were found to be resolved relative to
          a single point-spread function.

          = ==================================================================
          0 Source does not fall within the elliptical profile of an extended
            source with semi-major axis >10'', or it is not identified exactly
            with an XSC source with semi-major axis >10''. However, the source
            may correspond exactly to a smaller XSC source.
          1 Source is resolved by 2MASS, and is equivalent to a source in the
            XSC that has a semi-major axis >10'' in size. Users must refer to
            the extKey to identify all PSC sources with XSC counterparts.
          2 Source falls within the elliptical boundary of an XSC source that
            has a semi-major axis >10'' in size.
          = ==================================================================
    ]]></meta>

  </table>

  <table id="sdss_astref" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_idx">
    <stc>
      Position ICRS Epoch J2000.0 "RAJ2000" "DEJ2000"
    </stc>

    <index columns="Field" />
    <index columns="SDSS9" />

    <column name="mode" type="smallint" ucd="meta.code.class"
            description="1: primary, 2: secondary">
        <values nullLiteral="-1" />
    </column>
    <column name="q_mode" type="text" ucd="meta.code.qual;instr.setup"
        description="+ indicates clean photometry" />
    <column name="cl" type="smallint" ucd="src.class" note="1"
            description="Type (class) of object (3=galaxy, 6=star)">
        <values nullLiteral="-1" />
    </column>
    <column name="SDSS9" type="text" ucd="meta.id"
        description="SDSS-DR9 name, based on J2000 position" />
    <column name="m_SDSS9" type="text" ucd="meta.code.multip"
        description="The asterisk indicates that 2 different SDSS object share
            the same SDSS9 name" />
    <column name="RAJ2000" type="double precision" ucd="pos.eq.ra;meta.main"
        unit="deg" description="Right Ascension (J2000)" required="True"/>
    <column name="e_RAJ2000" type="real" ucd="stat.error;pos.eq.ra" unit="arcsec"
        description="Mean error on RAJ2000" />
    <column name="DEJ2000" type="double precision" ucd="pos.eq.dec;meta.main"
        unit="deg" description="Declination (J2000)" required="True"/>
    <column name="e_DEJ2000" type="real" ucd="stat.error;pos.eq.dec" unit="arcsec"
        description="Mean error on DEJ2000" />
    <column name="Q" type="smallint" ucd="meta.code.qual;obs.param;obs"
            description="Quality of the observation (0: unknown, 1:bad,
                2:acceptable, 3:good, 4:missing, 5:hole)">
        <values nullLiteral="-1" />
    </column>
    <column name="umag" type="real" ucd="phot.mag;em.opt.U" unit="mag"
        description="Model magnitude in u filter, AB scale" note="2" />
    <column name="e_umag" type="real" ucd="stat.error;phot.mag;em.opt.U"
        unit="mag" description="Mean error on umag" />
    <column name="gmag" type="real" ucd="phot.mag;em.opt.B" unit="mag"
        description="Model magnitude in g filter, AB scale" note="2" />
    <column name="e_gmag" type="real" ucd="stat.error;phot.mag;em.opt.B"
        unit="mag" description="Mean error on gmag" />
    <column name="rmag" type="real" ucd="phot.mag;em.opt.R" unit="mag"
        description="Model magnitude in r filter, AB scale" note="2" />
    <column name="e_rmag" type="real" ucd="stat.error;phot.mag;em.opt.R"
        unit="mag" description="Mean error on rmag" />
    <column name="imag" type="real" ucd="phot.mag;em.opt.I" unit="mag"
        description="Model magnitude in i filter, AB scale" note="2" />
    <column name="e_imag" type="real" ucd="stat.error;phot.mag;em.opt.I"
        unit="mag" description="Mean error on imag" />
    <column name="zmag" type="real" ucd="phot.mag;em.opt.I" unit="mag"
        description="Model magnitude in z filter, AB scale" note="2" />
    <column name="e_zmag" type="real" ucd="stat.error;phot.mag;em.opt.I"
        unit="mag" description="Mean error on zmag" />
    <column name="zsp" type="double precision" ucd="src.redshift"
        description="Spectrometric redshift" />
    <column name="Field" type="text" ucd="meta.id;obs.field"
        description="Name of the field in HELP survey" />
    <column name="internal_idx" type="bigint" ucd="meta.id"
        description="Internal unique identifier" required="True" />
    <meta name="note" tag="1"><![CDATA[
      The type (class) is numbered as follows:

      = ===================================================================
      0 Unknown: Object type is not known.
      1 Cosmic-ray track (not used).
      2 Defect (not used)
      3 Galaxy: An extended object composed of many stars and other matter.
      4 Ghost: Object created by reflected or refracted light. (not used)
      5 KnownObject: Object came from some other catalog (not yet used)
      6 Star: A a self-luminous gaseous celestial body.
      7 Trail: A satellite or asteroid or meteor trail. (not yet used)
      8 Sky: Blank sky spectrogram (no objects in this arcsecond area).
      9 NotAType
      = ===================================================================
    ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      The response curves of the SDSS filters (u g r i z) can be found on the
      SDSS pages: http://www.sdss.org/dr5/instruments/imager/index.html The
      central wavelength and FWHM are:

      ====== ====== ====== ====== ====== ======
       (nm)    u'     g'     r'     i'     z'
      ====== ====== ====== ====== ====== ======
      lambda  354.3  477.0  623.1  762.5  913.4
        FWHM   56.7  138.7  137.3  152.6   95.0
      ====== ====== ====== ====== ====== ======

      Note that the ugriz magnitudes are not exactly on the AB scale for the
      u-band (uAB=umag-0.04) and z-band (zAB=zmag+0.02)
      (http://www.sdss.org/DR7/algorithms/fluxcal.html)
    ]]></meta>
  </table>
  <table id="cosmosvla_astref" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_idx">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "Dec"
    </stc>

    <index columns="Name_VLA1400" />

    <column name="RA" type="double precision" ucd="pos.eq.ra;meta.main"
      unit="deg" description="Right Ascension (J2000)" required="True"/>
    <column name="Dec" type="double precision" ucd="pos.eq.dec;meta.main"
      unit="deg" description="Declination (J2000)" required="True"/>
    <column name="Name_VLA1400" type="text" ucd="meta.id"
      description="Source name (JHHMMSS.ss+DDMMSS.s)" />
    <column name="COSMOSVLA" type="text" ucd="meta.id"
      description="Former name in VLA_COSMOS Large project catalogue if exists" />
    <column name="RA_VLA1400" type="double precision" ucd="pos.eq.ra" unit="deg"
      description="1.4 GHz source position RA (J2000)" />
    <column name="Dec_VLA1400" type="double precision" ucd="pos.eq.dec" unit="deg"
      description="1.4 GHz source position Dec (J2000)" />
    <column name="Sp_VLA1400" type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="Peak 1.4GHz flux density" />
    <column name="eSp_VLA1400" type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="RMS uncertainty on peak 1.4 GHz flux density" />
    <column name="Spc_VLA1400" type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="Peak surface brightness corrected for bandwidth smearing" />
    <column name="Si_VLA1400" type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="Integrated 1.4 GHz flux density" />
    <column name="eSi_VLA1400" type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="RMS uncertainty in integrated 1.4 GHz flux density" />
    <column name="bg_RMS_VLA1400" type="real" ucd="stat.error;em.radio.750-1500MHz"
      unit="mJy" description="Measured local RMS at radio source position" />
    <column name="Bmaj_VLA1400" type="real" ucd="phys.angSize" unit="arcsec"
      description="Deconvolved source major axis size in arcsec" />
    <column name="Bmin_VLA1400" type="real" ucd="phys.angSize" unit="arcsec"
      description="Deconvolved source minor axis size in arcsec" />
    <column name="PA_VLA1400" type="real" ucd="pos.posAng" unit="deg"
      description="Position angle in deg" />
    <column name="Rflag_VLA1400" type="smallint" ucd="meta.code" note="1"
      description="Resolved source flag">
      <values nullLiteral="-9999" />
    </column>
    <column name="Mflag_VLA1400" type="smallint" ucd="meta.code" note="2"
      description="Multicomponent source flag">
      <values nullLiteral="-9999" />
    </column>
    <column name="Cflag_VLA1400" type="smallint" ucd="meta.code" note="3"
      description="Catalog membership flag">
      <values nullLiteral="-9999" />
    </column>
    <column name="Dflag_VLA1400" type="smallint" ucd="meta.code" note="4"
      description="Flag indicating the resolution at which a source detected at
      S/N>=5">
      <values nullLiteral="-9999" />
    </column>
    <column name="Name_VLA324" type="text" ucd="meta.id"
      description="Source name at 324 MHz" />
    <column name="RA_VLA324" type="real" ucd="pos.eq.ra" unit="deg"
      description="324 MHz source position right ascension (J2000)" />
    <column name="Dec_VLA324" type="real" ucd="pos.eq.dec" unit="deg"
      description="324 MHz source position declination (J2000)" />
    <column name="e_RA_VLA324" type="real" ucd="stat.error;pos.eq.ra"
      unit="arcsec" description="Uncertainty on RA_VLA324" />
    <column name="e_Dec_VLA324" type="real" ucd="stat.error;pos.eq.dec"
      unit="arcsec" description="Uncertainty on Dec_VLA324" />
    <column name="Sp_VLA324" type="real" ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy" description="Peak 324 MHz surface brightness of source" />
    <column name="eSp_VLA324" type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz" unit="mJy"
      description="RMS uncertainty on 324 MHz peak flux density" />
    <column name="Si_VLA324" type="real"
      ucd="phot.flux.density;em.radio.200-400MHz" unit="mJy"
      description="Integrated 324 MHz source flux density" />
    <column name="eSi_VLA324" type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz" unit="mJy"
      description="RMS uncertainty on integrated 324 MHz flux density" />
    <column name="bg_RMS_VLA324" type="real"
      ucd="stat.error;em.radio.200-400MHz" unit="mJy"
      description="Measured local RMS at the radio source position" />
    <column name="Bmaj_VLA324" type="real" ucd="phys.angSize" unit="arcsec"
      description="Deconvolved source size - major axis (0.0 for unresolved
      source) in arcsec" />
    <column name="Bmin_VLA324" type="real" ucd="phys.angSize" unit="arcsec"
      description="Deconvolved source size - minor axis (0.0 for unresolved
      source) in arcsec" />
    <column name="PA_VLA324" type="real" ucd="pos.posAng" unit="deg"
      description="Position angle (-99 for multi-component source; 0.0 for
      unresolved source)" />
    <column name="Rflag_VLA324" type="integer" ucd="meta.code" note="5"
      description="Flag for resolved source">
      <values nullLiteral="-9999" />
    </column>
    <column name="Mflag_VLA324" type="integer" ucd="meta.code" note="6"
      description="Flag for multi-component source">
      <values nullLiteral="-9999" />
    </column>
    <column name="internal_idx" type="bigint" ucd="meta.id"
      description="Internal unique identifier" required="True" />
    <meta name="note" tag="1"><![CDATA[
      Rflag_VLA1400 (Resolved source flag at 1.4 GHz) column:

      == ===============================================================
      -2 classified as unresolved only in VLA-COSMOS Deep image
      -1 classified as resolved only in VLA-COSMOS Large image
       0 classified as unresolved in both VLA-COSMOS Large & Deep images
       1 classified as resolved in both VLA-COSMOS Large & Deep images
       2 classified as resolved source only in VLA-Deep
      == ===============================================================
    ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      Mflag_VLA1400 (Multicomponent source flag at 1.4 GHz) column:

      = ===========================================================
      0 no multi-component source
      1 multi-component source identified in VLA-COSMOS Large image
      2 multi-component source identified in VLA-COSMOS Deep image
      = ===========================================================
    ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      Cflag_VLA1400 (Catalog membership flag at 1.4 GHz) column:

      == ==================================================
      -1 only detected in the VLA-COSMOS Large image
       0 detected in both the VLA-COSMOS Large & Deep image
       1 only detected in the VLA-COSMOS Deep image
      == ==================================================
    ]]></meta>
    <meta name="note" tag="4"><![CDATA[
      Dflag_VLA1400 (Flag indicating the resolution at which a source detected
      at S/N>=5 at 1.4 GHz) column:

      === ======================================================================
       -1 S/N≥5 is only satisfied at a resolution of 1.5"
        0 S/N≥5 is only satisfied at both 1.5" & 2.5" resolution
        1 S/N≥5 is only satisfied at a resolution of 2.5", but in both the large
          and small scale (105" and 17.5" box size, respectively) rms map
        2 at a resolution of 2.5", S/N≥5 is only satisfied in the small scale
          (17.5" box size) rms map
      -99 multi-component source.
      === ======================================================================
    ]]></meta>
    <meta name="note" tag="5"><![CDATA[
      Rflag_VLA324 (Flag for resolved source at 324 MHz) column:

      = ========================
      0 classified as unresolved
      1 classified as resolved
      = ========================
    ]]></meta>
    <meta name="note" tag="6"><![CDATA[
      Mflag_VLA324 (Multicomponent source flag at 324 MHz) column:

      = =========================
      0 no multi-component source
      1 multi-component sources
      = =========================
    ]]></meta>
  </table>
  <data id="import_2mass">
    <sources>data/2MASS_HELP.csv</sources>
    <csvGrammar />
    <make table="twomass_astref">
      <rowmaker idmaps="*">
          <simplemaps>
            Field:Field,
            ID2MASS:ID2MASS,
            RAJ2000:RAJ2000,
            DEJ2000:DEJ2000,
            errMaj:errHalfMaj,
            errMin:errHalfMin,
            errPA:errPosAng,
            Jmag:Jmag,
            e_Jmag:e_Jmag,
            Hmag:Hmag,
            e_Hmag:e_Hmag,
            Kmag:Kmag,
            e_Kmag:e_Kmag,
            Qflg:Qfl,
            Rflg:Rfl,
            Xflg:X
          </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_sdss">
    <sources>data/SDSS9_HELP.csv</sources>
    <csvGrammar />
    <make table="sdss_astref">
      <rowmaker idmaps="*">
        <simplemaps>
          mode:mode,
          q_mode:q_mode,
          cl:cl,
          SDSS9:SDSS9,
          m_SDSS9:m_SDSS9,
          RAJ2000:RAJ2000,
          e_RAJ2000:e_RAJ2000,
          DEJ2000:DEJ2000,
          e_DEJ2000:e_DEJ2000,
          Q:Q,
          umag:umag,
          e_umag:e_umag,
          gmag:gmag,
          e_gmag:e_gmag,
          rmag:rmag,
          e_rmag:e_rmag,
          zmag:zmag,
          e_zmag:e_zmag,
          zsp:zsp,
          Field:Field,
          internal_idx:internal_idx
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_cosmosvla">
    <sources>data/COSMOS_VLA.csv</sources>
    <csvGrammar />
    <make table="cosmosvla_astref">
      <rowmaker idmaps="*">
        <simplemaps>
          RA:RA,
          Dec:Dec,
          Name_VLA1400:NAME_VLA_1400,
          COSMOSVLA:COSMOSVLA,
          RA_VLA1400:RA_14,
          Dec_VLA1400:Dec_14,
          Sp_VLA1400:Fmjypeak_VLA_1400,
          eSp_VLA1400:Ferrmjypeak_VLA_1400,
          Spc_VLA1400:Fpeakcorrmjy_VLA_1400,
          Si_VLA1400:Fmjy_VLA_1400,
          eSi_VLA1400:Ferrmjy_VLA_1400,
          bg_RMS_VLA1400:RMSBG,
          Bmaj_VLA1400:BMAJ_14,
          Bmin_VLA1400:BMIN_14,
          PA_VLA1400:PA_14,
          Rflag_VLA1400:R,
          Mflag_VLA1400:M,
          Cflag_VLA1400:CAT,
          Dflag_VLA1400:DET,
          Name_VLA324:NAME_VLA_324,
          RA_VLA324:RAJ2000_324,
          Dec_VLA324:DEJ2000_324,
          e_RA_VLA324:ER_RA,
          e_Dec_VLA324:ER_DEC,
          Sp_VLA324:FP,
          eSp_VLA324:FPERR,
          Si_VLA324:Fmjy_VLA_324,
          eSi_VLA324:Ferrmjy_VLA_324,
          bg_RMS_VLA324:RMS_BG,
          Bmaj_VLA324:BMAJ_324,
          Bmin_VLA324:BMIN_324,
          PA_VLA324:PA_324,
          Rflag_VLA324:RES,
          Mflag_VLA324:MULT,
          internal_idx:internal_idx
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone_2mass" allowed="scs.xml,form,static">
    <meta name="title">2MASS (astrometric reference)</meta>
    <meta name="shortName">2MASS</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="twomass_astref">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="Field" />
      <condDesc>
        <inputKey original="ID2MASS" required="False"/>
      </condDesc>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <service id="cone_sdss" allowed="scs.xml,form,static">
    <meta name="title">SDSS (astrometric reference)</meta>
    <meta name="shortName">SDSS</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="sdss_astref">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="Field" />
      <condDesc buildFrom="SDSS9" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <service id="cone_cosmosvla" allowed="scs.xml,form,static">
    <meta name="title">COSMOS-VLA (astrometric reference)</meta>
    <meta name="shortName">COSMOS-VLA</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="cosmosvla_astref">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="Name_VLA1400" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
