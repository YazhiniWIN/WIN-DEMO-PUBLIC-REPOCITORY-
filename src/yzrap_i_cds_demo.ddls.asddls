@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP HANDS ON'
@Metadata.ignorePropagatedAnnotations: true
define root view entity YZRAP_I_CDS_DEMO
  as select from yrap_demo1
{
  key book_id       as bookId,
      book_date     as bookDate,
      @Semantics.amount.currencyCode: 'amount'
      booking_fee   as bookFee,
      currency_code as amount,
      cust_name     as custName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_Country', element: 'Country' } }]
      city_from     as source,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_Country', element: 'Country' } }]
      city_to       as destination,
      status        as status,
      inactive      as inactive,

      @Semantics.user.createdBy: true
      created_by,
      @Semantics.user.localInstanceLastChangedBy: true
      changed_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      changed_at

}
