<resource schema="help_spire">
  <meta name="title">HELP SPIRE catalogues</meta>
  <meta name="creationDate">2016-01-21T16:32:51+0100</meta>
  <meta name="description">
    HELP astrometry catalogues
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
      The astrometric reference catalogues for HELP are 2MASS, SDSS and
      VLA-COSMOS according to the catalogue:

        * VLA-COSMOS for COSMOS
        * SDSS for GAMA-09, GAMA-12, GAMA-15, and Herschel-Stripe-82
        * 2MASS for the other fields.

      VLA-COSMOS data
      ---------------

      The VLA-COSMOS catalogue was provided by the work package 2. It's readme
      is there:
      http://hedam.lam.fr/HELP/data/P1/WP2/COSMOS/WP2-COSMOS-VLA-v1.readme

      2MASS data
      ----------

      The 2MASS data was extracted on all HELP fields using Aladin MOC search
      functionality with the whole HELP coverage MOC (v0.9). The 2MASS
      catalogue documentation is available there:
      http://cdsarc.u-strasbg.fr/viz-bin/Cat?II/246

      A “Field” column was added containing the name of HELP field associated
      with each source to allow easy filtering.

      SDSS data
      ---------

      The SDSS data was extracted on all HELP fields using Aladin on the SDSS8
      catalogue. It's documentation is available there:
      http://cdsarc.u-strasbg.fr/viz-bin/Cat?II/306

      A “Field” column was added containing the name of HELP field associated
      with each source to allow easy filtering.

  ]]></meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="2mass_astref" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="ID2MASS">
    <stc>
      Position ICRS Epoch J2000.0 "RAJ2000" "DEJ2000"
    </stc>

    <index columns="Field" />

    <column name="Field" type="text" ucd="meta.id;obs.field" verbLevel="30"
        description="Name of the field in the HerMES survey" />
    <column name="ID2MASS" type="text" ucd="meta.id;meta.main"
        description="Source designation" required="True" note="2mass_note"/>
    <column name="RAJ2000" type="double precision" ucd="pos.eq.ra;meta.main"
        unit="deg" description="Right Ascension (J2000)" required="True"/>
    <column name="DEJ2000" type="double precision" ucd="pos.eq.dec;meta.main"
        unit="deg" description="Declination (J2000)" required="True"/>
    <column name="errMaj" type="double precision" ucd="stat.error"
        unit="arcsec" description="Semi-major axis of position error ellipse"/>
    <column name="errMin" type="double precision" ucd="stat.error"
        unit="arcsec" description="Semi-minor axis of position error ellipse"/>
    <column name="errPA" type="integer" ucd="stat.error" unit="deg"
        description="Position angle of error ellipse major axis (E of N)"/>
    <column name="Jmag" type="double precision" ucd="phot.mag;em.IR.J"
        unit="mag" description="J selected default magnitude" note="mag_note"/>
    <column name="e_Jmag" type="double precision"
        ucd="stat.error;phot.mag;em.IR.J" unit="mag" description="J total
        magnitude uncertainty" note="emag_note"/>
    <column name="Hmag" type="double precision" ucd="phot.mag;em.IR.H"
        unit="mag" description="H selected default magnitude" note="mag_note"/>
    <column name="e_Hmag" type="double precision"
        ucd="stat.error;phot.mag;em.IR.H" unit="mag" description="H total
        magnitude uncertainty" note="emag_note"/>
    <column name="Kmag" type="double precision" ucd="phot.mag;em.IR.K"
        unit="mag" description="K selected default magnitude" note="mag_note"/>
    <column name="e_Kmag" type="double precision"
        ucd="stat.error;phot.mag;em.IR.K" unit="mag" description="K total
        magnitude uncertainty" note="emag_note"/>
    <column name="Qflg" type="text" ucd="meta.code.qual;phot" description="JHK
        Photometric quality flag" note="qflg_note"/>
    <column name="Rflg" type="text" ucd="meta.ref" description="Source of JHK
        default mag" note="rflg_note"/>
    <column name="Xflg" type="small integer" ucd="meta.code"
        description="Extended source contamination" note="xflg_note"/>

    <meta name="note" tag="2mass_note">
        Sexagesimal, equatorial position-based source name in the form:
        hhmmssss+ddmmsss[ABC...].  The full naming convention for 2MASS All-Sky
        Release PSC sources has the form "2MASS Jhhmmssss+ddmmsss[ABC...]",
        where "2MASS" indicates that the source is from the All-Sky PSC, "J"
        indicates the position is J2000, and the optional trailing letters are
        used to distinguish sources with otherwise duplicate names. The "2MASS
        J" prefix is not listed explicitly in the designation column.
    </meta>
    <meta name="note" tag="mag_note">
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
    <meta name="note" tag="emag_note">
        Combined, or total photometric uncertainty [JHK]msigcom for the default
        magnitude in that band. The combined uncertainty is derived from the
        following relation:

        e_[JHK]mag = sqrt([JHK]cmsig2 + [JHK]zperr2 + fferr2 + [r1normrms2])

        where


        cmsig = Corrected band photometric uncertainty
        zperr = Nightly photometric zero point uncertainty = 0.011 mag
        fferr = Flat-fielding residual error = 0.005 mags
        r1normrms = R1 normalization uncertainty = 0.012 mags (applied only for
                    sources with Rflg="1")

        This column is null if the default magnitude is a 95% confidence upper
        limit (i.e. the source is not detected, or inconsistently deblended in the band).
    </meta>
    <meta name="note" tag="qflag_note"><![CDATA[
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
    <meta name="note" tag="rflag_note">
        The read flag indicates the source of J,H,K "default" magnitudes as
        a 3-digit integer, where the 1st digit corresponds to the J band, the
        2nd to the H band, and the 3rd to the Ks band. Rflg values of "1", "2"
        or "3" generally indicate the best quality detections, photometry and
        astrometry (although other quality flags must be considered). Values of
        "0", "4", "6" and "9" in a band indicate either non-detections, or
        generally poor quality photometry and positions. The definitions of the
        Rflg values are:

        0 = Source is not detected in this band. The default magnitude is the
          95% confidence upper limit derived from a 4" radius aperture
          measurement taken at the position of the source on the Atlas Image.
          The sky background is estimated in an annular region with inner radius
          of 14" and outer radius of 20".


        1 = The default magnitude is derived from aperture photometry
          measurements on the 51 ms "Read_1" exposures. The aperture radius is
          4", with the sky background measured in an annulus with an inner
          radius of 14" and an outer radius of 20". Used for sources that
          saturate one or more of the 1.3s "Read_2" exposures, but are not
          saturated on at least one of the 51 ms "Read_1" frames.


        2 = The default magnitude is derived from a profile-fitting measurement
          made on the 1.3 sec "Read_2" exposures. The profile-fit magnitudes are
          normalized to curve-of-growth corrected aperture magnitudes. This is
          the most common type in the PSC, and is used for sources that have no
          saturated pixels in any of the 1.3 sec exposures.


        3 = The default magnitude is derived from a 1-d radial profile fitting
          measurement made on the 51 ms "Read_1" exposures. Used for very bright
          sources that saturate all of the 51 ms "Read 1" exposures.


        4 = The default magnitude is derived from curve-of-growth-corrected 4"
          radius aperture photometry measurements on the 1.3 s "Read_2"
          exposures. This is used for sources that are not saturated in any of
          the Read_2 frames, but where the profile-fitting measurements fail to
          converge to a solution. These magnitudes are the same as the standard
          aperture magnitudes (Jstdap, Hstdap, Kstdap), but when they are the
          default magnitudes, it generally implies that they are low quality
          measurements.


        6 = The default magnitude is the 95% confidence upper limit derived from
          a 4" radius aperture measurement taken at the position of the source
          on the Atlas Image. The sky background is estimated in an annular
          region with inner radius of 14" and outer radius of 20". This is used
          for pairs of sources which are detected and resolved in another band,
          but are detected and not resolved in this band. This differs from
          a Rflg="0" because in this case there is a detection of the source in
          this band, but it is not consistently resolved across all bands.


        9 = The default magnitude is the 95% confidence upper limit derived from
          a 4" radius aperture measurement taken at the position of the source
          on the Atlas Image. The sky background is estimated in an annular
          region with inner radius of 14" and outer radius of 20". This is used
          for sources that were nominally detected in this band, but which could
          not have a useful brightness measurement from either profile fitting
          or aperture photometry. This often occurs in highly confused regions,
          or very near Tile edges where a significant fraction of the
          measurement aperture of sky annulus falls off the focal plane.
      </meta>
      <meta name="note" tag="xflag_note"><![CDATA[
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

          0 = Source does not fall within the elliptical profile of an extended
            source with semi-major axis >10'', or it is not identified exactly
            with an XSC source with semi-major axis >10''. However, the source
            may correspond exactly to a smaller XSC source.


          1 = Source is resolved by 2MASS, and is equivalent to a source in the
            XSC that has a semi-major axis >10'' in size. Users must refer to
            the extKey to identify all PSC sources with XSC counterparts.


          2 = Source falls within the elliptical boundary of an XSC source that
            has a semi-major axis >10'' in size.
    ]]></meta>

  </table>

  <data id="import_2mass">
    <sources>data/2MASS_HELP.csv</sources>
    <csvGrammar />
    <make table="2mass_astref">
      <rowmaker idmaps="*">
          <simplemaps>
            Field:Field,
            ID2MASS:2MASS,
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

    <dbCore queriedTable="2mass_astref">
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
