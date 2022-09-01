// @strict-types


#Region FormTableItemsEventHandlers

// Order content quantity on change.
// 
// Parameters:
//  Item - FormField - Item
&AtClient
Procedure OrderContentQuantityOnChange(Item)
	RecalculateAmount();  
EndProcedure

// Order content price on change.
// 
// Parameters:
//  Item - FormField - Item
&AtClient
Procedure OrderContentPriceOnChange(Item)
	RecalculateAmount();  
EndProcedure

#EndRegion


#Region Private

&AtClient
Procedure RecalculateAmount()
	CurrentRow = Items.OrderContent.CurrentData;
	CurrentRow.Total = CurrentRow.Quantity * CurrentRow.Price;
EndProcedure

#EndRegion
