menu_row <- tabItem(tabName = "row",
                    fluidRow(
                      column(width = 4,
                             box(
                               title = "外管数据上传", width = NULL, solidHeader = TRUE, status = "primary",
                               tsui::uiTemplate(templateName ='外管模板'),
                               tsui::mdl_file(id='file_Asone_upload',label ='上传外管EXCEL表格' ),
                               #只有上传了之后才可以点击预览
                               shiny::actionButton(inputId ='btn_Asone_preview' ,label = '预览'), 
                               shiny::actionButton(inputId ='btn_Asone_updateERP' ,label = 'ERP更新'), 
                               
                               tsui::mdl_download_button(id = 'btn_Asone_download',label = '下载数据')


                             ),
                             # box(
                             #   title = "出口报关上传", width = NULL, solidHeader = TRUE, status = "primary",
                             #   tsui::uiTemplate(templateName ='出口报关模板'),
                             #   tsui::mdl_file(id='file_EXport_upload',label ='上传出口报关EXCEL表格' ),
                             #   shiny::actionButton(inputId ='btn_Export_preview' ,label = '预览')
                             # ),
                             # box(
                             #   title = "更新ERP操作", width = NULL, solidHeader = TRUE, status = "primary",
                             #   "Box content"
                             # )
                      ),
                      
                      # column(width = 4,
                      #        box(
                      #          title = "出口报送单模板", width = NULL, solidHeader = TRUE, status = "primary",
                      #          "Box content"
                      #        ),
                      #        box(
                      #          title = "Title 1", width = NULL, solidHeader = TRUE, status = "primary",
                      #          "Box content"
                      #        ),
                      #        box(
                      #          title = "Title 1", width = NULL, solidHeader = TRUE, status = "primary",
                      #          "Box content"
                      #        )
                      # ),
                      
                      column(width=8,
                             box(
                               title = "外管数据区", width = NULL, solidHeader = TRUE, status = "primary",
                               tsui::uiScrollX(tsui::mdl_dataTable(id='dt_Asone_baseInfo',label='外管'))
                             ),
                             # box(
                             #   title = "buffer", width = NULL, solidHeader = TRUE, status = "primary",
                             #   "Box content"
                             # ),
                             # box(
                             #   title = "出口数据区", width = NULL, solidHeader = TRUE, status = "primary",
                             #   tsui::mdl_dataTable(id='dt_Export_baseInfo',label='出口')
                             # )
                      )
                    )
)