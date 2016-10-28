- connection: davita-comms-marketo

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# NOTE: please see https://www.looker.com/docs/r/dialects/bigquery
# NOTE: for BigQuery specific considerations

- explore: activities_tst
  joins:
    - join: campaigns
      type: left_outer #_each
      sql_on: ${activities_tst.campaign_id} = ${campaigns.campaignid}
      relationship: many_to_one

    - join: activity_types
      type: left_outer #_each
      sql_on: ${activities_tst.activity_type_id} = ${activity_types.activity_type_id}
      relationship: many_to_one

    - join: leads
      type: left_outer #_each
      sql_on: ${activities_tst.lead_id} = ${leads.lead_id}
      relationship: many_to_one


- explore: activity_types

- explore: campaigns

- explore: leads

- explore: open_email_activities_20160131
  joins:
    - join: campaigns
      type: left_outer #_each
      sql_on: ${open_email_activities_20160131.campaign_id} = ${campaigns.campaignid}
      relationship: many_to_one

    - join: leads
      type: left_outer #_each
      sql_on: ${open_email_activities_20160131.lead_id} = ${leads.lead_id}
      relationship: many_to_one

    - join: activity_types
      type: left_outer #_each
      sql_on: ${open_email_activities_20160131.activity_type_id} = ${activity_types.activity_type_id}
      relationship: many_to_one


- explore: open_email_activities_20160229
  joins:
    - join: campaigns
      type: left_outer #_each
      sql_on: ${open_email_activities_20160229.campaign_id} = ${campaigns.campaignid}
      relationship: many_to_one

    - join: leads
      type: left_outer #_each
      sql_on: ${open_email_activities_20160229.lead_id} = ${leads.lead_id}
      relationship: many_to_one

    - join: activity_types
      type: left_outer #_each
      sql_on: ${open_email_activities_20160229.activity_type_id} = ${activity_types.activity_type_id}
      relationship: many_to_one


- explore: open_email_activities_20160331
  joins:
    - join: campaigns
      type: left_outer #_each
      sql_on: ${open_email_activities_20160331.campaign_id} = ${campaigns.campaignid}
      relationship: many_to_one

    - join: leads
      type: left_outer #_each
      sql_on: ${open_email_activities_20160331.lead_id} = ${leads.lead_id}
      relationship: many_to_one

    - join: activity_types
      type: left_outer #_each
      sql_on: ${open_email_activities_20160331.activity_type_id} = ${activity_types.activity_type_id}
      relationship: many_to_one


- explore: open_email_activities_20160430
  joins:
    - join: campaigns
      type: left_outer #_each
      sql_on: ${open_email_activities_20160430.campaign_id} = ${campaigns.campaignid}
      relationship: many_to_one

    - join: leads
      type: left_outer #_each
      sql_on: ${open_email_activities_20160430.lead_id} = ${leads.lead_id}
      relationship: many_to_one

    - join: activity_types
      type: left_outer #_each
      sql_on: ${open_email_activities_20160430.activity_type_id} = ${activity_types.activity_type_id}
      relationship: many_to_one


- explore: open_email_activities_20160531
  joins:
    - join: campaigns
      type: left_outer #_each
      sql_on: ${open_email_activities_20160531.campaign_id} = ${campaigns.campaignid}
      relationship: many_to_one

    - join: leads
      type: left_outer #_each
      sql_on: ${open_email_activities_20160531.lead_id} = ${leads.lead_id}
      relationship: many_to_one

    - join: activity_types
      type: left_outer #_each
      sql_on: ${open_email_activities_20160531.activity_type_id} = ${activity_types.activity_type_id}
      relationship: many_to_one


- explore: open_email_activities_20160630
  joins:
    - join: campaigns
      type: left_outer #_each
      sql_on: ${open_email_activities_20160630.campaign_id} = ${campaigns.campaignid}
      relationship: many_to_one

    - join: leads
      type: left_outer #_each
      sql_on: ${open_email_activities_20160630.lead_id} = ${leads.lead_id}
      relationship: many_to_one

    - join: activity_types
      type: left_outer #_each
      sql_on: ${open_email_activities_20160630.activity_type_id} = ${activity_types.activity_type_id}
      relationship: many_to_one


- explore: open_email_activities_20160731
  joins:
    - join: campaigns
      type: left_outer #_each
      sql_on: ${open_email_activities_20160731.campaign_id} = ${campaigns.campaignid}
      relationship: many_to_one

    - join: leads
      type: left_outer #_each
      sql_on: ${open_email_activities_20160731.lead_id} = ${leads.lead_id}
      relationship: many_to_one

    - join: activity_types
      type: left_outer #_each
      sql_on: ${open_email_activities_20160731.activity_type_id} = ${activity_types.activity_type_id}
      relationship: many_to_one


- explore: open_email_activities_20160831
  joins:
    - join: campaigns
      type: left_outer #_each
      sql_on: ${open_email_activities_20160831.campaign_id} = ${campaigns.campaignid}
      relationship: many_to_one

    - join: leads
      type: left_outer #_each
      sql_on: ${open_email_activities_20160831.lead_id} = ${leads.lead_id}
      relationship: many_to_one

    - join: activity_types
      type: left_outer #_each
      sql_on: ${open_email_activities_20160831.activity_type_id} = ${activity_types.activity_type_id}
      relationship: many_to_one


