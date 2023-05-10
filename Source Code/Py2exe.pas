unit Py2exe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,StrUtils, ComCtrls,ShellApi;

type
  TForm2 = class(TForm)
    Title: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    PyVer: TEdit;
    Label2: TLabel;
    NewEnvName: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    SelectPath: TButton;
    pyFilePath: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    pip_Package: TMemo;
    InstallPyinstaller: TCheckBox;
    AutoCommand: TCheckBox;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    icoFilePath: TLabel;
    SelectIcon: TButton;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    NoConsole: TCheckBox;
    OutputMode: TRadioGroup;
    CleanCache: TCheckBox;
    GroupBox6: TGroupBox;
    NewPythonEnvironment: TButton;
    Packaging: TButton;
    Button4: TButton;
    Label6: TLabel;
    GroupBox7: TGroupBox;
    SelectNewEnvironment: TCheckBox;
    GroupBox8: TGroupBox;
    Label8: TLabel;
    ExistingEnvName: TEdit;
    Label9: TLabel;
    procedure SelectNewEnvironmentClick(Sender: TObject);
    procedure SelectPathClick(Sender: TObject);
    procedure SelectIconClick(Sender: TObject);
    procedure NewPythonEnvironmentClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    //procedure pip_PackageChange(Sender: TObject);
    //procedure pip_PackageClick(Sender: TObject);
    //procedure pip_PackageChange(Sender: TObject);
    procedure PackagingClick(Sender: TObject);
    procedure NewEnvNameChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Form2: TForm2;  SelectNew: Boolean; PythonFilePath:string='';   IconFilePath:string=''; NewFlag:Boolean=False;

  PipInstallFlag:Boolean=False;



implementation
{$R *.dfm}

procedure TForm2.NewPythonEnvironmentClick(Sender: TObject);
var      PyVersion:string;   EnvName:string; PyEnvBatText:Tstringlist;  i:integer; StartFlag:Boolean;  BatPath:string;
         BatPath_temp:string;k:integer;
