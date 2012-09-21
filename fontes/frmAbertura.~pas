unit frmAbertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, jpeg;

type
  TformAbertura = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAbertura: TformAbertura;

implementation

{$R *.dfm}

procedure TformAbertura.FormActivate(Sender: TObject);
begin
     Progressbar1.Position := 0;
     while Progressbar1.Position < 100 do
     begin
         Progressbar1.Position := Progressbar1.Position +10;
         case Progressbar1.Position of
           10: label1.Caption := 'Carregando ...';
           20: label1.Caption := 'Abrindo Arquivos...';
           30: label1.Caption := 'Configurando froms e tabels...';
          end;
     formAbertura.Update;
     sleep(500);
     end;
     label1.Caption := 'Inicializando o programa... ';
end;


end.
