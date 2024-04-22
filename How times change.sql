SET NOCOUNT ON
select top 2 EventName AS What, EventDate as [When] from tblEvent
order by EventDate 

select top 2 EventName AS What, EventDate as [When] from tblEvent
order by EventDate DESC