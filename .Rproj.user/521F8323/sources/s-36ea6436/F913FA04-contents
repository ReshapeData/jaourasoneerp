
#shinyserver start point----
shinyServer(function(input, output,session) {
  
  
  #预览功能处理 begin----
  var_file_Asone_upload = tsui::var_file('file_Asone_upload')
  #新增功能
  
  # print(var_file_Asone_upload)
  
  shiny::observeEvent(input$btn_Asone_preview,{
    print('you click btn_Asone_preview!')
    
    file_name =  var_file_Asone_upload()
    data <-readxl::read_excel(file_name)
    # print(data)
    #显示给用户看
    tsui::run_dataTable2(id='dt_Asone_baseInfo',data=data)
    tsui::pop_notice('预览已成功')
    tsui::run_download_xlsx(id = 'btn_Asone_download',data =data ,filename = '外管数据.xlsx')
  })
  
  #预览功能处理 end----
  
  
  
  #更新功能处理 begin----
  shiny::observeEvent(input$btn_Asone_updateERP,{
    # jaour test token 
    token= 'F91CF3E3-8962-47F2-823F-C5CCAAFC66CA'
    
    
    # jaour real online token 
    # token= 'C0426D23-1927-4314-8736-A74B2EF7A039'
    
    file_name =  var_file_Asone_upload()
    data <-readxl::read_excel(file_name)
    
    
    # print(data)
    print('you click btn_Asone_updateERP!')
    # 示例三 分页上传
    
    ncount = nrow(data)
    page_info = tsdo::paging_setting(ncount,1)
    
    print(page_info)
    # page_info
    batch = nrow(page_info)
    print(batch)
    
    for (i in 1:batch) {
      start = page_info$FStart[i]
      end =page_info$FEnd[i]
      item =data[start:end,]
      # print(item['报关日期'])
      print("--------------")
      
      FSettleNo=as.character(item$结算单号)
      
      F_KD_SETTLENO=as.character(item$报关单号)
      
      F_KD_OUTHUBDATE =as.character(item$报关日期)
      
      F_KD_OUTAMOUNT=as.character(item$报关金额)
      
      FBillno=as.character(item$收款单号)
      
      FSeq=as.character(item$收款明细行号)
      
      
      # 查询语句
      
      sql_sl1=sprintf("select a.FSETTLENO ,a.F_KD_SETTLENO ,a.F_KD_OUTHUBDATE ,a.F_KD_OUTAMOUNT from T_AR_RECEIVEBILLENTRY a inner join T_AR_RECEIVEBILL b  on  a.FID = b.fid where b.FBILLNO='%s' and a.FSEQ ='%s'",FBillno,FSeq)
      # print(sql_sl1)
      
      yy=tsda::sql_select2(token='F91CF3E3-8962-47F2-823F-C5CCAAFC66CA',sql =sql_sl1)
      yy=tsda::sql_select2(token=token,sql =sql_sl1)
      print('第一次查询')
      print(yy)
      
      sql_upA=sprintf("update a set a.FSETTLENO ='%s' from T_AR_RECEIVEBILLENTRY a inner join T_AR_RECEIVEBILL b on  a.FID = b.fid where b.FBILLNO='%s' and a.FSEQ ='%s'",FSettleNo ,FBillno,FSeq)
      sql_upB=sprintf("update a set a.F_KD_SETTLENO ='%s' from T_AR_RECEIVEBILLENTRY a inner join T_AR_RECEIVEBILL b on  a.FID = b.fid where b.FBILLNO='%s' and a.FSEQ ='%s'",F_KD_SETTLENO,FBillno,FSeq)
      sql_upC=sprintf("update a set a.F_KD_OUTHUBDATE = '%s' from T_AR_RECEIVEBILLENTRY a inner join T_AR_RECEIVEBILL b on  a.FID = b.fid where b.FBILLNO='%s' and a.FSEQ ='%s'", F_KD_OUTHUBDATE,FBillno,FSeq)
      sql_upD=sprintf("update a set a.F_KD_OUTAMOUNT ='%s' from T_AR_RECEIVEBILLENTRY a inner join T_AR_RECEIVEBILL b on  a.FID = b.fid where b.FBILLNO='%s' and a.FSEQ ='%s'",F_KD_OUTAMOUNT,FBillno,FSeq)
      # print(sql_up)
      
      # if FSettleNo is NA,pass.
      if(is.na(FSettleNo)){
        print("FSettleNo是NA")}else{
          print(sql_upA)
          tsda::sql_update2(token = token,sql_str = sql_upA)
        } 
      # if F_KD_SETTLENO is NA,pass.
      if(is.na(F_KD_SETTLENO)){
        print("F_KD_SETTLENO是NA")}else{
          print(sql_upB)
          tsda::sql_update2(token = token,sql_str = sql_upB)
        } 
      # if F_KD_OUTHUBDATE是NA,pass
      if(is.na(F_KD_OUTHUBDATE)){
        print("F_KD_OUTHUBDATE是NA")}else{
          print(sql_upC)
          tsda::sql_update2(token = token,sql_str = sql_upC)
        } 
      # if F_KD_OUTHUBDATE is NA,PASS
      if(is.na(F_KD_OUTHUBDATE)){
        print("F_KD_OUTHUBDATE是NA")}else{
          print(sql_upD)
          tsda::sql_update2(token = token,sql_str = sql_upD)
        } 
      
      print('再一次查询')
      yy=tsda::sql_select2(token=token,sql =sql_sl1)
      print(yy)

    }
    
    
    tsui::pop_notice('更新ERP数据已成功')
    
  })
  
  #更新功能处理 end----
  
  
  
})