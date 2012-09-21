unit frmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, jpeg, ExtCtrls, Buttons, ImgList, ToolWin,
  StdCtrls;

type
  TfrmPricipal = class(TForm)
    MainMenu1: TMainMenu;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    EntradaProdutos1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Clientes2: TMenuItem;
    Atendimento1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    Funcionarios1: TMenuItem;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Timer1: TTimer;
    ImageList1: TImageList;
    Utilitrios1: TMenuItem;
    Calculadora1: TMenuItem;
    blocodeNota1: TMenuItem;
    Windowsexplorer1: TMenuItem;
    Firefox1: TMenuItem;
    Calendario1: TMenuItem;
    Label1: TLabel;
    procedure Clientes2Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure blocodeNota1Click(Sender: TObject);
    procedure Windowsexplorer1Click(Sender: TObject);
    procedure Calendario1Click(Sender: TObject);
    procedure Firefox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPricipal: TfrmPricipal;

implementation

uses  frmClientes, frmFornecedores, frmProdutos, frmSobre,
  frmCalendario, AberturaFrm;

{$R *.dfm}            

procedure TfrmPricipal.Clientes2Click(Sender: TObject);
begin
    // formClientes.Show;
    Application.CreateForm(TformClientes,formClientes);
    formClientes.ShowModal;
    formClientes.Free;
end;

procedure TfrmPricipal.Fornecedores1Click(Sender: TObject);
begin
    formFornecedores.Show;
  // Application.CreateForm(TformFornecedores,formFornecedores);
  // formFornecedores.ShowModal;
   //formFornecedores.Free;
end;

procedure TfrmPricipal.Produtos1Click(Sender: TObject);
begin
    // formProdutos.Show;
    Application.CreateForm(TformProdutos,formProdutos);
    formProdutos.ShowModal;
    formProdutos.Free;
end;

procedure TfrmPricipal.Timer1Timer(Sender: TObject);
begin
     StatusBar1.Panels[1].Text:=  DatetoStr(date)+' : ' + TimetoStr(time);
end;

procedure TfrmPricipal.Sobre1Click(Sender: TObject);
begin
    // formSobre.ShowModal;
    Application.CreateForm(TformSobre,formSobre);
    formSobre.ShowModal;
    formSobre.Free;
end;

procedure TfrmPricipal.Calculadora1Click(Sender: TObject);
begin
     WinExec('Calc.exe', SW_SHOWNORMAL);
end;

procedure TfrmPricipal.blocodeNota1Click(Sender: TObject);
begin
     WinExec('notepad.exe',SW_SHOWNORMAL);
end;

procedure TfrmPricipal.Windowsexplorer1Click(Sender: TObject);
begin
     WinExec('Explorer.exe', SW_SHOWNORMAL);
end;

procedure TfrmPricipal.Calendario1Click(Sender: TObject);
begin
    // FormCalendario.showmodal;
    Application.CreateForm(TformCalendario, formCalendario);
    formCalendario.ShowModal;
    formCalendario.free;
end;

procedure TfrmPricipal.Firefox1Click(Sender: TObject);
begin
     WinExec('C:\ProgramFiles\MozillaFirefox\firefox.exe http://www.google.com', SW_SHOWNORMAL);
end;

end.