begin
  PyEnvBatText:=Tstringlist.Create  ;
  //PyEnvBatText.Add('echo y');
  if SelectNewEnvironment.checked then
  begin
    if (PyVer.Text	= '') OR (NewEnvName.Text	= '')  then
    begin
        showmessage('Please input new python environment information');
        StartFlag:=False;
    end

    else
    begin
         PyVersion:=   PyVer.Text ;
         EnvName:=  NewEnvName.Text;
         PyEnvBatText.Add('CALL conda '+'create '+'-n '+EnvName+' '+'python='+PyVersion+' -y') ;
         //PyEnvBatText.Add('CALL conda '+'activate '+EnvName) ;
         StartFlag:=True;
         NewFlag:=True;           //The new environment is set
    end;
  end;


  if PythonFilePath='' then
  begin
       showmessage('Please input Python file path') ;
       StartFlag:=false;
  end
  else
  begin
      BatPath:= ReverseString(rightstr(ReverseString(PythonFilePath),length(ReverseString(PythonFilePath))-pos('\',ReverseString(PythonFilePath))))+'\'+'Install_Env';
      BatPath_temp:= BatPath;
          while True do
          begin
              if FileExists(BatPath+'.bat') then
              begin
                  k:=k+1;
                  BatPath:=BatPath_temp+'_'+inttostr(k);
              end
              else break;
          end;
        BatPath:=BatPath+'.bat';
        if StartFlag then
        begin
          PyEnvBatText.Add('pause');
          PyEnvBatText.SaveToFile(BatPath);
          ShellExecute(Handle, 'open',PChar(BatPath) , nil, nil, SW_SHOWNORMAL);
          packaging.Enabled :=true;
          showmessage('Please wait for the processing of prompt');
        end;
  end;





end;



procedure TForm2.SelectIconClick(Sender: TObject);
var IconFilePathTemp:string;
begin
  with TFileOpenDialog.Create(nil) do    // Select path
  try
    Options := [fdoStrictFileTypes];        // https://stackoverflow.com/questions/7422689/selecting-a-directory-with-topendialog
    if Execute then                  //Output selected path
      IconFilePathTemp:= Filename;
  finally
    Free;
  end;

  if IconFilePathTemp<>'' then
  begin
    if (RightStr(IconFilePathTemp,4)='.ico') then
    begin
         IconFilePath:=IconFilePathTemp  ;
         icoFilePath.caption:= IconFilePath
    end
    else showmessage('Please select an ico file')
  end;

end;

procedure TForm2.Button4Click(Sender: TObject);
var PythonFileDir:string;
begin
  if PythonFilePath<>'' then

  begin
  PythonFileDir:= ReverseString(rightstr(ReverseString(PythonFilePath),length(ReverseString(PythonFilePath))-pos('\',ReverseString(PythonFilePath))));
  if DirectoryExists(PythonFileDir+'\dist') then ShellExecute(Handle, 'open',Pwidechar(PythonFileDir+'\dist') , nil, nil, SW_SHOWNORMAL)
  else showmessage('No output folder');
  end
  else showmessage('Please Select the python file')
end;

procedure TForm2.FormActivate(Sender: TObject);

begin
  pip_package.Clear
end;



procedure TForm2.NewEnvNameChange(Sender: TObject);
begin
    NewFlag:=false;
     packaging.Enabled:=False;
     NewPythonEnvironment.Enabled:=True ;
end;

procedure TForm2.PackagingClick(Sender: TObject);
var BatText:Tstringlist;    StartFlag:Boolean;   ConsoleText:String;   OutputFileMode:string; Clean:string;
IconFileDir:string;   PythonFileName:string;
IconFilename:string; PythonFileDir:string;   IconFilePathTemp:string; k:integer;IconFilePathNew:string;
BatPath_temp:string;BatPath:string;  i:integer;
begin
  BatText:=Tstringlist.Create  ;
  StartFlag:=False;
        if SelectNewEnvironment.checked then
        begin
             if (NewEnvName.Text	= '')  then  showmessage('Please input new python environment information')
             else
             begin
                  BatText.Add('Call conda '+'activate '+NewEnvName.Text) ;
                  StartFlag:=True;
             end
        end
        else
        begin
            if (ExistingEnvName.Text	= '')   then
             begin
                  showmessage('Please input existing python environment name') ;
             end
             else
            begin
              BatText.Add('Call conda '+'activate '+ExistingEnvName.Text);
               StartFlag:=True;
            end;

        end;


    if StartFlag then
    begin
         if pip_package.lines.count<>0 then
        begin
          if InstallPyinstaller.checked then
          begin
               BatText.Add('pip install pyinstaller' );
               PipInstallFlag:=True;
          end;

          if Not(AutoCommand.checked) then
          begin
              for i := 0 to pip_package.lines.count do BatText.Add(pip_package.lines[i])
          end
          else
          begin
              for i := 0 to pip_package.lines.count-1 do BatText.Add('pip install '+ pip_package.lines[i])
          end;
        end;
        if InstallPyinstaller.checked then
        begin
            if Not(PipInstallFlag) then BatText.Add('pip install pyinstaller' )
        end;

        if PythonFilePath='' then
        begin
             showmessage('Please input Python file path') ;
        end
        else
        begin
            if Noconsole.checked then ConsoleText:='-w' else  ConsoleText:='-c';
            if OutputMode.ItemIndex	= 0 then  OutputFileMode:= '-F' else OutputFileMode:= '-D';
            if CleanCache.Checked then Clean:='--clean ' else Clean:='' ;
            if PythonFilePath<>'' then
            begin
                PythonFileDir:= ReverseString(rightstr(ReverseString(PythonFilePath),length(ReverseString(PythonFilePath))-pos('\',ReverseString(PythonFilePath))));
                PythonFileName:=  ReverseString(leftstr(ReverseString(PythonFilePath),pos('\',ReverseString(PythonFilePath))-1));
                if IconFilePath<>'' then
                begin
                    IconFilename:=ReverseString(leftstr(ReverseString(IconFilePath),pos('\',ReverseString(IconFilePath))-1));    //get ico file name
                    IconFileDir:=stringreplace( IconFilePath,  IconFilename, '', [rfReplaceAll] ) ;                                //get folder path of icon file
                    if IconFileDir<>PythonFileDir+'\' then
                    begin
                          IconFilePathTemp:= stringreplace(PythonFileDir+'\'+IconFilename, '.ico','',[rfReplaceAll, rfIgnoreCase]);
                          while True do
                          begin
                              if FileExists(IconFilePathTemp+'.ico') then
                              begin
                                  k:=k+1;
                                  IconFilePathTemp:=stringreplace(PythonFileDir+'\'+IconFilename, '.ico','',[rfReplaceAll, rfIgnoreCase])+'_'+inttostr(k);
                              end
                              else break;
                          end;
                        IconFilePathNew:=IconFilePathTemp+'.ico';    //get new path of icon when icon file is not in the same folder of python file
                        CopyFile(PChar(IconFilePath), PChar(IconFilePathNew),True );          //copy the icon file to the python file folder
                        IconFilename:= ReverseString(leftstr(ReverseString(IconFilePathNew),pos('\',ReverseString(IconFilePathNew))-1));


                    end;
                    BatText.Add('cd '+PythonFileDir);
                    BatText.Add('pyinstaller '+ OutputFileMode +' '+ ConsoleText+' '+ Clean+ '-i '+IconFilename+' '+PythonFileName)
                end
                else
                begin
                     BatText.Add('cd '+PythonFileDir);
                     BatText.Add('pyinstaller '+ OutputFileMode +' '+ ConsoleText+' '+Clean+PythonFileName) ;
                end;

                BatPath:= PythonFileDir+'\'+'Python_package';
                BatPath_temp:= BatPath;
                    while True do
                    begin
                        if FileExists(BatPath+'.bat') then
                        begin
                            k:=k+1;
                            BatPath:=BatPath_temp+'_'+inttostr(k);
                        end
                        else break;
                    end;
                BatPath:=BatPath+'.bat';
                BatText.add('pause');
                BatText.SaveToFile(BatPath);
                ShellExecute(Handle, 'open',PChar(BatPath) , nil, nil, SW_SHOWNORMAL);
                showmessage('Please wait for the processing of prompt')

            end
            else showmessage('Please select the python file')
        end;

    end;





end;



procedure TForm2.SelectNewEnvironmentClick(Sender: TObject);

begin
      SelectNew:= SelectNewEnvironment.Checked ;
      if SelectNewEnvironment.Checked then
      begin
           Groupbox7.Enabled:=True;
           Groupbox8.Enabled:=False;
           ExistingEnvName.Visible := False;
           PyVer.Visible :=true;
           NewEnvName.visible:=true;
           packaging.Enabled := False;
           NewPythonEnvironment.Enabled:=True;
      end;
      if Not(SelectNewEnvironment.Checked) then
      begin
           Groupbox8.Enabled:=True;
           Groupbox7.Enabled:=False;
           ExistingEnvName.Visible := true;
           PyVer.Visible :=false;
           NewEnvName.visible:=false;
           packaging.Enabled :=true;
           NewPythonEnvironment.Enabled:=False;
      end;



end;



procedure TForm2.SelectPathClick(Sender: TObject);
var PythonFilePathTemp:string;
begin
  with TFileOpenDialog.Create(nil) do    // Select path
  try
    Options := [fdoStrictFileTypes];        // https://stackoverflow.com/questions/7422689/selecting-a-directory-with-topendialog
    if Execute then                  //Output selected path
      PythonFilePathTemp:= Filename;
  finally
    Free;
  end;

  if PythonFilePathTemp<>'' then
  begin
    if (RightStr(PythonFilePathTemp,3)='.py') or (RightStr(PythonFilePathTemp,3)='.PY') then
    begin
         PythonFilePath:=PythonFilePathTemp  ;
         pyFilePath.caption:= PythonFilePath
    end
    else showmessage('Please select a python file')
  end;

end;

end.
