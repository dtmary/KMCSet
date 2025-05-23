object fmKMCEditBlock: TfmKMCEditBlock
  Left = 724
  Top = 404
  BorderStyle = bsDialog
  Caption = 'fmKMCEditBlock'
  ClientHeight = 179
  ClientWidth = 396
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
  object Label2: TLabel
    Left = 21
    Top = 11
    Width = 79
    Height = 13
    Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 18
    Top = 57
    Width = 82
    Height = 13
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lNamepos: TLabel
    Left = 106
    Top = 35
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
  object Label1: TLabel
    Left = 28
    Top = 84
    Width = 72
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1084#1080#1085'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 21
    Top = 111
    Width = 79
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1084#1072#1082#1089'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cedtPki: TDBComboBoxEh
    Left = 106
    Top = 8
    Width = 148
    Height = 21
    CharCase = ecUpperCase
    DynProps = <>
    EditButton.Style = ebsEllipsisEh
    EditButtons = <>
    TabOrder = 0
    Visible = True
    OnButtonClick = cedtPkiButtonClick
    OnChange = cedtPkiChange
  end
  object edtComent: TEdit
    Left = 106
    Top = 54
    Width = 280
    Height = 21
    TabOrder = 1
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 138
    Width = 396
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 80
    ExplicitWidth = 393
    object Panel1: TPanel
      Left = 175
      Top = 1
      Width = 220
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 172
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
        NumGlyphs = 2
        TabOrder = 0
        OnClick = BitBtn3Click
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
  object edtCnt_min: TDBNumberEditEh
    Left = 106
    Top = 81
    Width = 63
    Height = 21
    currency = False
    DynProps = <>
    EditButton.DefaultAction = False
    EditButton.Style = ebsUpDownEh
    EditButton.Visible = True
    EditButtons = <>
    TabOrder = 3
    Value = 0.000000000000000000
    Visible = True
  end
  object edtCnt_max: TDBNumberEditEh
    Left = 106
    Top = 108
    Width = 63
    Height = 21
    DynProps = <>
    EditButton.Style = ebsUpDownEh
    EditButton.Visible = True
    EditButtons = <>
    TabOrder = 4
    Value = 0.000000000000000000
    Visible = True
  end
  object qBlock: TOraQuery
    SQL.Strings = (
      'select b.* from skladuser.kmc_block b where b.id = :block_id')
    Left = 328
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'block_id'
      end>
  end
  object qShablon: TOraQuery
    SQL.Strings = (
      'select * from skladuser.kmc_shablon s where id = :shablon_id')
    Left = 296
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'shablon_id'
      end>
  end
  object qTest: TOraQuery
    SQL.Strings = (
      'select * from skladuser.kmc_block b '
      'where b.pki = :pki'
      '  and upper(nvl(b.coment,'#39' '#39')) = upper(nvl(:coment,'#39' '#39'))'
      '  and b.shablon_id = :shablon_id'
      '  and b.id <> :block_id')
    Left = 256
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pki'
      end
      item
        DataType = ftUnknown
        Name = 'coment'
      end
      item
        DataType = ftUnknown
        Name = 'shablon_id'
      end
      item
        DataType = ftUnknown
        Name = 'block_id'
      end>
  end
end
