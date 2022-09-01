// @strict-types

#If Server Or ThickClientOrdinaryApplication Or ExternalConnection Then

#Region EventHandlers

// Before write.
// 
// Parameters:
//  Cancel - Boolean - Cancel
//  WriteMode - DocumentWriteMode - Write mode
//  PostingMode - DocumentPostingMode - Posting mode
Procedure BeforeWrite(Cancel, WriteMode, PostingMode)
	
	If DataExchange.Load = True Then
		Return;
	EndIf;
	
	Total = OrderContent.Total("Total");

EndProcedure

#EndRegion

#EndIf
