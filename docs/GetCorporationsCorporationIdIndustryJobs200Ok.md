# EVEOpenAPI::GetCorporationsCorporationIdIndustryJobs200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**job_id** | **Integer** | Unique job ID | 
**installer_id** | **Integer** | ID of the character which installed this job | 
**facility_id** | **Integer** | ID of the facility where this job is running | 
**location_id** | **Integer** | ID of the location for the industry facility | 
**activity_id** | **Integer** | Job activity ID | 
**blueprint_id** | **Integer** | blueprint_id integer | 
**blueprint_type_id** | **Integer** | blueprint_type_id integer | 
**blueprint_location_id** | **Integer** | Location ID of the location from which the blueprint was installed. Normally a station ID, but can also be an asset (e.g. container) or corporation facility | 
**output_location_id** | **Integer** | Location ID of the location to which the output of the job will be delivered. Normally a station ID, but can also be a corporation facility | 
**runs** | **Integer** | Number of runs for a manufacturing job, or number of copies to make for a blueprint copy | 
**cost** | **Float** | The sume of job installation fee and industry facility tax | [optional] 
**licensed_runs** | **Integer** | Number of runs blueprint is licensed for | [optional] 
**probability** | **Float** | Chance of success for invention | [optional] 
**product_type_id** | **Integer** | Type ID of product (manufactured, copied or invented) | [optional] 
**status** | **String** | status string | 
**duration** | **Integer** | Job duration in seconds | 
**start_date** | **DateTime** | Date and time when this job started | 
**end_date** | **DateTime** | Date and time when this job finished | 
**pause_date** | **DateTime** | Date and time when this job was paused (i.e. time when the facility where this job was installed went offline) | [optional] 
**completed_date** | **DateTime** | Date and time when this job was completed | [optional] 
**completed_character_id** | **Integer** | ID of the character which completed this job | [optional] 
**successful_runs** | **Integer** | Number of successful runs for this job. Equal to runs unless this is an invention job | [optional] 


