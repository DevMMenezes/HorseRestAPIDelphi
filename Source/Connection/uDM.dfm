object DM: TDM
  OldCreateOrder = False
  Height = 254
  Width = 398
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\DevMMenezes\Projetos Pessoais\HorseRestAPIDelphi\Dat' +
        'abase\APIHORSE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    OnError = FDConnectionError
    Left = 80
    Top = 104
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 73
    Top = 168
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    DriverID = 'FBInstalled'
    Left = 152
    Top = 176
  end
end
