program ProductInventory;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TProduct = class
  private
    FName: string;
    FPrice: Double;
    FQuantity: Integer;
    function GetTotalCost: Double;
  public
    constructor Create(AName: string; APrice: Double; AQuantity: Integer);
    property Name: string read FName write FName;
    property Price: Double read FPrice write FPrice;
    property Quantity: Integer read FQuantity write FQuantity;
    property TotalCost: Double read GetTotalCost;
  end;

{ Реалізація методів класу TProduct }
constructor TProduct.Create(AName: string; APrice: Double; AQuantity: Integer);
begin
  FName := AName;
  FPrice := APrice;
  FQuantity := AQuantity;
end;

function TProduct.GetTotalCost: Double;
begin
  Result := FPrice * FQuantity;
end;

var
  Product1, Product2: TProduct;
begin
  { Створюємо товари }
  Product1 := TProduct.Create('Laptop', 25000.50, 2);
  Product2 := TProduct.Create('Phone', 15000.75, 3);

  { Вивід інформації }
  Writeln('Product: ', Product1.Name);
  Writeln('Price: ', Product1.Price:0:2);
  Writeln('Quantity: ', Product1.Quantity);
  Writeln('Total cost: ', Product1.TotalCost:0:2);
  Writeln;

  Writeln('Product: ', Product2.Name);
  Writeln('Price: ', Product2.Price:0:2);
  Writeln('Quantity: ', Product2.Quantity);
  Writeln('Total cost: ', Product2.TotalCost:0:2);

  { Очищення пам'яті }
  Product1.Free;
  Product2.Free;

  Readln;
end.
