- view: activities_tst
  sql_table_name: davita_comms.activities_tst
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: activity_date
    type: string
    sql: ${TABLE}.activityDate

  - dimension: activity_type_id
    type: string
    # hidden: true
    sql: ${TABLE}.activityTypeId

  - dimension: campaign_id
    type: string
    # hidden: true
    sql: ${TABLE}.campaignId

  - dimension: choice_number
    type: string
    sql: ${TABLE}.ChoiceNumber

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
    - id
    - campaigns.campaignid
    - campaigns.program_name
    - campaigns.name
    - campaigns.workspace_name
    - activity_types.name
    - activity_types.activity_type_id
    - leads.company_name
    - leads.first_name
    - leads.last_name
    - leads.lead_id

