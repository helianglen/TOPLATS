      integer ipix,i,inc_frozen,i_und,i_moss,ivgtyp,iffroz
      integer ifcoarse,iopthermc,iopgveg,iopthermc_v,iopstab
      integer maxnri,iopsmini

      real*8 dt,canclos,extinct,PackWater,SurfWater,Swq
      real*8 VaporMassFlux,TPack,TSurf,r_MeltEnergy,Outflow
      real*8 xleact_snow,hact_snow,rn_snow,PackWater_us
      real*8 SurfWater_us,Swq_us,VaporMassFlux_us,TPack_us
      real*8 TSurf_us,r_MeltEnergy_us,Outflow_us,xleact_snow_us
      real*8 hact_snow_us,rn_snow_us,dens,dens_us,albd_us,alb_moss
      real*8 alb_snow,albd,albw,albw_us,rsd,rld,tcel,vppa,psychr
      real*8 xlhv,tkel,zww,za,uzw,press,appa,vpsat,tcel_ic
      real*8 vppa_ic,psychr_ic,xlhv_ic,tkel_ic,vpsat_ic,tkmid
      real*8 tkact,tkmid_us,tkact_us,tskinact_moss,tkact_moss
      real*8 tkmid_moss,Tdeepstep,dshact,epetd,gact,epetd_us
      real*8 dshact_moss,xle_act_moss,rnetd,xled,hd,gd,dshd
      real*8 tkd,tkmidd,rnetw,xlew,hw,gw,dshw,tkw,tkmidw
      real*8 tskinactd_moss,tkactd_moss,tkmidactd_moss,ds_p_moss
      real*8 epetw,dshact_us,rnetw_us,xlew_us,hw_us,gw_us
      real*8 dshw_us,tkw_us,tkmidw_us,epetw_us,rnetd_us,xled_us
      real*8 hd_us,gd_us,dshd_us,tkd_us,tkmidd_us,rnet_pot_moss
      real*8 xle_p_moss,h_p_moss,g_p_moss,tk_p_moss,tkmid_p_moss
      real*8 tskin_p_moss,eact_moss,thetar,thetas
      real*8 psic,bcbeta,quartz,rocpsoil,tcbeta,tcbeta_us,zdeep
      real*8 zmid,zrzmax,r_moss_depth,eps,emiss_moss,zpd_moss
      real*8 rib_moss,z0m_moss,z0h_moss,epet_moss,xlai,xlai_us
      real*8 emiss,zpd,zpd_us,z0m,z0h,z0m_us,z0h_us,f1par,f3vpd
      real*8 f4temp,f1par_us,f3vpd_us,f4temp_us,rescan,rescan_us
      real*8 f1,f2,f3,emiss_us,rsmin,rsmax,rsmin_us,rsmax_us,Rpl
      real*8 Rpl_us,f3vpdpar,f3vpdpar_us,trefk,f4temppar,trefk_us
      real*8 f4temppar_us,row,cph2o,roa,cp,roi,toleb
      real*8 roa_ic,ravd,rahd,ravd_us,rahd_us,rav_moss
      real*8 rah_moss,rib,RaSnow,rib_us,rzsm,tzsm,rzsm1,tzsm1
      real*8 r_mossm,zrz,smold,rzdthetaudtemp,smpet0
      real*8 zero,one,two,three,four,five,six
      real*8 rs_over,rs_under,snow,rain,smtmp,thermc1,thermc2
      real*8 heatcap1,heatcap2,heatcapold,thermc,heatcap
      real*8 thermc_moss,heatcap_moss,thermc_us,heatcap_us
      real*8 ravw,ravw_us,rahw,rahw_us
      !real*8 clcf1par,clcf3vpd,clcf4temp
      data zero,one,two,three,four,five,six/0.d0,1.d0,2.d0,&
             3.d0,4.d0,5.d0,6.d0/