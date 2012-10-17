unit frmProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Grids,
  DBGrids, ExtDlgs;

type
  TformProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
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
    SpeedButton13: TSpeedButton;
    Cadastro: TTabSheet;
    Tabela: TTabSheet;
    Busca: TTabSheet;
    Busca2: TPageControl;
    label1: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    DBImage1: TDBImage;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    SpeedButton1: TSpeedButton;
    opeDialog: TOpenPictureDialog;
    DBGrid1: TDBGrid;
    Label19: TLabel;
    DBImage2: TDBImage;
    SpeedButton14: TSpeedButton;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formProdutos: TformProdutos;

implementation

uses  frmPrincipal, frm_dtmPrincipal;

{$R *.dfm}

procedure TformProdutos.SpeedButton2Click(Sender: TObject);
begin
     try
          dtmPrincipal.qryProdutos.first;
     except
          showMessage('Não tem mais registros ! ') ;
     end;
end;

procedure TformProdutos.SpeedButton3Click(Sender: TObject);
begin
     try
          dtmPrincipal.qryProdutos.Prior;
     except
          ShowMessage('Erro pow ! ');
     end;
end;

procedure TformProdutos.SpeedButton4Click(Sender: TObject);
begin
     try
          dtmPrincipal.qryProdutos.Next;
     except
          ShowMessage('Erro !!');
     end;
end;

procedure TformProdutos.SpeedButton5Click(Sender: TObject);
begin
     try
          dtmPrincipal.qryProdutos.last;
     except
          ShowMessage('Erro!! bota last');
     end;
end;

procedure TformProdutos.SpeedButton6Click(Sender: TObject);
begin
     try
          dtmPrincipal.qryProdutos.Edit;
     except
          ShowMessage('Erro  no edit !');
     end;
end;

procedure TformProdutos.SpeedButton7Click(Sender: TObject);
begin
     try
          dtmPrincipal.qryProdutos.Insert;
     except
          ShowMessage('Erro no Insert ');
     end;

end;

procedure TformProdutos.SpeedButton8Click(Sender: TObject);
begin
     try
          dtmPrincipal.qryProdutos.Delete;
     except
          ShowMessage('Erro ao deletar alguma coisa! ');
     end;
end;

procedure TformProdutos.SpeedButton9Click(Sender: TObject);
begin
     try
          dtmPrincipal.qryProdutos.Refresh;
     except
          ShowMessage('Erro ao atualizar! ');
     end;
     
end;

procedure TformProdutos.SpeedButton10Click(Sender: TObject);
begin
     try
          dtmPrincipal.qryProdutos.Post;
     except
          ShowMessage('Erro ao gravar !');
     end;
end;

procedure TformProdutos.SpeedButton13Click(Sender: TObject);
begin
     close;
end;

procedure TformProdutos.SpeedButton14Click(Sender: TObject);
begin
     if opeDialog.Execute then
          dtmPrincipal.qryProdutosFoto2.LoadFromFile(opeDialog.FileName);

end;

procedure TformProdutos.SpeedButton1Click(Sender: TObject);
begin
      if opeDialog.Execute then
          dtmPrincipal.qryProdutosFoto1.LoadFromFile(opedialog.FileName);
end;

end.
