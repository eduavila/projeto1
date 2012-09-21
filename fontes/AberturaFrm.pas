unit AberturaFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, jpeg, ExtCtrls;

type
  TAberturaForm = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    ProgressBar1: TProgressBar;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AberturaForm: TAberturaForm;

implementation

uses frmPrincipal;

{$R *.dfm}

procedure TAberturaForm.FormShow(Sender: TObject);
begin
     sleep(2000);
     frmPricipal.Show;
     
end;

end.

