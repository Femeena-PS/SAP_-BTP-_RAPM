@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection layer for Root Travel Entity'
@Metadata.ignorePropagatedAnnotations: false
@VDM.viewType: #CONSUMPTION
@Metadata.allowExtensions: true
define root view entity ZATS_FM_TRAVEL_PROCESSOR as projection on ZATS_FM_TRAVEL
{
    key TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    AgencyName,
    Customername,
    StatusText,
    Minion,
    /* Associations */
    _Agency,
    _Booking : redirected to composition child ZATS_FM_BOOKING_PROCESSOR,
    _Currency,
    _Customer,
    _OverallStatus
}
