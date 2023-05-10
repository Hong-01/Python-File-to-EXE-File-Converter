object Form2: TForm2
  Left = 735
  Top = 249
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Python to EXE'
  ClientHeight = 666
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnActivate = FormActivate
  TextHeight = 15
  object Title: TLabel
    Left = 16
    Top = 8
    Width = 181
    Height = 37
    Caption = 'Python to EXE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 48
    Width = 386
    Height = 17
    Caption = 'Please make sure that Anaconda is installed on your computer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 33023
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 71
    Width = 265
    Height = 308
    Caption = '1. Set Python Environment'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object GroupBox7: TGroupBox
      Left = 19
      Top = 149
      Width = 228
      Height = 142
      Caption = 'Create new python environment '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 24
        Width = 194
        Height = 15
        Caption = 'Input the name of new environment:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 10
        Top = 74
        Width = 113
        Height = 15
        Caption = 'Input Python version:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object NewEnvName: TEdit
        Left = 10
        Top = 45
        Width = 191
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnChange = NewEnvNameChange
      end
      object PyVer: TEdit
        Left = 10
        Top = 95
        Width = 191
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
    object SelectNewEnvironment: TCheckBox
      Left = 19
      Top = 31
      Width = 162
      Height = 17
      Caption = 'New Environment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = SelectNewEnvironmentClick
    end
    object GroupBox8: TGroupBox
      Left = 19
      Top = 54
      Width = 228
      Height = 89
      Caption = 'Existing Python environment '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label8: TLabel
        Left = 10
        Top = 24
        Width = 169
        Height = 15
        Caption = 'Input the name of environment:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object ExistingEnvName: TEdit
        Left = 10
        Top = 45
        Width = 191
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 287
    Top = 71
    Width = 265
    Height = 106
    Caption = '3. Select the Python File Path'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 62
      Width = 48
      Height = 15
      Caption = 'File Path:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pyFilePath: TLabel
      Left = 23
      Top = 83
      Width = 3
      Height = 15
      Caption = ' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SelectPath: TButton
      Left = 16
      Top = 31
      Width = 145
      Height = 25
      Caption = 'Select Python File Path'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = SelectPathClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 368
    Width = 265
    Height = 274
    Caption = '2. Install pip Package'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 16
      Top = 32
      Width = 228
      Height = 15
      Caption = 'Input the pip library used in the python file:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 197
      Width = 203
      Height = 17
      Caption = 'Line breaks to separate packages'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pip_Package: TMemo
      Left = 16
      Top = 53
      Width = 228
      Height = 132
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'pip_Package')
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object InstallPyinstaller: TCheckBox
      Left = 17
      Top = 220
      Width = 108
      Height = 17
      Caption = 'Install pyinstaller'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object AutoCommand: TCheckBox
      Left = 16
      Top = 243
      Width = 131
      Height = 17
      Caption = 'Auto pip command'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
  end
  object GroupBox5: TGroupBox
    Left = 287
    Top = 175
    Width = 265
    Height = 138
    Caption = '4. Add icon in the exe (Optional)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label7: TLabel
      Left = 16
      Top = 62
      Width = 48
      Height = 15
      Caption = 'File Path:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object icoFilePath: TLabel
      Left = 18
      Top = 83
      Width = 3
      Height = 15
      Caption = ' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 181
      Height = 17
      Caption = 'Note: Please select an ico file'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SelectIcon: TButton
      Left = 16
      Top = 31
      Width = 145
      Height = 25
      Caption = 'Select icon File Path'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = SelectIconClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 287
    Top = 315
    Width = 265
    Height = 170
    Caption = '5. Package setting'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object NoConsole: TCheckBox
      Left = 16
      Top = 34
      Width = 89
      Height = 17
      Caption = 'No console'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object OutputMode: TRadioGroup
      Left = 16
      Top = 57
      Width = 225
      Height = 73
      Caption = 'Output Mode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Create file in one exe file'
        'Create files in one folder')
      ParentFont = False
      TabOrder = 1
    end
    object CleanCache: TCheckBox
      Left = 16
      Top = 136
      Width = 233
      Height = 17
      Caption = 'remove temporary files before packaging'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
  end
  object GroupBox6: TGroupBox
    Left = 287
    Top = 484
    Width = 265
    Height = 158
    Caption = '6. Confirm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object NewPythonEnvironment: TButton
      Left = 16
      Top = 31
      Width = 225
      Height = 25
      Caption = #8560'. Set new python environment'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = NewPythonEnvironmentClick
    end
    object Packaging: TButton
      Left = 16
      Top = 62
      Width = 225
      Height = 43
      Caption = #8561'. Packaging'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = PackagingClick
    end
    object Button4: TButton
      Left = 16
      Top = 111
      Width = 225
      Height = 25
      Caption = #8562'. Open output folder'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button4Click
    end
  end
end
