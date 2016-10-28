- view: leads
  sql_table_name: davita_comms.leads
  fields:

  - dimension: lead_id
    primary_key: true
    type: string
    sql: ${TABLE}.leadId

  - dimension: company_name
    type: string
    sql: ${TABLE}.CompanyName

  - dimension: email_address
    type: string
    sql: ${TABLE}.EmailAddress

  - dimension: first_name
    type: string
    sql: ${TABLE}.FirstName

  - dimension: job_title
    type: string
    sql: ${TABLE}.JobTitle

  - dimension: last_name
    type: string
    sql: ${TABLE}.LastName

  - dimension: lead_score
    type: string
    sql: ${TABLE}.LeadScore

  - dimension: lead_source
    type: string
    sql: ${TABLE}.LeadSource

  - dimension: lead_status
    type: string
    sql: ${TABLE}.LeadStatus

  - dimension: phone_number
    type: string
    sql: ${TABLE}.PhoneNumber

  - dimension: sfdctype
    type: string
    sql: ${TABLE}.SFDCType

  - dimension: updated_at
    type: string
    sql: ${TABLE}.UpdatedAt

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - lead_id
    - company_name
    - first_name
    - last_name
    - activities_tst.count
    - open_email_activities_20160131.count
    - open_email_activities_20160229.count
    - open_email_activities_20160331.count
    - open_email_activities_20160430.count
    - open_email_activities_20160531.count
    - open_email_activities_20160630.count
    - open_email_activities_20160731.count
    - open_email_activities_20160831.count

