object frmcitradigital: Tfrmcitradigital
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Pengolahan Citra Digital'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblopenimage: TLabel
    Left = 32
    Top = 32
    Width = 245
    Height = 20
    Caption = 'Masukkan image berekstensi .bmp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 32
    Top = 88
    Width = 241
    Height = 273
    Stretch = True
  end
  object Image2: TImage
    Left = 328
    Top = 88
    Width = 249
    Height = 273
    Stretch = True
  end
  object btnopenimage: TButton
    Left = 296
    Top = 32
    Width = 81
    Height = 25
    Caption = 'OPEN IMAGE'
    TabOrder = 0
    OnClick = btnopenimageClick
  end
  object btninversi: TButton
    Left = 632
    Top = 96
    Width = 75
    Height = 25
    Caption = 'INVERSI'
    TabOrder = 1
    OnClick = btninversiClick
  end
  object btnEqualization: TButton
    Left = 632
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Equalization'
    TabOrder = 2
  end
  object ProgressBar1: TProgressBar
    Left = 32
    Top = 384
    Width = 545
    Height = 25
    TabOrder = 3
  end
  object btnClose: TButton
    Left = 632
    Top = 192
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 4
    OnClick = btnCloseClick
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 176
    Top = 152
  end
end
