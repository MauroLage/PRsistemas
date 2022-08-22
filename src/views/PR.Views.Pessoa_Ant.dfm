inherited frmPessoa: TfrmPessoa
  Caption = 'frmPessoa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeader: TPanel
    inherited lblTitulo: TLabel
      Width = 59
      Caption = 'Pessoas'
      ExplicitWidth = 59
    end
  end
  inherited cardPanel: TCardPanel
    inherited cardCadastro: TCard
      inherited pnlCadastro: TPanel
        object pnlEndereco: TPanel
          AlignWithMargins = True
          Left = 88
          Top = 167
          Width = 702
          Height = 208
          Margins.Left = 88
          Margins.Right = 8
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 4
          object shpCadLinha3: TShape
            Left = 0
            Top = 0
            Width = 702
            Height = 1
            Align = alTop
            Pen.Color = cl3DLight
            ExplicitTop = 8
            ExplicitWidth = 185
          end
          object shpCadLinha4: TShape
            Left = 0
            Top = 207
            Width = 702
            Height = 1
            Align = alBottom
            Pen.Color = cl3DLight
            ExplicitTop = 30
            ExplicitWidth = 798
          end
          object shpCadLinha5: TShape
            Left = 0
            Top = 1
            Width = 1
            Height = 206
            Align = alLeft
            Pen.Color = cl3DLight
            ExplicitHeight = 185
          end
          object shpCadLinha6: TShape
            Left = 701
            Top = 1
            Width = 1
            Height = 206
            Align = alRight
            Pen.Color = cl3DLight
            ExplicitLeft = 0
            ExplicitHeight = 185
          end
          object dbgEndereco: TJvDBGrid
            Left = 1
            Top = 1
            Width = 700
            Height = 206
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsEndereco
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            ColumnResize = gcrDataSet
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 16
            Columns = <
              item
                Expanded = False
                FieldName = 'ENDERECO'
                Title.Alignment = taCenter
                Title.Caption = 'Endere'#231'o'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -9
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Width = 363
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -9
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Cidade'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -9
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Width = 153
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ESTADO'
                Title.Alignment = taCenter
                Title.Caption = 'UF'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -9
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Width = 38
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CEP'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -9
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Width = 81
                Visible = True
              end>
          end
        end
        object pnlCad4: TPanel
          Left = 0
          Top = 41
          Width = 798
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 88
            Top = 3
            Width = 379
            Height = 35
            Margins.Left = 88
            Margins.Right = 5
            Align = alClient
            Caption = 'Nome do Pai:'
            TabOrder = 0
            object dbeNOME_PAI: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 369
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              DataField = 'NOME_PAI'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox4: TGroupBox
            AlignWithMargins = True
            Left = 477
            Top = 3
            Width = 313
            Height = 35
            Margins.Left = 5
            Margins.Right = 8
            Align = alRight
            Caption = 'Nome da M'#227'e:'
            TabOrder = 1
            object dbeNOME_MAE: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 303
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              DataField = 'NOME_MAE'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object pnlCad5: TPanel
          Left = 0
          Top = 0
          Width = 798
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object grpCadID: TGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 3
            Width = 70
            Height = 35
            Margins.Left = 8
            Margins.Right = 5
            Align = alLeft
            Caption = 'C'#243'digo:'
            TabOrder = 0
            object dbtxtID: TDBText
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 60
              Height = 15
              Margins.Top = 0
              Align = alClient
              Alignment = taCenter
              DataField = 'PESSOA_ID'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 24
              ExplicitTop = 16
              ExplicitWidth = 65
              ExplicitHeight = 17
            end
          end
          object grpCadNome: TGroupBox
            AlignWithMargins = True
            Left = 88
            Top = 3
            Width = 379
            Height = 35
            Margins.Left = 5
            Margins.Right = 5
            Align = alClient
            Caption = 'Nome:'
            TabOrder = 1
            object dbeNOME: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 369
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              DataField = 'NOME'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 477
            Top = 3
            Width = 166
            Height = 35
            Margins.Left = 5
            Margins.Right = 5
            Align = alRight
            Caption = 'CPF:'
            TabOrder = 2
            object dbeCPF: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 156
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              DataField = 'CPF'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 653
            Top = 3
            Width = 137
            Height = 35
            Margins.Left = 5
            Margins.Right = 8
            Align = alRight
            Caption = 'RG:'
            TabOrder = 3
            object dbeRG: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 127
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              DataField = 'RG'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object pnlCad3: TPanel
          Left = 0
          Top = 82
          Width = 798
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object GroupBox5: TGroupBox
            AlignWithMargins = True
            Left = 192
            Top = 3
            Width = 598
            Height = 35
            Margins.Left = 5
            Margins.Right = 8
            Align = alClient
            Caption = 'Endere'#231'o:'
            TabOrder = 1
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 588
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox9: TGroupBox
            AlignWithMargins = True
            Left = 88
            Top = 3
            Width = 94
            Height = 35
            Margins.Left = 88
            Margins.Right = 5
            Align = alLeft
            Caption = 'CEP:'
            TabOrder = 0
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 84
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object pnlCad2: TPanel
          Left = 0
          Top = 123
          Width = 798
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object GroupBox7: TGroupBox
            AlignWithMargins = True
            Left = 192
            Top = 3
            Width = 542
            Height = 35
            Margins.Left = 5
            Margins.Right = 5
            Align = alClient
            Caption = 'Cidade:'
            TabOrder = 1
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 532
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox8: TGroupBox
            AlignWithMargins = True
            Left = 744
            Top = 3
            Width = 46
            Height = 35
            Margins.Left = 5
            Margins.Right = 8
            Align = alRight
            Caption = 'UF:'
            TabOrder = 2
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 36
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox6: TGroupBox
            AlignWithMargins = True
            Left = 88
            Top = 3
            Width = 94
            Height = 35
            Margins.Left = 88
            Margins.Right = 5
            Align = alLeft
            Caption = 'N'#250'mero:'
            TabOrder = 0
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 15
              Width = 84
              Height = 15
              Margins.Top = 0
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
    inherited cardVisualizar: TCard
      inherited pnlStatusPesquisa: TPanel
        Top = 375
        Height = 33
        ExplicitTop = 375
        ExplicitHeight = 33
        object grpEndereco: TGroupBox
          Left = 0
          Top = 0
          Width = 798
          Height = 33
          Align = alClient
          Caption = 'Endere'#231'o:'
          TabOrder = 0
          object dbtxtEnd_Pessoa: TDBText
            AlignWithMargins = True
            Left = 10
            Top = 15
            Width = 783
            Height = 15
            Margins.Left = 8
            Margins.Top = 0
            Margins.Bottom = 1
            Align = alClient
            DataField = 'End_Pessoa'
            ExplicitLeft = 264
            ExplicitTop = 8
            ExplicitWidth = 65
            ExplicitHeight = 17
          end
        end
      end
      inherited dbgCadastro: TJvDBGrid
        Height = 298
        TitleRowHeight = 16
        Columns = <
          item
            Expanded = False
            FieldName = 'PESSOA_ID'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -9
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = []
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -9
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = []
            Width = 417
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -9
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = []
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RG'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -9
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = []
            Width = 167
            Visible = True
          end>
      end
    end
  end
  inherited imgBotoes: TImageList
    Top = 256
  end
  object dsEndereco: TDataSource
    Left = 633
    Top = 257
  end
end
