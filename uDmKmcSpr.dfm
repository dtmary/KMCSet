object dmKMCspr: TdmKMCspr
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 777
  Top = 333
  Height = 261
  Width = 361
  object spModify_KMC_Block: TOraStoredProc
    StoredProcName = 'KMC.modify_kmc_block'
    SQL.Strings = (
      'begin'
      
        '  KMC.modify_kmc_block(:ACTION, :V_ID, :V_PKI, :V_SHABLON_ID, :V' +
        '_ANALOG_BLOCK_ID, :V_COMENT, :V_ANALOG_COMENT, :V_CNT_MIN, :V_CN' +
        'T_MAX);'
      'end;')
    Left = 64
    Top = 32
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ACTION'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'V_ID'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'V_PKI'
        ParamType = ptInput
        Size = 18
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'V_SHABLON_ID'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'V_ANALOG_BLOCK_ID'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'V_COMENT'
        ParamType = ptInput
        Size = 20
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'V_ANALOG_COMENT'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftFloat
        Name = 'V_CNT_MIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_CNT_MAX'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'KMC.modify_kmc_block'
  end
  object spmodify_kmc_shablon: TOraStoredProc
    StoredProcName = 'kmc.modify_kmc_shablon'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := kmc.modify_kmc_shablon(:ACTION, :V_ID, :V_NAIM, :V_' +
        'LOKO_ID, :V_DECNUM_ORIG);'
      'end;')
    Left = 200
    Top = 32
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        IsResult = True
      end
      item
        DataType = ftFloat
        Name = 'ACTION'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'V_ID'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'V_NAIM'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftFloat
        Name = 'V_LOKO_ID'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'V_DECNUM_ORIG'
        ParamType = ptInput
        Size = 18
      end>
    CommandStoredProcName = 'kmc.modify_kmc_shablon'
  end
  object spModify_kmc_fasteners: TOraStoredProc
    StoredProcName = 'KMC.modify_kmc_fasteners'
    SQL.Strings = (
      'begin'
      
        '  KMC.modify_kmc_fasteners(:V_BLOCK_ID, :V_FASTENERS, :V_ITEM_CO' +
        'UNT);'
      'end;')
    Left = 64
    Top = 104
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_BLOCK_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'V_FASTENERS'
        ParamType = ptInput
        Size = 18
      end
      item
        DataType = ftFloat
        Name = 'V_ITEM_COUNT'
        ParamType = ptInput
        HasDefault = True
      end>
    CommandStoredProcName = 'KMC.modify_kmc_fasteners'
  end
  object spModify_kmc_cable: TOraStoredProc
    StoredProcName = 'KMC.modify_kmc_cable'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := KMC.modify_kmc_cable(:ACTION, :V_ID, :V_BLOCK1_ID, ' +
        ':V_BLOCK2_ID, :V_CABLE, :V_SHABLON_ID, :V_NAZN);'
      'end;')
    Left = 200
    Top = 104
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        IsResult = True
      end
      item
        DataType = ftFloat
        Name = 'ACTION'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_ID'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'V_BLOCK1_ID'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'V_BLOCK2_ID'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'V_CABLE'
        ParamType = ptInput
        Size = 18
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'V_SHABLON_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'V_NAZN'
        ParamType = ptInput
        Size = 255
        HasDefault = True
      end>
    CommandStoredProcName = 'KMC.modify_kmc_cable'
  end
end
