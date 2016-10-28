- view: campaigns
  sql_table_name: davita_comms.campaigns
  fields:

  - dimension: campaignid
    primary_key: true
    type: string
    sql: ${TABLE}.campaignid

  - dimension: active
    type: string
    sql: ${TABLE}.active

  - dimension: created_at
    type: string
    sql: ${TABLE}.createdAt

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: index
    type: string
    sql: ${TABLE}.index

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: program_id
    type: string
    sql: ${TABLE}.programId

  - dimension: program_name
    type: string
    sql: ${TABLE}.programName

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension: updated_at
    type: string
    sql: ${TABLE}.updatedAt

  - dimension: workspace_name
    type: string
    sql: ${TABLE}.workspaceName

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - campaignid
    - program_name
    - name
    - workspace_name
    - activities_tst.count
    - open_email_activities_20160131.count
    - open_email_activities_20160229.count
    - open_email_activities_20160331.count
    - open_email_activities_20160430.count
    - open_email_activities_20160531.count
    - open_email_activities_20160630.count
    - open_email_activities_20160731.count
    - open_email_activities_20160831.count

