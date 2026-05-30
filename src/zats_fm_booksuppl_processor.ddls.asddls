@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Supllement Processor Projection Entity'
@Metadata.ignorePropagatedAnnotations: false
@VDM.viewType: #CONSUMPTION
@Metadata.allowExtensions: true
define view entity ZATS_FM_BOOKSUPPL_PROCESSOR as projection on ZATS_FM_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking : redirected to parent ZATS_FM_BOOKING_PROCESSOR,
    _Supplement,
    _SupplementText,
    _Travel : redirected to ZATS_FM_TRAVEL_PROCESSOR
}
