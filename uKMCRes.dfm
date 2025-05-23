object fmKmcRes: TfmKmcRes
  Left = 930
  Top = 359
  Caption = #1050#1052#1063
  ClientHeight = 419
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 400
    Width = 791
    Height = 19
    Panels = <>
  end
  object dbgKMC: TDBGridEh
    Left = 0
    Top = 0
    Width = 791
    Height = 400
    Align = alClient
    DataSource = DSKMC
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    ReadOnly = True
    TabOrder = 1
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PKI'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAMEPKI'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 400
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object qKMC: TOraQuery
    SQL.Strings = (
      'select t.* from ('
      'select c.pki, c.namepki, count(*) as itc from ('
      'select c.cable as pki, '
      
        '       (select pk.namepki from skladuser.pki pk where pk.pki = c' +
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
      
        '       sum(item_count) itc from skladuser.kmc_tmp_selected_block' +
        's b,'
      '              skladuser.kmc_fasteners f'
      'where f.block_id = b.block_id'
      '  and b.kmc_id = :v_kmc_id'
      'group by fasteners)'
      ') t'
      'order by NLSSORT(pki,'#39'NLS_SORT=BINARY'#39')')
    Left = 480
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_kmc_id'
      end>
  end
  object DSKMC: TDataSource
    DataSet = qKMC
    Left = 488
    Top = 152
  end
end
