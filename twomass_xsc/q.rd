<resource schema="twomass_xsc">
  <meta name="title">2MASS Extended Source Catalogue</meta>
  <meta name="creationDate">2016-03-23T16:09:36+0100</meta>
  <meta name="description">
    2MASS all-sky catalogue of extended sources (XSC, IPAC/UMass, 2003-2006) 
    limited to HELP coverage.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the 2MASS Extended Sources Catalogue (IPAC/UMass, 
    2003-2006). It was downloaded from Vizier and limited to HELP coverage.
    Its full documentation is available there:
    http://cdsarc.u-strasbg.fr/viz-bin/Cat?VII/233

    A ``Field`` column was added containing the name of HELP field associated
    with each source to allow easy filtering. Here is the number of sources per
    field:

    +---------------------+-----------+
    | Field               |     Count |
    +=====================+===========+
    | AKARI-NEP           |       474 |
    +---------------------+-----------+
    | AKARI-SEP           |       329 |
    +---------------------+-----------+
    | Bootes              |       651 |
    +---------------------+-----------+
    | CDFS-SWIRE          |       536 |
    +---------------------+-----------+
    | COSMOS              |       245 |
    +---------------------+-----------+
    | EGS                 |       142 |
    +---------------------+-----------+
    | ELAIS-N1            |       931 |
    +---------------------+-----------+
    | ELAIS-N2            |       522 |
    +---------------------+-----------+
    | ELAIS-S1            |       393 |
    +---------------------+-----------+
    | GAMA-09             |      1682 |
    +---------------------+-----------+
    | GAMA-12             |      2453 |
    +---------------------+-----------+
    | GAMA-15             |      2308 |
    +---------------------+-----------+
    | HDF-N               |        22 |
    +---------------------+-----------+
    | Herschel-Stripe-82  |     18291 |
    +---------------------+-----------+
    | Lockman-SWIRE       |      1290 |
    +---------------------+-----------+
    | NGP                 |      9881 |
    +---------------------+-----------+
    | SA13                |        10 |
    +---------------------+-----------+
    | SGP                 |     13492 |
    +---------------------+-----------+
    | SPIRE-NEP           |        15 |
    +---------------------+-----------+
    | SSDF                |      4131 |
    +---------------------+-----------+
    | xFLS                |       383 |
    +---------------------+-----------+
    | XMM-13hr            |        82 |
    +---------------------+-----------+
    | XMM-LSS             |      1146 |
    +---------------------+-----------+

    RAW data
    --------

    You may also download `raw catalogues and MOC coverage`__.

    __ /twomass_xsc/q/cone/static
  ]]></meta>

  <meta name="source">2003yCat.2246....0C</meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="xsc" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="ID2MASX">
    <stc>
      Position ICRS Epoch J2000.0 "RAJ2000" "DEJ2000"
    </stc>

    <index columns="Field" />

    <column name="Field" type="text" ucd="meta.id;obs.field"
      description="Name of the field in HELP survey" />
    <column name="ID2MASX" type="text" ucd="meta.id;meta.main"
      description="Source designation" required="True" />
    <column name="RAJ2000" type="double precision" ucd="pos.eq.ra;meta.main"
      unit="deg" description="Right Ascension (J2000)" required="True"/>
    <column name="DEJ2000" type="double precision" ucd="pos.eq.dec;meta.main"
      unit="deg" description="Declination (J2000)" required="True"/>
    <column name="supRAdeg" tablehead="supRAdeg" type="double precision" unit="deg"
      description="Super-coadd centroid RA (J2000)" ucd="pos.eq.ra" />
    <column name="supDEdeg" tablehead="supDEdeg" type="double precision" unit="deg"
      description="Super-coadd centroid Dec (J2000)" ucd="pos.eq.dec" />
    <column name="density" tablehead="density" type="double precision" unit="[---]"
      description="Coadd log(density) of stars with k&lt;14mag"
      ucd="phys.density" />
    <column name="r_K20e" tablehead="r.K20e" type="double precision" unit="arcsec"
      description="Semi-major axis of fiducial ellipse at isophote
      K=20mag/arcsec²" ucd="phys.angSize;src" />
    <column name="J_K20e" tablehead="J.K20e" type="double precision" unit="mag"
      description="J magnitude in K20e ellipse" ucd="phot.mag;em.IR.J" />
    <column name="e_J_K20e" tablehead="e_J.K20e" type="double precision" unit="mag"
      description="1 sigma uncertainty on J.K20e" ucd="stat.error" />
    <column name="f_J_K20e" tablehead="f_J.K20e" type="smallint"
      description="Confusion flags of J.K20e" ucd="meta.code" note="1">
      <values nullLiteral="-9999" />
    </column>
    <column name="H_K20e" tablehead="H.K20e" type="double precision" unit="mag"
      description="H magnitude in K20e ellipse" ucd="phot.mag;em.IR.H" />
    <column name="e_H_K20e" tablehead="e_H.K20e" type="double precision" unit="mag"
      description="1 sigma uncertainty on H.K20e" ucd="stat.error" />
    <column name="f_H_K20e" tablehead="f_H.K20e" type="smallint"
      description="Confusion flags of H.K20e" ucd="meta.code" note="1">
      <values nullLiteral="-9999" />
    </column>
    <column name="K_K20e" tablehead="K.K20e" type="double precision" unit="mag"
      description="K magnitude in K20e ellipse" ucd="phot.mag;em.IR.K" />
    <column name="e_K_K20e" tablehead="e_K.K20e" type="double precision" unit="mag"
      description="1 sigma uncertainty on K.K20e" ucd="stat.error" />
    <column name="f_K_K20e" tablehead="f_K.K20e" type="smallint"
      description="Confusion flags of K.K20e" ucd="meta.code" note="1">
      <values nullLiteral="-9999" />
    </column>
    <column name="Kb_a" tablehead="Kb/a" type="double precision"
      description="K minor/major axis ratio to 3 sigma ellipse"
      ucd="phys.size.axisRatio" />
    <column name="Kpa" tablehead="Kpa" type="smallint" unit="deg"
      description="K pos.angle to 3 sigma ellipse" ucd="pos.posAng">
      <values nullLiteral="-9999" />
    </column>
    <column name="Sb_a" tablehead="Sb/a" type="double precision"
      description="Minor/major axis ratio fit to 3 sigma isophote"
      ucd="phys.size.axisRatio" />
    <column name="Spa" tablehead="Spa" type="smallint" unit="deg"
      description="Super-coadd angle to major axis (E of N)"
      ucd="pos.posAng">
      <values nullLiteral="-9999" />
    </column>
    <column name="r_ext" tablehead="r.ext" type="double precision" unit="arcsec"
      description="Extrapolation/total radius of fit to radial profile"
      ucd="phys.angSize;src" />
    <column name="J_ext" tablehead="J.ext" type="double precision" unit="mag"
      description="J magnitude in r.ext" ucd="phot.mag;em.IR.J" />
    <column name="e_J_ext" tablehead="e_J.ext" type="double precision" unit="mag"
      description="1 sigma uncertainty on J.ext" ucd="stat.error" />
    <column name="H_ext" tablehead="H.ext" type="double precision" unit="mag"
      description="H magnitude in r.ext" ucd="phot.mag;em.IR.H" />
    <column name="e_H_ext" tablehead="e_H.ext" type="double precision" unit="mag"
      description="1 sigma uncertainty on H.ext" ucd="stat.error" />
    <column name="K_ext" tablehead="K.ext" type="double precision" unit="mag"
      description="K magnitude in r.ext" ucd="phot.mag;em.IR.K" />
    <column name="e_K_ext" tablehead="e_K.ext" type="double precision" unit="mag"
      description="1 sigma uncertainty on K.ext" ucd="stat.error" />
    <column name="cc" tablehead="cc" type="char"
      description="Contamination or confusion flag" ucd="meta.code"
      note="2">
      <values nullLiteral="-9999" />
    </column>

    <meta name="note" tag="1">
      The confusion flags are defined as follows:

      = ========================================================================
      0 no other sources within aperture used
      1 aperture contained pixels masked off in coadd
      2 aperture contained pixels masked off due to neighboring sources
      3 aperture contained pixels that had a point source flux subtracted off
      4 aperture contained pixels within bright star mask
      5 aperture contained pixels masked off due to persistence
      6 aperture ran into coadd boundary
      7 aperture contained pixels within bright galaxy mask
      9 integrated flux is negativeendTABULAR If the integrated flux is
        negative, a mag value is calculated using
        BFMag = 99.0 - [ZERO_CAL - 2.5 log10(abs(flux))]; the resulting mag 
        range is between ~ 75 and 99.
      = ========================================================================
    </meta>
    <meta name="note" tag="2">
     The contamination/confusion flag indicates whether the source's photometry
     and position may be affected by artifacts of, or confusion with, nearby
     bright stars. Sources are tested for contamination and/or confusion in the
     order given below, and once a flag is applied to the source, testing is
     stopped in that band.
     The flag values indicate the source may be:

     ====== ====================================================================
     U      unreliable source; probable image artifact detection (none)
     C      affected by confusion with or artifact of a nearby bright star
            (none)
     A or a known artifacts
     z      in close proximity to a large galaxy; these sources are usually
            junk
     Z      Derived from the Large Galaxy Atlas
     0      default value - not contaminated
     ====== ====================================================================
    </meta>
  </table>

  <data id="import_xsc">
    <sources>data/2MASS_XSC.csv</sources>
    <csvGrammar />
    <make table="xsc">
      <rowmaker idmaps="*">
          <simplemaps>
            Field:Field,
            ID2MASX:ID2MASX,
            RAJ2000:RAJ2000,
            DEJ2000:DEJ2000,
            supRAdeg:supRAdeg,
            supDEdeg:supDEdeg,
            density:dens,
            r_K20e:r_K20e,
            J_K20e:J_K20e,
            e_J_K20e:e_J_K20e,
            f_J_K20e:f_J_K20e,
            H_K20e:H_K20e,
            e_H_K20e:e_H_K20e,
            f_H_K20e:f_H_K20e,
            K_K20e:K_K20e,
            e_K_K20e:e_K_K20e,
            f_K_K20e:f_K_K20e,
            Kpa:Kpa,
            Sb_a:Sb_a,
            Spa:Spa,
            r_ext:r_ext,
            J_ext:J_ext,
            e_J_ext:e_J_ext,
            H_ext:H_ext,
            e_H_ext:e_H_ext,
            K_ext:K_ext,
            e_K_ext:e_K_ext,
            cc:cc
          </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">2MASS Etended Source Catalogue</meta>
    <meta name="shortName">XSC</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="xsc">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="Field" />
      <condDesc>
        <inputKey original="ID2MASX" required="False"/>
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
