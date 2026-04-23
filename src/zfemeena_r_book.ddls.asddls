@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'root entity for books'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZFEMEENA_R_BOOK as select from zfemeena_book
{
    key book_id as BookId,
    name as Name,
    author as Author,
    publish_date as PublishDate,
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_on as CreatedOn,
    @Semantics.user.lastChangedBy: true
    changed_by as ChangedBy,
    @Semantics.systemDateTime.lastChangedAt: true
    changed_on as ChangedOn
   }
