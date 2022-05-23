prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_default_workspace_id=>2600427733312643
);
end;
/
prompt  WORKSPACE 2600427733312643
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   16:53 Monday May 23, 2022
--   Exported By:     ADMIN
--   Export Type:     Workspace Export
--   Version:         21.2.0
--   Instance ID:     900106241879076
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_210200
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>2600427733312643);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace KNOWLEDGEBASE...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 2600566332312650
 ,p_provisioning_company_id => 2600427733312643
 ,p_short_name => 'KNOWLEDGEBASE'
 ,p_display_name => 'KNOWLEDGEBASE'
 ,p_first_schema_provisioned => 'KNOWLEDGEBASE'
 ,p_company_schemas => 'KNOWLEDGEBASE'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'KNOWLEDG'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'KNOWLEDGEBASE'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 2500850710001356,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 2500722609001356,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 2500635572001356,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 9100317442362310,
  p_GROUP_NAME => 'DEV',
  p_SECURITY_GROUP_ID => 2600427733312643,
  p_GROUP_DESC => '');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '2600357236312643',
  p_user_name                    => 'ADMIN',
  p_first_name                   => 'Julio',
  p_last_name                    => 'Paiz',
  p_description                  => '',
  p_email_address                => 'juliopaiz@galileo.edu',
  p_web_password                 => 'A4161832D230BA60634B95056CC5CE3E03C0CF65DF808EB3DBED055928F2A08C9CABB197F1E4D45452483B190B8B29B0ABFBB0481CB7694B42A08175E8A5BA90',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'KNOWLEDGEBASE',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202205092114','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => 'KNOWLEDGEBASE');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '11305556910857929',
  p_user_name                    => 'JULIOP',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'julio@mail.com',
  p_web_password                 => 'E5C40406317A4CAECC869BAA7FC1702C8AFABC0FA59F29CBEDB5E416472253DA871116086F9CDFAAF530BD67A54F6081756D1AE05272181408252FDC92750AD0',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'KNOWLEDGEBASE',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202205092121','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => 'KNOWLEDGEBASE');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
