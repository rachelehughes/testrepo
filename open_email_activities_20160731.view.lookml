- view: open_email_activities_20160731
  sql_table_name: davita_comms.openEmailActivities_20160731
  fields:

  - dimension: activity_date
    type: string
    sql: ${TABLE}.activityDate

  - dimension: activity_id
    type: string
    sql: ${TABLE}.activityId

  - dimension: activity_type_id
    type: string
    # hidden: true
    sql: ${TABLE}.activityTypeId

  - dimension: campaign_id
    type: string
    # hidden: true
    sql: ${TABLE}.campaignId

  - dimension: device
    type: string
    sql: ${TABLE}.Device

  - dimension: is_mobile_device
    type: string
    sql: ${TABLE}.IsMobileDevice

  - dimension: lead_id
    type: string
    # hidden: true
    sql: ${TABLE}.leadId

  - dimension: platform
    type: string
    sql: ${TABLE}.Platform

  - dimension: step_id
    type: string
    sql: ${TABLE}.StepID

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - campaigns.campaignid
    - campaigns.program_name
    - campaigns.name
    - campaigns.workspace_name
    - leads.company_name
    - leads.first_name
    - leads.last_name
    - leads.lead_id
    - activity_types.name
    - activity_types.activity_type_id

