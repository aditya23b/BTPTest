@AbapCatalog.sqlViewName: 'ZAD_SIM_SQL_VIEW'
@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Simple CDS view'
define view ZJP_SIMPLE_CDS as select from yrap_atrav01 {
      key travel_id as TravelId,
      agency_id as AgencyId,
      customer_id as CustomerId,
      begin_date as BeginDate,
      end_date as EndDate,
      booking_fee as BookingFee,
      total_price as TotalPrice,
      currency_code as CurrencyCode,
      description as Description,
      overall_status as OverallStatus,
      attachment as Attachment,
      mime_type as MimeType,
      file_name as FileName,
      created_by as CreatedBy,
      created_at as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt
}
