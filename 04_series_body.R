menu_series<- tabItem(tabName = "series",
                      fluidRow(
                        column(width = 3,
                               box(
                                 title = "项目资料", width = NULL, solidHeader = TRUE, status = "primary",
                                 "规则检查"
                               ),
                               box(
                                 title = "对象存储", width = NULL, solidHeader = TRUE, status = "primary",
                                 "操作视频"
                               ),
                               box(
                                 title = "知识库", width = NULL, solidHeader = TRUE, status = "primary",
                                 "操作手册"
                               )
                        ),
                        
                        # column(width = 4,
                        #        box(
                        #          title = "Title 1", width = NULL, solidHeader = TRUE, status = "primary",
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
                        
                        column(width=9,
                               box(
                                 title = "资料区域", width = NULL, solidHeader = TRUE, status = "primary",
                                 "Box content"
                               ),
                               box(
                                 title = "存储云仓", width = NULL, solidHeader = TRUE, status = "primary",
                                 "Box content"
                               ),
                               box(
                                 title = "知识基地", width = NULL, solidHeader = TRUE, status = "primary",
                                 "Box content"
                               )
                        )
                      )
)