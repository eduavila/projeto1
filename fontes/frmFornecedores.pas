unit frmFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, DBTables, ExtCtrls, ComCtrls,
  Grids, DBGrids, Buttons, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, ZConnection, ExtDlgs;

type
  TformFornecedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    StatusBar1: TStatusBar;
    btn_Buscar: TButton;
    edt_buscar: TEdit;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    btn_friltrar: TButton;
    Button6: TButton;
    Button5: TButton;
    CtbFornecedores: TZConnection;
    tbFornecedor: TZTable;
    tbFornecedorIdCliente: TIntegerField;
    tbFornecedorCNPJ: TIntegerField;
    tbFornecedorIE: TStringField;
    tbFornecedorCAE: TStringField;
    tbFornecedorNIRE: TStringField;
    tbFornecedorCPF: TIntegerField;
    tbFornecedorRG: TIntegerField;
    tbFornecedorNomeFantasia: TStringField;
    tbFornecedorRazaoSocial: TStringField;
    tbFornecedorResponsavelLegal: TStringField;
    tbFornecedorTelefone1: TStringField;
    tbFornecedorTelefone2: TStringField;
    tbFornecedorRamal1: TStringField;
    tbFornecedorRamal2: TStringField;
    tbFornecedorEndereco: TStringField;
    tbFornecedorBairro: TStringField;
    tbFornecedorComplemento: TStringField;
    tbFornecedorCEP: TStringField;
    tbFornecedorCidade: TStringField;
    tbFornecedorUF: TStringField;
    tbFornecedorPais: TStringField;
    tbFornecedorDataFundacao: TDateField;
    tbFornecedorTipoSociedade: TStringField;
    tbFornecedorObservacao: TMemoField;
    tbFornecedorEmail1: TStringField;
    tbFornecedorEmail2: TStringField;
    tbFornecedorSite: TStringField;
    tbFornecedorData_Inc: TDateField;
    tbFornecedorData_Alt: TDateField;
    tbFornecedorData_Hab: TDateField;
    tbFornecedorStatus: TStringField;
    tbFornecedorMarca: TStringField;
    tbFornecedorSituacao: TStringField;
    tbFornecedorLocalizacao: TBlobField;
    tbFornecedorTipo: TStringField;
    tbFornecedorFoto: TBlobField;
    tbFornecedorVendedorInterno: TStringField;
    tbFornecedorVendedorExterno: TStringField;
    tbFornecedorVendedorTelemarketing: TStringField;
    tbFornecedorAreaDeAtuacao: TStringField;
    tbFornecedorFormaPagamento: TStringField;
    tbFornecedorFrete: TStringField;
    tbFornecedorTransportadora: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dtsFornecedores: TDataSource;
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
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    Status: TDBRadioGroup;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    Label28: TLabel;
    DBEdit25: TDBEdit;
    Label29: TLabel;
    DBImage1: TDBImage;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_BuscarClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btn_friltrarClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFornecedores: TformFornecedores;

implementation

{$R *.dfm}

procedure TformFornecedores.Button1Click(Sender: TObject);
begin
     try
          tbFornecedor.IndexFieldNames := '';
          tbFornecedor.IndexFieldNames:= 'NomeFantasia';
          tbFornecedor.Locate('NomeFantasia',Edit3.Text,[loPartialKey]);
          tbFornecedor.IndexFieldNames:= '';
     except
          ShowMessage('Ocorreu um problema com o indece / Tabela !');
     end;
end;

procedure TformFornecedores.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TformFornecedores.Button2Click(Sender: TObject);
begin
     try
          tbFornecedor.IndexFieldNames:= '';
          tbFornecedor.IndexFieldNames:= 'CEP';
          tbFornecedor.Locate('NomeFantasia',Edit2.Text,[loPartialKey]);
          tbFornecedor.IndexFieldNames:= '';
     except
          ShowMessage('Ocorre um problema com seu indece CEP: ');
     end;
end;

procedure TformFornecedores.btn_BuscarClick(Sender: TObject);
begin

   try
     tbFornecedor.IndexFieldNames:= '';
     tbFornecedor.IndexFieldNames:= ComboBox1.Text;
     tbFornecedor.Locate('NomeFantasia',edt_buscar.Text,[loPartialKey]);
     tbFornecedor.IndexFieldNames:= '';
    except
      showmessage('Deu erro Porra !');
    end;


end;

procedure TformFornecedores.Button3Click(Sender: TObject);
begin
    if not tbFornecedor.Locate('NomeFantasia',Edit3.Text,[loPartialKey]) then
          ShowMessage('Nome Fantasia não encotrado');
end;

procedure TformFornecedores.Button4Click(Sender: TObject);
var
     reposta:string;
begin
     {tbFornecedor.IndexFieldNames:='idxCNPJ';
     reposta:= Inputbox('CNPJ','Entre com o CNPJ: ','');
     if not tbFornecedor. then
          ShowMessage('CNPJ nao encontrado ');
          tbFornecedor.IndexName:= '';   }
end;

procedure TformFornecedores.btn_friltrarClick(Sender: TObject);
begin
    { tbFornecedor.SetRangeStart;
     tbFornecedor.FieldByName('Codigo').AsString:= edit4.Text;
     tbFornecedor.SetRangeEnd;
     tbFornecedor.FieldByName('Codigo').AsString:=  edit5.Text;
     tbFornecedor.ApplyRange;   }
end;

procedure TformFornecedores.Button6Click(Sender: TObject);
begin
     {tbFornecedor.CancelRange;}
end;

procedure TformFornecedores.FormShow(Sender: TObject);
begin
     StatusBar1.Panels[0].Text:= 'Total de Registros:'+ IntToStr(tbFornecedor.RecordCount);
     StatusBar1.Panels[1].Text:= 'Registro Atual:'+ InttoStr(tbFornecedor.RecNo);
     

end;

procedure TformFornecedores.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     StatusBar1.Panels[0].Text:= 'Total de Registros:'+ IntToStr(tbFornecedor.RecordCount);
     StatusBar1.Panels[1].Text:= 'Registro Atual:'+ InttoStr(tbFornecedor.RecNo);
end;

procedure TformFornecedores.Button5Click(Sender: TObject);
begin
    // repostlIstaFornecedor.QuickRep1.Preview;
end;

end.

