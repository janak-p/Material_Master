using sap.ui.materialmanagement as my from '../db/schema';

service CatalogService {
    entity Materials @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'MatViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'MatManager' ]
            }
        ]) as projection on my.Material;
        
    entity Suppliers @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'MatViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'MatManager' ]
            }
        ]) as projection on my.Supplier;

    // entity MaterialsToSuppliers @(restrict : [
    //         {
    //             grant : [ 'READ' ],
    //             to : [ 'MatViewer' ]
    //         },
    //         {
    //             grant : [ '*' ],
    //             to : [ 'MatManager' ]
    //         }
    //     ]) as projection on my.MaterialToSupplier;
        
     }