object fmKmcEditCable: TfmKmcEditCable
  Left = 1311
  Top = 526
  BorderStyle = bsDialog
  Caption = 'fmKmcEditCable'
  ClientHeight = 198
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 8
    Width = 30
    Height = 13
    Caption = #1041#1083#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 14
    Top = 111
    Width = 44
    Height = 13
    Caption = #1050#1072#1073#1077#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCableTypMod: TLabel
    Left = 218
    Top = 111
    Width = 53
    Height = 13
    Caption = #1053#1077' '#1085#1072#1081#1076#1077#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbBlock1Coment: TDBText
    Left = 223
    Top = 11
    Width = 201
    Height = 17
    DataField = 'COMENT'
    DataSource = dsBlock1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbBlock1Name: TDBText
    Left = 64
    Top = 35
    Width = 372
    Height = 17
    DataField = 'NAMEPKI'
    DataSource = dsBlock1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 28
    Top = 58
    Width = 30
    Height = 13
    Caption = #1041#1083#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbBlock2Coment: TDBText
    Left = 223
    Top = 61
    Width = 201
    Height = 17
    DataField = 'COMENT'
    DataSource = dsBlock2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbBlock2Name: TDBText
    Left = 64
    Top = 85
    Width = 372
    Height = 17
    DataField = 'NAMEPKI'
    DataSource = dsBlock2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 157
    Width = 444
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Panel1: TPanel
      Left = 223
      Top = 1
      Width = 220
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn3: TBitBtn
        Left = 30
        Top = 5
        Width = 75
        Height = 25
        Caption = #1054#1050
        Default = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 126
        Top = 5
        Width = 75
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000008400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000084000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000084000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000084000000840000008400FF00FF00FF00FF00FF00FF00FF00
          FF000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000084000000840000008400FF00FF00FF00FF000000
          840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000084000000840000008400000084000000
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000084000000840000008400FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000084000000840000008400000084000000
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000084000000840000008400FF00FF00FF00FF000000
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000008400000084000000840000008400FF00FF00FF00FF00FF00FF00FF00
          FF000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          8400000084000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000840000008400FF00FF00FF00FF00FF00FF00FF00FF000000
          840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000840000008400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ModalResult = 2
        TabOrder = 1
      end
    end
  end
  object cbBlock1: TDBLookupComboboxEh
    Left = 64
    Top = 8
    Width = 148
    Height = 21
    DynProps = <>
    DropDownBox.Columns = <
      item
        FieldName = 'PKI'
        Width = 60
      end
      item
        FieldName = 'NAMEPKI'
        Width = 100
      end
      item
        FieldName = 'COMENT'
        Width = 100
      end>
    DropDownBox.Sizable = True
    DropDownBox.Width = 500
    EditButtons = <>
    KeyField = 'ID'
    ListField = 'PKI'
    ListSource = dsBlock1
    TabOrder = 1
    Visible = True
    OnChange = cbBlock1Change
  end
  object edtCable: TDBComboBoxEh
    Left = 64
    Top = 108
    Width = 148
    Height = 21
    CharCase = ecUpperCase
    DynProps = <>
    EditButton.Style = ebsEllipsisEh
    EditButtons = <>
    TabOrder = 2
    Visible = True
    OnButtonClick = edtCableButtonClick
    OnChange = edtCableChange
  end
  object cbBlock2: TDBLookupComboboxEh
    Left = 64
    Top = 58
    Width = 148
    Height = 21
    DynProps = <>
    DropDownBox.Columns = <
      item
        FieldName = 'PKI'
        Width = 60
      end
      item
        FieldName = 'NAMEPKI'
        Width = 100
      end
      item
        FieldName = 'COMENT'
        Width = 100
      end>
    DropDownBox.Sizable = True
    DropDownBox.Width = 500
    EditButtons = <>
    KeyField = 'ID'
    ListField = 'PKI'
    ListSource = dsBlock2
    TabOrder = 3
    Visible = True
    OnChange = cbBlock2Change
  end
  object qBlock1: TOraQuery
    SQL.Strings = (
      'select b.*, '
      
        '       (select pk.namepki from skladuser.pki pk where pk.pki = b' +
        '.pki) as namepki'
      'from skladuser.kmc_block b '
      'where b.shablon_id = :shablon_id')
    Left = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'shablon_id'
      end>
  end
  object dsBlock1: TDataSource
    DataSet = qBlock1
    Left = 320
  end
  object qBlock2: TOraQuery
    SQL.Strings = (
      'select b.*, '
      
        '       (select pk.namepki from skladuser.pki pk where pk.pki = b' +
        '.pki) as namepki'
      'from skladuser.kmc_block b '
      'where b.shablon_id = :shablon_id')
    Left = 304
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'shablon_id'
      end>
  end
  object dsBlock2: TDataSource
    DataSet = qBlock2
    Left = 320
    Top = 40
  end
  object qShablon: TOraQuery
    SQL.Strings = (
      'select * from skladuser.kmc_shablon s where id = :shablon_id')
    Left = 304
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'shablon_id'
      end>
  end
  object qCable: TOraQuery
    SQL.Strings = (
      'select c.*,'
      
        '       (select b.pki from skladuser.kmc_block b where b.id = c.b' +
        'lock1_id) block1pki, '
      
        '       (select b.pki from skladuser.kmc_block b where b.id = c.b' +
        'lock2_id) block2pki'
      'from skladuser.kmc_cable c '
      'where c.id = :cable_id')
    Left = 16
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cable_id'
      end>
  end
end
