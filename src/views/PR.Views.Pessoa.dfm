inherited frmPessoa: TfrmPessoa
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 470
  ClientWidth = 874
  Color = clBtnFace
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 874
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Color = 16448250
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 59
      Height = 24
      Margins.Left = 10
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Pessoas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 21
    end
  end
  object cardPanel: TCardPanel
    Left = 0
    Top = 44
    Width = 874
    Height = 426
    Align = alClient
    ActiveCard = cardCadastro
    TabOrder = 1
    object cardCadastro: TCard
      Left = 1
      Top = 1
      Width = 872
      Height = 424
      Caption = 'Cadastro'
      CardIndex = 0
      TabOrder = 1
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 872
        Height = 394
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object pnlPessoa: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 872
          Height = 177
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pnlManutencao: TPanel
            Left = 111
            Top = 0
            Width = 761
            Height = 177
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object pnlCad2: TPanel
              Left = 0
              Top = 136
              Width = 761
              Height = 43
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 3
              object GroupBox7: TGroupBox
                AlignWithMargins = True
                Left = 136
                Top = 3
                Width = 561
                Height = 37
                Margins.Left = 5
                Margins.Right = 5
                Align = alClient
                Caption = 'Cidade:'
                TabOrder = 1
                object dbeCIDADE: TDBEdit
                  AlignWithMargins = True
                  Left = 7
                  Top = 15
                  Width = 547
                  Height = 17
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Right = 5
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'CIDADE'
                  DataSource = dsEndereco
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
                Left = 707
                Top = 3
                Width = 46
                Height = 37
                Margins.Left = 5
                Margins.Right = 8
                Align = alRight
                Caption = 'UF:'
                TabOrder = 2
                object dbeESTADO: TDBEdit
                  AlignWithMargins = True
                  Left = 7
                  Top = 15
                  Width = 32
                  Height = 17
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Right = 5
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'ESTADO'
                  DataSource = dsEndereco
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
                Left = 5
                Top = 3
                Width = 121
                Height = 37
                Margins.Left = 5
                Margins.Right = 5
                Align = alLeft
                Caption = 'N'#250'mero:'
                TabOrder = 0
                object dbeNUMERO: TDBEdit
                  AlignWithMargins = True
                  Left = 7
                  Top = 15
                  Width = 107
                  Height = 17
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Right = 5
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'NUMERO'
                  DataSource = dsEndereco
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
              AlignWithMargins = True
              Left = 0
              Top = 93
              Width = 761
              Height = 43
              Margins.Left = 0
              Margins.Top = 8
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
              object btnBuscaCEP: TSpeedButton
                AlignWithMargins = True
                Left = 101
                Top = 8
                Width = 27
                Height = 27
                Cursor = crHandPoint
                Hint = 'Busca CEP'
                Margins.Top = 8
                Margins.Bottom = 8
                Align = alLeft
                ImageIndex = 3
                Images = imgBotoes
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnBuscaCEPClick
                ExplicitLeft = 89
              end
              object GroupBox5: TGroupBox
                AlignWithMargins = True
                Left = 136
                Top = 3
                Width = 617
                Height = 37
                Margins.Left = 5
                Margins.Right = 8
                Align = alClient
                Caption = 'Endere'#231'o:'
                TabOrder = 1
                object dbeENDERECO: TDBEdit
                  AlignWithMargins = True
                  Left = 7
                  Top = 15
                  Width = 603
                  Height = 17
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Right = 5
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'ENDERECO'
                  DataSource = dsEndereco
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
                Left = 5
                Top = 3
                Width = 93
                Height = 37
                Margins.Left = 5
                Margins.Right = 0
                Align = alLeft
                Caption = 'CEP:'
                TabOrder = 0
                object dbeCEP: TDBEdit
                  AlignWithMargins = True
                  Left = 7
                  Top = 15
                  Width = 79
                  Height = 17
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Right = 5
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'CEP'
                  DataSource = dsEndereco
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
            object pnlCad4: TPanel
              Left = 0
              Top = 41
              Width = 761
              Height = 44
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 8
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object GroupBox3: TGroupBox
                AlignWithMargins = True
                Left = 5
                Top = 3
                Width = 419
                Height = 38
                Margins.Left = 5
                Margins.Right = 5
                Align = alClient
                Caption = 'Nome do Pai:'
                TabOrder = 0
                object dbeNOME_PAI: TDBEdit
                  AlignWithMargins = True
                  Left = 5
                  Top = 15
                  Width = 409
                  Height = 18
                  Margins.Top = 0
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
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
                Left = 434
                Top = 3
                Width = 319
                Height = 38
                Margins.Left = 5
                Margins.Right = 8
                Align = alRight
                Caption = 'Nome da M'#227'e:'
                TabOrder = 1
                object dbeNOME_MAE: TDBEdit
                  AlignWithMargins = True
                  Left = 5
                  Top = 15
                  Width = 309
                  Height = 18
                  Margins.Top = 0
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
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
              Width = 761
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object grpCadNome: TGroupBox
                AlignWithMargins = True
                Left = 5
                Top = 3
                Width = 419
                Height = 35
                Margins.Left = 5
                Margins.Right = 5
                Align = alClient
                Caption = 'Nome:'
                TabOrder = 0
                object dbeNOME: TDBEdit
                  AlignWithMargins = True
                  Left = 5
                  Top = 15
                  Width = 409
                  Height = 15
                  Margins.Top = 0
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
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
                Left = 434
                Top = 3
                Width = 117
                Height = 35
                Margins.Left = 5
                Margins.Right = 5
                Align = alRight
                Caption = 'CPF:'
                TabOrder = 1
                object dbeCPF: TDBEdit
                  AlignWithMargins = True
                  Left = 5
                  Top = 15
                  Width = 107
                  Height = 15
                  Hint = 'CPF n'#227'o validado para facilitar digita'#231#227'o'
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
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object GroupBox2: TGroupBox
                AlignWithMargins = True
                Left = 561
                Top = 3
                Width = 192
                Height = 35
                Margins.Left = 5
                Margins.Right = 8
                Align = alRight
                Caption = 'RG:'
                TabOrder = 2
                object dbeRG: TDBEdit
                  AlignWithMargins = True
                  Left = 5
                  Top = 15
                  Width = 182
                  Height = 15
                  Margins.Top = 0
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
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
          end
          object pnlOpcaoCad: TPanel
            Left = 0
            Top = 0
            Width = 111
            Height = 177
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object shpLinhaCad1: TShape
              AlignWithMargins = True
              Left = 8
              Top = 35
              Width = 98
              Height = 1
              Margins.Left = 8
              Margins.Right = 5
              Align = alBottom
              Pen.Color = cl3DLight
              ExplicitLeft = 0
              ExplicitTop = -33
              ExplicitWidth = 111
            end
            object grpPessoaCad: TGroupBox
              AlignWithMargins = True
              Left = 8
              Top = 39
              Width = 100
              Height = 43
              Margins.Left = 8
              Margins.Top = 0
              Margins.Bottom = 2
              Align = alBottom
              Caption = 'Pessoa:'
              TabOrder = 1
              object btnGravaPessoa: TSpeedButton
                AlignWithMargins = True
                Left = 5
                Top = 15
                Width = 90
                Height = 26
                Cursor = crHandPoint
                Margins.Top = 0
                Align = alTop
                Caption = 'Grava (F2)'
                ImageIndex = 4
                Images = imgBotoes
                Flat = True
                OnClick = btnGravaPessoaClick
                ExplicitLeft = 10
                ExplicitTop = 23
                ExplicitWidth = 91
              end
            end
            object GroupBox10: TGroupBox
              AlignWithMargins = True
              Left = 8
              Top = 98
              Width = 100
              Height = 79
              Margins.Left = 8
              Margins.Top = 14
              Margins.Bottom = 0
              Align = alBottom
              Caption = 'Endere'#231'o:'
              TabOrder = 2
              ExplicitLeft = 15
              ExplicitTop = 154
              object pnl1: TPanel
                Left = 50
                Top = 15
                Width = 48
                Height = 62
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object btnGravaEndereco: TSpeedButton
                  AlignWithMargins = True
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Gravar'
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Align = alTop
                  Caption = '(F7)'
                  ImageIndex = 4
                  Images = imgBotoes
                  Flat = True
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = btnGravaEnderecoClick
                  ExplicitLeft = 3
                  ExplicitTop = 3
                  ExplicitWidth = 42
                end
                object btnCanEndereco: TSpeedButton
                  AlignWithMargins = True
                  Left = 0
                  Top = 31
                  Width = 48
                  Height = 28
                  Cursor = crHandPoint
                  Hint = 'Cancelar'
                  Margins.Left = 0
                  Margins.Right = 0
                  Align = alClient
                  Caption = '(F8)'
                  ImageIndex = 5
                  Images = imgBotoes
                  Flat = True
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = btnCanEnderecoClick
                  ExplicitTop = 13
                  ExplicitHeight = 49
                end
              end
              object Panel1: TPanel
                Left = 2
                Top = 15
                Width = 48
                Height = 62
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object btnIncEndereco: TSpeedButton
                  AlignWithMargins = True
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Incluir'
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Align = alTop
                  Caption = '(F5)'
                  ImageIndex = 0
                  Images = imgBotoes
                  Flat = True
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = btnIncEnderecoClick
                  ExplicitLeft = -6
                  ExplicitTop = -3
                end
                object btnExcEndereco: TSpeedButton
                  AlignWithMargins = True
                  Left = 0
                  Top = 31
                  Width = 48
                  Height = 28
                  Cursor = crHandPoint
                  Hint = 'Excluir'
                  Margins.Left = 0
                  Margins.Right = 0
                  Align = alClient
                  Caption = '(F6)'
                  ImageIndex = 2
                  Images = imgBotoes
                  Flat = True
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = btnExcEnderecoClick
                  ExplicitTop = 13
                  ExplicitHeight = 49
                end
              end
            end
            object pnlIdCad: TPanel
              Left = 0
              Top = 0
              Width = 111
              Height = 32
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitLeft = 32
              ExplicitTop = 16
              ExplicitWidth = 185
              ExplicitHeight = 41
              object lblIdCad: TLabel
                AlignWithMargins = True
                Left = 8
                Top = 10
                Width = 41
                Height = 19
                Margins.Left = 8
                Margins.Top = 10
                Align = alLeft
                Caption = 'C'#243'digo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ExplicitHeight = 13
              end
              object dbtxtID: TDBText
                AlignWithMargins = True
                Left = 55
                Top = 18
                Width = 53
                Height = 11
                Margins.Top = 18
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
          end
        end
        object pnlEnderecoCad: TPanel
          Left = 0
          Top = 180
          Width = 872
          Height = 214
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnlEndereco: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 6
            Width = 859
            Height = 205
            Margins.Left = 5
            Margins.Top = 6
            Margins.Right = 8
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object shpCadLinha3: TShape
              Left = 0
              Top = 0
              Width = 859
              Height = 1
              Align = alTop
              Pen.Color = cl3DLight
              ExplicitTop = 8
              ExplicitWidth = 185
            end
            object shpCadLinha4: TShape
              Left = 0
              Top = 204
              Width = 859
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
              Height = 203
              Align = alLeft
              Pen.Color = cl3DLight
              ExplicitHeight = 185
            end
            object shpCadLinha6: TShape
              Left = 858
              Top = 1
              Width = 1
              Height = 203
              Align = alRight
              Pen.Color = cl3DLight
              ExplicitLeft = 0
              ExplicitHeight = 185
            end
            object dbgEndereco: TJvDBGrid
              Left = 1
              Top = 1
              Width = 857
              Height = 203
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
                  Width = 390
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
                  Width = 83
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
                  Width = 196
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
                  Width = 71
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
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
      end
      object pnlStatusCadastro: TPanel
        Left = 0
        Top = 394
        Width = 872
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        Color = 16448250
        ParentBackground = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          AlignWithMargins = True
          Left = 698
          Top = 3
          Width = 171
          Height = 24
          Cursor = crHandPoint
          Align = alRight
          Caption = 'Cancelar/Fechar (F4)'
          ImageIndex = 5
          Images = imgBotoes
          Flat = True
          OnClick = btnCancelarClick
          ExplicitLeft = 624
        end
      end
    end
    object cardVisualizar: TCard
      Left = 1
      Top = 1
      Width = 872
      Height = 424
      Caption = 'Visualizar'
      CardIndex = 1
      TabOrder = 0
      object shpLinha2: TShape
        Left = 0
        Top = 76
        Width = 872
        Height = 1
        Align = alTop
        Pen.Color = cl3DLight
        ExplicitTop = 125
        ExplicitWidth = 798
      end
      object shpLinha1: TShape
        Left = 0
        Top = 30
        Width = 872
        Height = 1
        Align = alTop
        Pen.Color = cl3DLight
        ExplicitWidth = 798
      end
      object pnlBotoes: TPanel
        Left = 0
        Top = 0
        Width = 872
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object btnIncluir: TSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 120
          Height = 24
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Incluir (Ins)'
          ImageIndex = 0
          Images = imgBotoes
          Flat = True
          OnClick = btnIncluirClick
          ExplicitHeight = 25
        end
        object btnAlterar: TSpeedButton
          AlignWithMargins = True
          Left = 129
          Top = 3
          Width = 120
          Height = 24
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Alterar (F3)'
          ImageIndex = 1
          Images = imgBotoes
          Flat = True
          OnClick = btnAlterarClick
          ExplicitLeft = 119
          ExplicitHeight = 25
        end
        object btnExcluir: TSpeedButton
          AlignWithMargins = True
          Left = 255
          Top = 3
          Width = 120
          Height = 24
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Excluir (Del)'
          ImageIndex = 2
          Images = imgBotoes
          Flat = True
          OnClick = btnExcluirClick
          ExplicitLeft = 235
          ExplicitHeight = 25
        end
        object btnPesquisar: TSpeedButton
          AlignWithMargins = True
          Left = 381
          Top = 3
          Width = 120
          Height = 24
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Pesquisar (F5)'
          ImageIndex = 3
          Images = imgBotoes
          Flat = True
          OnClick = btnPesquisarClick
          ExplicitLeft = 351
          ExplicitHeight = 25
        end
      end
      object pnlStatusPesquisa: TPanel
        Left = 0
        Top = 402
        Width = 872
        Height = 22
        Align = alBottom
        BevelOuter = bvNone
        Color = 16448250
        ParentBackground = False
        TabOrder = 3
        ExplicitTop = 389
      end
      object dbgCadastro: TJvDBGrid
        Left = 0
        Top = 77
        Width = 872
        Height = 325
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsPesquisa
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = dbgCadastroDblClick
        AutoSizeColumns = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
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
            Width = 71
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
            Width = 486
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
            Width = 163
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
            Width = 136
            Visible = True
          end>
      end
      object pnlFiltro: TPanel
        Left = 0
        Top = 31
        Width = 872
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object grpID: TGroupBox
          AlignWithMargins = True
          Left = 8
          Top = 4
          Width = 60
          Height = 36
          Margins.Left = 8
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          Caption = 'C'#243'digo:'
          TabOrder = 0
          object edtID: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 15
            Width = 46
            Height = 18
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 1
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
        object grpNome: TGroupBox
          AlignWithMargins = True
          Left = 78
          Top = 4
          Width = 555
          Height = 36
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Caption = 'Nome:'
          TabOrder = 1
          object edtNome: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 15
            Width = 541
            Height = 18
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 1
            Align = alClient
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object grpRG: TGroupBox
          AlignWithMargins = True
          Left = 756
          Top = 4
          Width = 108
          Height = 36
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 8
          Margins.Bottom = 5
          Align = alRight
          Caption = 'RG:'
          TabOrder = 3
          object edtRG: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 15
            Width = 94
            Height = 18
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 1
            Align = alClient
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object grpCPF: TGroupBox
          AlignWithMargins = True
          Left = 643
          Top = 4
          Width = 103
          Height = 36
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alRight
          Caption = 'CPF:'
          TabOrder = 2
          object edtCPF: TMaskEdit
            AlignWithMargins = True
            Left = 7
            Top = 15
            Width = 89
            Height = 18
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 1
            Align = alClient
            Alignment = taCenter
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = ''
          end
        end
      end
    end
  end
  object imgBotoes: TImageList
    ColorDepth = cd24Bit
    Height = 24
    Width = 24
    Left = 352
    Top = 256
    Bitmap = {
      494C010106002800040018001800FFFFFFFF1910FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001001800000000000036
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000EDD7C5E4C1A4E4C2A4EDD8C600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000DBAC83C98040C3732BBE671ABE6414BE6414BE671AC3732BC8
      7F40DBAD85000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00E4C2A4C47835BC6516BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BD6616C47835E5C4A6000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7C9AFD39A66C67A37BF691DBF69
      1DC67A37D39A66E8CAB000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7A0
      70C16E25BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414C06C21D5A070000000000000000000000000000000000000
      000000000000000000000000E8CCB2C57733BE6414BE6414BE6414BE6414BE64
      14BE6414BE6414BE6414C57834E8CCB300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000D7A070BE69
      1BBE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE691CD6A172000000000000000000000000000000
      000000000000000000DAA97DBE6414BE6414BE6414BE6414BE6414BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414DAA97D00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E4C1A4BF6D23BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BF6D22E5C4A6000000000000000000000000
      000000000000D9A87CBE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414DAA97E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C47835BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414C67935000000000000000000000000
      000000E8CCB2BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414E8CCB300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000DBAC82BD6516BE6414BE64
      14BE6414BE6414BE6414BE6414CA8140DDAD83BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414BD6516DCAD85000000000000000000
      000000C57732BE6414BE6414BE6414C77D3CECD5C0C16F26BE6414BE6414BE64
      14BE6414C16F26ECD5C0C77D3CBE6414BE6414BE6414C5783400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000C88040BE6414BE6414BE64
      14BE6414BE6414BE6414CA8140FAF3EDFFFFFFDFB48DBE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414BE6414C88141000000000000000000
      E7C8AEBE6414BE6414BE6414BE6414ECD5C0000000F2E3D4C16F26BE6414BE64
      14C16F26F2E3D4000000ECD5C0BE6414BE6414BE6414BE6414E7C9AF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000C2722ABE6414BE6414BE64
      14BE6414BE6414CA8140FAF3EDFFFEFEFBF5EFFFFFFFDFB48DBE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414BE6414C3732C000000000000000000
      D39864BE6414BE6414BE6414BE6414C16F26F2E2D5000000F3E5D8C27129C16F
      26F2E2D5000000F3E5D8C27129BE6414BE6414BE6414BE6414D39A6700000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDD7C3BE671ABE6414BE6414BE64
      14BE6414CA813FFAF3EDFFFFFFDCAC82C77A36F8EFE6FFFFFFE1B792BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414BE6414BF691BEDD7C5000000000000
      C67935BE6414BE6414BE6414BE6414BE6414C16F26F2E3D4000000F2E3D4F2E3
      D4000000F2E3D4C16F26BE6414BE6414BE6414BE6414BE6414C67A3600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4C2A4BE6414BE6414BE6414BE64
      14BE6414E7C6A8FFFEFEDAA77ABE6414BE6414C77A35F8EEE5FFFFFFDFB48DBE
      6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414E5C3A5000000000000
      BF691DBE6414BE6414BE6414BE6414BE6414BE6414C16F26F2E2D50000000000
      00F3E5D8C27129BE6414BE6414BE6414BE6414BE6414BE6414BF6C1F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3C0A3BE6414BE6414BE6414BE64
      14BE6414C0681AD2945DBE6414BE6414BE6414BE6414C77A35F8EEE5FFFFFFDF
      B48DBE6414BE6414BE6414BE6414BE6414BE6414BE6414E5C2A4000000000000
      BF691DBE6414BE6414BE6414BE6414BE6414BE6414C16F26F2E2D50000000000
      00F3E5D8C27129BE6414BE6414BE6414BE6414BE6414BE6414BF691D00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECD5C2BF671ABE6414BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414C77A36F8EEE5FF
      FFFFE1B792BE6414BE6414BE6414BE6414BE6414BD661AEDD7C3000000000000
      C67935BE6414BE6414BE6414BE6414BE6414C16F26F2E3D4000000F2E3D4F2E3
      D4000000F2E3D4C16F26BE6414BE6414BE6414BE6414BE6414C67A3600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000C2712ABE6414BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414C77A35F8
      EEE5FFFFFFE1B792BE6414BE6414BE6414BE6414C2712A000000000000000000
      D29764BE6414BE6414BE6414BE6414C16F26F2E2D5000000F3E5D8C27129C16F
      26F2E2D5000000F3E5D8C27129BE6414BE6414BE6414BE6414D39A6600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000C87F3FBE6414BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414C7
      7A35F8EEE5FFFFFFDBAA7EBE6414BE6414BE6414C98141000000000000000000
      E7C8AEBE6414BE6414BE6414BE6414ECD5C0000000F2E3D4C16F26BE6414BE64
      14C16F26F2E3D4000000ECD5C0BE6414BE6414BE6414BE6414E7C9AF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000DAAA81BD6415BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414C77A35F0DCCAC77933BE6414BE6414BC6516DBAC83000000000000000000
      000000C57733BE6414BE6414BE6414C67A37EDD7C3C27129BE6414BE6414BE64
      14BE6414C16F26ECD5C0C77E3BBE6414BE6414BE6414C4763100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C57834BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414C57935000000000000000000000000
      000000E8CBB2BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414E8CCB200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E3BF9FC06D23BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BF6D23E4C2A4000000000000000000000000
      000000000000D9A87CBE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414DAA97D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000D59E6EBD66
      1ABE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE691BD7A070000000000000000000000000000000
      000000000000000000D9A87CBE6414BE6414BE6414BE6414BE6414BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414DAA97D00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D59F
      6FBF6C23BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414C06C21D59E6E000000000000000000000000000000000000
      000000000000000000000000E8CAB0C57732BE6414BE6414BE6414BE6414BE64
      14BE6414BE6414BE6414C57732E8CCB200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00E3BF9FC57834BD6415BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BD6516C67835E4C1A4000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7C8AED29764C67A36BF691DBF69
      1DC67A36D39864E7C8AE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000DAAA81C88040C2722ABE6619BE6414BE6414BE6619C3732BC8
      8040DBAC82000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000EDD7C3E4C1A3E4C1A4EDD7C500000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4E7DC0000000000000000000000000000000000000000000000
      00000000000000000000E7C9AFD39A66C67A37BF691DBF691DC67A37D39A66E8
      CAB0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000EAD1BAC3742DBE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414C3742DEBD1BB0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000DBAD83BE681CECD4BF0000000000000000000000000000000000000000
      00000000E9CCB3C57834BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414C57834E9CDB4000000000000000000000000000000000000000000000000
      000000BE6414BE6414BE6414BE6414DDB0880000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000C3732CBE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414C3742D0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      DAAB7FBE6414BE6414BE681CF4E7DC0000000000000000000000000000000000
      00DAA97EBE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414DAAB7F000000000000000000000000000000000000000000
      000000BE6414BE6414BE6414BE6414BE6414DDB0880000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000DBAD83
      BE6414BE6414BE6414D9A87C000000000000000000000000000000000000DAA9
      7DBE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414DAAA81000000000000000000000000000000000000
      000000BE6414BE6414BE6414BE6414BE6414BE6414DDB0880000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBAD83BE6414
      BE6414BE6414D9A87C000000000000000000000000000000000000E8CCB2BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414E9CDB4000000000000000000000000000000
      000000BE6414BE6414BE6414BE6414BE6414BE6414BE6414DDB0880000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000000000000000000000000000000000E9
      CEB6D7A376CF9058CE8D54D59E6EE5C4A6000000000000DAAB7FBE6414BE6414
      BE6414DBAB82000000000000000000000000000000000000000000C57834BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414000000000000BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414C57732000000000000000000000000000000
      000000DCB088BE6414BE6414BE6414BE6414BE6414BE6414BE6414DDB0880000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000000000000000000000E8CCB2C4752FBE
      6414BE6414BE6414BE6414BE6414BE6414C06D23D0925BBE6414BE6414BE6414
      DBAB82000000000000000000000000000000000000000000E7C9AFBE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414000000000000BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414E8CAB0000000000000000000000000
      000000000000DCB088BE6414BE6414BE6414BE6414BE6414BE6414BE6414DDB0
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000000000000000DCAE86BC6313BE6414CD
      8A4EE4C1A3EEDAC9EFDDCCE6C6ABD1945FBC6313BE6414BE6414BE6414DBAC82
      000000000000000000000000000000000000000000000000D39864BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414000000000000BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414D39A67000000000000000000000000
      000000000000000000DCB088BE6414BE6414BE6414BE6414BE6414BE6414BE64
      14DDB08800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000000000E2BF9EBE6414BF6A1EE8CCB300
      0000000000000000000000000000000000EEDAC9C3732BBE6414CC884C000000
      000000000000000000000000000000000000000000000000C67935BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414000000000000BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414C67A37000000000000000000000000
      000000000000000000000000DCB088BE6414BE6414BE6414BE6414BE6414BE64
      14BE6414DDB08800000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000000000BF691DBD6517ECD5C200000000
      0000000000000000000000000000000000000000F3E6DAC06C21BC6314EFDDCC
      000000000000000000000000000000000000000000000000BF691DBE6414BE64
      14BE6414BE641400000000000000000000000000000000000000000000000000
      0000000000BE6414BE6414BE6414BE6414BF6C1F000000000000000000000000
      000000000000000000000000000000DCB088BE6414BE6414BE6414BE6414BE64
      14BE6414BE6414DDB08800000000000000000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000DBAC82BE6414D8A47700000000000000
      0000000000000000000000000000000000000000000000E1BC99BE6414D1955F
      000000000000000000000000000000000000000000000000BF691DBE6414BE64
      14BE6414BE641400000000000000000000000000000000000000000000000000
      0000000000BE6414BE6414BE6414BE6414BF691D000000000000000000000000
      000000000000000000000000000000000000DCB088BE6414BE6414BE6414BE64
      14BE6414BE6414BE6414DDB08800000000000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000C77C3ABE6414F3E5D800000000000000
      0000000000000000000000000000000000000000000000000000BE681BBF691D
      000000000000000000000000000000000000000000000000C47835BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414000000000000BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414C67A36000000000000000000000000
      000000000000000000000000000000000000000000DCB088BE6414BE6414BE64
      14BE6414BE6414BE6414BE6414DDB08800000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000BD6516C06D2300000000000000000000
      0000000000000000000000000000000000000000000000000000CB8548BE6414
      F3E5D8000000000000000000000000000000000000000000D29764BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414000000000000BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414D39A66000000000000000000000000
      000000000000000000000000000000000000000000000000DCB088BE6414BE64
      14BE6414BE6414BE6414BE6414BE6414EDD7C300000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000BE6414C5773200000000000000000000
      0000000000000000000000000000000000000000000000000000CF9158BE6414
      EFDCCC000000000000000000000000000000000000000000E7C8AEBE6414BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414000000000000BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414BE6414E7C9AF000000000000000000000000
      000000000000000000000000000000000000000000000000000000DCB088BE64
      14BE6414BE6414BE6414BE6414DAAA8100000000000000000000000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000BE671ABF691D00000000000000000000
      0000000000000000000000000000000000000000000000000000C88040BE6414
      F5EBE1000000000000000000000000000000000000000000000000C57733BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414000000000000BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414C47631000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCB0
      88BE6414BE6414BE6414DCB088000000000000DCB088DCB08800000000000000
      0000000000000000000000000000000000BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000000000
      00000000000000000000000000000000CB8548BE6414EEDAC900000000000000
      0000000000000000000000000000000000000000000000000000BD6415C16F26
      000000000000000000000000000000000000000000000000000000E8CBB2BE64
      14BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414BE6414E9CCB3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00DCB088BE6414DCB088000000000000DCB088BE6414BE6414DDB28C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E0B894BE6414D1945F00000000000000
      0000000000000000000000000000000000000000000000DAAA81BE6414D6A171
      000000000000000000000000000000000000000000000000000000000000D9A8
      7CBE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414BE6414DAAB7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000EDD7C3000000000000DCB088BE6414BE6414BE6414C06C2100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000C27129BE6414E3BF9F00000000
      0000000000000000000000000000000000000000ECD4BFBD6516BE6619000000
      0000000000000000000000000000000000000000000000000000000000000000
      00D9A87CBE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414BE6414BE6414DAA97D000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCB088BE6414BE6414BE6414BD6516E7C8AE00000000
      0000000000000000000000000000BE6414BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000
      00000000000000000000000000000000000000ECD4BFBD6516BC6314DCAF8700
      0000000000000000000000000000000000E3BE9FBE671ABE6414E3BF9F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E8CBB2C57732BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE
      6414C57733E8CCB2000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCB088BE6414BE6414BD6415E6C5A800000000000000
      0000000000000000000000000000BE6414BE6414BE6414BE6414BE6414BE6414
      BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE6414BE64140000
      00000000000000000000000000000000000000000000E8CAB0BE681CBE6414C2
      7129D7A275E1BB9AE3BF9FDAA97DC57834BE6414BD6415DFB693000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C8AED39864C67A36BF691DBF691DC67A36D39864E7
      C9AF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DDB28CC06B20E7C8AE00000000000000000000
      0000000000000000000000000000000000000000000000000000000000DCB088
      BE6414BE6414BE6414BE6414DAAA810000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000F2E3D6CF9158BC
      6313BE6414BE6414BE6414BE6414BE6414CA8447EDD8C6000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4C1A4DCB088DCAD84E2BE9CF3E5D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00FFC3FFFFFFFF000000000000FE007FFF
      FFFF000000000000F8001FFF00FF000000000000F0000FFC003F000000000000
      E00007F8001F000000000000C00003F0000F000000000000C00003E000070000
      00000000800001E00007000000000000800001C08103000000000000800001C0
      4203000000000000000000C02403000000000000000000C01803000000000000
      000000C01803000000000000000000C02403000000000000800001C042030000
      00000000800001C08103000000000000800001E00007000000000000C00003E0
      0007000000000000C00003F0000F000000000000E00007F8001F000000000000
      F0000FFC003F000000000000F8001FFF00FF000000000000FE007FFFFFFF0000
      00000000FFC3FFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFF7FF00FFFFFFFFF8001FFFFFE3FC003FE0FFFFF8001FFFFFC1
      F8001FE07FFFF8001FFFFF83F0000FE03FFFF8001FFFFF07E00007E01FFFF800
      1FFE060FE01807E00FFFF8001FF8001FC01803F007FFF8001FF0003FC01803F8
      03FFF8001FE1F87FC01803FC01FFF8001FE3FC3FC1FF83FE00FFF8001FC7FE3F
      C1FF83FF007FF8001FC7FF3FC01803FF803FF8001FCFFF1FC01803FFC01FF800
      1FCFFF1FC01803FFE03FF8001FCFFF1FE01807FFF067F8001FC7FF3FE00007FF
      F8C3FFFFFFC7FE3FF0000FFFFD83FFFFFFE3FC7FF8001FFFFF03F0000FE1F87F
      FC003FFFFF07F0000FF000FFFF00FFFFFF8FFF81FFF801FFFFFFFFFFFFFFFFFF
      FFFF07FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsPesquisa: TDataSource
    Left = 465
    Top = 257
  end
  object dsCadastro: TDataSource
    DataSet = ModelPessoa.qryCadastro
    OnStateChange = dsCadastroStateChange
    Left = 553
    Top = 257
  end
  object dsEndereco: TDataSource
    OnStateChange = dsEnderecoStateChange
    Left = 641
    Top = 257
  end
  object ACBrCEP: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    WebService = wsViaCep
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEPBuscaEfetuada
    Left = 288
    Top = 320
  end
end
