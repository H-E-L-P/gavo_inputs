<resource schema="help_a_list">
  <meta name="title">Herschel Extragalactic Legacy Project (HELP) A list</meta>
  <meta name="creationDate">2020-10-27T00:00:00</meta>
  <meta name="description">
    HELP A List catalogue.
  </meta>
  <meta name="creator.name">Shirley, R.; Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the A list catalogue from the Herschel Extragalactic
    Legacy Project (HELP). These are all objects which have an XID+ flux.
    
    History
    -------
    
    ======== ============================================
    20201027 HELP First public data release with all products on all fields (PDR1)
    ======== ============================================
   
    

  ]]></meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="help_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="field" />
    <index columns="help_id" />
    <index columns="ra" />
    <index columns="dec" />
    <index columns="hp_idx" />
    <index columns="ebv" />
    <index columns="redshift" />
    <index columns="zspec" />
    <index columns="zspec_qual" />
    <index columns="zspec_association_flag" />
    <index columns="stellarity" />
    <index columns="stellarity_origin" />
    <index columns="f_best_u" />
    <index columns="ferr_best_u" />
    <index columns="m_best_u" />
    <index columns="merr_best_u" />
    <index columns="flag_best_u" />
    <index columns="f_best_g" />
    <index columns="ferr_best_g" />
    <index columns="m_best_g" />
    <index columns="merr_best_g" />
    <index columns="flag_best_g" />
    <index columns="f_best_r" />
    <index columns="ferr_best_r" />
    <index columns="m_best_r" />
    <index columns="merr_best_r" />
    <index columns="flag_best_r" />
    <index columns="f_best_i" />
    <index columns="ferr_best_i" />
    <index columns="m_best_i" />
    <index columns="merr_best_i" />
    <index columns="flag_best_i" />
    <index columns="f_best_z" />
    <index columns="ferr_best_z" />
    <index columns="m_best_z" />
    <index columns="merr_best_z" />
    <index columns="flag_best_z" />
    <index columns="f_best_y" />
    <index columns="ferr_best_y" />
    <index columns="m_best_y" />
    <index columns="merr_best_y" />
    <index columns="flag_best_y" />
    <index columns="f_best_j" />
    <index columns="ferr_best_j" />
    <index columns="m_best_j" />
    <index columns="merr_best_j" />
    <index columns="flag_best_j" />
    <index columns="f_best_h" />
    <index columns="ferr_best_h" />
    <index columns="m_best_h" />
    <index columns="merr_best_h" />
    <index columns="flag_best_h" />
    <index columns="f_best_k" />
    <index columns="ferr_best_k" />
    <index columns="m_best_k" />
    <index columns="merr_best_k" />
    <index columns="flag_best_k" />
    <index columns="f_best_ks" />
    <index columns="ferr_best_ks" />
    <index columns="m_best_ks" />
    <index columns="merr_best_ks" />
    <index columns="flag_best_ks" />
    <index columns="f_irac_i1" />
    <index columns="ferr_irac_i1" />
    <index columns="m_irac_i1" />
    <index columns="merr_irac_i1" />
    <index columns="flag_irac_i1" />
    <index columns="f_irac_i2" />
    <index columns="ferr_irac_i2" />
    <index columns="m_irac_i2" />
    <index columns="merr_irac_i2" />
    <index columns="flag_irac_i2" />
    <index columns="f_irac_i3" />
    <index columns="ferr_irac_i3" />
    <index columns="m_irac_i3" />
    <index columns="merr_irac_i3" />
    <index columns="flag_irac_i3" />
    <index columns="f_irac_i4" />
    <index columns="ferr_irac_i4" />
    <index columns="m_irac_i4" />
    <index columns="merr_irac_i4" />
    <index columns="flag_irac_i4" />
    <index columns="f_mips_24" />
    <index columns="ferr_mips_24" />
    <index columns="flag_mips_24" />
    <index columns="f_pacs_green" />
    <index columns="ferr_pacs_green" />
    <index columns="flag_pacs_green" />
    <index columns="f_pacs_red" />
    <index columns="ferr_pacs_red" />
    <index columns="flag_pacs_red" />
    <index columns="f_spire_250" />
    <index columns="ferr_spire_250" />
    <index columns="flag_spire_250" />
    <index columns="f_spire_350" />
    <index columns="ferr_spire_350" />
    <index columns="flag_spire_350" />
    <index columns="f_spire_500" />
    <index columns="ferr_spire_500" />
    <index columns="flag_spire_500" />
    <index columns="cigale_sfr" />
    <index columns="cigale_sfr_err" />
    <index columns="cigale_mstar" />
    <index columns="cigale_mstar_err" />
    <index columns="cigale_dustlumin" />
    <index columns="cigale_dustlumin_err" />
    <index columns="cigale_dustlumin_ironly" />
    <index columns="cigale_dustlumin_ironly_err" />
    <index columns="cigale_chi2_opt" />
    <index columns="cigale_chi2_ir" />
    <index columns="cigale_chi2_red" />
    <index columns="cigale_chi2_ironly" />
    <index columns="flag_gaia" />
    <index columns="flag_cleaned" />
    <index columns="flag_merged" />
    <index columns="flag_optnir_obs" />
    <index columns="flag_optnir_det" />


    <column name="field"
      tablehead="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey"
      required="True"
      verbLevel="1" />
    <column name="help_id"
      tablehead="HELP_Id"
      type="text"
      ucd="meta.id;meta.main"
      description="HELP identifier, based on J2000 position"
      required="True"
      verbLevel="1" />
    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="hp_idx"
      tablehead="HP_Idx"
      type="bigint"
      ucd="pos.healpix"
      description="HEALPix index of the source position at order 13 using the nested scheme."
      required="True"
      verbLevel="30" />
    <column name="ebv"
      tablehead="EBV"
      type="double precision"
      ucd="phot.color.excess"
      description="Galactic extinction (Schlegel et al. 1998) at the object position"
      verbLevel="1" />
    <column name="redshift"
      tablehead="Redshift"
      type="real"
      ucd="src.redshift.phot"
      description="Photometric redshift obtained with EAZY."
      verbLevel="1" />
    <column name="zspec"
      tablehead="zSpec"
      type="real"
      ucd="src.redsfhit"
      description="Spectroscopic redshift collated from the literature."
      verbLevel="1" />
    <column name="zspec_qual"
      tablehead="zSpec_qual"
      type="smallint"
      ucd="meta.code.qual;src.redshift"
      description="Spectroscopic redshift quality flag. FIXME code meaning."
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>
    <column name="zspec_association_flag"
      tablehead="zSpec_Association_Flag"
      type="boolean"
      ucd="meta.code;src.redshift"
      description="Boolean flag set to true when the association of a source to it's redshift may be problematic (possible mis-cross-association)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="stellarity"
      tablehead="stellarity"
      type="real"
      ucd="src.class.starGalaxy"
      description="Index evaluation is the source is point-source: for 0 (not point source) to 1 (point source). Generally name stellarity index."
      verbLevel="1" />
    <column name="stellarity_origin"
      tablehead="stellarity_origin"
      type="text"
      ucd="meta.code;src.class.starGalaxy"
      description="Name of Survey from which stellarity is calculated."
      verbLevel="1" />
      
 <column name="f_best_u"
      tablehead="f_best_u"
      type="double precision"
      ucd="phot.flux;em.opt.U"
      unit="uJy"
      description="Total flux density in the lowest error u band measurement."
      verbLevel="1" />
    <column name="ferr_best_u"
      tablehead="ferr_best_u"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="Uncertainty on f_best_u."
      verbLevel="1" />
    <column name="m_best_u"
      tablehead="m_best_u"
      type="double precision"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="Total AB magnitude in the lowest error u band measurement."
      verbLevel="1" />
    <column name="merr_best_u"
      tablehead="merr_best_u"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Uncertainty on m_best_u."
      verbLevel="1" />
    <column name="flag_best_u"
      tablehead="flag_best_u"
      type="boolean"
      ucd="meta.code.qual;em.opt.U"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    
 <column name="f_best_g"
      tablehead="f_best_g"
      type="double precision"
      ucd="phot.flux;em.opt.B"
      unit="uJy"
      description="Total flux density in the lowest error g band measurement."
      verbLevel="1" />
    <column name="ferr_best_g"
      tablehead="ferr_best_g"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="Uncertainty on f_best_g."
      verbLevel="1" />
    <column name="m_best_g"
      tablehead="m_best_g"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Total AB magnitude in the lowest error g band measurement."
      verbLevel="1" />
    <column name="merr_best_g"
      tablehead="merr_best_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Uncertainty on m_best_g."
      verbLevel="1" />
    <column name="flag_best_g"
      tablehead="flag_best_g"
      type="boolean"
      ucd="meta.code.qual;em.opt.B"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    
 <column name="f_best_r"
      tablehead="f_best_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Total flux density in the lowest error r band measurement."
      verbLevel="1" />
    <column name="ferr_best_r"
      tablehead="ferr_best_r"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on f_best_r."
      verbLevel="1" />
    <column name="m_best_r"
      tablehead="m_best_r"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Total AB magnitude in the lowest error r band measurement."
      verbLevel="1" />
    <column name="merr_best_r"
      tablehead="merr_best_r"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Uncertainty on m_best_r."
      verbLevel="1" />
    <column name="flag_best_r"
      tablehead="flag_best_r"
      type="boolean"
      ucd="meta.code.qual;em.opt.R"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    
 <column name="f_best_i"
      tablehead="f_best_i"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the lowest error i band measurement."
      verbLevel="1" />
    <column name="ferr_best_i"
      tablehead="ferr_best_i"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on f_best_i."
      verbLevel="1" />
    <column name="m_best_i"
      tablehead="m_best_i"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the lowest error i band measurement."
      verbLevel="1" />
    <column name="merr_best_i"
      tablehead="merr_best_i"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on m_best_i."
      verbLevel="1" />
    <column name="flag_best_i"
      tablehead="flag_best_i"
      type="boolean"
      ucd="meta.code.qual;em.opt.I"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    
 <column name="f_best_z"
      tablehead="f_best_z"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the lowest error z band measurement."
      verbLevel="1" />
    <column name="ferr_best_z"
      tablehead="ferr_best_z"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on f_best_z."
      verbLevel="1" />
    <column name="m_best_z"
      tablehead="m_best_z"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the lowest error z band measurement."
      verbLevel="1" />
    <column name="merr_best_z"
      tablehead="merr_best_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on m_best_z."
      verbLevel="1" />
    <column name="flag_best_z"
      tablehead="flag_best_z"
      type="boolean"
      ucd="meta.code.qual;em.opt.I"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    
 <column name="f_best_y"
      tablehead="f_best_y"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the lowest error y band measurement."
      verbLevel="1" />
    <column name="ferr_best_y"
      tablehead="ferr_best_y"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on f_best_y."
      verbLevel="1" />
    <column name="m_best_y"
      tablehead="m_best_y"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the lowest error y band measurement."
      verbLevel="1" />
    <column name="merr_best_y"
      tablehead="merr_best_y"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Uncertainty on m_best_y."
      verbLevel="1" />
    <column name="flag_best_y"
      tablehead="flag_best_y"
      type="boolean"
      ucd="meta.code.qual;em.opt.I"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    
 <column name="f_best_j"
      tablehead="f_best_j"
      type="double precision"
      ucd="phot.flux;em.IR.J"
      unit="uJy"
      description="Total flux density in the lowest error j band measurement."
      verbLevel="1" />
    <column name="ferr_best_j"
      tablehead="ferr_best_j"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="Uncertainty on f_best_j."
      verbLevel="1" />
    <column name="m_best_j"
      tablehead="m_best_j"
      type="double precision"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Total AB magnitude in the lowest error j band measurement."
      verbLevel="1" />
    <column name="merr_best_j"
      tablehead="merr_best_j"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Uncertainty on m_best_j."
      verbLevel="1" />
    <column name="flag_best_j"
      tablehead="flag_best_j"
      type="boolean"
      ucd="meta.code.qual;em.IR.J"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
      
 <column name="f_best_h"
      tablehead="f_best_h"
      type="double precision"
      ucd="phot.flux;em.IR.H"
      unit="uJy"
      description="Total flux density in the lowest error h band measurement."
      verbLevel="1" />
    <column name="ferr_best_h"
      tablehead="ferr_best_h"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.H"
      unit="uJy"
      description="Uncertainty on f_best_h."
      verbLevel="1" />
    <column name="m_best_h"
      tablehead="m_best_h"
      type="double precision"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Total AB magnitude in the lowest error h band measurement."
      verbLevel="1" />
    <column name="merr_best_h"
      tablehead="merr_best_h"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="Uncertainty on m_best_h."
      verbLevel="1" />
    <column name="flag_best_h"
      tablehead="flag_best_h"
      type="boolean"
      ucd="meta.code.qual;em.IR.H"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>    
      
 <column name="f_best_k"
      tablehead="f_best_k"
      type="double precision"
      ucd="phot.flux;em.IR.K"
      unit="uJy"
      description="Total flux density in the lowest error k band measurement."
      verbLevel="1" />
    <column name="ferr_best_k"
      tablehead="ferr_best_k"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="Uncertainty on f_best_k."
      verbLevel="1" />
    <column name="m_best_k"
      tablehead="m_best_k"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Total AB magnitude in the lowest error k band measurement."
      verbLevel="1" />
    <column name="merr_best_k"
      tablehead="merr_best_k"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on m_best_k."
      verbLevel="1" />
    <column name="flag_best_k"
      tablehead="flag_best_k"
      type="boolean"
      ucd="meta.code.qual;em.IR.K"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    
 <column name="f_best_ks"
      tablehead="f_best_ks"
      type="double precision"
      ucd="phot.flux;em.IR.K"
      unit="uJy"
      description="Total flux density in the lowest error ks band measurement."
      verbLevel="1" />
    <column name="ferr_best_ks"
      tablehead="ferr_best_ks"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="Uncertainty on f_best_ks."
      verbLevel="1" />
    <column name="m_best_ks"
      tablehead="m_best_ks"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Total AB magnitude in the lowest error ks band measurement."
      verbLevel="1" />
    <column name="merr_best_ks"
      tablehead="merr_best_ks"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Uncertainty on m_best_ks."
      verbLevel="1" />
    <column name="flag_best_ks"
      tablehead="flag_best_ks"
      type="boolean"
      ucd="meta.code.qual;em.IR.K"
      description="Flag set to true for sources with spurious measurements (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
      
     <column name="f_irac_i1"
      tablehead="f_irac_i1"
      type="double precision"
      ucd="phot.flux;em.IR.3-4um"
      unit="uJy"
      description="Total flux density in the 3-4um band of The Infrared Array Camera (IRAC) on The Spitzer Space Telescope."
      verbLevel="1" />
    <column name="ferr_irac_i1"
      tablehead="ferr_irac_i1"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on f_irac_i1."
      verbLevel="1" />

    <column name="m_irac_i1"
      tablehead="m_irac_i1"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="Total AB magnitude in the 3-4um band of The Infrared Array Camera (IRAC) on The Spitzer Space Telescope."
      verbLevel="1" />
    <column name="merr_irac_i1"
      tablehead="merr_irac_i1"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Uncertainty on m_irac_i1."
      verbLevel="1" />

    <column name="flag_irac_i1"
      tablehead="flag_irac_i1"
      type="boolean"
      ucd="meta.code.qual;em.IR.3-4um"
      description="Flag set to true for sources for which niether the irac_i1 aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="f_irac_i2"
      tablehead="f_irac_i2"
      type="double precision"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Total flux density in the 4-8um band of The Infrared Array Camera (IRAC) on The Spitzer Space Telescope."
      verbLevel="1" />
    <column name="ferr_irac_i2"
      tablehead="ferr_irac_i2"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on f_irac_i2."
      verbLevel="1" />

    <column name="m_irac_i2"
      tablehead="m_irac_i2"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Total AB magnitude in the 4-8um band of The Infrared Array Camera (IRAC) on The Spitzer Space Telescope."
      verbLevel="1" />
    <column name="merr_irac_i2"
      tablehead="merr_irac_i2"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on m_irac_i2."
      verbLevel="1" />

    <column name="flag_irac_i2"
      tablehead="flag_irac_i2"
      type="boolean"
      ucd="meta.code.qual;em.IR.4-8um"
      description="Flag set to true for sources for which niether the irac_i2 aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="f_irac_i3"
      tablehead="f_irac_i3"
      type="double precision"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Total flux density in the 4-8um band of The Infrared Array Camera (IRAC) on The Spitzer Space Telescope."
      verbLevel="1" />
    <column name="ferr_irac_i3"
      tablehead="ferr_irac_i3"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on f_irac_i3."
      verbLevel="1" />

    <column name="m_irac_i3"
      tablehead="m_irac_i3"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Total AB magnitude in the 4-8um band of The Infrared Array Camera (IRAC) on The Spitzer Space Telescope."
      verbLevel="1" />
    <column name="merr_irac_i3"
      tablehead="merr_irac_i3"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Uncertainty on m_irac_i3."
      verbLevel="1" />

    <column name="flag_irac_i3"
      tablehead="flag_irac_i3"
      type="boolean"
      ucd="meta.code.qual;em.IR.4-8um"
      description="Flag set to true for sources for which niether the irac_i3 aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="f_irac_i4"
      tablehead="f_irac_i4"
      type="double precision"
      ucd="phot.flux;em.IR.8-15um"
      unit="uJy"
      description="Total flux density in the 8-15um band of The Infrared Array Camera (IRAC) on The Spitzer Space Telescope."
      verbLevel="1" />
    <column name="ferr_irac_i4"
      tablehead="ferr_irac_i4"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.8-15um"
      unit="uJy"
      description="Uncertainty on f_irac_i4."
      verbLevel="1" />

    <column name="m_irac_i4"
      tablehead="m_irac_i4"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="mag"
      description="Total AB magnitude in the 8-15um band of The Infrared Array Camera (IRAC) on The Spitzer Space Telescope."
      verbLevel="1" />
    <column name="merr_irac_i4"
      tablehead="merr_irac_i4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="mag"
      description="Uncertainty on m_irac_i4."
      verbLevel="1" />

    <column name="flag_irac_i4"
      tablehead="flag_irac_i4"
      type="boolean"
      ucd="meta.code.qual;em.IR.8-15um"
      description="Flag set to true for sources for which niether the irac_i4 aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    
 <column name="f_mips_24"
      tablehead="f_mips_24"
      type="double precision"
      ucd="phot.flux;em.IR.15-30um"
      unit="uJy"
      description="Total flux density in the 15-30um band of The Multiband Imaging Photometer (MIPS) on The Spitzer Space Telescope."
      verbLevel="1" />
    <column name="ferr_mips_24"
      tablehead="ferr_mips_24"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.15-30um"
      unit="uJy"
      description="Uncertainty on f_mips_24."
      verbLevel="1" />

    <column name="flag_mips_24"
      tablehead="flag_mips_24"
      type="boolean"
      ucd="meta.code.qual;em.IR.15-30um"
      description="Flag set to true for sources for which niether the mips_24 aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>     
 <column name="f_pacs_green"
      tablehead="f_pacs_green"
      type="double precision"
      ucd="phot.flux;em.IR.60-100um"
      unit="uJy"
      description="Total flux density in the 60-100um band of Photoconductor Array Camera and Spectrometer (PACS) on The Herschel Space Telescope."
      verbLevel="1" />
    <column name="ferr_pacs_green"
      tablehead="ferr_pacs_green"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.60-100um"
      unit="uJy"
      description="Uncertainty on f_pacs_green."
      verbLevel="1" />



    <column name="flag_pacs_green"
      tablehead="flag_pacs_green"
      type="boolean"
      ucd="meta.code.qual;em.IR.60-100um"
      description="Flag set to true for sources for which niether the pacs_green aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="f_pacs_red"
      tablehead="f_pacs_red"
      type="double precision"
      ucd="phot.flux;em.IR.1500-3000GHz"
      unit="uJy"
      description="Total flux density in the 1500-3000GHz band of Photoconductor Array Camera and Spectrometer (PACS) on The Herschel Space Telescope."
      verbLevel="1" />
    <column name="ferr_pacs_red"
      tablehead="ferr_pacs_red"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.1500-3000GHz"
      unit="uJy"
      description="Uncertainty on f_pacs_red."
      verbLevel="1" />

    <column name="flag_pacs_red"
      tablehead="flag_pacs_red"
      type="boolean"
      ucd="meta.code.qual;em.IR.1500-3000GHz"
      description="Flag set to true for sources for which niether the pacs_red aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
      
  <column name="f_spire_250"
      tablehead="f_spire_250"
      type="double precision"
      ucd="phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="Total flux density in the 750-1500GHz band of The Spectral and Photometric Imaging Reciever (SPIRE) on The Herschel Space Telescope."
      verbLevel="1" />
    <column name="ferr_spire_250"
      tablehead="ferr_spire_250"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="Uncertainty on f_spire_250."
      verbLevel="1" />

    <column name="flag_spire_250"
      tablehead="flag_spire_250"
      type="boolean"
      ucd="meta.code.qual;em.IR.750-1500GHz"
      description="Flag set to true for sources for which niether the spire_250 aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="f_spire_350"
      tablehead="f_spire_350"
      type="double precision"
      ucd="phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="Total flux density in the 750-1500GHz band of The Spectral and Photometric Imaging Reciever (SPIRE) on The Herschel Space Telescope."
      verbLevel="1" />
    <column name="ferr_spire_350"
      tablehead="ferr_spire_350"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="Uncertainty on f_spire_350."
      verbLevel="1" />

    <column name="flag_spire_350"
      tablehead="flag_spire_350"
      type="boolean"
      ucd="meta.code.qual;em.IR.750-1500GHz"
      description="Flag set to true for sources for which niether the spire_350 aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="f_spire_500"
      tablehead="f_spire_500"
      type="double precision"
      ucd="phot.flux;em.IR.400-750GHz"
      unit="uJy"
      description="Total flux density in the 400-750GHz band of The Spectral and Photometric Imaging Reciever (SPIRE) on The Herschel Space Telescope."
      verbLevel="1" />
    <column name="ferr_spire_500"
      tablehead="ferr_spire_500"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.400-750GHz"
      unit="uJy"
      description="Uncertainty on f_spire_500."
      verbLevel="1" />

    <column name="flag_spire_500"
      tablehead="flag_spire_500"
      type="boolean"
      ucd="meta.code.qual;em.IR.400-750GHz"
      description="Flag set to true for sources for which niether the spire_500 aperture nor total flux should be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
      
      
      
      
      
    <column name="cigale_sfr"
      tablehead="CIGALE_SFR"
      type="double precision"
      ucd="phys.SFR"
      unit="Msun/yr"
      description="Star Formation Rate estimated by SED fitting with CIGALE."
      verbLevel="1" />
    <column name="cigale_sfr_err"
      tablehead="CIGALE_SFR_err"
      type="double precision"
      ucd="stat.error;phys.SFR"
      unit="Msun/yr"
      description="Uncertainty on CIGALE_SFR."
      verbLevel="1" />
    <column name="cigale_mstar"
      tablehead="CIGALE_Mstar"
      type="double precision"
      ucd="phys.mass"
      unit="Msun"
      description="Stellar Mass estimated by SED fitting with CIGALE."
      verbLevel="1" />
    <column name="cigale_mstar_err"
      tablehead="CIGALE_Mstar_err"
      type="double precision"
      ucd="stat.error;phys.mass"
      unit="Msun"
      description="Uncertainty on CIGALE_Mstar"
      verbLevel="1" />
    <column name="cigale_dustlumin"
      tablehead="CIGALE_DustLumin"
      type="double precision"
      ucd="phys.dust;phys.luminosity"
      unit="W"
      description="Dust luminosity estimated by SED fitting with CIGALE using both optical and infra-red information."
      verbLevel="1" />
    <column name="cigale_dustlumin_err"
      tablehead="CIGALE_DustLumin_err"
      type="double precision"
      ucd="stat.error;phys.dust;phys.luminosity"
      unit="W"
      description="Uncertainty on CIGALE_DustLumin."
      verbLevel="1" />
    <column name="cigale_dustlumin_ironly"
      tablehead="CIGALE_DustLumin_IRonly"
      type="double precision"
      ucd="phys.dust;phys.luminosity"
      unit="W"
      description="Dust luminosity estimated by SED fitting with CIGALE using only the infra-red information."
      verbLevel="1" />
    <column name="cigale_dustlumin_ironly_err"
      tablehead="CIGALE_DustLumin_IRonly_err"
      type="double precision"
      ucd="stat.error;phys.dust;phys.luminosity"
      unit="W"
      description="Uncertainty on CIGALE_DustLumin_IRonly"
      verbLevel="1" />
    <column name="cigale_chi2_opt"
      tablehead="cigale_chi2_opt"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced optical chi squared of best CIGALE fit to all data."
      verbLevel="1" />
    <column name="cigale_chi2_ir"
      tablehead="cigale_chi2_ir"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced infrared chi squared of best CIGALE fit to all data."
      verbLevel="1" />
    <column name="cigale_chi2_red"
      tablehead="cigale_chi2_red"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced chi squared of best CIGALE fit."
      verbLevel="1" />
    <column name="cigale_chi2_ironly"
      tablehead="cigale_chi2_ironly"
      type="double precision"
      ucd="stat.fit.chi2"
      description="Reduced chi squared of best CIGALE fit to infrared data."
      verbLevel="1" />

    <column name="flag_gaia"
      tablehead="Flag_Gaia"
      type="smallint"
      ucd="meta.code"
      description="Flag indicating the increasing probability of the source being a Gaia object (see note)."
      note="1"
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>
    <column name="flag_cleaned"
      tablehead="Flag_Cleaned"
      type="boolean"
      ucd="meta.code"
      description="Boolean flag denoting that the source was associated to really near object that were removed during the cleaning procedure."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="flag_merged"
      tablehead="Flag_Merged"
      type="boolean"
      ucd="meta.code"
      description="Boolean flag denoting a possible mis-association during the cross-matching of the various catalogues."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="flag_optnir_obs"
      tablehead="Flag_OptNIR_Obs"
      type="smallint"
      ucd="meta.code"
      description="Flag indicating in which wavelength regimes the source was observed (see note)."
      note="2"
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>
    <column name="flag_optnir_det"
      tablehead="Flag_OptNIR_Det"
      type="smallint"
      ucd="meta.code"
      description="Flag indicating in which wavelength regimes the source was detected (see note)."
      note="2"
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>

    <meta name="note" tag="1"><![CDATA[
      The Flag_Gaia is computed by cross-matching the catalogue with the Gaia
      catalogue:

      +-------+---------------------------------------------------------------+
      | Value | Meaning                                                       |
      +-------+---------------------------------------------------------------+
      | 1     | The object if possibly a Gaia object: the nearest Gaia source |
      |       | is between 1.5 arcsec and 2 arcsec.                           |
      +-------+---------------------------------------------------------------+
      | 2     | The object if probably a Gaia object: the nearest Gaia source |
      |       | is between 0.6 arcsec and 1.5 arcsec.                         |
      +-------+---------------------------------------------------------------+
      | 3     | The object is definitely a Gaia object: the nearest Gaia      |
      |       | source is nearer than 0.6 arcsec.                             |
      +-------+---------------------------------------------------------------+
      | 0     | Otherwise (the nearest Gaia source is farer than 2 arcsec).   |
      +-------+---------------------------------------------------------------+

      ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      The Flag_OptNIR_Obs and Flag_OptNIR_Det are computed while cross-matching
      the optical and near/mid infrared catalogues and indicate if a source was
      observed (i.e. is on the coverage of surveys at the given regime) or
      detected (i.e. is present in the catalogue) in various wavelength regime.
      The detection is based on the detection wavelengths of the catalogues, and
      to be counted as detected, a source must be present in at least two
      catalogues.

      The flag is a composed binary flag with these values:

      +-------+-------------------------------------------------------------+
      | Value | Meaning                                                     |
      +-------+-------------------------------------------------------------+
      | 1     | Observation/detection in optical wavelengths.               |
      +-------+-------------------------------------------------------------+
      | 2     | Observation/detection in near-infrared wavelengths.         |
      +-------+-------------------------------------------------------------+
      | 4     | Observation/detection in mid-infrared wavelengths.          |
      +-------+-------------------------------------------------------------+

      ]]></meta>
  </table>

  <data id="import">
    <sources>
      <pattern>data/main/*.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps></simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">HELP main catalogue</meta>
    <meta name="shortName">HELP main</meta>
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
      <condDesc buildFrom="help_id" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
