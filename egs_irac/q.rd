<resource schema="egs_irac">
  <meta name="title">IRAC EGS catalogue</meta>
  <meta name="creationDate">2016-08-04T20:38:08+0200</meta>
  <meta name="description">
    IRAC 3.6µm-selected catalogue of the Extended Groth Strip (EGS).
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the IRAC 3.6µm-selected catalogue of the Extended
    Groth Strip (EGS). The full documentation is available there
    https://www.cfa.harvard.edu/irac/egs/

    Survey identification
    ---------------------

    +------------+-------------------------------------------------------------+
    | Survey     | IRAC EGS                                                    |
    +------------+-------------------------------------------------------------+
    | Telescope  | Spitzer                                                     |
    +------------+-------------------------------------------------------------+
    | Instrument | IRAC                                                        |
    +------------+-------------------------------------------------------------+
    | Filters    | IRAC1 (3.6µm), IRAC2 (4.5µam), IRAC3 (5.8µm), IRAC4 (8.0µm) |
    +------------+-------------------------------------------------------------+
    | P.I.       | P. Barmby                                                   |
    +------------+-------------------------------------------------------------+
    | Reference  | 2008ApJS..177..431B                                         |
    +------------+-------------------------------------------------------------+
    | URL        | https://www.cfa.harvard.edu/irac/egs/                       |
    +------------+-------------------------------------------------------------+

    History
    -------

    ======== ============================================
    20160804 First ingestion
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /egs_irac/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="id">
    <stc>
      Position ICRS Epoch J2000.0 "alpha_j2000" "delta_j2000"
    </stc>

    <column name="id"
      tablehead="ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Object ID in format EGSIRAC Jhhmmss.ss+ddmmss.s"
      required="True"
      verbLevel="1" />
    <column name="alpha_j2000"
      tablehead="Alpha_J2000"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension measured at 3.6µm (J2000)"
      required="True"
      verbLevel="1" />
    <column name="delta_j2000"
      tablehead="Delta_J2000"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination measured at 3.6µm (J2000)"
      required="True"
      verbLevel="1" />
    <column name="class_star"
      tablehead="Class_Star"
      type="real"
      ucd="src.class.starGalaxy"
      description="Stellarity index, measured at 3.6µm, from 0 (non-stellar) to
      1 (stellar)"
      verbLevel="1" />
    <column name="flags"
      tablehead="Flags"
      type="smallint"
      ucd="meta.code"
      description="Sextractor FLAGS in the 3.6µm image, range 0-3"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="coverage"
      tablehead="Coverage"
      type="integer"
      ucd="meta.number"
      unit="frame"
      description="Minimum coverage in 4 bands at object position"
      note="2"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="flux_radius_1"
      tablehead="Flux_Radius_1"
      type="real"
      ucd="phys.angSize"
      unit="pixel"
      description="Radius containing 50% of enclosed flux at 3.6µm"
      verbLevel="1" />
    <column name="xwin_image_1"
      tablehead="Xwin_Image_1"
      type="double precision"
      ucd="pos.cartesian.x;em.IR.3-4um"
      unit="pixel"
      description="Object barycentre x position in 3.6 µm image"
      verbLevel="30" />
     <column name="ywin_image_1"
      tablehead="Ywin_Image_1"
      type="double precision"
      ucd="pos.cartesian.y;em.IR.3-4um"
      unit="pixel"
      description="Object barycentre y position in 3.6 µm image"
      verbLevel="30" />
    <column name="isoarea_image_1"
      tablehead="ISOArea_Image_1"
      type="integer"
      ucd="phys.area;em.IR.3-4um"
      unit="pixel**2"
      description="Isophotal area above detection threshold in 3.6 µm image"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="kron_radius_1"
      tablehead="Kron_Radius_1"
      type="real"
      ucd="phys.size.radius;em.IR.3-4um"
      unit="pixel"
      description="Kron radius in 3.6 µm image"
      verbLevel="30" />
    <column name="awin_image_1"
      tablehead="AWin_Image_1"
      type="real"
      ucd="phys.size.smajAxis;em.IR.3-4um"
      unit="pixel"
      description="Semi-major axis in 3.6 µm image"
      verbLevel="30" />
    <column name="bwin_image_1"
      tablehead="BWin_Image_1"
      type="real"
      ucd="phys.size.sminAxis;em.IR.3-4um"
      unit="pixel"
      description="Semi-minor axis in 3.6 µm image"
      verbLevel="30" />
    <column name="thetawin_j2000_1"
      tablehead="ThetaWin_J2000_1"
      type="real"
      ucd="pos.posAng;em.IR.3-4um"
      unit="deg"
      description="Position angle, East of North, in 3.6 µm image"
      verbLevel="30" />
    <column name="mag_auto_1"
      tablehead="Mag_Auto_1"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="Kron 3.6 µm AB magnitude"
      verbLevel="1" />
    <column name="magerr_auto_1"
      tablehead="MagErr_Auto_1"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Uncertainty on Kron 3.6 µm AB magnitude"
      verbLevel="1" />
    <column name="mag_isocor_1"
      tablehead="Mag_ISOcor_1"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="Isophotal 3.6 µm AB magnitude"
      verbLevel="1" />
    <column name="magerr_isocor_1"
      tablehead="MagErr_ISOcor_1"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Uncertainty on isophotal 3.6 µm AB magnitude"
      verbLevel="1" />
    <column name="mag_aper_1_25"
      tablehead="Mag_Aper_1_25"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="3.6 µm AB magnitude in an aperture of 2.5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_1_25"
      tablehead="Mag_Aper_1_25"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Uncertainty on 3.6 µm AB magnitude in an aperture of 2.5 pixel radius"
      verbLevel="1" />
    <column name="mag_aper_1_35"
      tablehead="Mag_Aper_1_35"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="3.6 µm AB magnitude in an aperture of 3.5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_1_35"
      tablehead="Mag_Aper_1_35"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Uncertainty on 3.6 µm AB magnitude in an aperture of 3.5 pixel radius"
      verbLevel="1" />
    <column name="mag_aper_1_5"
      tablehead="Mag_Aper_1_5"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="3.6 µm AB magnitude in an aperture of 5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_1_5"
      tablehead="Mag_Aper_1_5"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Uncertainty on 3.6 µm AB magnitude in an aperture of 5 pixel radius"
      verbLevel="1" />
    <column name="xwin_image_2"
      tablehead="Xwin_Image_2"
      type="double precision"
      ucd="pos.cartesian.x;em.IR.4-8um"
      unit="pixel"
      description="Object barycentre x position in 4.5 µm image"
      verbLevel="30" />
     <column name="ywin_image_2"
      tablehead="Ywin_Image_2"
      type="double precision"
      ucd="pos.cartesian.y;em.IR.4-8um"
      unit="pixel"
      description="Object barycentre y position in 4.5 µm image"
      verbLevel="30" />
    <column name="isoarea_image_2"
      tablehead="ISOArea_Image_2"
      type="integer"
      ucd="phys.area;em.IR.4-8um"
      unit="pixel**2"
      description="Isophotal area above detection threshold in 4.5 µm image"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="kron_radius_2"
      tablehead="Kron_Radius_2"
      type="real"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pixel"
      description="Kron radius in 4.5 µm image"
      verbLevel="30" />
    <column name="awin_image_2"
      tablehead="AWin_Image_2"
      type="real"
      ucd="phys.size.smajAxis;em.IR.4-8um"
      unit="pixel"
      description="Semi-major axis in 4.5 µm image"
      verbLevel="30" />
    <column name="bwin_image_2"
      tablehead="BWin_Image_2"
      type="real"
      ucd="phys.size.sminAxis;em.IR.4-8um"
      unit="pixel"
      description="Semi-minor axis in 4.5 µm image"
      verbLevel="30" />
    <column name="thetawin_j2000_2"
      tablehead="ThetaWin_J2000_2"
      type="real"
      ucd="pos.posAng;em.IR.4-8um"
      unit="deg"
      description="Position angle, East of North, in 4.5 µm image"
      verbLevel="30" />
    <column name="mag_auto_2"
      tablehead="Mag_Auto_2"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Kron 4.5 µm AB magnitude"
      verbLevel="1" />
    <column name="magerr_auto_2"
      tablehead="MagErr_Auto_2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on Kron 4.5 µm AB magnitude"
      verbLevel="1" />
    <column name="mag_isocor_2"
      tablehead="Mag_ISOcor_2"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Isophotal 4.5 µm AB magnitude"
      verbLevel="1" />
    <column name="magerr_isocor_2"
      tablehead="MagErr_ISOcor_2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on isophotal 4.5 µm AB magnitude"
      verbLevel="1" />
    <column name="mag_aper_2_25"
      tablehead="Mag_Aper_2_25"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="4.5 µm AB magnitude in an aperture of 2.5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_2_25"
      tablehead="Mag_Aper_2_25"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on 4.5 µm AB magnitude in an aperture of 2.5 pixel radius"
      verbLevel="1" />
    <column name="mag_aper_2_35"
      tablehead="Mag_Aper_2_35"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="4.5 µm AB magnitude in an aperture of 3.5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_2_35"
      tablehead="Mag_Aper_2_35"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on 4.5 µm AB magnitude in an aperture of 3.5 pixel radius"
      verbLevel="1" />
    <column name="mag_aper_2_5"
      tablehead="Mag_Aper_2_5"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="4.5 µm AB magnitude in an aperture of 5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_2_5"
      tablehead="Mag_Aper_2_5"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on 4.5 µm AB magnitude in an aperture of 5 pixel radius"
      verbLevel="1" />
    <column name="xwin_image_3"
      tablehead="Xwin_Image_3"
      type="double precision"
      ucd="pos.cartesian.x;em.IR.4-8um"
      unit="pixel"
      description="Object barycentre x position in 5.8 µm image"
      verbLevel="30" />
     <column name="ywin_image_3"
      tablehead="Ywin_Image_3"
      type="double precision"
      ucd="pos.cartesian.y;em.IR.4-8um"
      unit="pixel"
      description="Object barycentre y position in 5.8 µm image"
      verbLevel="30" />
    <column name="isoarea_image_3"
      tablehead="ISOArea_Image_3"
      type="integer"
      ucd="phys.area;em.IR.4-8um"
      unit="pixel**2"
      description="Isophotal area above detection threshold in 5.8 µm image"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="kron_radius_3"
      tablehead="Kron_Radius_3"
      type="real"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pixel"
      description="Kron radius in 5.8 µm image"
      verbLevel="30" />
    <column name="awin_image_3"
      tablehead="AWin_Image_3"
      type="real"
      ucd="phys.size.smajAxis;em.IR.4-8um"
      unit="pixel"
      description="Semi-major axis in 5.8 µm image"
      verbLevel="30" />
    <column name="bwin_image_3"
      tablehead="BWin_Image_3"
      type="real"
      ucd="phys.size.sminAxis;em.IR.4-8um"
      unit="pixel"
      description="Semi-minor axis in 5.8 µm image"
      verbLevel="30" />
    <column name="thetawin_j2000_3"
      tablehead="ThetaWin_J2000_3"
      type="real"
      ucd="pos.posAng;em.IR.4-8um"
      unit="deg"
      description="Position angle, East of North, in 5.8 µm image"
      verbLevel="30" />
    <column name="mag_auto_3"
      tablehead="Mag_Auto_3"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Kron 5.8 µm AB magnitude"
      verbLevel="1" />
    <column name="magerr_auto_3"
      tablehead="MagErr_Auto_3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on Kron 5.8 µm AB magnitude"
      verbLevel="1" />
    <column name="mag_isocor_3"
      tablehead="Mag_ISOcor_3"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Isophotal 5.8 µm AB magnitude"
      verbLevel="1" />
    <column name="magerr_isocor_3"
      tablehead="MagErr_ISOcor_3"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on isophotal 5.8 µm AB magnitude"
      verbLevel="1" />
    <column name="mag_aper_3_25"
      tablehead="Mag_Aper_3_25"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="5.8 µm AB magnitude in an aperture of 2.5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_3_25"
      tablehead="Mag_Aper_3_25"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on 5.8 µm AB magnitude in an aperture of 2.5 pixel radius"
      verbLevel="1" />
    <column name="mag_aper_3_35"
      tablehead="Mag_Aper_3_35"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="5.8 µm AB magnitude in an aperture of 3.5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_3_35"
      tablehead="Mag_Aper_3_35"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on 5.8 µm AB magnitude in an aperture of 3.5 pixel radius"
      verbLevel="1" />
    <column name="mag_aper_3_5"
      tablehead="Mag_Aper_3_5"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="5.8 µm AB magnitude in an aperture of 5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_3_5"
      tablehead="Mag_Aper_3_5"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on 5.8 µm AB magnitude in an aperture of 5 pixel radius"
      verbLevel="1" />
    <column name="xwin_image_4"
      tablehead="Xwin_Image_4"
      type="double precision"
      ucd="pos.cartesian.x;em.IR.4-8um"
      unit="pixel"
      description="Object barycentre x position in 8.0 µm image"
      verbLevel="30" />
     <column name="ywin_image_4"
      tablehead="Ywin_Image_4"
      type="double precision"
      ucd="pos.cartesian.y;em.IR.4-8um"
      unit="pixel"
      description="Object barycentre y position in 8.0 µm image"
      verbLevel="30" />
    <column name="isoarea_image_4"
      tablehead="ISOArea_Image_4"
      type="integer"
      ucd="phys.area;em.IR.4-8um"
      unit="pixel**2"
      description="Isophotal area above detection threshold in 8.0 µm image"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="kron_radius_4"
      tablehead="Kron_Radius_4"
      type="real"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pixel"
      description="Kron radius in 8.0 µm image"
      verbLevel="30" />
    <column name="awin_image_4"
      tablehead="AWin_Image_4"
      type="real"
      ucd="phys.size.smajAxis;em.IR.4-8um"
      unit="pixel"
      description="Semi-major axis in 8.0 µm image"
      verbLevel="30" />
    <column name="bwin_image_4"
      tablehead="BWin_Image_4"
      type="real"
      ucd="phys.size.sminAxis;em.IR.4-8um"
      unit="pixel"
      description="Semi-minor axis in 8.0 µm image"
      verbLevel="30" />
    <column name="thetawin_j2000_4"
      tablehead="ThetaWin_J2000_4"
      type="real"
      ucd="pos.posAng;em.IR.4-8um"
      unit="deg"
      description="Position angle, East of North, in 8.0 µm image"
      verbLevel="30" />
    <column name="mag_auto_4"
      tablehead="Mag_Auto_4"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Kron 8.0 µm AB magnitude"
      verbLevel="1" />
    <column name="magerr_auto_4"
      tablehead="MagErr_Auto_4"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on Kron 8.0 µm AB magnitude"
      verbLevel="1" />
    <column name="mag_isocor_4"
      tablehead="Mag_ISOcor_4"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Isophotal 8.0 µm AB magnitude"
      verbLevel="1" />
    <column name="magerr_isocor_4"
      tablehead="MagErr_ISOcor_4"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on isophotal 8.0 µm AB magnitude"
      verbLevel="1" />
    <column name="mag_aper_4_25"
      tablehead="Mag_Aper_4_25"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="8.0 µm AB magnitude in an aperture of 2.5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_4_25"
      tablehead="Mag_Aper_4_25"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on 8.0 µm AB magnitude in an aperture of 2.5 pixel radius"
      verbLevel="1" />
    <column name="mag_aper_4_35"
      tablehead="Mag_Aper_4_35"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="8.0 µm AB magnitude in an aperture of 3.5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_4_35"
      tablehead="Mag_Aper_4_35"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on 8.0 µm AB magnitude in an aperture of 3.5 pixel radius"
      verbLevel="1" />
    <column name="mag_aper_4_5"
      tablehead="Mag_Aper_4_5"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="8.0 µm AB magnitude in an aperture of 5 pixel radius"
      verbLevel="1" />
    <column name="magerr_aper_4_5"
      tablehead="Mag_Aper_4_5"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on 8.0 µm AB magnitude in an aperture of 5 pixel radius"
      verbLevel="1" />
    <meta name="note" tag="1"><![CDATA[
      FLAGS is the bitwise sum of values 1 (object has near neighbours or bad
      pixels) or 2 (object was originally blended with another one).
      ]]></meta>
    <meta name="note" tag="1"><![CDATA[
      Minimum was computed as min(C(3.6), C(4.5), C(5.8), C(8.0)/4) where C(λ)
      is the number of frames combined in band λ at the object position.
      ]]></meta>
  </table>
  <data id="import">
    <sources>data/EGS_IRAC.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          id:id,
          alpha_j2000:alpha_j2000,
          delta_j2000:delta_j2000,
          class_star:class_star,
          flags:flags,
          coverage:coverage,
          flux_radius_1:flux_radius_1,
          xwin_image_1:xwin_image_1,
          ywin_image_1:ywin_image_1,
          isoarea_image_1:isoarea_image_1,
          kron_radius_1:kron_radius_1,
          awin_image_1:awin_image_1,
          bwin_image_1:bwin_image_1,
          thetawin_j2000_1:thetawin_j2000_1,
          mag_auto_1:mag_auto_1,
          magerr_auto_1:magerr_auto_1,
          mag_isocor_1:mag_isocor_1,
          magerr_isocor_1:magerr_isocor_1,
          xwin_image_2:xwin_image_2,
          ywin_image_2:ywin_image_2,
          isoarea_image_2:isoarea_image_2,
          kron_radius_2:kron_radius_2,
          awin_image_2:awin_image_2,
          bwin_image_2:bwin_image_2,
          thetawin_j2000_2:thetawin_j2000_2,
          mag_auto_2:mag_auto_2,
          magerr_auto_2:magerr_auto_2,
          mag_isocor_2:mag_isocor_2,
          magerr_isocor_2:magerr_isocor_2,
          xwin_image_3:xwin_image_3,
          ywin_image_3:ywin_image_3,
          isoarea_image_3:isoarea_image_3,
          kron_radius_3:kron_radius_3,
          awin_image_3:awin_image_3,
          bwin_image_3:bwin_image_3,
          thetawin_j2000_3:thetawin_j2000_3,
          mag_auto_3:mag_auto_3,
          magerr_auto_3:magerr_auto_3,
          mag_isocor_3:mag_isocor_3,
          magerr_isocor_3:magerr_isocor_3,
          xwin_image_4:xwin_image_4,
          ywin_image_4:ywin_image_4,
          isoarea_image_4:isoarea_image_4,
          kron_radius_4:kron_radius_4,
          awin_image_4:awin_image_4,
          bwin_image_4:bwin_image_4,
          thetawin_j2000_4:thetawin_j2000_4,
          mag_auto_4:mag_auto_4,
          magerr_auto_4:magerr_auto_4,
          mag_isocor_4:mag_isocor_4,
          magerr_isocor_4:magerr_isocor_4,
          mag_aper_1_25:mag_aper_1_25,
          mag_aper_1_35:mag_aper_1_35,
          mag_aper_1_5:mag_aper_1_5,
          mag_aper_2_25:mag_aper_2_25,
          mag_aper_2_35:mag_aper_2_35,
          mag_aper_2_5:mag_aper_2_5,
          mag_aper_3_25:mag_aper_3_25,
          mag_aper_3_35:mag_aper_3_35,
          mag_aper_3_5:mag_aper_3_5,
          mag_aper_4_25:mag_aper_4_25,
          mag_aper_4_35:mag_aper_4_35,
          mag_aper_4_5:mag_aper_4_5,
          magerr_aper_1_25:magerr_aper_1_25,
          magerr_aper_1_35:magerr_aper_1_35,
          magerr_aper_1_5:magerr_aper_1_5,
          magerr_aper_2_25:magerr_aper_2_25,
          magerr_aper_2_35:magerr_aper_2_35,
          magerr_aper_2_5:magerr_aper_2_5,
          magerr_aper_3_25:magerr_aper_3_25,
          magerr_aper_3_35:magerr_aper_3_35,
          magerr_aper_3_5:magerr_aper_3_5,
          magerr_aper_4_25:magerr_aper_4_25,
          magerr_aper_4_35:magerr_aper_4_35,
          magerr_aper_4_5:magerr_aper_4_5
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">IRAC EGS catalogue</meta>
    <meta name="shortName">IRAC EGS</meta>
    <meta name="testQuery">
      <meta name="ra">215.0</meta>
      <meta name="dec">52.72</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="main">
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
