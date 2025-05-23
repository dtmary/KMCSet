object fmKMCSet: TfmKMCSet
  Left = 310
  Top = 193
  Caption = #1055#1086#1076#1073#1086#1088#1082#1072' '#1050#1052#1063
  ClientHeight = 646
  ClientWidth = 1272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 857
    Top = 23
    Width = 12
    Height = 604
    Beveled = True
    ExplicitLeft = 348
    ExplicitTop = 0
    ExplicitHeight = 581
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 627
    Width = 1272
    Height = 19
    Panels = <>
  end
  object pnlBlock: TPanel
    Left = 0
    Top = 23
    Width = 857
    Height = 604
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 0
    ExplicitHeight = 571
    object Splitter2: TSplitter
      Left = 487
      Top = 0
      Width = 12
      Height = 604
      Beveled = True
      ExplicitLeft = 493
      ExplicitHeight = 571
    end
    object btnAddToSort: TSpeedButton
      Left = 3
      Top = 111
      Width = 33
      Height = 22
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton1: TSpeedButton
      Left = 11
      Top = 119
      Width = 33
      Height = 22
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 487
      Height = 604
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitHeight = 577
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 487
        Height = 20
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1073#1083#1086#1082#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 235
      end
      object dbgBlock: TDBGridEh
        Left = 0
        Top = 20
        Width = 487
        Height = 584
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = dsBlock
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ReadOnly = True
        TabOrder = 0
        TitleParams.Font.Charset = DEFAULT_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -11
        TitleParams.Font.Name = 'Tahoma'
        TitleParams.Font.Style = [fsBold]
        TitleParams.ParentFont = False
        OnDblClick = dbgBlockDblClick
        OnGetCellParams = dbgBlockGetCellParams
        Columns = <
          item
            Alignment = taRightJustify
            AlwaysShowEditButton = True
            AutoFitColWidth = False
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DropDownBox.AutoFitColWidths = False
            DropDownBox.ColumnDefValues.AlwaysShowEditButton = True
            DropDownBox.Columns = <
              item
                AutoFitColWidth = False
                FieldName = 'PKI'
                Width = 110
              end
              item
                AutoFitColWidth = False
                FieldName = 'NAMEPKI'
                Width = 200
              end
              item
                FieldName = 'COMENT'
                Width = 110
              end>
            DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh]
            DropDownFormParams.FormWidth = 1000
            DropDownRows = 12
            DropDownSizing = True
            DropDownWidth = 600
            DynProps = <>
            EditButton.DropDownFormParams.FormWidth = 1000
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButton.OnClick = dbgBlockColumns1EditButtonClick
            EditButtons = <>
            FieldName = 'PKI'
            Footers = <>
            LimitTextToListValues = True
            LookupParams.LookupCache = False
            Title.Alignment = taCenter
            Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
            Width = 129
            OnEditButtonClick = dbgBlockColumns1EditButtonClick
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAMEPKI'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 217
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMENT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Width = 83
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel2: TPanel
      Left = 499
      Top = 0
      Width = 358
      Height = 604
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 358
        Height = 20
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077' '#1073#1083#1086#1082#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 274
      end
      object dbgSelected: TDBGridEh
        Left = 45
        Top = 20
        Width = 313
        Height = 584
        Align = alClient
        DataSource = dsSelected
        DynProps = <>
        IndicatorOptions = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ReadOnly = True
        SortLocal = True
        TabOrder = 0
        TitleParams.Font.Charset = DEFAULT_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -11
        TitleParams.Font.Name = 'Tahoma'
        TitleParams.Font.Style = [fsBold]
        TitleParams.ParentFont = False
        OnDblClick = dbgSelectedDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PKI'
            Footers = <>
            Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
            Title.TitleButton = True
            Width = 105
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAMEPKI'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Title.TitleButton = True
            Width = 123
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMENT'
            Footers = <>
            Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Width = 123
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REC_ID'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 20
        Width = 45
        Height = 584
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 6
          Top = 251
          Width = 35
          Height = 55
          TabOrder = 0
          object btnSelectBlock: TSpeedButton
            Left = 2
            Top = 1
            Width = 33
            Height = 25
            Action = ActSelectBlock
            Flat = True
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object SpeedButton2: TSpeedButton
            Left = 0
            Top = 32
            Width = 33
            Height = 22
            Action = ActDeselectBlock
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
    end
  end
  object pnlCable: TPanel
    Left = 869
    Top = 23
    Width = 403
    Height = 604
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Label3: TLabel
      Left = 0
      Top = 0
      Width = 403
      Height = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = #1050#1072#1073#1077#1083#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 274
    end
    object Splitter3: TSplitter
      Left = 0
      Top = 321
      Width = 403
      Height = 12
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
      ExplicitTop = 281
      ExplicitWidth = 453
    end
    object dbgCable: TDBGridEh
      Left = 0
      Top = 20
      Width = 403
      Height = 301
      Align = alClient
      DataSource = dsCable
      DynProps = <>
      PopupMenu = pmCable
      ReadOnly = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'pki'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'namepki'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
        end
        item
          AlwaysShowEditButton = True
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.DefaultAction = False
          EditButton.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DD0000000000
            000DDD7888088888880DDD7FFF0F00F0080DDD7FFF0FFFFFF80DDD7FFF000000
            000DDD7FFFFFFFFFF80DDD7FFFFFFCCCF80DDD7FFCCCCCFCF80DDD7FFCFFFCFC
            F80DDD7FFCCCCCFCF80DDD7FFFFFFCCCF80DDD7FFFFFFFFFF80DDD7FFFFFFFF0
            000DDD7FFFFFFFF8F7DDDD7FFFFFFFF87DDDDD7777777777DDDD}
          EditButton.Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1095#1077#1088#1090#1077#1078
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButton.OnClick = dbgCableColumns2EditButtonClick
          EditButtons = <>
          FieldName = 'typ_mod'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1058#1080#1087' '#1084#1086#1076#1077#1083#1100
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 205
          OnEditButtonClick = dbgCableColumns2EditButtonClick
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object pnlFasteners: TPanel
      Left = 0
      Top = 333
      Width = 403
      Height = 271
      Align = alBottom
      Caption = 'pnlFasteners'
      TabOrder = 1
      object Label4: TLabel
        Left = 1
        Top = 1
        Width = 401
        Height = 20
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = #1050#1088#1077#1087#1077#1078' '#1073#1083#1086#1082#1086#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 6
        ExplicitWidth = 451
      end
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 21
        Width = 401
        Height = 249
        Align = alClient
        DataSource = dsFasteners
        DynProps = <>
        ReadOnly = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pki'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'namepki'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'itc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 51
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1272
    Height = 23
    Caption = 'ToolBar1'
    Images = ImageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object ToolButton2: TToolButton
      Left = 0
      Top = 0
      Action = ActToCalc
    end
  end
  object qBlock: TOraQuery
    SQL.Strings = (
      'select '
      
        'k.pki, (select pk.namepki from skladuser.pki pk where pk.pki = k' +
        '.pki) as namepki,'
      'k.coment,'
      'k.id,'
      
        '(select count(*) from skladuser.kmc_block b where b.analog_group' +
        ' = k.analog_group and shablon_id = :shablon_id) analog_cnt,'
      'k.analog_group,'
      'k.cnt_min,'
      'k.cnt_max'
      'from skladuser.kmc_block k '
      'where k.shablon_id = :shablon_id'
      '  and k.show_default = 1'
      'order by pki')
    Left = 56
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'shablon_id'
        Value = nil
      end>
  end
  object dsBlock: TDataSource
    DataSet = mtBlock
    Left = 72
    Top = 104
  end
  object qCable: TOraQuery
    SQL.Strings = (
      'select c.cable as pki, '
      
        '       (select pk.namepki from skladuser.pki pk where pk.pki = c' +
        '.cable) namepki,'
      
        '       (select pk.typ_mod from skladuser.pki pk where pk.pki = c' +
        '.cable) typ_mod'
      'from '
      'skladuser.kmc_tmp_selected_blocks s1,'
      'skladuser.kmc_tmp_selected_blocks s2,'
      'skladuser.kmc_cable c'
      'where c.block1_id = s1.block_id'
      '  and c.block2_id = s2.block_id'
      '  and s1.kmc_id = :v_kmc_id'
      '  and s2.kmc_id = :v_kmc_id')
    Left = 1045
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_kmc_id'
        Value = nil
      end>
  end
  object dsCable: TDataSource
    DataSet = qCable
    Left = 1149
    Top = 200
  end
  object dsSelected: TDataSource
    DataSet = qSelected
    Left = 633
    Top = 290
  end
  object mtSelected: TMemTableEh
    Active = True
    AutoIncrement.InitValue = 1
    AutoIncrement.Step = 1
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 15
      end
      item
        Name = 'PKI'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'NAMEPKI'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'COMENT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SELECTED_ID'
        DataType = ftInteger
        Precision = 15
      end>
    IndexDefs = <>
    Params = <>
    SortOrder = 'PKI'
    StoreDefs = True
    Left = 617
    Top = 242
    object mtSelectedID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object mtSelectedPKI: TStringField
      DisplayWidth = 18
      FieldName = 'PKI'
      Size = 18
    end
    object mtSelectedNAMEPKI: TStringField
      DisplayWidth = 255
      FieldName = 'NAMEPKI'
      Size = 255
    end
    object mtSelectedCOMENT: TStringField
      DisplayWidth = 20
      FieldName = 'COMENT'
    end
    object mtSelectedSELECTED_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'SELECTED_ID'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object ID: TMTNumericDataFieldEh
          FieldName = 'ID'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object PKI: TMTStringDataFieldEh
          FieldName = 'PKI'
          StringDataType = fdtStringEh
          Size = 18
        end
        object NAMEPKI: TMTStringDataFieldEh
          FieldName = 'NAMEPKI'
          StringDataType = fdtStringEh
          Size = 255
        end
        object COMENT: TMTStringDataFieldEh
          FieldName = 'COMENT'
          StringDataType = fdtStringEh
        end
        object SELECTED_ID: TMTNumericDataFieldEh
          FieldName = 'SELECTED_ID'
          NumericDataType = fdtIntegerEh
          AutoIncrement = True
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object mtCable: TMemTableEh
    Active = True
    FieldDefs = <
      item
        Name = 'SELECTED_ID'
        DataType = ftInteger
        Precision = 15
      end
      item
        Name = 'PKI'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'NAMEPKI'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'TYP_MOD'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'BLOCK1_ID'
        DataType = ftInteger
        Precision = 15
      end
      item
        Name = 'BLOCK2_ID'
        DataType = ftInteger
        Precision = 15
      end>
    IndexDefs = <>
    Params = <>
    SortOrder = 'PKI'
    StoreDefs = True
    Left = 1101
    Top = 128
    object mtCableSELECTED_ID: TIntegerField
      FieldName = 'SELECTED_ID'
    end
    object mtCablePKI: TStringField
      FieldName = 'PKI'
      Size = 18
    end
    object mtCableNAMEPKI: TStringField
      FieldName = 'NAMEPKI'
      Size = 255
    end
    object mtCableTYP_MOD: TStringField
      FieldName = 'TYP_MOD'
      Size = 255
    end
    object mtCableBLOCK1_ID: TIntegerField
      FieldName = 'BLOCK1_ID'
    end
    object mtCableBLOCK2_ID: TIntegerField
      FieldName = 'BLOCK2_ID'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object SELECTED_ID: TMTNumericDataFieldEh
          FieldName = 'SELECTED_ID'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object PKI: TMTStringDataFieldEh
          FieldName = 'PKI'
          StringDataType = fdtStringEh
          Size = 18
        end
        object NAMEPKI: TMTStringDataFieldEh
          FieldName = 'NAMEPKI'
          StringDataType = fdtStringEh
          Size = 255
        end
        object TYP_MOD: TMTStringDataFieldEh
          FieldName = 'TYP_MOD'
          StringDataType = fdtStringEh
          Size = 255
        end
        object BLOCK1_ID: TMTNumericDataFieldEh
          FieldName = 'BLOCK1_ID'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object BLOCK2_ID: TMTNumericDataFieldEh
          FieldName = 'BLOCK2_ID'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object qDelSelected: TOraQuery
    SQL.Strings = (
      'begin'
      'delete from kmc_tmp_selected_blocks where rec_id = :v_rec_id;'
      'end;')
    Left = 272
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_rec_id'
        Value = nil
      end>
  end
  object qSelected: TOraQuery
    SQL.Strings = (
      'select s.*,'
      'b.pki,'
      'b.coment,'
      
        '(select pk.namepki from skladuser.pki pk where pk.pki = b.pki) a' +
        's namepki'
      'from '
      'skladuser.kmc_tmp_selected_blocks s,'
      'skladuser.kmc_block b'
      'where s.block_id = b.id'
      '  and s.kmc_id = :v_kmc_id'
      'order by pki')
    Left = 747
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_kmc_id'
        Value = nil
      end>
  end
  object qFasteners: TOraQuery
    SQL.Strings = (
      'select * from ('
      'select f.fasteners as pki, '
      
        '       (select pk.namepki from skladuser.pki pk where pk.pki = f' +
        '.fasteners) as namepki,'
      
        '       sum(item_count) itc from skladuser.kmc_tmp_selected_block' +
        's b,'
      '              skladuser.kmc_fasteners f'
      'where f.block_id = b.block_id'
      '  and b.kmc_id = :v_kmc_id'
      'group by fasteners)'
      'order by namepki')
    Left = 1109
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_kmc_id'
        Value = nil
      end>
  end
  object dsFasteners: TOraDataSource
    DataSet = qFasteners
    Left = 1189
    Top = 496
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 699
    Top = 168
    object actShowCablePrint: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1095#1077#1088#1090#1105#1078
      OnExecute = actShowCablePrintExecute
    end
    object ActSelectBlock: TAction
      Caption = '>>>'
      OnExecute = ActSelectBlockExecute
    end
    object ActDeselectBlock: TAction
      Caption = '<<<'
      OnExecute = ActDeselectBlockExecute
    end
    object actSprBlock: TAction
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1073#1083#1086#1082#1086#1074
      OnExecute = actSprBlockExecute
    end
    object actCreateKMC: TAction
      Caption = 'actCreateKMC'
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1050#1052#1063
      ImageIndex = 76
      OnExecute = actCreateKMCExecute
    end
    object ActToCalc: TAction
      Caption = 'ActToCalc'
      Hint = #1042#1099#1074#1086#1076' '#1074' Open office'
      ImageIndex = 68
      OnExecute = ActToCalcExecute
    end
  end
  object pmCable: TPopupMenu
    Left = 1013
    Top = 120
    object N1: TMenuItem
      Action = actShowCablePrint
    end
  end
  object qId: TOraQuery
    SQL.Strings = (
      'select KMC_ID_SEQ.Nextval as kmc_id from dual')
    Left = 128
    Top = 264
  end
  object mtBlock: TMemTableEh
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftLargeint
        Precision = 15
      end
      item
        Name = 'NAMEPKI'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'COMENT'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CNT_MIN'
        DataType = ftInteger
        Precision = 15
      end
      item
        Name = 'CNT_MAX'
        DataType = ftInteger
        Precision = 15
      end
      item
        Name = 'Analog_cnt'
        DataType = ftInteger
        Precision = 15
      end
      item
        Name = 'Analog_group'
        DataType = ftLargeint
        Precision = 15
      end
      item
        Name = 'PKI'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 88
    Top = 125
    object mtBlockID: TLargeintField
      FieldName = 'ID'
    end
    object mtBlockNAMEPKI: TStringField
      FieldName = 'NAMEPKI'
      Size = 255
    end
    object mtBlockCOMENT: TStringField
      FieldName = 'COMENT'
      Size = 255
    end
    object mtBlockCNT_MIN: TIntegerField
      FieldName = 'CNT_MIN'
    end
    object mtBlockCNT_MAX: TIntegerField
      FieldName = 'CNT_MAX'
    end
    object mtBlockAnalog_cnt: TIntegerField
      FieldName = 'Analog_cnt'
    end
    object mtBlockAnalog_group: TLargeintField
      FieldName = 'Analog_group'
    end
    object mtBlockPKI2: TStringField
      FieldName = 'PKI'
      Size = 255
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object ID: TMTNumericDataFieldEh
          FieldName = 'ID'
          NumericDataType = fdtLargeintEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object NAMEPKI: TMTStringDataFieldEh
          FieldName = 'NAMEPKI'
          StringDataType = fdtStringEh
          Size = 255
        end
        object COMENT: TMTStringDataFieldEh
          FieldName = 'COMENT'
          StringDataType = fdtStringEh
          Size = 255
        end
        object CNT_MIN: TMTNumericDataFieldEh
          FieldName = 'CNT_MIN'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object CNT_MAX: TMTNumericDataFieldEh
          FieldName = 'CNT_MAX'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object Analog_cnt: TMTNumericDataFieldEh
          FieldName = 'Analog_cnt'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object Analog_group: TMTNumericDataFieldEh
          FieldName = 'Analog_group'
          NumericDataType = fdtLargeintEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object PKI: TMTStringDataFieldEh
          FieldName = 'PKI'
          StringDataType = fdtStringEh
          Size = 255
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object dsAnalog: TDataSource
    DataSet = qAnalog
    Left = 72
    Top = 197
  end
  object qAnalog: TOraQuery
    SQL.Strings = (
      'select b.*,'
      
        '(select pk.namepki from skladuser.pki pk where pk.pki = b.pki) n' +
        'amepki'
      ' from skladuser.kmc_block b'
      '--where b.analog_group = :analog_group'
      '  where b.shablon_id = :shablon_id')
    Filtered = True
    Left = 88
    Top = 213
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'shablon_id'
        Value = Null
      end>
  end
  object qGetBlock: TOraQuery
    SQL.Strings = (
      'select b.*,'
      
        '(select p.namepki from skladuser.pki p where p.pki = b.pki) as n' +
        'amepki '
      'from skladuser.kmc_block b'
      'where b.ID = :ID')
    Left = 320
    Top = 399
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
  end
  object ImageList: TImageList
    Left = 20
    Top = 148
    Bitmap = {
      494C01014D005100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004001000001002000000000000040
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      8000FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      8000FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      8000FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      8000FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000FFFFFF008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
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
      0000000000007B7B7B000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000000000000000
      00000000000000000000000000000000000080000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF008000
      0000000000000000000000000000000000000000000000FFFF00000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000000000000000
      00000000000000000000000000000000000080000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000008000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF00000000
      00000000000000000000000000000000000080000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF00000000
      00000000000000000000000000000000000080000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF00000000000000000000FFFF008080
      80000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      000000000000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF
      00000000000000000000000000000000000080000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00C0C0
      C000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000000000000FFFF0000FFFF0000FFFF00000000000000000000FFFF
      0000000000000000000000000000000000008000000080000000800000008000
      00008000000080000000800000008000000080000000800000000000000000FF
      FF008080800000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000000000000FFFF0000FFFF0000FFFF00000000000000000000FFFF
      0000FFFF000000000000000000000000000080000000FFFFFF00800000008000
      0000FFFFFF008000000080000000FFFFFF0080000000800000000000000000FF
      FF00C0C0C0000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000000000000000000000000000FFFF0000FFFF000000000000000000000000
      0000FFFF00000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      000000FFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000000000000000000000000000FFFF0000FFFF000000000000000000000000
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FFFF00000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080008000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000800000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800080008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84008484840084848400848484008484840000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C60084848400FFFF000000000000FFFF0000FFFF0000FFFF
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60084848400FFFF000000000000FFFF0000FFFF0000FFFF00000000
      0000C6C6C600C6C6C60000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008000
      0000FFFFFF0000000000FFFFFF00800000008000000080000000FFFFFF000000
      0000FFFFFF0080000000FFFFFF00000000000000000000000000FFFFFF008000
      0000FFFFFF0000000000FFFFFF008000000080000000C0C0C000000000000000
      0000C0C0C00080000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF000000000000FFFF0000FFFF0000FFFF000000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000598
      EF0000000000FFFFFF00FFFFFF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF00000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000000000000FFFF
      000000000000FFFF0000FFFF0000FFFF000000000000C6C6C600000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000598EF000598
      EF00008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00000000
      0000FFFF0000FFFF0000FFFF000000000000C6C6C600C6C6C600C6C6C6000000
      00008484840000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000598EF000598EF000598
      EF00008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF000000000000FFFF
      0000FFFF0000FFFF0000000000000000000000000000C6C6C600C6C6C600C6C6
      C600000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099FFFF0099FFFF0099FFFF00FFFF
      FF0003F0000003F0000003F00000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099FFFF0099FFFF0099FF
      FF0003F0000003F0000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099FFFF0099FF
      FF0003F000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000099FF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000FF00C6C6
      C600C6C6C600BDBDBD0000000000000000000000000000000000FFFF0000FFFF
      000084840000FFFF0000FFFF000084840000FFFF0000FFFF000084840000FFFF
      0000FFFF000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000FF000000
      FF00C6C6C600BDBDBD0000000000000000000000000000000000FFFF0000FFFF
      000084840000FFFF0000FFFF000084840000FFFF0000FFFF000084840000FFFF
      0000FFFF000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD000000FF000000FF00BDBDBD000000FF000000FF000000FF000000FF000000
      FF000000FF00BDBDBD0000000000000000000000000000000000848400008484
      0000FFFF00008484000084840000FFFF00008484000084840000FFFF00008484
      00008484000000000000000000000000000000000000FFFF0000FFFF00000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      FF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000FF000000
      FF00C6C6C600BDBDBD0000000000000000000000000000000000FFFF0000FFFF
      000084840000FFFF0000FFFF000084840000FFFF0000FFFF000084840000FFFF
      0000FFFF000000000000000000000000000000000000FFFF0000000000000000
      00000000000000000000000000000000000000000000FFFF000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      FF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000FF00BDBD
      BD00C6C6C600BDBDBD0000000000000000000000000000000000FFFF0000FFFF
      000084840000FFFF0000FFFF000084840000FFFF0000FFFF000084840000FFFF
      0000FFFF000000000000000000000000000000000000FFFF0000FFFF00000000
      000000000000FFFF0000FFFF0000FFFF000000000000FFFF000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      FF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00C6C6C60000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      00008484000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF0000FFFF0000FFFF000000000000FFFF000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD000000FF000000FF00BDBDBD000000FF000000FF00BDBDBD000000FF000000
      FF00BDBDBD00BDBDBD0000000000000000000000000000000000FFFF0000FFFF
      000000000000FFFFFF0084848400848484008484840084848400848484000000
      0000FFFF000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000FF00BDBDBD0000000000000000000000000000000000FFFF0000FFFF
      000000000000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00848484000000
      0000FFFF000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD000000000000000000BDBDBD000000FF000000FF00BDBDBD000000FF000000
      FF00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00848484000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD000000000000000000BDBDBD000000000000000000BDBDBD00000000000000
      0000BDBDBD00BDBDBD00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      000000000000FFFF000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
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
      0000840000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000840000000000000000000000000000008484840000FFFF000000
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000008400
      0000000000008400000000000000840000000000000084000000840000008400
      0000840000008400000084000000000000000000000084848400FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000FF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840084848400848484000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000840000000000000000000000000000008484840000FFFF00FFFF
      FF000000FF000000FF0000FFFF00FFFFFF00FFFFFF000000FF0000FFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400FFFFFF0000FF
      FF00840000008400000084000000840000008400000084000000840000008400
      00008400000000FFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0000FFFF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400FFFFFF00C6C6
      C60084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000C6C6C60084848400000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400FFFFFF0000FF
      FF0084000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF008400000000FFFF0084848400000000000000000000000000FFFFFF000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0000FFFF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400FFFFFF00C6C6
      C60084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000C6C6C60084848400000000000000000000000000FFFFFF000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF000000
      FF000000FF000000FF0000FFFF00FFFFFF000000FF000000FF0000FFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400FFFFFF0000FF
      FF00840000008400000084000000840000008400000084000000840000008400
      00008400000000FFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000FF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400FFFFFF00C6C6
      C60084000000FFFFFF008400000084000000FFFFFF008400000084000000FFFF
      FF0084000000C6C6C6008484840000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400FFFFFF0000FF
      FF00840000008400000084000000840000008400000084000000840000008400
      00008400000000FFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      8400000084000000840000008400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000084848400000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      84000000840000008400FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000000000000084848400C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C6008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FF0000008400008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084848400000000000000000084848400C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840000000000000000000000000084848400C6C6C600C6C6
      C60084848400848484008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008484000084
      840000848400FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF000000000000000000C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000084848400FFFF0000FFFF
      0000FFFF00008484840000000000000000000000000084848400848484008484
      840000000000000000008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000848400008484000084
      84000084840000848400FFFFFF00000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00000000000000000084848400FFFF0000FFFF
      0000FFFF00008484840000000000000000000000000000000000000000000000
      000000000000000000008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840084008400
      840084008400840084008400840084008400FFFFFF0000848400008484000084
      84000084840000848400FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      00000000000084008400FFFFFF000000000000000000FFFFFF00008484000084
      840000848400FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000008400000084000000000000000000000000000000000084000000
      00000000000084008400FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000000000008400
      0000840000008400000084000000840000000000000000008400000000000000
      840000000000FFFFFF00FFFFFF000000000000000000FFFFFF00840000008400
      000084000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      0000FFFFFF0000FFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000008400000084000000000000000000000000000000000084000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000008484840000FF0000008400008484
      8400848484008484840084848400000000000000000084848400C6C6C600C6C6
      C600000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      84000000000000000000FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084848400000000000000000084848400C6C6C600C6C6
      C60084848400848484008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      00000000840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840000000000000000000000000084848400848484008484
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000000000000840000000000FFFFFF008400000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084848400FFFF0000FFFF
      0000FFFF00008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008400000000000000840000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000084848400FFFF0000FFFF
      0000FFFF00008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000000000000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000008484
      8400FFFFFF0084848400848484008484840000000000FFFFFF00848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000000000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6
      C600FFFF00008484840000000000000000000000000000000000000000008484
      8400FFFFFF0084848400848484008484840000000000FFFFFF00848484008484
      840084848400000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000000000008400000084000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF
      0000C6C6C6000000000084848400000000000000000000000000000000008484
      8400FFFFFF0084848400848484008484840000000000FFFFFF00848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000000000008400000084000000
      8400000000000000000000000000000000000000000084000000000000008400
      0000000000008400000000000000000000000000000084848400FFFFFF00C6C6
      C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6
      C600848484000000000084848400000000000000000000000000000000008484
      8400FFFFFF0084848400848484008484840000000000FFFFFF00848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000000000008400000084000000
      8400000084000000000000000000000000000000000000000000840000008400
      00008400000000000000000000000000000084848400FFFFFF00C6C6C600FFFF
      0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF
      0000000000008484840084848400000000000000000000000000000000008484
      8400FFFFFF008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000000000008400000084000000
      8400000084000000840000000000000000008400000084000000840000008400
      00008400000084000000840000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000008484000084848400000000000000000000000000000000008484
      8400FFFFFF008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000008400000084000000
      8400000084000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFF000084848400000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF0000000000000000000000000000008400000084000000
      8400000000000000000000000000000000000000000084000000000000008400
      0000000000008400000000000000000000000000000084848400FFFFFF008484
      0000FFFF000084840000FFFF000084840000FFFF000084840000FFFF00008484
      0000FFFF00008484000084848400000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000FFFF0000000000848484000000000000008400000084000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      000084840000FFFF000084840000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF008484840084848400000000000000000000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF008484
      0000FFFF000084840000FFFF0000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484000000
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
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600848484000000
      0000C6C6C6008484840000000000C6C6C6008484840000000000C6C6C6008484
      840000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF000000
      0000C6C6C600FFFFFF0000000000C6C6C600FFFFFF0000000000C6C6C600FFFF
      FF0000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600848484000000
      0000C6C6C6008484840000000000C6C6C6008484840000000000C6C6C6008484
      840000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF0000000000FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF0000000000000000000000000000000000C6C6C600FFFFFF000000
      0000C6C6C600FFFFFF0000000000C6C6C600FFFFFF0000000000C6C6C600FFFF
      FF0000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000FF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      FF00FFFFFF0000000000000000000000000000000000C6C6C600000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000FF000000
      FF00FFFFFF0000000000000000000000000000000000C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000084000000840000008400000084
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      000000FFFF0000000000000000000000000000FFFF0000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000008484
      84008484840000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400000084
      00000084000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF000000
      00008484840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400000084
      00000084000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      000000FFFF0000000000000000000000000000FFFF0000840000008400000084
      00000084000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000FFFFFF0084848400000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400000084
      00000084000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C60000FFFF000000FF00000000000000000084840000000000008484
      0000848400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000FFFF000000FF000000000084840000848400008484
      000084840000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000FFFF000000FF0000000000848400000000
      00008484000084840000FFFF0000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C60084840000C6C6C60000FFFF000000FF00848400008484
      000084840000000000000000000000000000000000000000000084848400FFFF
      FF00FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6
      C600FFFF00008484840000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000008400000000000000
      000000000000000000000000000000000000000000000000000000FFFF008484
      840000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600FFFFFF0000000000C6C6C60000FFFF000000FF008484
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF
      0000C6C6C6000000000084848400000000000000000000000000000000000000
      0000FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000008400000084000000
      000000000000000000000000000000000000000000000000000000FFFF00C6C6
      C60000000000000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF0084840000C6C6C6000000000000000000C6C6C60000FFFF000000
      FF00000000000000000000000000000000000000000084848400FFFFFF00C6C6
      C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6
      C600848484000000000084848400000000000000000000000000000000000000
      0000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00000000000000000000000000000000000000000000008400000084000000
      84000000000000000000000000000000000000000000000000000000000000FF
      FF0084848400000000000000000000000000000000000000000000000000FFFF
      FF00C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C60000FF
      FF000000FF0000000000000000000000000084848400FFFFFF00C6C6C600FFFF
      0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF0000C6C6C600FFFF
      0000000000008484840084848400000000000000000000000000000000000000
      0000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600000000000000000000000000000000000000000000008400000084000000
      84000000840000000000000000000000000000000000000000000000000000FF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C6000000
      000000FFFF000000FF00000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      000000FFFF00848484000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000C6C6C6000000000000000000000000000084
      84000000000000FFFF000000FF00000000008484840084848400848484008484
      8400848484008484840084848400848484000000840000008400848484008484
      840084848400FFFF000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      000000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF00C6C6C6000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000084848400FFFFFF00C6C6
      C600FFFF0000C6C6C600FFFF00000000840000008400C6C6C600FFFF0000C6C6
      C600FFFF0000C6C6C60084848400000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000008400000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000084848400FFFFFF00FFFF
      0000C6C6C600FFFF0000C6C6C6000000840000008400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000008484
      8400C6C6C600C6C6C60084848400C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600848484000000000000000000000000000000000000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084840000000000000000000084840000C6C6
      C600848400000000000000000000000000000000000084848400FFFFFF00C6C6
      C600FFFF0000C6C6C600FFFF0000000084000000840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000008484
      8400C6C6C600C6C6C60084848400FFFFFF00C6C6C6008484840084848400FFFF
      FF00848484000000000000000000000000000000000000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C60084840000C6C6C600C6C6C600C6C6C600C6C6C60084840000848400008484
      0000C6C6C6000000000000FFFF0000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C60084848400C6C6C600FFFFFF008484840084848400C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084840000000000008484
      000000000000C6C6C60000FFFF00000000000000000000000000000000008484
      8400848484008484840084848400848484000000840000008400000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF00848400008484000084840000000000000000
      00000000FF000000FF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FF000000FF00000084000000840000008400
      0000FF0000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B
      7B007B7B7B0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008400000084000000FFFFFF00FFFFFF00C6C6
      C600840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600FF00000000000000000000000000840000008400000084000000
      840000008400000084000000840000008400FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000084848400848484008484
      840084848400848484000000000000000000000000008484840000000000C6C6
      C600FF000000848484000000000000000000000084000000FF000000FF000000
      840000008400000084000000FF000000840000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF00000000000000
      0000000000000000000084848400000000008484840000000000C6C6C600FF00
      000000000000848484000000000000000000000000000000840000008400FFFF
      FF00C6C6C600FFFFFF00000084000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60000000000000000000000000084000000FFFFFF008400
      0000FFFFFF00840000008400000084000000FFFFFF0084000000840000008400
      0000FFFFFF008400000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF00000000008484
      84008484840000000000000000000000000084848400C6C6C600FF0000008484
      8400000000008484840000000000000000000000000000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF0000000000C6C6
      C6000000000084840000FFFF00008484000000000000FF000000848484008484
      840000000000848484000000000000000000000000000000000000000000FFFF
      FF00C6C6C60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000FFFF0000FFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFF0000FFFF0000FFFF00008484000000000000FFFFFF008484
      840000000000848484000000000000000000000000000000000000000000C6C6
      C600FFFFFF00C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF0000000000FFFFFF00000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFFFF008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF00000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFF0000FFFF0000FFFF00008484000000000000FFFFFF008484
      840000000000848484000000000000000000000000000000000000000000C6C6
      C600FFFFFF00C6C6C6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFF0000FFFFFF0000000000FFFFFF00FFFFFF008484
      840000000000848484000000000000000000000000000000000000000000FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BDBDBD00FFFFFF0000000000FFFFFF000000000000FF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000C6C6C600FFFFFF00FFFFFF008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C600FFFFFF00008400000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C6C6C600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00840000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
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
      0000000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000000084000000FFFF
      FF00FFFFFF0084000000FFFFFF00840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF008400
      000084000000840000008400000084000000FFFFFF0084000000840000008400
      000084000000840000000000000000000000000000000000000084000000FFFF
      FF00FFFFFF008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000000084000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000084000000FFFFFF0084000000FFFF
      FF00840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000084000000FFFFFF00840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000000000000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF008400
      000084000000840000008400000084000000FFFFFF0084000000840000008400
      0000840000008400000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF008400
      000084000000840000008400000084000000FFFFFF0084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000000000000000000084000000FFFFFF00840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
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
      0000000000000000000000000000848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840084008400840084008400840084008400840084008400840084008400
      84008400840084008400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      8400FFFFFF00000000008484840084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084008400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000084
      8400C6C6C60000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6
      C600008484000000000000000000000000000000000000000000840084008400
      8400FFFFFF0000000000C6C6C600FFFFFF008484840084848400C6C6C600FFFF
      FF00FFFFFF0084008400000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6C6000084
      840000000000000000000000000000000000000000008400840084008400FFFF
      FF00FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600FFFFFF0084008400000000000000000000000000FFFFFF0000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000840000008400000000000000FFFF
      0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF0000FFFF00C6C6C600008484000000
      0000000000000000000000000000000000000000000084008400FFFFFF00FFFF
      FF00FFFFFF0000000000C6C6C600FFFFFF0000FFFF00FFFFFF00FFFFFF008484
      8400FFFFFF0084008400000000000000000000000000FFFFFF000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF0000FFFF00C6C6C600008484000000
      0000000000000000000000000000000000000000000084008400FFFFFF00FFFF
      FF00FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF0000FFFF008484
      8400FFFFFF0084008400000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000840000000000000000000000009C
      EF0000000000FFFF0000FFFF00000000000000FFFF0000000000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF0000FFFF00C6C6C600008484000000
      0000000000000000000000000000000000000000000084008400FFFFFF00FFFF
      FF00FFFFFF0000000000C6C6C600FFFFFF0000FFFF00FFFFFF00FFFFFF008484
      8400FFFFFF0084008400000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000009CEF00009C
      EF000084000000000000FFFF0000FFFF00000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF0000FFFF00C6C6C600008484000000
      0000000000000000000000000000000000000000000084008400FFFFFF00FFFF
      FF00FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF0000FFFF008484
      8400FFFFFF0084008400000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0084000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF008400000000000000009CEF00009CEF00009C
      EF00008400000084000000000000FFFF0000FFFF00000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000C6C6C60000FFFF00C6C6C60000848400000000008484
      8400000000000000000000000000000000000000000084008400FFFFFF00FFFF
      FF00FFFFFF0000000000C6C6C600FFFFFF0000FFFF00FFFFFF00FFFFFF008484
      8400FFFFFF0084008400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF008400000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00840000009CFFFF009CFFFF009CFFFF00FFFF
      FF0000F7000000F7000000F7000000000000FFFF0000FFFF00000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000C6C6C6000084840000000000848484000000
      0000000000000000000000000000000000000000000084008400FFFFFF00FFFF
      FF00C6C6C6008484840084848400FFFFFF00FFFFFF00FFFFFF0000FFFF008484
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0084000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0084000000000000009CFFFF009CFFFF009CFF
      FF0000F7000000F7000000000000FFFF0000FFFF0000FFFF0000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000084008400FFFFFF00FFFF
      FF008484840000000000000000008484840084848400FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000008400000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF008400000000000000000000009CFFFF009CFF
      FF0000F7000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084008400FFFFFF00C6C6
      C600848484000000000000000000000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000009CFF
      FF00000000008484840000000000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000008400840084008400840084008400
      8400840084008400840084848400840084008400840084008400840084008400
      840084008400FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000848484000000000000000000000000008400000084000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6C6008484
      840000000000FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      8400000000008484840000000000000000008400000084000000840000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000084848400000000000000
      000000000000C6C6C60084848400C6C6C6000000000000000000000000000000
      000084008400FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C600FFFF00008484
      8400848484000000000000000000000000008400000084000000840000000000
      0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400C6C6C600000000000000000000000000840000008400000000000000FFFF
      0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFF0000C6C6C600C6C6C6008484
      8400C6C6C600000000000000000000000000840000008400000000000000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400FFFF0000FFFF0000C6C6C6008484
      8400848484000000000000000000000000008400000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000000000FFFF0000FFFF
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      8400000000000000000000000000000000008400000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000FFFF00000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00C6C6C6008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000FFFF000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00848484000000000000000000000000000000000000000000848484008484
      84000000000000000000FFFFFF0000000000848484008484840000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000FF
      FF0000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      000000FFFF00000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF00848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C60084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000000000000000000000000000000000000000008400
      0000FFFFFF008484840084848400840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C60084848400000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      000084000000FFFFFF0084848400840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C6008484840084848400C6C6C600848484008484840000000000000000008484
      840084848400000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF000000000000000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00848484000000000000000000000000000000000000000000000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000084000000000000000000000000000000000084000000FFFFFF008400
      00000000000084000000C6C6C600840000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400C6C6C600C6C6C600C6C6C600848484008484840084848400848484000000
      000000000000848484000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      8400000000000000000000000000000000000000000084000000FFFFFF008484
      84008400000084848400C6C6C600840000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400848484008484
      840084848400000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000084000000
      8400000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600848484008400000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00848484008484840084848400848484008484
      840084848400848484008484840000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000084000000840000008400000000000000000000008400000084000000
      0000000000000000000000000000000000000000000000000000840000008400
      00008400000084000000FFFFFF00C6C6C6008484840084000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C60084848400848484008484
      840084848400848484008484840000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000008400000000000000
      000000000000000000000000000000000000FFFFFF0084848400000000008484
      8400FFFFFF000000000084000000FFFFFF00C6C6C60084848400840000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C6000000FF000000FF00C6C6C600C6C6C600C6C6C6008484
      840084848400848484008484840000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00848484008484
      840000FFFF008484840000FFFF0084000000FFFFFF00C6C6C600848484008400
      00008400000084000000840000000000000084848400FFFFFF00C6C6C600C6C6
      C60000FF000000FF0000C6C6C600C6C6C600C6C6C60084848400848484000000
      0000C6C6C600848484008484840000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008484
      8400FFFFFF00FFFFFF00000000000000000084000000FFFFFF00C6C6C600C6C6
      C600C6C6C600848484008484840084000000000000008484840084848400FFFF
      FF00C6C6C600C6C6C600C6C6C6008484840084848400C6C6C600FFFFFF000000
      0000C6C6C600848484008484840000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000084000000840000008400000000000000000000008400000000000000
      000000000000000000000000000000000000848484008484840084848400FFFF
      FF0000FFFF008484840084848400848484000000000084000000FFFFFF008484
      840084000000FFFFFF0084848400840000000000000000000000000000008484
      840084848400FFFFFF0084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000000084000000
      8400000084000000840000000000000000000000000000000000000084000000
      840000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000084000000FFFFFF008400
      00000000000084000000FFFFFF00840000000000000000000000000000000000
      0000000000008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      840000008400000000000000000000000000000000008484840000FFFF008484
      840000FFFF0000FFFF0000000000000000000000000084000000FFFFFF008484
      8400840000000000000084000000840000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000008484840084848400FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000840000008400000000000000000084848400FFFFFF00000000008484
      8400FFFFFF0084848400FFFFFF00000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      00000000000000000000000000008484840084848400FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000008484
      840000FFFF00000000008484840000FFFF000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      840000000000000000000000000000000000000000007B7B7B00FFFFFF000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF007B7B7B0000000000FFFFFF00000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      000000000000000000000000000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000084000000
      8400000084000000840000008400000084000000840000008400000000000000
      8400000084000000000000000000000000007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFF
      FF00FFFFFF007B7B7B0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0084848400C6C6C600FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF007B7B7B00000000000000000000000000FFFFFF008484
      8400000000000000000084848400C6C6C600FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      000000000000000000000000000000FFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000084000000840000000000000000007B7B7B007B7B7B007B7B
      7B00FFFFFF0000000000000000000000000000000000000000007B7B7B00FFFF
      FF007B7B7B0000000000FFFFFF007B7B7B0000000000FFFFFF00848484000000
      0000FFFFFF0000FFFF00000000000000000084848400C6C6C600FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000084000000000000000000000000007B7B7B007B7B
      7B00FFFFFF00000000000000000000000000FFFFFF00FFFFFF007B7B7B00FFFF
      FF00000000007B7B7B00000000007B7B7B00000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000000000000000000000FFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF007B7B7B0000000000000000000000000000000000BDBD
      BD00BDBDBD00FFFFFF0000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B000000
      000000000000000000007B7B7B007B7B7B000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00FFFFFF0000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B007B7B7B0000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000008400000084000000840000FF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B00FFFFFF007B7B7B00FFFFFF0000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B00FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000840000008400FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B00000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000FFFF00C6C6C60000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000FFFFFF00FFFFFF007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
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
      00000000000000000000000000008484840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400848484000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400848484000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084008484840000000000000000000000
      0000000000000000000000008400848484000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000000000000000000008400000084008484840000000000000000000000
      0000000000000000000000008400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000084000000840000000000000000000000
      0000000000008484840000008400000000000000000000000000000000000000
      000000000000840000008400000084000000FFFFFF008400000084000000FFFF
      FF00000000000000000000000000000000000000000000008400000084000000
      0000000000000000000084848400000084000000840000000000000000000000
      0000000000008484840000008400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000840084848400000000000000
      00000000840000008400848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000FFFFFF000000000000000000840000008400
      0000FFFFFF000000000000000000000000000000000000008400000084000000
      8400000000000000000000000000000084000000840084848400000000000000
      0000848484000000840084848400000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000840000008400848484008484
      84000000840000008400000000000000000000000000FFFFFF00848484008484
      84008484840084000000FFFFFF00FFFFFF000000000000000000000000008400
      0000FFFFFF000000000000000000000000000000000000008400000084000000
      8400000084000000000000000000848484000000840000008400848484008484
      8400000084000000840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000000000000000000000000840000008400000084000000
      84000000840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000084000000FFFFFF0000000000000000000000000000008400000084000000
      8400000084000000840000000000000000000000840000008400000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000008484000000000000000000000000000084848400FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000008484840000008400000084000000
      84000000000000000000000000000000000000000000FFFFFF00848484008484
      8400848484008484840084848400FFFFFF000000000000000000000000000000
      00000000000084000000FFFFFF00000000000000000000008400000084000000
      8400000084000000000000000000000000008484840000008400000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000084848400FFFFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848400848484000000840000008400000084000000
      84008484840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000084000000FFFFFF000000000000008400000084000000
      8400000000000000000084848400848484000000840000008400000084000000
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000000000000000000000000000000084848400FFFF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000C6C6C6000000840000008400000084000000840000000000000000000000
      84000000840084848400000000000000000000000000FFFFFF00848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF000000000000000000000000000000
      0000000000000000000000000000840000000000000000008400000084000000
      0000000000000000840000008400000084000000840000000000000000000000
      8400000084008484840000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C60084840000000000000000000000000000000000008484
      8400FFFFFF0000FFFF0000FFFF0000000000000000000000000000000000C6C6
      C600C6C6C6000000840000008400848400008484840000000000000000000000
      00000000840000008400848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      000000008400000084008484840000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600848400000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084840000FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C6008484000000000000000000000000
      00000000000000008400000084000000000000000000FFFFFF00848484008484
      8400C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000084000000840000000000000000000000000084840000FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C6008484000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
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
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000084848400FFFF
      FF00FFFFFF0000000000FFFFFF00000000000084000000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400848484008484
      84008484840084848400FFFFFF0000000000000000000000000084848400FFFF
      FF0000000000FFFFFF00000000000084000000840000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF0000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000840000008400000084000000840000008400000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF0000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400848484008484
      84008484840084848400FFFFFF0000000000000000000000000084848400FFFF
      FF0000000000FFFFFF00000000000084000000840000FFFFFF00848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000008400000084000000840000008400
      000084000000840000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000084848400FFFF
      FF00FFFFFF0000000000FFFFFF00000000000084000000000000FFFFFF008484
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF0000000000C6C6C600000000000000
      0000FFFFFF0000000000FFFFFF00000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000008400000084848400848484008484
      840084848400848484008484840000000000FFFFFF008484840084848400C6C6
      C600C6C6C600C6C6C600FFFFFF0000000000000000000000000084848400FFFF
      FF00000000008484000000000000FFFFFF0000000000FFFFFF00000000008484
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF000000000084000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF0084840000FFFFFF00000000000084000000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF000000000084000000C6C6C600000000000000
      0000C6C6C600000000000000000000000000FFFFFF008484840084848400C6C6
      C60000000000C6C6C6000000000000000000000000000000000084848400FFFF
      FF00000000008484000084840000FFFFFF00008400000084000000000000FFFF
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF000000000084000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000840000008400000084000000840000008400000000
      0000FFFFFF00000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000C6C6C600FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF00000000000000000084000000C6C6C600000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008400000084000000000000FFFF
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000084000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000008484
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000084000000FFFFFF00840000008400
      0000FFFFFF008400000084000000FFFFFF008400000084000000FFFFFF008400
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
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
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000000000000000000000FFFF00BDBD
      BD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      8400000084000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000FFFF000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000000000000000000000000000FFFFFF0000FFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000BDBDBD000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C6000000
      0000BDBDBD0000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C6000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00840000008400
      000084000000840000008400000084000000C6C6C60000000000BDBDBD000000
      0000BDBDBD000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00840000008400
      000084000000840000008400000084000000C6C6C60084848400000000008484
      8400BDBDBD000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF0084000000FFFF
      0000FFFF0000FFFF0000FFFF000084000000C6C6C60000000000BDBDBD000000
      0000C6C6C60000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF0084000000FFFF
      0000FFFF0000FFFF0000FFFF000084000000C6C6C60000000000009CEF000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00840000008400
      000084000000840000008400000084000000BDBDBD0000000000BDBDBD000000
      0000BDBDBD000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00840000008400
      00008400000084000000840000008484840000000000009CEF00009CEF000084
      0000000000008484840000000000000000000000000000000000000000000000
      8400000084000000840000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD0000000000C6C6C6000000
      0000FFFFFF00000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000009CEF00009CEF00009CEF000084
      0000008400000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C60084000000840000008400000084000000BDBDBD0000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C6008400000084848400000000009CFFFF009CFFFF009CFFFF00FFFFFF0000F7
      000000F7000000F7000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF0084000000BDBD
      BD0084000000FFFF0000FFFF000084000000C6C6C60000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF0084000000BDBD
      BD0084000000FFFF0000FFFF0000000000009CFFFF009CFFFF009CFFFF0000F7
      000000F700000000000000000000000000000000000000000000000000000000
      8400FFFF0000000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C60084000000840000008400000084000000BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C60084000000840000008400000084848400000000009CFFFF009CFFFF0000F7
      0000000000000000000000000000000000000000000000000000000000000000
      8400FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000009CFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000FFFF0000FFFF000000
      00007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B
      7B007B7B7B0000FFFF0000FFFF000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B
      7B007B7B7B0000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00000000000000000000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000000000000BDBDBD000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BDBDBD00BDBDBD00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BDBDBD00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BDBDBD00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000007B7B7B0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BDBDBD000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B00000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BDBDBD0000000000000000007B7B7B000000FF000000
      FF0000000000000000000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B000000FF00000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BDBDBD00FFFFFF0000000000FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B000000FF00000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF00424D3E000000000000003E000000
      2800000040000000400100000100010000000000000A00000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C003000000000000
      C007000000000000C00F000000000000FFFFFFFFFFFFFFFFFFFFFFFFF83FFFFF
      000F001FF39F843F000F000FF6DF801F000F0007F55F801F000F0003F55F800F
      000F0001F55F800F00070000F55F80070007001FF55F80070003001FF55F8003
      0003001FF55F842300018FF1F55F8421FFE1FFF9FD5F0200FFF0FF75FDDF0220
      FFF0FF8FFE3FFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFFF
      8001FFFFFFFFFFFF8001FFFFFFFFFFFF8000FFFFFFFFFFFFC00080008000FFFF
      E00080008000FFFFF000800080008000E00F800080008000C007800080008000
      800380008000FFFF010180008000FFFF0381FFFFFF01FFFF07C1FFFFFF83FFFF
      FFFFFFFFFFC7FFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFF80018003001FE3FF
      80018003001FE3FF80018003000080FF800180030000C1FF800180030000E3FF
      800180030000F7FF800180030000FFFF80018003000080F780018003000080E7
      80010003000080C18001000F000080818001000F000180C1800100FFF80380E7
      800100FFF80780F7800100FFFFFFFFFFFFFFFFFF8003FFFFFFFFFFF78003FFFF
      07C1FFF38003C00007C1EA818003800007C1FFF3800380000101FFF780038000
      0001FFFF8003800000011C7F8003800000011C7F800380008003087F80038000
      C107087F80038000C107007F80038000E38F80FF80038001E38FC9FF8003C07F
      E38FC9FF8003E0FFFFFFFFFF8003FFFF80FFFFFFFF93FFFF008FFFFFFF93F3FF
      008100FFE000E000818000FFE000C000818C00FFE000800081FC00FFC0000000
      81FC001B99008000FFFC001988000000FFFC000000008000808C001900000001
      0080001B00008003008100FF80000007818F00FF803F800F81FF00FFC03FE01F
      81FF00FFE03FF83F81FFFFFFF07FFE7FFFFFFFFFF80FFF80FFFFFFFFF007F801
      FFFFE000E003C0FEFFFFC000E003BE00BFFFC000E003C0009FEF8000E003E000
      8FAB8000E003FD0087C70000E003FA0083010000E003F40187C70000E003E902
      8FAB8000F007D2409FEF8000F9CFC491BFFF8001F9CFE927FFFFC001F9CFF24F
      FFFFE0FFF80FFC9FFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001F
      FFFF8003BFFD001F00010001BFFD001F00010001BFFD001F00010001BFFD0001
      00010001B7ED000100010001A7E50001000100018001000100010001A7E50001
      00010001B7ED000100010001BFFDF00100010001BFFDF00100010001BFFDF001
      FFFF8003FFFFF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFF9F0003
      FE3F0001FF9F000100070001FF3F000000070001F73F000000070001F27F0000
      0003FFFFF07F000000036DB7F00F00000007FFFFF01F800000030001F03FFFFF
      00010001F07FFFFF00010001F0FFFFFF00070001F1FFFFFF00070001F3FFFFFF
      00070001F7FFFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFC007FFFF8001EABF0001
      E0008001FF9F0000C0008001FF8FC003C0008001BF87E00F800080019F87E00F
      800080018FC3E0070000800187C3F0130000800183E1E0090000800187E1C001
      800080018FF0C007800080019FF1C00380018001BFFF8001C07F8001FFFFC001
      E03F8001FFFFF031FF83FFFFFFFFF83FFFFFFF7EFFFFFC01FFFF9001FFF3FE03
      8003C003000100078003E003000100038003E003000180018003E0030001C001
      8003E0030001C001800300010001800080038000000180018003E00700010001
      8003E00F000100008003E00F000100008003E027010100038003C073C387803F
      80039E79FFFFC03FFFFF7EFEFFFFE0FFFFFFFFFFFFFFFFFFFFFFF801FFFFFFFF
      8003F801800380038003F801800380038003F801800380038003C00180038003
      8003C001800380038003C001800380038003C00F800380038003000F80038003
      8003000F800380038003000F800380038003003F800380038003003F80038003
      8003003F80038003FFFF003FFFFFFFFFFFFFFFFFFFFFFFFFF9FFFE7FF001003F
      307FFC3FE001003F001FC003C001003F0007C0038001003F0003E0070001003F
      0003F00F0001000F0007F00F000100330007F00F00010000000F100800010000
      000FF00F000100000007F81F000300000003FC3F060F00008031EFF7078FF800
      C03BDEFB8FFFFC00EE7FBEFDDFFFFC00FFFFFFFFFFFFFFFFE003F000000CF9FF
      C003F0000008307EC00300000001001EC003000000030006C003000000030002
      C003000000030002C003000000030006C003000000030006C00300000007000E
      C0030000000F000FC0038000000F0006C003F000000F8003C003F001001FE031
      C007F003003FF83BFFFFF007007FFE7FFFFFFFFFFC7FFFFFFFFFE1FFF01FC003
      FFFBE0FFC007C003EFFF90FF8001C003C7F788FF8001C003C7EF80FF0001C003
      E3CF807F0000C003F19FC03F0000C003F83F241F0000C003FC7F80010000C003
      F83FC3008001C003F1BF0080E007C003C3CF0088F803E01F87E78384FE00F81F
      9FF32183FF03FE1FFFFF64C3FF8FFF9FFFFFF00FF3FFDFFFE01FE007E0FF8FFF
      C00FDFCBC03F040080079FC5800FDC00000300020007DC0000010009800FDC00
      800087C40007DC00C000C70A800FE400E000E81C800FFC00F000F0000007FC00
      F801F800800FFC00F801F910E01BFC00F801F831F831FC00F807F9C3FE60FC00
      F807FA07FFFBFFFFFC7FFC7FFFFBFFFFFFFFFF3FFFFFFFFFFFFFFE1FFFFFFF3F
      FFFFFF0FFCFEFE1FFCFEFF07FC7CFC1FBC7CFF83FC79000F9C79FE01FE310047
      8E31FE00F00300678603F107F10700738307F183F10F0079870FF181F007007C
      8C07F1C0E063007E9863E0E0C071007FB9F1C07F803900FFFFF9803F803F01FF
      FFFF001FFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFF83FFE00DFFDFC00
      E00FFE00C555FC00CFC7FE00CA2DFC0087E3FE00C415FC00A3F3FE00CA0DEC00
      31F90000C545E40038F90000CAADE0003C790000C15500003E390001C82D0001
      3F190003C41500039F8B0007C02D00078FC3000FC041000FC7E7000FC0A3E3FF
      E00F000FC007E7FFF83F000FC00FEFFFC007FFFFFFFFFFFFC007F003801FF003
      C007F0030000F002C007C0030000C002C007C0030000C002C007000300000002
      C007000300000002C007000300000002C007000300000002C007000380000002
      C007000380000003C0070003FC000001C007000FFC010003C007000FFC030007
      C007003FFC07000FC007003FFFFF001FFF7E8007FFFFFF7E90010003FFFF9001
      C0030001F9FFC003E0038010F0FFE003E0030000F0FFE003E0030000E07FE003
      E0038000C07FE00300018000843F0001800000001E3F8000E0070000FE1FE007
      E00F0000FF1FE00FE00F0000FF8FE00FE027C001FFC7E027C073C001FFE3C073
      9E79C007FFF89E797EFEE3FFFFFF7EFE00000000000000000000000000000000
      000000000000}
  end
  object qKmcResult: TOraQuery
    SQL.Strings = (
      'select t.* from ('
      ''
      'select bl.pki,'
      
        '       (select pk.namepki from skladuser.pki pk where pk.pki = b' +
        'l.pki) as namepki,'
      '       1 as itc,'
      '       1 as page'
      'from skladuser.kmc_tmp_selected_blocks b,'
      '     skladuser.kmc_block bl'
      'where b.kmc_id = :v_kmc_id'
      '  and b.block_id = bl.id'
      '  '
      'union all'
      ''
      'select c.pki, c.namepki, count(*) as itc,'
      '2 as page from ('
      'select c.cable as pki, '
      
        '       (select pk.typ_mod from skladuser.pki pk where pk.pki = c' +
        '.cable) namepki'
      'from '
      'skladuser.kmc_tmp_selected_blocks s1,'
      'skladuser.kmc_tmp_selected_blocks s2,'
      'skladuser.kmc_cable c'
      'where c.block1_id = s1.block_id'
      '  and c.block2_id = s2.block_id'
      '  and s1.kmc_id = :v_kmc_id'
      '  and s2.kmc_id = :v_kmc_id'
      '  ) c'
      '  group by c.pki, c.namepki'
      'union all'
      'select * from ('
      'select f.fasteners as pki, '
      
        '       (select pk.namepki from skladuser.pki pk where pk.pki = f' +
        '.fasteners) as namepki,'
      '       sum(item_count) itc,'
      '       3 as page'
      '       from skladuser.kmc_tmp_selected_blocks b,'
      '              skladuser.kmc_fasteners f'
      'where f.block_id = b.block_id'
      '  and b.kmc_id = :v_kmc_id'
      'group by fasteners)'
      ') t'
      'order by page, NLSSORT(pki,'#39'NLS_SORT=BINARY'#39')')
    Left = 400
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_kmc_id'
        Value = nil
      end>
  end
  object spAddSelectedBlock: TOraStoredProc
    StoredProcName = 'kmc.AddSelectedBlock'
    SQL.Strings = (
      'begin'
      '  :RESULT := kmc.AddSelectedBlock(:V_BLOCK_ID, :V_KMC_ID);'
      'end;')
    Left = 416
    Top = 239
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
        IsResult = True
      end
      item
        DataType = ftFloat
        Name = 'V_BLOCK_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'V_KMC_ID'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'kmc.AddSelectedBlock'
  end
end
