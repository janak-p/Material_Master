namespace sap.ui.materialmanagement;
using { Country } from '@sap/cds/common';
entity Material {
    key MaterialId: Integer @Common.Label : 'Material number';
    key MaterialName: String;
    Quantity: Integer;
    Description: String;
    UnitPrice: Integer;
    supplier: Association to many Supplier;
}

entity Supplier {
    key SupplierId: Integer;
    key SupplierName: String;
    SupplierAddress: String;
    Country: Country;
    phone: Integer @assert.range: [ 1000000000, 9999999999 ];
    material: Association to many Material;
}