wwv_flow_team_api.create_issue_template (
  p_id => 5331925922462076 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Template'
 ,p_template_description => 'Template used to log a bug.'
 ,p_template_text => 
'**Expected Behavior**'||chr(10)||
'- Tell us what you believe should happen.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Current Behavior**'||chr(10)||
'- Tell us what happens.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Who is affected**'||chr(10)||
'- Tell us who/what is affected. '||chr(10)||
''||chr(10)||
'**Possible Solution**'||chr(10)||
'- If you can, suggest how you would fix this bug.'||chr(10)||
''||chr(10)||
'**Steps to Reproduce**'||chr(10)||
'- Provide an unambiguous set of steps to reproduce, including screen shots and code snippets if appropriate.'||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
'- What'||
' were you trying to accomplish when the bug occurred. Does the bug only occur under certain conditions, or at certain times of day, and so forth.'||chr(10)||
''||chr(10)||
'**Environment**'||chr(10)||
''||chr(10)||
'- Version: '||chr(10)||
'- Platform: '||chr(10)||
'- Subsystem:'||chr(10)||
''||chr(10)||
'______'||chr(10)||
''||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5332076922462076 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Template'
 ,p_template_description => 'Template used to log a feature request.'
 ,p_template_text => 
'**Feature Summary**'||chr(10)||
' - Provide a one paragraph general overview of the feature request.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
' - Does this request relate to a specific situation or process? For example, "I am always frustrated when [...]"'||chr(10)||
''||chr(10)||
''||chr(10)||
' - Please provide any supporting information, including screenshots, use cases, and so forth.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Preferred Solution**'||chr(10)||
'- Provide a clear description of what you would like to see impl'||
'emented.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Alternative Solutions**'||chr(10)||
'- Provide a description of alternative solutions or features considered, or workarounds used.'||chr(10)||
''||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5332121896462076 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'How Do I ...'
 ,p_template_description => 'Template used to ask a procedural question.'
 ,p_template_text => 
'**Question**'||chr(10)||
'- State your question or request as succinctly as possible.'||chr(10)||
''||chr(10)||
'**General Context**'||chr(10)||
'- What are you trying to do? '||chr(10)||
''||chr(10)||
''||chr(10)||
'- Where else have you looked or who else have you contacted to find an answer? '||chr(10)||
''||chr(10)||
''||chr(10)||
'**Environment** '||chr(10)||
'Is this question specific to an environment, programming language or other area?'||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue,'||
' then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5332225961462076 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Raised'
 ,p_template_description => 'A bug has been raised.'
 ,p_template_text => 
'A **Bug** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5332336550462076 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Won''t Action'
 ,p_template_description => 'This issue will not be actioned'
 ,p_template_text => 
'After careful consideration, **no further action will be taken on this issue**. '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5332452714462076 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Filed'
 ,p_template_description => 'A feature request has been filed.'
 ,p_template_text => 
'A **Feature Request** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Feature Tracking System: '||chr(10)||
'- Feature ID: '||chr(10)||
'- URL to Feature Definition: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5332564162462076 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Known Issue'
 ,p_template_description => 'Reference a known issue.'
 ,p_template_text => 
'After review, it has been determined that this is a known issue, see details below.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5332605412462076 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Need More Information'
 ,p_template_description => 'Request for more information.'
 ,p_template_text => 
'**More information is needed for this issue:**'||chr(10)||
''||chr(10)||
'Please provide the information requested below. Without this information it will be difficult to triage and address the issue further.'||chr(10)||
''||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5332776036462076 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Followup Action Required'
 ,p_template_description => 'A followup action is required.'
 ,p_template_text => 
'Please perform the following actions: '||chr(10)||
''||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
'4.'||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
wwv_flow_team_api.create_issue_email_prefs (
  p_id => 5333292531462079 + wwv_flow_team_api.g_id_offset
 ,p_user_id => 'ADMIN'
 ,p_receive_emails_yn => 'Y'
 ,p_notification_types => 'ISSUE_EDIT:COMMENT_ADD:COMMENT_EDIT:STATUS:ASSIGNEE:SUBSCRIBER:MILESTONE:LABEL:DUPLICATE:ASSOCIATION:ATTACHMENT'
 ,p_frequency => 'IMMEDIATELY'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
end;
/
--
prompt ...Label Groups
--
begin
wwv_flow_team_api.create_label_group (
  p_id => 5328565419462073 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Functional Area'
 ,p_group_color => 'label-color-19'
 ,p_group_description => 'Functional area affected by the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label_group (
  p_id => 5329475176462075 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Category'
 ,p_group_color => 'label-color-11'
 ,p_group_description => 'Category assigned to the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label_group (
  p_id => 5330369553462075 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Importance'
 ,p_group_color => 'label-color-16'
 ,p_group_description => 'Level of importance assigned to the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label_group (
  p_id => 5330901537462075 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Level of Effort'
 ,p_group_color => 'label-color-13'
 ,p_group_description => 'Level of effort to address the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label_group (
  p_id => 5331326192462075 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Progress'
 ,p_group_color => 'label-color-14'
 ,p_group_description => 'Progress against the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
end;
/
--
prompt ...Labels
--
begin
wwv_flow_team_api.create_label (
  p_id => 5328611045462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5328565419462073
 ,p_label_name => 'UI / UX'
 ,p_label_desc => 'UI / UX'
 ,p_label_slug => 'ui-ux'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5328792629462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5328565419462073
 ,p_label_name => 'Database'
 ,p_label_desc => 'Database'
 ,p_label_slug => 'database'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5328854708462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5328565419462073
 ,p_label_name => 'REST Integration'
 ,p_label_desc => 'REST Integration'
 ,p_label_slug => 'rest-integration'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5328972990462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5328565419462073
 ,p_label_name => 'CSS / HTML'
 ,p_label_desc => 'CSS / HTML'
 ,p_label_slug => 'css-html'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5329057298462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5328565419462073
 ,p_label_name => 'Dynamic Actions / JavaScript'
 ,p_label_desc => 'Dynamic Actions / JavaScript'
 ,p_label_slug => 'dynamic-actions-javascript'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5329192571462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5328565419462073
 ,p_label_name => 'Security'
 ,p_label_desc => 'Security'
 ,p_label_slug => 'security'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5329275454462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5328565419462073
 ,p_label_name => 'Administration'
 ,p_label_desc => 'Administration'
 ,p_label_slug => 'administration'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5329330522462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5328565419462073
 ,p_label_name => 'External System Integration'
 ,p_label_desc => 'External System Integration'
 ,p_label_slug => 'external-system-integration'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5329540648462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5329475176462075
 ,p_label_name => 'Bug'
 ,p_label_desc => 'Bug'
 ,p_label_slug => 'bug'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5329605830462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5329475176462075
 ,p_label_name => 'Enhancement Request'
 ,p_label_desc => 'Enhancement Request'
 ,p_label_slug => 'enhancement-request'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5329729869462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5329475176462075
 ,p_label_name => 'Feature Request'
 ,p_label_desc => 'Feature Request'
 ,p_label_slug => 'feature-request'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5329848018462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5329475176462075
 ,p_label_name => 'Security Issue'
 ,p_label_desc => 'Security Issue'
 ,p_label_slug => 'security-issue'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5329921433462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5329475176462075
 ,p_label_name => 'Performance Issue'
 ,p_label_desc => 'Performance Issue'
 ,p_label_slug => 'performance-issue'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5330043247462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5329475176462075
 ,p_label_name => 'Installation Issue'
 ,p_label_desc => 'Installation Issue'
 ,p_label_slug => 'installation-issue'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5330174367462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5329475176462075
 ,p_label_name => 'Documentation Issue'
 ,p_label_desc => 'Documentation Issue'
 ,p_label_slug => 'documentation-issue'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5330296904462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5329475176462075
 ,p_label_name => 'Training Issue'
 ,p_label_desc => 'Training Issue'
 ,p_label_slug => 'training-issue'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5330432297462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5330369553462075
 ,p_label_name => 'Critical'
 ,p_label_desc => 'Critical'
 ,p_label_slug => 'critical'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5330509051462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5330369553462075
 ,p_label_name => 'Important'
 ,p_label_desc => 'Important'
 ,p_label_slug => 'important'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5330663098462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5330369553462075
 ,p_label_name => 'Normal'
 ,p_label_desc => 'Normal'
 ,p_label_slug => 'normal'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5330729935462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5330369553462075
 ,p_label_name => 'Backlog'
 ,p_label_desc => 'Backlog'
 ,p_label_slug => 'backlog'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5330878186462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5330369553462075
 ,p_label_name => 'Will Not Address'
 ,p_label_desc => 'Will Not Address'
 ,p_label_slug => 'will-not-address'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5331026821462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5330901537462075
 ,p_label_name => 'Easy Fix'
 ,p_label_desc => 'Easy Fix'
 ,p_label_slug => 'easy-fix'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5331115016462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5330901537462075
 ,p_label_name => 'Moderate Effort'
 ,p_label_desc => 'Moderate Effort'
 ,p_label_slug => 'moderate-effort'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5331246757462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5330901537462075
 ,p_label_name => 'Large Development Effort'
 ,p_label_desc => 'Large Development Effort'
 ,p_label_slug => 'large-development-effort'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5331441302462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5331326192462075
 ,p_label_name => 'Working On It'
 ,p_label_desc => 'Working On It'
 ,p_label_slug => 'working-on-it'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5331598166462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5331326192462075
 ,p_label_name => 'Requires More Info'
 ,p_label_desc => 'Requires More Info'
 ,p_label_slug => 'requires-more-info'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5331674621462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5331326192462075
 ,p_label_name => 'Waiting on Third Party'
 ,p_label_desc => 'Waiting on Third Party'
 ,p_label_slug => 'waiting-on-third-party'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5331777798462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5331326192462075
 ,p_label_name => 'Can Not Fix'
 ,p_label_desc => 'Can Not Fix'
 ,p_label_slug => 'can-not-fix'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_label (
  p_id => 5331895773462075 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5331326192462075
 ,p_label_name => 'Complete'
 ,p_label_desc => 'Complete'
 ,p_label_slug => 'complete'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
end;
/
--
prompt ... Milestones
--
begin
wwv_flow_team_api.create_milestone (
  p_id => 5332855974462076 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Code Freeze'
 ,p_milestone_date => to_date('20220510193220','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'code-freeze'
 ,p_milestone_id => 1
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_milestone (
  p_id => 5332953747462076 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'UI Freeze'
 ,p_milestone_date => to_date('20220525193220','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'ui-freeze'
 ,p_milestone_id => 2
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
wwv_flow_team_api.create_milestone (
  p_id => 5333011528462076 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Final Release'
 ,p_milestone_date => to_date('20220609193220','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'final-release'
 ,p_milestone_id => 3
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
end;
/
--
prompt ... Issues
--
begin
wwv_flow_team_api.create_issue (
  p_id => 5333173756462078 + wwv_flow_team_api.g_id_offset
 ,p_title => 'Welcome to Team Development in Oracle APEX!'
 ,p_slug => 'welcome-to-team-development-in-oracle-apex'
 ,p_issue_text => 
'Hi there! '||chr(10)||
''||chr(10)||
'This is your very first issue! You can create issues to keep track of tasks, features, bugs, and feedback for all of your APEX projects!  You can add labels to issues, add assignees, set milestones, and even apply formatting using Markdown shorthand!  '||chr(10)||
''||chr(10)||
'Below is a quick sample of what you can do with Markdown:'||chr(10)||
'# Orionis bellica Stygias partes'||chr(10)||
' '||chr(10)||
'## Solibus an rutilis cornu'||chr(10)||
' '||chr(10)||
'Lorem markd'||
'ownum formosae. [Est medio](http://www.modomarte.com/cantu) et illi adunca? Miserum Phaethon, Editus, abrupta colonos; Aeeta annum; facere pruniceum '||chr(10)||
'**domat**, discussisque saevo, Tereo. _Quid noctis adhuc, nisi nemo dignos, aures sonus mentae conspecta?_ '||chr(10)||
' '||chr(10)||
'```js '||chr(10)||
'device_intranet_cloud(page_disk); '||chr(10)||
'if (81 >= scanner + realityHoneypot + intellectual_heuristic) { '||chr(10)||
'    ataDataWeb -= fileWormCamera '||
'+ hypertext; '||chr(10)||
'    hdtv(-3 - 2); '||chr(10)||
'    folder(controlHtml, model - 5); '||chr(10)||
'} '||chr(10)||
'``` '||chr(10)||
' '||chr(10)||
'## Consortia dum mea aethere Deionidenque vixque est '||chr(10)||
' '||chr(10)||
'Forma duris igne duritiem Minervaetransformabantur, moriemur manibusque nulla eripienda est rima grave tu. Illis succedat fit. Ter amo quod plurima, non ab alimentaque adest videbitur at. Avidissima agam qui superba a partem [crines precantia limen](http://totover'||
'tice.com/vertice) in **ignibus spernit ritusque** iamdudum. '||chr(10)||
' '||chr(10)||
'> Arcum aristis arsit generosior in cum laevum suae, ferebat, hoc. Manus faciat, '||chr(10)||
'> nec inpetus sua silvas ossa? Incursant Nereide diversaeque velut signumque '||chr(10)||
'> Hectora, convellere caede hostesque oppida, diu viriles. Isdem **sacra**, '||chr(10)||
'> facta, in viximus alimentaque quae patria, ut derigere vires. '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'### Inde erat dicente viribus '||chr(10)||
''||
' '||chr(10)||
'Nomina aevumque pepercit ridet, vellet stetit tibi, Alcyone a Lelex adductis flumine stetit. *Fides* caeli gloria aquis neget meritis subitis tumulumque carmina illius non satis arces. Repressit volantes egesta, `et ira poscit` lacertis ita timidi. '||chr(10)||
' '||chr(10)||
'### Causam nec plagamque Minyis '||chr(10)||
' '||chr(10)||
'Venit caput vel sublimis haud causa et audire, terraeque sed, per duce gaudete Niobe fierent quantusque villis.'||
' Non **vallibus quinque vaga** densum si meruisse ponit olim terras saepe? Saxum sidera regia; feram hastarum os vigor sponte hinnitus inter est. '||chr(10)||
' '||chr(10)||
'- Vere furta ut exegi '||chr(10)||
'- Tempora poenaeque temptanti '||chr(10)||
'- Misisset est nec vicit edita hic '||chr(10)||
' '||chr(10)||
'Si ista Abantiades pennis, nusquam tu ira ego per. Ille sit, cum aditum culmine, primaque quae mira! Vix herbae volanti caeli, [quisquis](http://bello.org/ripa'||
'e-maenalon), et capillis coepisse iacta, tibi anum, tum iam persequar. Videtur quotiensque vires. Firmo ocius coepta ipsum ignoro, Matri nec regni quod, stimulosque quam librata. '||chr(10)||
' '||chr(10)||
'1. Ille citaeque illo ille Crotonis terra '||chr(10)||
'2. Formatae lancea hac de iuvabat bicolor et '||chr(10)||
'3. Vastator consistere pondere te carmen consorti ex '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'| In ante metus dictum at tempor   | Luctus accumsan | Bibendum | Conse'||
'quat | '||chr(10)||
'|----------------------------------|----------------:|:--------:|-----------:| '||chr(10)||
'| Lectus arcu bibendum at varius   |            37.5 |   quam   |       .07 | '||chr(10)||
'| justo eget magna fermentum       |           127.2 |   lacus  |       .88 | '||chr(10)||
'| Platea dictumst quisque sagittis |            33.0 |   quam   |       .39 | '
 ,p_row_version => 1
 ,p_status => 'OPEN'
 ,p_issue_number => 1
 ,p_deleted => 'N'
 ,p_created_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_created_by => 'ADMIN'
 ,p_updated_on => to_date('20220425193220','YYYYMMDDHH24MISS')
 ,p_updated_by => 'ADMIN'
);
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
