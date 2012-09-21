unit frmClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, DB, Mask,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset,
  ZConnection, Buttons, ExtDlgs;

type
  TformClientes = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    conetCliente: TZConnection;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dtsCliente: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Status: TDBRadioGroup;
    DBComboBox1: TDBComboBox;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    qryCliente: TZQuery;
    SpeedButton1: TSpeedButton;
    qryClienteIdCliente: TIntegerField;
    qryClienteCNPJ: TIntegerField;
    qryClienteIE: TStringField;
    qryClienteCAE: TStringField;
    qryClienteNIRE: TStringField;
    qryClienteCPF: TIntegerField;
    qryClienteRG: TIntegerField;
    qryClienteNomeFantasia: TStringField;
    qryClienteRazaoSocial: TStringField;
    qryClienteResponsavelLegal: TStringField;
    qryClienteTelefone1: TStringField;
    qryClienteTelefone2: TStringField;
    qryClienteRamal1: TStringField;
    qryClienteRamal2: TStringField;
    qryClienteEndereco: TStringField;
    qryClienteBairro: TStringField;
    qryClienteComplemento: TStringField;
    qryClienteCEP: TStringField;
    qryClienteCidade: TStringField;
    qryClienteUF: TStringField;
    qryClientePais: TStringField;
    qryClienteDataFundacao: TDateField;
    qryClienteTipoSociedade: TStringField;
    qryClienteObservacao: TMemoField;
    qryClienteEmail1: TStringField;
    qryClienteEmail2: TStringField;
    qryClienteSite: TStringField;
    qryClienteData_Inc: TDateField;
    qryClienteData_Alt: TDateField;
    qryClienteData_Hab: TDateField;
    qryClienteStatus: TStringField;
    qryClienteMarca: TStringField;
    qryClienteSituacao: TStringField;
    qryClienteLocalizacao: TBlobField;
    qryClienteTipo: TStringField;
    qryClienteFoto: TBlobField;
    qryClienteVendedorInterno: TStringField;
    qryClienteVendedorExterno: TStringField;
    qryClienteVendedorTelemarketing: TStringField;
    qryClienteAreaDeAtuacao: TStringField;
    qryClienteFormaPagamento: TStringField;
    qryClienteFrete: TStringField;
    qryClienteTransportadora: TStringField;
    Label19: TLabel;
    DBImage1: TDBImage;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    editCNPJ: TEdit;
    SpeedButton13: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Button4: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    MaskEdit1: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure editCNPJExit(Sender: TObject);
    procedure editCNPJClick(Sender: TObject);
    procedure editCNPJEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formClientes: TformClientes;

implementation

uses rptFichaCliente, rptFichaClienteRave;

{$R *.dfm}

procedure TformClientes.Button1Click(Sender: TObject);
begin
     try
          qryCliente.IndexFieldNames := '';
          qryCliente.Locate('NomeFantasia',Edit1.Text,[loPartialKey,loCaseInsensitive]);
          qryCliente.IndexFieldNames:= '';
     except
          ShowMessage('Ocorreu um problema com o indece / Tabela !');
     end;
end;

procedure TformClientes.FormShow(Sender: TObject);
begin
     StatusBar1.Panels[0].Text:= 'Total de Registros:'+ IntToStr(qryCliente.RecordCount);
     StatusBar1.Panels[1].Text:= 'Registro Atual:'+ InttoStr(qryCliente.RecNo);
end;

procedure TformClientes.Button2Click(Sender: TObject);
begin
     try
          qryCliente.IndexFieldNames:= '';
          qryCliente.Locate('CEP',Edit2.Text, [loPartialKey,loCaseInsensitive]);
          qryCliente.IndexFieldNames:='';
     except
          ShowMessage('Ocorreu um erro com o indece / tabela! ');
     end;
end;

procedure TformClientes.Button3Click(Sender: TObject);
begin
     try
          qryCliente.Locate(Edit3.Text,ComboBox1.Text,[loPartialKey,loCaseInsensitive]);
     except
          ShowMessage('Ocorreu um erro com o indece / tabela! ');
     end;
end;

procedure TformClientes.SpeedButton2Click(Sender: TObject);
begin
     qryCliente.First
end;

procedure TformClientes.SpeedButton3Click(Sender: TObject);
begin
     qryCliente.Prior;
end;

procedure TformClientes.SpeedButton4Click(Sender: TObject);
begin
     qryCliente.Next;
end;

procedure TformClientes.SpeedButton5Click(Sender: TObject);
begin
     qryCliente.Last;
end;

procedure TformClientes.SpeedButton6Click(Sender: TObject);
begin
     qryCliente.Edit;
end;

procedure TformClientes.SpeedButton7Click(Sender: TObject);
begin
     qryCliente.Append;
end;

procedure TformClientes.SpeedButton8Click(Sender: TObject);
begin
     qryCliente.Delete;
end;

procedure TformClientes.SpeedButton9Click(Sender: TObject);
begin
     qryCliente.Refresh;
end;

procedure TformClientes.SpeedButton10Click(Sender: TObject);
begin
     Try
          qryCliente.Post;
     except
          ShowMessage('Erro ao Gravar no Banco de dados .');
     end;
end;

procedure TformClientes.SpeedButton12Click(Sender: TObject);
begin
    try
     qryCliente.Close;
     qryCliente.SQL.Clear;
     qryCliente.SQL.Add('SELECT * FROM tblclientes WHERE CPF = '+(editCNPJ.Text));
     qryCliente.Open;
     qryCliente.First;
    except
          ShowMessage('Erro na Pesquisa.. Tente Novament! ');
    end;
end;

procedure TformClientes.FormCreate(Sender: TObject);
begin
    // qryCliente.Active:= False;
end;

procedure TformClientes.editCNPJExit(Sender: TObject);
begin
     editCNPJ.Text:= 'Digite O CNPJ';
end;

procedure TformClientes.editCNPJClick(Sender: TObject);
begin
     editCNPJ.Text:= '';
end;

procedure TformClientes.editCNPJEnter(Sender: TObject);
begin
     qryCliente.Close;
     qryCliente.SQL.Clear;
     qryCliente.SQL.Add('SELECT * FROM tblclientes WHERE CPF='+(editCNPJ.Text));
     qryCliente.Open;
     qryCliente.First;
end;

procedure TformClientes.SpeedButton1Click(Sender: TObject);
begin
     if  RadioGroup1.ItemIndex = 0 then
          begin
               //chama o relatorio 1
               Application.CreateForm(TreportFichaCliente, reportFichaCliente);
               reportFichaCliente.QuickRep1.preview;
               reportFichaCliente.Free;
          end
     else
     if RadioGroup1.ItemIndex = 1 then
         begin
                    // Chama o relatorio 2
               showMessage('Relatorio 2 selecionado ');
         end
     else
          if RadioGroup1.ItemIndex = 2 then
               begin
                    ShowMessage('teste2');
                    //formExemploRave.show;
                     //formExemploRave.ravereport.nomeprojeto.execute;
                    Application.CreateForm(TrptFichaClientefrm, rptFichaClientefrm);
                    rptFichaClientefrm.ravefichaCliente.Execute;
                    
               end;

end;


procedure TformClientes.SpeedButton13Click(Sender: TObject);
begin
     close;
end;

procedure TformClientes.Button4Click(Sender: TObject);
begin
     if OpenPictureDialog1.execute then
          qryClienteFoto.LoadFromFile(OpenPictureDialog1.FileName);
end;

end.
