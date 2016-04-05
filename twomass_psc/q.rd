<resource schema="twomass_psc">
  <meta name="title">2MASS Point Source Catalogue</meta>
  <meta name="creationDate">2016-03-23T16:09:36+0100</meta>
  <meta name="description">
    2MASS all-sky catalogue of point sources (PSC, Cutri+ 2003) limited to HELP 
    coverage.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Astrometry</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the 2MASS All-Sky Catalogue of Point Sources (Cutri
    et al., 2003) that was downloaded from Vizier and limited to HELP coverage.
    Its full documentation is available there:
    http://cdsarc.u-strasbg.fr/viz-bin/Cat?II/246

    A ``Field`` column was added containing the name of HELP field associated
    with each source to allow easy filtering. Here is the number of sources per
    field:

    +---------------------+------------+
    | Field               |     Count  |
    +=====================+============+
    | AKARI-NEP           |     32491  |
    +---------------------+------------+
    | AKARI-SEP           |     20740  |
    +---------------------+------------+
    | Bootes              |     17953  |
    +---------------------+------------+
    | CDFS-SWIRE          |     21132  |
    +---------------------+------------+
    | COSMOS              |      9273  |
    +---------------------+------------+
    | EGS                 |      5226  |
    +---------------------+------------+
    | ELAIS-N1            |     29958  |
    +---------------------+------------+
    | ELAIS-N2            |     23751  |
    +---------------------+------------+
    | ELAIS-S1            |     14190  |
    +---------------------+------------+
    | GAMA-09             |    192994  |
    +---------------------+------------+
    | GAMA-12             |     98490  |
    +---------------------+------------+
    | GAMA-15             |    128992  |
    +---------------------+------------+
    | HDF-N               |       910  |
    +---------------------+------------+
    | Herschel-Stripe-82  |    590090  |
    +---------------------+------------+
    | Lockman-SWIRE       |     34313  |
    +---------------------+------------+
    | NGP                 |    234956  |
    +---------------------+------------+
    | SA13                |       355  |
    +---------------------+------------+
    | SGP                 |    463231  |
    +---------------------+------------+
    | SPIRE-NEP           |      1741  |
    +---------------------+------------+
    | SSDF                |    212777  |
    +---------------------+------------+
    | xFLS                |     21355  |
    +---------------------+------------+
    | XMM-13hr            |      1311  |
    +---------------------+------------+
    | XMM-LSS             |     35043  |
    +---------------------+------------+

    Within HELP, the 2MASS point source catalogue is used as astrometric
    reference for the fields: AKARI-NEP, AKARI-SEP, Bootes, CDFS-SWIRE, EGL,
    ELAIS-N1, ELAIS-N2, ELAIS-S1, HDF-N, Lockman-SWIRE, NGP, SA13, SGP,
    SPIRE-NEP, SSDF, xFLS, XMM-13hr, and XMM-LSS.

    History
    -------

    - 20160323: Catalogue retrieved from Vizier.

    RAW data
    --------

    You may also download `raw catalogues and MOC coverage`__.

    __ /twomass_psc/q/cone/static
  ]]></meta>

  <meta name="source">2006AJ....131.1163S</meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
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

  <data id="import">
    <sources>data/2MASS_PSC.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
          <simplemaps>
            Field:Field,
            ID2MASS:ID2MASS,
            RAJ2000:RAJ2000,
            DEJ2000:DEJ2000,
            errMaj:errMaj,
            errMin:errMin,
            errPA:errPA,
            Jmag:Jmag,
            e_Jmag:e_Jmag,
            Hmag:Hmag,
            e_Hmag:e_Hmag,
            Kmag:Kmag,
            e_Kmag:e_Kmag,
            Qflg:Qflg,
            Rflg:Rflg,
            Xflg:Xflg
          </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">2MASS Catalogue of Point Sources</meta>
    <meta name="shortName">PSC</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="main">
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

</resource>

<!--
vim:et:sta:sw=2
-->
