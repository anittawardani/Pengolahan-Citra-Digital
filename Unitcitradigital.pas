unit Unitcitradigital;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtDlgs, ExtCtrls, StdCtrls;

type
  Tfrmcitradigital = class(TForm)
    lblopenimage: TLabel;
    btnopenimage: TButton;
    Image1: TImage;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    btninversi: TButton;
    btnEqualization: TButton;
    ProgressBar1: TProgressBar;
    btnClose: TButton;
    procedure btnopenimageClick(Sender: TObject);
    procedure btninversiClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcitradigital: Tfrmcitradigital;

implementation

{$R *.dfm}

procedure Tfrmcitradigital.btnopenimageClick(Sender: TObject);
var gambar :TBitmap;
begin
   if not OpenPictureDialog1.Execute then Exit
   else
    begin
      gambar := TBitmap.Create;
      gambar.LoadFromFile(OpenPictureDialog1.FileName);
    end;
    Image1.Picture.Bitmap :=gambar;
    Image2.Picture.Bitmap :=gambar;
end;

procedure Tfrmcitradigital.btninversiClick(Sender: TObject);
var pixel : PByteArray;
brs,kol   : Integer;
RGB1      : array[0..2] of Integer;
begin
  for brs:= 0 to Image2.Picture.Height-1 do
    begin
      pixel:=Image2.Picture.Bitmap.ScanLine[brs];
      for kol:= 0 to Image2.Picture.Width-1 do
        begin
          if Image2.Picture.Bitmap.PixelFormat = pf8bit then //citra 8 bit
          pixel[kol]:= 256 - pixel[kol];
          if Image2.Picture.Bitmap.PixelFormat = pf24bit then //citra 24 bit
            begin
              pixel[3*kol]:=256-pixel[3*kol];
              pixel[3*kol+1]:=256-pixel[3*kol+1];
              pixel[3*kol+2]:=256-pixel[3*kol+2];
            end;
        end;
        Image2.Invalidate;
end;
end;

procedure Tfrmcitradigital.btnCloseClick(Sender: TObject);
begin
Application.Terminate;
end;

end.
