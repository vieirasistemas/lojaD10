�
 TFRMMAPADESEMBOLSOIMP 0�>  TPF0TFrmMapaDesembolsoImpFrmMapaDesembolsoImpLeft� Top� BorderIconsbiSystemMenu BorderStylebsSingleCaptionFinanceiro - Mapa de DesembolsoClientHeight)ClientWidth� Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoDesktopCenterScaledPixelsPerInch`
TextHeight 	TQuickRep	QuickRep1Left Top� Width0Height Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetdm.mapadesembolsoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinAutoPrintIfEmpty	ReportTitle   Relatório - Recebimento
SnapToGrid	UnitsMMZoomd TQRGroupQRGroup1Left&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.ValuesUUUUUUU�@UUUUUU��	@ 
ExpressionTipoI
FooterBandQRBand2Master	QuickRep1ReprintOnNewPage  TQRBandQRBand1Left&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@UUUUUU��	@ BandTyperbDetail TQRExprQRExpr7LeftTopWidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@UUUUUUU�@      Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	
Expression
vlrreceberMask#,##0.00FontSize
  TQRExprQRExpr10LeftTopWidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@UUUUUUU�@      Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	
Expressionvlrreceber-vlrpagarMask#,##0.00FontSize
  TQRExprQRExpr6LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUU� @UUUUUUU�@������j�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	
ExpressiontextoFontSize
  TQRExprQRExpr2Left�TopWidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��	@UUUUUUU�@      Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	
ExpressionvlrpagarMask#,##0.00FontSize
   TQRBandQRBand2Left&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@UUUUUU��	@ BandTyperbGroupFooter TQRLabelQRLabel7LeftTopWidth8HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUU�@UUUUUUU�@������*�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Sub-TotalColorclWhiteTransparentWordWrap	FontSize
  TQRExprQRExpr1LeftTopWidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@UUUUUUU�@      Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	TransparentWordWrap	
ExpressionSUM(vlrreceber)Mask#,##0.00FontSize
  TQRExprQRExpr4LeftTopWidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@UUUUUUU�@      Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	TransparentWordWrap	
ExpressionSUM(vlrreceber-vlrpagar)Mask#,##0.00FontSize
  TQRExprQRExpr15Left�TopWidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������P�	@UUUUUUU�@      Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	TransparentWordWrap	
ExpressionSUM(vlrpagar)Mask#,##0.00FontSize
   TQRBandPageFooterBand1Left&Top� Width�HeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@UUUUUU��	@ BandTyperbPageFooter TQRLabel	QRLabel22Left TopWidth7HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@          UUUUUUU� @UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionGESTORColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel8LeftpTopWidthqHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      `�	@UUUUUUU� @UUUUUU}�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionVIEIRA SISTEMASColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
   TQRBandSummaryBand1Left&Top� Width�Height Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.ValuesUUUUUUU�@UUUUUU��	@ BandType	rbSummary TQRLabelQRLabel9LeftTopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUU�@UUUUUUU�@UUUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotal GeralColorclWhiteTransparentWordWrap	FontSize
  TQRExprQRExpr25LeftTopWidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@UUUUUUU�@      Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	TransparentWordWrap	
ExpressionSUM(vlrreceber)Mask#,##0.00FontSize
  TQRExprQRExpr28LeftTopWidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@��������	@UUUUUUU�@      Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	TransparentWordWrap	
ExpressionSUM(vlrreceber-vlrpagar)Mask#,##0.00FontSize
  TQRExprQRExpr17Left�TopWidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������P�	@UUUUUUU�@      Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	TransparentWordWrap	
ExpressionSUM(vlrpagar)Mask#,##0.00FontSize
   TQRBand
TitleBand1Left&Top&Width�HeightSFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@UUUUUU��	@ BandTyperbTitle TQRLabelqrtituloLeft Top9Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@                Ж@      `�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   HISTÓRICO DO CLIENTEColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel19LeftPTop Width6HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@                ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionData       :ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTransparentWordWrap	FontSize
  
TQRSysData
QRSysData2Left�Top Width&HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      P�	@          UUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTransparentFontSize
  TQRLabel	QRLabel20LeftPTopWidth7HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@��������@UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionHora       :ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTransparentWordWrap	FontSize
  
TQRSysData
QRSysData3Left�TopWidth(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU��	@��������@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsTimeFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTransparentFontSize
  
TQRSysData
QRSysData4Left�Top(Width1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU��	@��������@UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsPageNumberFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTransparentFontSize
  TQRLabel	QRLabel21LeftPTop(Width;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@��������@�������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Página    :ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel15Left Top&Width'HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@          UUUUUU�@      `�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionCNPJ:ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText6Left Top Width0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@                           �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetdm.parametros	DataFieldfantasiaFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMicrosoft Sans Serif
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText7Left TopWidth<HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@                ��@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetdm.parametros	DataFieldEnderecoFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMicrosoft Sans Serif
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText8Left+Top&WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@UUUUUU�@������*�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetdm.parametros	DataFieldCnpjFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMicrosoft Sans Serif
Font.Style 
ParentFontTransparentWordWrap	FontSize
   TQRBandColumnHeaderBand1Left&TopyWidth�HeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@UUUUUU��	@ BandTyperbColumnHeader TQRLabelQRLabel1LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUU�@UUUUUUU� @      (�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption   Período de VencimentoColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel2LeftTopWidthiHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@�������@UUUUUUU� @      �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Contas à ReceberColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel3Left�TopWidth[HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU��	@UUUUUUU� @TUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Contas à PagarColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel4LeftBTopWidth;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU)�	@UUUUUUU� @�������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	ResultadoColorclWhiteTransparentWordWrap	FontSize
    TBitBtnbt1LeftTopWidthKHeightCaption&OkFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderOnClickbt1Click
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� UUUUUUUUUUUUUUUUUUUUUUUUUUU�UUUUUUYUUUUUUW�UUUUU��UUUUUUww�UUUUU��UUUUUUww�UUUUY��UUUUWwwUUUU���UUUUwww�UUW���UUUWwuww�UUyUY�UUUwuUWw�UUUUUY�UUUUUWwUUUUUU�UUUUUUw�UUUUUY�UUUUUUWw�UUUUUUyUUUUUUw�UUUUUW�UUUUUUWw�UUUUUUY�UUUUUUWwUUUUUUUUUUUUUUUU	NumGlyphs  TBitBtnbt2LeftpTopWidthQHeightCaptionSai&rFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderOnClickbt2Click
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 33333333333���33339��33333�ww��339����3337w�w�33�3ps��33w�7?7�9�� 9�37ww3w�99�ps3�37�w7337��3��339�w�w�37�39�339�w�77�37�33ps39�w�37�7�3339�w�3w�7�33 	�9�w�3ws�s9�3 	�937?�wsw��9�3 ��37s�www33��ps9�33w?���s339����3337w37w33339��333337ww333	NumGlyphs  TDataSourceDataSource1DataSet
qrconsultaLeft  TZQueryqratualizar
Connectiondm.ZConnection1Params Left�   TZQuery
qrconsulta
Connectiondm.ZConnection1SQL.Strings;select liquido as valor,vencto,pgto,emissao from docreceber Params Left�  TFloatFieldqrconsultavalor	FieldNamevalor  
TDateFieldqrconsultavencto	FieldNamevenctoRequired	  
TDateFieldqrconsultapgto	FieldNamepgto  
TDateFieldqrconsultaemissao	FieldNameemissaoRequired	    