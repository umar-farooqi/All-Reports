--------------------------------------------------------------------------------
-- © Copyright 2024 | Ibrahim Traders | All Rights Reserved | Release 2.0
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.12'
,p_default_workspace_id=>1600443709411052
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
end;
/
 
prompt APPLICATION 102 - Ibrahim Traders
--
-- Application Export:
--   Application:     102
--   Name:            Ibrahim Traders
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 1194
--   Manifest End
--   Version:         24.2.12
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_01194
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>1194);
end;
/
prompt --application/pages/page_01194
begin
wwv_flow_imp_page.create_page(
 p_id=>1194
,p_name=>'Sale Detail Report Month Wise'
,p_alias=>'SALE-DETAIL-REPORT-MONTH-WISE2'
,p_step_title=>'Sale Detail Report Month Wise'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function openOutgoingDialog(saleId, createdOnStr) {',
'  apex.item("P644_EMP_ID").setValue(saleId);',
'  apex.item("P644_CREATED_ON").setValue(createdOnStr);',
'  const region = apex.region("PREVIOUS");',
'  if (region) {',
'    region.refresh();',
'    apex.theme.openRegion("PREVIOUS");',
'  } else {',
'    console.error("Region ''PREVIOUS'' not found.");',
'  }',
'}',
'',
'function openOutgoingDialogs(SodIdvalue,detail_id, OrderDateValue,PoIdValue) {',
'  apex.item("P644_SOD_SALE_ID").setValue(SodIdvalue);',
'     apex.item("P644_SO_EMP_ID").setValue(detail_id);',
'  apex.item("P644_SO_CREATED_ON").setValue(OrderDateValue);',
'   apex.item("P644_PO_ID").setValue(PoIdValue); ',
'',
'  const region = apex.region("bags");',
'  if (region) {',
'    region.refresh();',
'    apex.theme.openRegion("bags");',
'  } else {',
'    console.error("Region ''outgoing'' not found.");',
'  }',
'}',
'',
'function openTpDialogs(SodIdvalue,detail_id, OrderDateValue,PoIdValue) {',
'  apex.item("P644_POD_ID").setValue(SodIdvalue);',
'     apex.item("P644_PO_EMP_ID").setValue(detail_id);',
'  apex.item("P644_PO_CREATED_ON").setValue(OrderDateValue);',
'   apex.item("P644_PURCHASE_ID").setValue(PoIdValue); ',
'',
'  const region = apex.region("POOR");',
'  if (region) {',
'    region.refresh();',
'    apex.theme.openRegion("POOR");',
'  } else {',
'    console.error("Region ''outgoing'' not found.");',
'  }',
'}',
'',
'',
'function openOutgoingDialogss(p_purchase_officer_id) {',
'  apex.item("P644_PURCHASE_OFFICER_WISE").setValue(p_purchase_officer_id);',
'  const region = apex.region("POOR");',
'  if (region) {',
'    region.refresh();',
'    apex.theme.openRegion("POOR");',
'  } else {',
'    console.error("Region ''PURCHASE'' not found.");',
'  }',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.large-input input,',
'.large-input textarea,',
'.large-input select {',
'    min-height: 20px !important;',
'}',
'',
'/* Button Styling */',
'.large-input button {',
'    height: 50px;',
'    background: linear-gradient(135deg, #3ba14f, #3ba14f);',
'    color: #ffffff;',
'    font-size: 12px;',
'    font-weight: bold;',
'    border: none;',
'    border-radius: 10px;',
'    padding: 4px 8px;',
'    cursor: pointer;',
'    transition: all 0.3s ease-in-out;',
'    text-transform: uppercase;',
'    letter-spacing: 1.2px;',
'    animation: pulse 2s infinite;',
'}',
'',
'/* Hover Effect */',
'.large-input button:hover {',
'    background: linear-gradient(135deg, #2e8b47, #2e8b47);',
'    box-shadow: 0 6px 14px rgba(0, 73, 153, 0.3);',
'    transform: translateY(-4px);',
'    animation: bounce 0.5s ease-in-out;',
'}',
'',
'/* Bounce Animation */',
'@keyframes bounce {',
'    0% { transform: translateY(0); }',
'    50% { transform: translateY(-6px); }',
'    100% { transform: translateY(0); }',
'}',
'',
'/* Subtle Pulsing Effect */',
'@keyframes pulse {',
'    0% { transform: scale(1); }',
'    50% { transform: scale(1.05); }',
'    100% { transform: scale(1); }',
'}',
'',
'',
'',
'#ITM_toolbar_controls {',
'  background-color: #ececec !important;',
'}',
'',
'.a-IRR-toolbar {',
'    background-color: #ececec;}',
'    ',
'.t-Body-content {',
'    background-color: #ececec;',
'    font-SIZE: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
'}',
'#ITM, #AR, #PREVIOUS {',
'    border-collapse: collapse;',
'    width: 100%;',
'    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);',
'    overflow-x: auto;',
'}',
'#ITM th, #AR th, #PREVIOUS th {',
'    background-color: #28a746cc;',
'    color: white !important;',
'    font-weight: 600;',
'    padding: 10px 14px;',
'    font-size: 14px;',
'    letter-spacing: 0.5px;',
'    text-transform: capitalize;',
'    text-align: left;',
'    border: 1px solid #ddd;',
'    white-space: nowrap;',
'}',
'#ITM th span, #ITM th a,',
'#AR th span, #AR th a,',
'#PREVIOUS th span, #PREVIOUS th a {',
'    color: white !important;',
'}',
'#ITM td, #AR td, #PREVIOUS td {',
'    font-size: 15px;',
'    padding: 8px 12px;',
'    border: 1px solid #eee;',
'    text-align: left;',
'    background-color: #ffffff;',
'    transition: background-color 0.2s ease;',
'    word-wrap: break-word;',
'}',
'#ITM td:hover, #AR td:hover, #PREVIOUS td:hover {',
'    background-color: #e7f7e7;',
'    cursor: pointer;',
'}',
'#ITM td.clicked-cell, #AR td.clicked-cell, #PREVIOUS td.clicked-cell {',
'    background-color: #d4edda !important;',
'    box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);',
'}',
'#ITM td:first-child, #AR td:first-child, #PREVIOUS td:first-child {',
'    width: 120px;',
'}',
'#ITM td, #ITM th,',
'#AR td, #AR th,',
'#PREVIOUS td, #PREVIOUS th {',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);',
'}',
'#ITM th:not(:first-child), #AR th:not(:first-child), #PREVIOUS th:not(:first-child),',
'#ITM td:not(:first-child), #AR td:not(:first-child), #PREVIOUS td:not(:first-child) {',
'    width: 200px;',
'}',
'@media (max-width: 768px) {',
'    #ITM, #AR, #PREVIOUS {',
'        display: block;',
'        overflow-x: auto;',
'        white-space: nowrap;',
'}',
'    #ITM th, #ITM td,',
'    #AR th, #AR td,',
'    #PREVIOUS th, #PREVIOUS td {',
'        font-size: 12px;',
'        text-align: center;',
'        padding: 10px;',
'    }',
'}',
'',
'.heading-green {',
'        color: Green;',
'        text-align: center;',
'        margin: 0;',
'        padding: 1px 0;',
'    }',
'',
'    .gradient-line-green {',
'        display: block;',
'        border: 0;',
'        height: 2px; ',
'        border-radius: 3px; ',
'        background: linear-gradient(to right, #a4d3a2, #2a8d4b, #a4d3a2); ',
'        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1); ',
'        margin: 10px auto; ',
'        max-width: 100%; ',
'    }',
'',
'',
'',
'    ',
'/* Style for Interactive Report column headers (labels) */',
'#DOR th {',
'    background-color: #3ba14f ;',
'    font-weight: bold;',
'    padding: 12px;',
'    text-align: left;',
'    border: 1px solid #dddd;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'/* FOR THE ARROWS*/',
'#DOR th span {',
'    color: white !important;  ',
'}',
'/* TEXT COLOR */',
'#DOR th a {',
'    color: white !important;  ',
'}',
'',
'/* Set a fixed width for the rest of the columns */',
'#DOR th:not(:first-child), #DOR td:not(:first-child) {',
'',
'    word-wrap: break-word;  /* Break words when they overflow */',
'    /*white-space: normal; Allow normal wrapping for table cells */',
'}',
'',
'/* Hover effect for cells */',
'#DOR td:hover {',
'    background-color: #f1f1f1;  /* Change background color on hover */',
'    cursor: pointer;  /* Change cursor to pointer for better interactivity */',
'}',
'',
'/* Optional: Add subtle shadow to header and data cells */',
'#DOR td, #DOR th {',
'    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);  /* Add shadow around cells */',
'}',
'',
'/* Responsive Design: Adjust column appearance for smaller screens */',
'@media (max-width: 768px) {',
'    #ITM td, #ITM th {',
'      ',
'        padding: 8px;  /* Reduce padding for better space usage */',
'    }',
'}',
'',
'',
'',
'',
'/* Freeze First Column */',
' th:first-child,',
' td:first-child {',
'    position: sticky;',
'    left: 0;',
'    background: white;',
'    z-index: 2;',
'}',
'',
'th:first-child {',
'    z-index: 3;',
'}',
'',
'',
'#DOR th:first-child,',
'#DOR td:first-child {',
'    position: sticky;',
'    left: 0;',
'    background: rgb(51, 134, 3);',
'    color: white;',
'    z-index: 2;',
'}',
'',
'',
'.heading-green {',
'        color: Green;',
'        text-align: center;',
'        margin: 0;',
'        padding: 1px 0;',
'}',
'',
'.gradient-line-green {',
'        display: block;',
'        border: 0;',
'        height: 2px; ',
'        border-radius: 3px; ',
'        background: linear-gradient(to right, #a4d3a2, #2a8d4b, #a4d3a2); ',
'        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1); ',
'        margin: 10px auto; ',
'        max-width: 100%; ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56875806882781804)
,p_plug_name=>'Reports'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57066413592596812)
,p_plug_name=>'Sale Officer Wise Sale Detail Test normal & advance &  trading'
,p_parent_plug_id=>wwv_flow_imp.id(56875806882781804)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE             ',
'    v_sql          CLOB;',
'    v_start_month  VARCHAR2(2) := ''07'';',
'    v_start_year   VARCHAR2(4) := ''2025'';',
'    v_start_date   DATE;',
'    v_end_date     DATE;',
'    v_current_date DATE;',
'    v_month_count  NUMBER;',
'BEGIN',
'',
'    v_start_date := TO_DATE(''01-'' || v_start_month || ''-'' || v_start_year, ''DD-MM-YYYY'');',
'    v_end_date   := TRUNC(LAST_DAY(SYSDATE));',
'',
'    v_month_count := MONTHS_BETWEEN(TRUNC(v_end_date,''MM''), TRUNC(v_start_date,''MM'')) + 1;',
'',
'    DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
'',
'    ---------------------------------------------------------------------',
'    -- MAIN QUERY',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'WITH USER_APPROVAL AS (',
'    SELECT distinct APP_IDS AS APP_ID,',
'           APP_TYPE,',
'           APPROVAL_STATUS',
'    FROM AB_USER_ACTION_APPROVAL',
'    WHERE STATUS = ''''Y''''',
'    AND ORG_ID = :GV_ORG_ID',
'    AND APP_TYPE IN (''''820'''', ''''813'''')',
'      AND APPROVAL_STATUS = ''''APPROVED''''',
'),',
'',
'       ITEM_TYPE_NAMES AS (',
'                SELECT LOOKUP_DET_NAME ITEM_TYPE_NAME,',
'                       DET_ID',
'                FROM AB_LOOKUP_DETAIL',
'                WHERE STATUS=''''Y''''',
'                and LOOKUP_ID = ''''004''''',
'                  AND ORG_ID = :GV_ORG_ID',
'            ),',
'BASE_DATA AS (',
'',
'    SELECT',
'        UM.U_NAME AS SALE_OFFICER,',
'        UM.USER_ID AS USER_ID,',
'        C.STATUS STATUS,',
'        SUM(NVL(C.NO_BAGS,0)) AS TOTAL_BAGS,',
'        C.SHIPMENT_DATE AS SHIPMENT_DATE,',
'         IT.ITEM_TYPE_NAME AS ITEM_TYPE,',
'         IT.DET_ID AS TYPE_ID',
'    FROM TABLE(AB_SALE_ORDER_PKG.SALE_ORDER_SHIPMENT(:GV_ORG_ID)) C',
'    JOIN AB_SO_ORDER_HEAD SO',
'        ON SO.SO_ID = C.SO_ID',
'    JOIN USER_APPROVAL UA',
'        ON UA.APP_ID = C.SHIPMENT_IDD',
'   LEFT JOIN AB_UM_USERS_REG UM ',
'        ON UM.USER_ID = C.SALE_OFFICER_ID',
'    LEFT JOIN AB_ITEMS_MASTER ITMS ON ITMS.ITEM_ID = C.ITEM_ID ',
'    LEFT JOIN ITEM_TYPE_NAMES IT ON IT.DET_ID = ITMS.ITEM_TYPE_ID',
'    WHERE UA.APP_TYPE = ''''820''''',
'    GROUP BY UM.U_NAME, UM.USER_ID, C.SHIPMENT_DATE, C.STATUS, IT.ITEM_TYPE_NAME,',
'         IT.DET_ID ',
'',
'    UNION ALL',
'',
'    ----------------------------------------------------------------',
'    -- TRADING',
'    ----------------------------------------------------------------',
'    SELECT',
'        UM.U_NAME AS SALE_OFFICER,',
'        SO.SALE_OFFER_ID AS USER_ID,',
'        ''''Trading Sale'''' AS STATUS,',
'        NVL(SOD.NO_BAGS,0) AS TOTAL_BAGS,',
'         SO.ORDER_DATE AS SHIPMENT_DATE,',
'           IT.ITEM_TYPE_NAME AS ITEM_TYPE,',
'         IT.DET_ID AS TYPE_ID',
'    FROM AB_SO_ORDER_HEAD SO',
'    JOIN AB_SO_ORDER_DET SOD',
'        ON SOD.SO_ID = SO.SO_ID',
'       AND SOD.STATUS = ''''Y''''',
'    LEFT JOIN AB_UM_USERS_REG UM',
'        ON UM.USER_ID = SO.SALE_OFFER_ID',
'    JOIN USER_APPROVAL UA',
'        ON UA.APP_ID = SO.SO_IDS',
'        LEFT JOIN AB_ITEMS_MASTER ITMS ON ITMS.ITEM_ID = SOD.ITEM_ID ',
'    LEFT JOIN ITEM_TYPE_NAMES IT ON IT.DET_ID = ITMS.ITEM_TYPE_ID',
'    WHERE SO.SO_TYPE =  ''''645''''',
'      AND SO.STATUS = ''''Y''''',
'      AND UA.APP_TYPE = ''''813''''',
'      AND SO.ORG_ID = :GV_ORG_ID',
'    GROUP BY UM.U_NAME, SO.SALE_OFFER_ID,SO.ORDER_DATE  , IT.ITEM_TYPE_NAME,',
'         IT.DET_ID ,SOD.NO_BAGS',
'',
'         UNION ALL ',
'',
'   ----------------------------------------------------------------',
'-- PURCHASE TRADING',
'----------------------------------------------------------------',
'',
'SELECT',
'    UM.U_NAME AS SALE_OFFICER,',
'    APO.SALE_OFFICER_ID AS USER_ID,',
'    ''''Trading Purchase'''' AS STATUS,',
'',
'    SUM(NVL(APOD.CHANGE_BAGS, 0)) AS TOTAL_BAGS,',
'',
'    TRUNC(APO.TRANSACTION_DATE, ''''MM'''') AS SHIPMENT_DATE,',
'',
'    IT.ITEM_TYPE_NAME AS ITEM_TYPE,',
'    IT.DET_ID AS TYPE_ID',
'',
'FROM AB_PO_PURCHASE_ORDER APO',
'',
'LEFT JOIN AB_PO_PURCHASE_ORDER_DET APOD',
'    ON APOD.PO_ID = APO.PO_ID',
'',
'LEFT JOIN AB_UM_USERS_REG UM',
'    ON UM.USER_ID = APO.SALE_OFFICER_ID',
'',
'LEFT JOIN USER_APPROVAL UA',
'    ON UA.APP_ID = APO.PO_ID     ',
'',
'LEFT JOIN AB_ITEMS_MASTER ITMS',
'    ON ITMS.ITEM_ID = APOD.ITEM_ID',
'',
'LEFT JOIN ITEM_TYPE_NAMES IT',
'    ON IT.DET_ID = ITMS.ITEM_TYPE_ID',
'',
'WHERE APO.PO_TYPE = ''''642''''',
'  AND APO.STATUS = ''''Y''''',
'  AND APO.ORG_ID = :GV_ORG_ID',
'',
'GROUP BY',
'    UM.U_NAME,',
'    APO.SALE_OFFICER_ID,',
'    TRUNC(APO.TRANSACTION_DATE, ''''MM''''),',
'    IT.ITEM_TYPE_NAME,',
'    IT.DET_ID',
')',
'',
'----------------------------------------------------------------',
'-- FINAL MERGE',
'----------------------------------------------------------------',
'SELECT',
'',
'     C.SALE_OFFICER,',
'     C.USER_ID,',
'     ITEM_TYPE,',
'     TYPE_ID,',
'     MAX(C.STATUS) AS STATUS,',
'    TO_CHAR(',
'        ROUND(SUM(NVL(C.TOTAL_BAGS,0))),',
'        ''''999,999,999,999,999,999,990''''',
'    ) AS TOTAL_BAGS,',
'    MAX(C.SHIPMENT_DATE) AS SHIPMENT_DATE',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- MONTH COLUMNS',
'    ---------------------------------------------------------------------',
'',
'    FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'',
'   DBMS_LOB.APPEND(v_sql, '', ',
'    ''''<strong>'''' || ',
'    NVL( ',
'        TO_CHAR( ',
'            ROUND( ',
'                SUM( ',
'                    CASE ',
'                        WHEN TRUNC(C.SHIPMENT_DATE,''''MM'''') = ',
'                             TRUNC(ADD_MONTHS(DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''','' || i || ''), ''''MM'''') ',
'                        THEN NVL(C.TOTAL_BAGS,0) ',
'                        ELSE 0 ',
'                    END ',
'                ) ',
'            ), ',
'            ''''999,999,999,999,999,999,990'''' ',
'        ), ',
'        ''''0'''' ',
'    ) ',
'    || ''''</strong>'''' AS '' || UPPER(TO_CHAR(ADD_MONTHS(v_start_date,i),''MON_YYYY'')) ',
'    ); ',
'END LOOP;',
'',
'    ---------------------------------------------------------------------',
'    -- FROM + JOINS',
'    -- FIX: BETWEEN -> half-open range so timestamped SHIPMENT_DATE values',
'    --      on the last day of v_end_date are not silently dropped.',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'FROM BASE_DATA C',
'',
'WHERE C.SHIPMENT_DATE >= DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || ''''''',
'  AND C.SHIPMENT_DATE <  DATE '''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || '''''' + 1',
'',
'AND (',
'    C.STATUS IN (',
'        SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL)',
'        FROM DUAL',
'        CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL) IS NOT NULL',
'    )',
'    OR :P1194_BAGS_TYPE IS NULL',
')',
'',
'AND (',
'    :P1194_ITEM_TYPE IS NULL',
'    OR TYPE_ID IN (',
'        SELECT REGEXP_SUBSTR(:P1194_ITEM_TYPE, ''''[^:]+'''', 1, LEVEL)',
'        FROM dual',
'        CONNECT BY REGEXP_SUBSTR(:P1194_ITEM_TYPE, ''''[^:]+'''', 1, LEVEL) IS NOT NULL',
'    )',
')',
'',
'GROUP BY C.SALE_OFFICER, C.USER_ID,',
' ITEM_TYPE,   ',
'     TYPE_ID',
'',
'UNION ALL',
'',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL ROW',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'SELECT',
'',
'    ''''TOTAL'''' AS SALE_OFFICER,',
'     NULL    AS USER_ID,',
'     NULL    AS ITEM_TYPE,',
'     NULL    AS TYPE_ID,',
'    NULL  AS STATUS,',
'    ''''<strong>'''' ||',
'    TO_CHAR(',
'        ROUND(SUM(NVL(C.TOTAL_BAGS,0))),',
'        ''''999,999,999,999,999,999,990''''',
'    )',
'    || ''''</strong>'''' AS TOTAL_BAGS,',
'     NULL AS SHIPMENT_DATE',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL MONTH COLUMNS',
'    ---------------------------------------------------------------------',
'',
'    FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'',
'       DBMS_LOB.APPEND(v_sql, '', ',
'    ''''<strong>'''' || ',
'    NVL( ',
'        TO_CHAR( ',
'            ROUND( ',
'                SUM( ',
'                    CASE ',
'                        WHEN TRUNC(C.SHIPMENT_DATE,''''MM'''') = ',
'                             TRUNC(ADD_MONTHS(DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''','' || i || ''), ''''MM'''') ',
'                        THEN NVL(C.TOTAL_BAGS,0) ',
'                        ELSE 0 ',
'                    END ',
'                ) ',
'            ), ',
'            ''''999,999,999,999,999,999,990'''' ',
'        ), ',
'        ''''0'''' ',
'    ) ',
'    || ''''</strong>'''' AS '' || UPPER(TO_CHAR(ADD_MONTHS(v_start_date,i),''MON_YYYY'')) ',
'    ); ',
'END LOOP;',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL FROM',
'    -- FIX: same half-open range as above, applied consistently here too.',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'',
'FROM BASE_DATA C',
'',
'WHERE C.SHIPMENT_DATE >= DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || ''''''',
'  AND C.SHIPMENT_DATE <  DATE '''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || '''''' + 1',
'',
'      AND (',
'    :P1194_ITEM_TYPE IS NULL',
'    OR TYPE_ID IN (',
'        SELECT REGEXP_SUBSTR(:P1194_ITEM_TYPE, ''''[^:]+'''', 1, LEVEL)',
'        FROM dual',
'        CONNECT BY REGEXP_SUBSTR(:P1194_ITEM_TYPE, ''''[^:]+'''', 1, LEVEL) IS NOT NULL',
'    )',
')',
'',
'AND (',
'    C.STATUS IN (',
'        SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL)',
'        FROM DUAL',
'        CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL) IS NOT NULL',
'    )',
'    OR :P1194_BAGS_TYPE IS NULL',
');',
'',
'',
''');',
'',
'    RETURN v_sql;',
'',
'END;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1194_BAGS_TYPE'
,p_plug_required_role=>wwv_flow_imp.id(11472348441404731)
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(57066545224596813)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'UMAR'
,p_internal_uid=>57066545224596813
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57066666702596814)
,p_db_column_name=>'SALE_OFFICER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sale Officer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57066779287596815)
,p_db_column_name=>'TOTAL_BAGS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Total Bags'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57066863919596816)
,p_db_column_name=>'MAY_2026'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'May 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57066972156596817)
,p_db_column_name=>'APR_2026'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Apr 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57067047150596818)
,p_db_column_name=>'MAR_2026'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Mar 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57067195737596819)
,p_db_column_name=>'FEB_2026'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Feb 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57067254190596820)
,p_db_column_name=>'JAN_2026'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Jan 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57067353497596821)
,p_db_column_name=>'DEC_2025'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Dec 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57067406451596822)
,p_db_column_name=>'NOV_2025'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nov 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57067566395596823)
,p_db_column_name=>'OCT_2025'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Oct 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57067638879596824)
,p_db_column_name=>'SEP_2025'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sep 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57067716063596825)
,p_db_column_name=>'AUG_2025'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Aug 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57067837111596826)
,p_db_column_name=>'JUL_2025'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Jul 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57068621719596834)
,p_db_column_name=>'USER_ID'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57068804864596836)
,p_db_column_name=>'SHIPMENT_DATE'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Shipment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57069025494596838)
,p_db_column_name=>'STATUS'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105763539740733418)
,p_db_column_name=>'ITEM_TYPE'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105763682339733419)
,p_db_column_name=>'TYPE_ID'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Type Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105763722435733420)
,p_db_column_name=>'SEP_2026'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Sep 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105763816174733421)
,p_db_column_name=>'AUG_2026'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Aug 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105763971971733422)
,p_db_column_name=>'JUL_2026'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Jul 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105764040692733423)
,p_db_column_name=>'JUN_2026'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Jun 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(57198548510604346)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'571986'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SALE_OFFICER:TOTAL_BAGS:MAY_2026:APR_2026:MAR_2026:FEB_2026:JAN_2026:DEC_2025:NOV_2025:OCT_2025:SEP_2025:AUG_2025:JUL_2025'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57069152645596839)
,p_plug_name=>'Sale Officer Wise Sale Detail  normal & advance '
,p_parent_plug_id=>wwv_flow_imp.id(56875806882781804)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE             ',
'    v_sql          CLOB;',
'    v_start_month  VARCHAR2(2) := ''07'';',
'    v_start_year   VARCHAR2(4) := ''2025'';',
'    v_start_date   DATE;',
'    v_end_date     DATE;',
'    v_current_date DATE;',
'    v_month_count  NUMBER;',
'BEGIN',
'',
'--    v_start_date := TO_DATE(''01-'' || v_start_month || ''-'' || v_start_year, ''DD-MM-YYYY'');',
'--    v_end_date   := TRUNC(LAST_DAY(SYSDATE));',
'',
'--     v_month_count := MONTHS_BETWEEN(TRUNC(v_end_date,''MM''), TRUNC(v_start_date,''MM'')) + 1;',
' ',
'',
'--     DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
' v_start_date := TO_DATE(''01-'' || v_start_month || ''-'' || v_start_year, ''DD-MM-YYYY'');',
'   v_end_date   := TRUNC(LAST_DAY(SYSDATE));',
'',
'    v_month_count := MONTHS_BETWEEN(TRUNC(v_end_date,''MM''), TRUNC(v_start_date,''MM'')) + 1;',
' ',
'',
'    DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
'',
'    ---------------------------------------------------------------------',
'    -- MAIN QUERY',
'    ---------------------------------------------------------------------',
'',
'   ',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'WITH USER_APPROVAL AS (',
'    SELECT  APP_IDS AS APP_ID,',
'           APP_TYPE,',
'           APPROVAL_STATUS',
'    FROM AB_USER_ACTION_APPROVAL',
'    WHERE STATUS = ''''Y''''',
'    AND ORG_ID = :GV_ORG_ID',
'    AND APP_TYPE IN (''''820'''', ''''813'''')',
'      AND APPROVAL_STATUS = ''''APPROVED''''',
'),',
'',
'       ITEM_TYPE_NAMES AS (',
'                SELECT LOOKUP_DET_NAME ITEM_TYPE_NAME,',
'                       DET_ID',
'                FROM AB_LOOKUP_DETAIL',
'                WHERE STATUS=''''Y''''',
'                and LOOKUP_ID = ''''004''''',
'               --   AND ORG_ID = :GV_ORG_ID',
'            ),',
'BASE_DATA AS (',
'',
'   ',
'    SELECT',
'        UM.U_NAME AS SALE_OFFICER,',
'        UM.USER_ID AS USER_ID,',
'        C.STATUS STATUS,',
'        SUM(NVL(C.NO_BAGS,0)) AS TOTAL_BAGS,',
'        C.SHIPMENT_DATE AS SHIPMENT_DATE--,',
'        -- IT.ITEM_TYPE_NAME AS ITEM_TYPE,',
'       --  IT.DET_ID AS TYPE_ID',
'    FROM TABLE(AB_SALE_ORDER_PKG.SALE_ORDER_SHIPMENT(:GV_ORG_ID)) C',
'    JOIN AB_SO_ORDER_HEAD SO',
'        ON SO.SO_ID = C.SO_ID',
'    JOIN USER_APPROVAL UA',
'        ON UA.APP_ID = C.SHIPMENT_IDD',
'   LEFT JOIN AB_UM_USERS_REG UM ',
'        ON UM.USER_ID = C.SALE_OFFICER_ID',
'    LEFT JOIN AB_ITEMS_MASTER ITMS ON ITMS.ITEM_ID = C.ITEM_ID ',
'  --  LEFT JOIN ITEM_TYPE_NAMES IT ON IT.DET_ID = ITMS.ITEM_TYPE_ID',
'    WHERE UA.APP_TYPE = ''''820''''',
'    GROUP BY UM.U_NAME, UM.USER_ID, C.SHIPMENT_DATE, C.STATUS--, IT.ITEM_TYPE_NAME,',
'       --  IT.DET_ID ',
'',
'    UNION ALL',
'',
'    ----------------------------------------------------------------',
'    -- TRADING',
'    ----------------------------------------------------------------',
'      SELECT',
'        UM.U_NAME AS SALE_OFFICER,',
'        SO.SALE_OFFER_ID AS USER_ID,',
'        ''''Trading Sale'''' AS STATUS,',
'        SUM(NVL(SOD.NO_BAGS,0)) AS TOTAL_BAGS,',
'         SO.ORDER_DATE AS SHIPMENT_DATE--,',
'           --IT.ITEM_TYPE_NAME AS ITEM_TYPE,',
'       --  IT.DET_ID AS TYPE_ID',
'    FROM AB_SO_ORDER_HEAD SO',
'    JOIN AB_SO_ORDER_DET SOD',
'        ON SOD.SO_ID = SO.SO_ID',
'       AND SOD.STATUS = ''''Y''''',
'    LEFT JOIN AB_UM_USERS_REG UM',
'        ON UM.USER_ID = SO.SALE_OFFER_ID',
'    JOIN USER_APPROVAL UA',
'        ON UA.APP_ID = SO.SO_IDS',
'        LEFT JOIN AB_ITEMS_MASTER ITMS ON ITMS.ITEM_ID = SOD.ITEM_ID ',
'    --LEFT JOIN ITEM_TYPE_NAMES IT ON IT.DET_ID = ITMS.ITEM_TYPE_ID',
'    WHERE SO.SO_TYPE =  ''''645''''',
'      AND SO.STATUS = ''''Y''''',
'      AND UA.APP_TYPE = ''''813''''',
'    GROUP BY UM.U_NAME, SO.SALE_OFFER_ID,  SO.ORDER_DATE--, IT.ITEM_TYPE_NAME,',
'       --  IT.DET_ID ',
'         UNION ALL ',
'',
'         ',
'   ----------------------------------------------------------------',
'-- PURCHASE TRADING',
'----------------------------------------------------------------',
'',
'SELECT',
'    UM.U_NAME AS SALE_OFFICER,',
'    APO.SALE_OFFICER_ID AS USER_ID,',
'    ''''Trading Purchase'''' AS STATUS,',
'',
'    SUM(NVL(APOD.CHANGE_BAGS, 0)) AS TOTAL_BAGS,',
'',
'    TRUNC(APO.TRANSACTION_DATE, ''''MM'''') AS SHIPMENT_DATE--,',
'',
'   -- IT.ITEM_TYPE_NAME AS ITEM_TYPE,',
'  --  IT.DET_ID AS TYPE_ID',
'',
'FROM AB_PO_PURCHASE_ORDER APO',
'',
'LEFT JOIN AB_PO_PURCHASE_ORDER_DET APOD',
'    ON APOD.PO_ID = APO.PO_ID',
'',
'LEFT JOIN AB_UM_USERS_REG UM',
'    ON UM.USER_ID = APO.SALE_OFFICER_ID',
'',
'LEFT JOIN USER_APPROVAL UA',
'    ON UA.APP_ID = APO.PO_ID     ',
'',
'LEFT JOIN AB_ITEMS_MASTER ITMS',
'    ON ITMS.ITEM_ID = APOD.ITEM_ID',
'',
'--LEFT JOIN ITEM_TYPE_NAMES IT',
' --   ON IT.DET_ID = ITMS.ITEM_TYPE_ID',
'',
'WHERE APO.PO_TYPE = ''''642''''',
'  AND APO.STATUS = ''''Y''''',
'  AND APO.ORG_ID = :GV_ORG_ID',
'',
'GROUP BY',
'    UM.U_NAME,',
'    APO.SALE_OFFICER_ID,',
'    TRUNC(APO.TRANSACTION_DATE, ''''MM'''')--,',
'   -- IT.ITEM_TYPE_NAME,',
'   -- IT.DET_ID',
')',
'',
'----------------------------------------------------------------',
'-- FINAL MERGE',
'----------------------------------------------------------------',
'SELECT',
'',
'     C.SALE_OFFICER,',
'     C.USER_ID,',
'    -- ITEM_TYPE,',
'    -- TYPE_ID,',
'     MAX(C.STATUS) AS STATUS,',
'    TO_CHAR(',
'        ROUND(SUM(NVL(C.TOTAL_BAGS,0))),',
'        ''''999,999,999,999,999,999,990''''',
'    ) AS TOTAL_BAGS,',
'    MAX(C.SHIPMENT_DATE) AS SHIPMENT_DATE',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- MONTH COLUMNS',
'    ---------------------------------------------------------------------',
'',
'    FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'',
'   DBMS_LOB.APPEND(v_sql, '', ',
'    ''''<strong>'''' || ',
'    NVL( ',
'        TO_CHAR( ',
'            ROUND( ',
'                SUM( ',
'                    CASE ',
'                        WHEN TRUNC(C.SHIPMENT_DATE,''''MM'''') = ',
'                             TRUNC(ADD_MONTHS(DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''','' || i || ''), ''''MM'''') ',
'                        THEN NVL(C.TOTAL_BAGS,0) ',
'                        ELSE 0 ',
'                    END ',
'                ) ',
'            ), ',
'            ''''999,999,999,999,999,999,990'''' ',
'        ), ',
'        ''''0'''' ',
'    ) ',
'    || ''''</strong>'''' AS '' || UPPER(TO_CHAR(ADD_MONTHS(v_start_date,i),''MON_YYYY'')) ',
'    ); ',
'END LOOP;',
'',
'    ---------------------------------------------------------------------',
'    -- FROM + JOINS',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'FROM BASE_DATA C',
'',
'WHERE C.SHIPMENT_DATE BETWEEN',
'      DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || ''''''',
'  AND DATE '''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || ''''''',
'',
'AND (',
'    C.STATUS IN (',
'        SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL)',
'        FROM DUAL',
'        CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL) IS NOT NULL',
'    )',
'    OR :P1194_BAGS_TYPE IS NULL',
')',
'',
'',
'',
'GROUP BY C.SALE_OFFICER, C.USER_ID',
'',
'UNION ALL',
'',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL ROW',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'SELECT',
'',
'    ''''TOTAL'''' AS SALE_OFFICER,',
'     NULL    AS USER_ID,',
'   ',
'    NULL  AS STATUS,',
'    ''''<strong>'''' ||',
'    TO_CHAR(',
'        ROUND(SUM(NVL(C.TOTAL_BAGS,0))),',
'        ''''999,999,999,999,999,999,990''''',
'    )',
'    || ''''</strong>'''' AS TOTAL_BAGS,',
'     NULL AS SHIPMENT_DATE',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL MONTH COLUMNS',
'    ---------------------------------------------------------------------',
'',
'    FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'',
'       DBMS_LOB.APPEND(v_sql, '', ',
'    ''''<strong>'''' || ',
'    NVL( ',
'        TO_CHAR( ',
'            ROUND( ',
'                SUM( ',
'                    CASE ',
'                        WHEN TRUNC(C.SHIPMENT_DATE,''''MM'''') = ',
'                             TRUNC(ADD_MONTHS(DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''','' || i || ''), ''''MM'''') ',
'                        THEN NVL(C.TOTAL_BAGS,0) ',
'                        ELSE 0 ',
'                    END ',
'                ) ',
'            ), ',
'            ''''999,999,999,999,999,999,990'''' ',
'        ), ',
'        ''''0'''' ',
'    ) ',
'    || ''''</strong>'''' AS '' || UPPER(TO_CHAR(ADD_MONTHS(v_start_date,i),''MON_YYYY'')) ',
'    ); ',
'END LOOP;',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL FROM',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'',
'FROM BASE_DATA C',
'',
'WHERE C.SHIPMENT_DATE BETWEEN',
'      DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''' AND DATE '''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || ''''''',
'',
'',
'',
'AND (',
'    C.STATUS IN (',
'        SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL)',
'        FROM DUAL',
'        CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL) IS NOT NULL',
'    )',
'    OR :P1194_BAGS_TYPE IS NULL',
');',
'',
'',
''');',
'',
'    RETURN v_sql;',
'',
'END;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1194_BAGS_TYPE'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(57069276517596840)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'UMAR'
,p_internal_uid=>57069276517596840
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57069365829596841)
,p_db_column_name=>'SALE_OFFICER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sale Officer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57069475479596842)
,p_db_column_name=>'TOTAL_BAGS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Total Bags'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57069583863596843)
,p_db_column_name=>'MAY_2026'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'May 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57069609257596844)
,p_db_column_name=>'APR_2026'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Apr 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57069788135596845)
,p_db_column_name=>'MAR_2026'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Mar 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57069829143596846)
,p_db_column_name=>'FEB_2026'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Feb 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57069995972596847)
,p_db_column_name=>'JAN_2026'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Jan 2026'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57070023512596848)
,p_db_column_name=>'DEC_2025'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Dec 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57070190078596849)
,p_db_column_name=>'NOV_2025'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nov 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57070227590596850)
,p_db_column_name=>'OCT_2025'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Oct 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57266743810080001)
,p_db_column_name=>'SEP_2025'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sep 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57266849947080002)
,p_db_column_name=>'AUG_2025'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Aug 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57266944892080003)
,p_db_column_name=>'JUL_2025'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Jul 2025'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68278919086345907)
,p_db_column_name=>'USER_ID'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279047731345908)
,p_db_column_name=>'STATUS'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279107753345909)
,p_db_column_name=>'SHIPMENT_DATE'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Shipment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279232357345910)
,p_db_column_name=>'JUN_2026'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Jun 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105762559295733408)
,p_db_column_name=>'SEP_2026'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Sep 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105762638872733409)
,p_db_column_name=>'AUG_2026'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Aug 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105762770740733410)
,p_db_column_name=>'JUL_2026'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Jul 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131538273336496902)
,p_plug_name=>'Sale Officer Wise Sale Detail '
,p_region_name=>'DOR'
,p_parent_plug_id=>wwv_flow_imp.id(56875806882781804)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE             ',
'    v_sql          CLOB;',
'    v_start_month  VARCHAR2(2) := ''07'';',
'    v_start_year   VARCHAR2(4) := ''2025'';',
'    v_start_date   DATE;',
'    v_end_date     DATE;',
'    v_current_date DATE;',
'    v_month_count  NUMBER;',
'BEGIN',
'',
'--    v_start_date := TO_DATE(''01-'' || v_start_month || ''-'' || v_start_year, ''DD-MM-YYYY'');',
'--    v_end_date   := TRUNC(LAST_DAY(SYSDATE));',
'',
'--     v_month_count := MONTHS_BETWEEN(TRUNC(v_end_date,''MM''), TRUNC(v_start_date,''MM'')) + 1;',
' ',
'',
'--     DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
' v_start_date := TO_DATE(''01-'' || v_start_month || ''-'' || v_start_year, ''DD-MM-YYYY'');',
'   v_end_date   := TRUNC(LAST_DAY(SYSDATE));',
'',
'    v_month_count := MONTHS_BETWEEN(TRUNC(v_end_date,''MM''), TRUNC(v_start_date,''MM'')) + 1;',
' ',
'',
'    DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
'',
'    ---------------------------------------------------------------------',
'    -- MAIN QUERY',
'    ---------------------------------------------------------------------',
'',
'   ',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'WITH USER_APPROVAL AS (',
'    SELECT  APP_IDS AS APP_ID,',
'           APP_TYPE,',
'           APPROVAL_STATUS',
'    FROM AB_USER_ACTION_APPROVAL',
'    WHERE STATUS = ''''Y''''',
'    AND ORG_ID = :GV_ORG_ID',
'    AND APP_TYPE IN (''''820'''', ''''813'''')',
'      AND APPROVAL_STATUS = ''''APPROVED''''',
'),',
'',
'       ITEM_TYPE_NAMES AS (',
'                SELECT LOOKUP_DET_NAME ITEM_TYPE_NAME,',
'                       DET_ID',
'                FROM AB_LOOKUP_DETAIL',
'                WHERE STATUS=''''Y''''',
'                and LOOKUP_ID = ''''004''''',
'                AND ORG_ID = :GV_ORG_ID',
'            ),',
'BASE_DATA AS (',
'',
'   ',
'    SELECT',
'        UM.U_NAME AS SALE_OFFICER,',
'        UM.USER_ID AS USER_ID,',
'        C.STATUS STATUS,',
'        SUM(NVL(C.NO_BAGS,0)) AS TOTAL_BAGS,',
'        C.SHIPMENT_DATE AS SHIPMENT_DATE,',
'        IT.ITEM_TYPE_NAME AS ITEM_TYPE,',
'        IT.DET_ID AS TYPE_ID',
'    FROM TABLE(AB_SALE_ORDER_PKG.SALE_ORDER_SHIPMENT(:GV_ORG_ID)) C',
'    JOIN AB_SO_ORDER_HEAD SO',
'        ON SO.SO_ID = C.SO_ID',
'    JOIN USER_APPROVAL UA',
'        ON UA.APP_ID = C.SHIPMENT_IDD',
'   LEFT JOIN AB_UM_USERS_REG UM ',
'        ON UM.USER_ID = C.SALE_OFFICER_ID',
'    LEFT JOIN AB_ITEMS_MASTER ITMS ON ITMS.ITEM_ID = C.ITEM_ID ',
'    LEFT JOIN ITEM_TYPE_NAMES IT ON IT.DET_ID = ITMS.ITEM_TYPE_ID',
'    WHERE UA.APP_TYPE = ''''820''''',
'    GROUP BY UM.U_NAME, UM.USER_ID, C.SHIPMENT_DATE, C.STATUS, IT.ITEM_TYPE_NAME,',
'         IT.DET_ID ',
'',
'    UNION ALL',
'',
'    ----------------------------------------------------------------',
'    -- TRADING',
'    ----------------------------------------------------------------',
'      SELECT',
'        UM.U_NAME AS SALE_OFFICER,',
'        SO.SALE_OFFER_ID AS USER_ID,',
'        ''''Trading Sale'''' AS STATUS,',
'        SUM(NVL(SOD.NO_BAGS,0)) AS TOTAL_BAGS,',
'         SO.ORDER_DATE AS SHIPMENT_DATE,',
'         IT.ITEM_TYPE_NAME AS ITEM_TYPE,',
'        IT.DET_ID AS TYPE_ID',
'    FROM AB_SO_ORDER_HEAD SO',
'    JOIN AB_SO_ORDER_DET SOD',
'        ON SOD.SO_ID = SO.SO_ID',
'       AND SOD.STATUS = ''''Y''''',
'    LEFT JOIN AB_UM_USERS_REG UM',
'        ON UM.USER_ID = SO.SALE_OFFER_ID',
'    JOIN USER_APPROVAL UA',
'        ON UA.APP_ID = SO.SO_IDS',
'        LEFT JOIN AB_ITEMS_MASTER ITMS ON ITMS.ITEM_ID = SOD.ITEM_ID ',
'    LEFT JOIN ITEM_TYPE_NAMES IT ON IT.DET_ID = ITMS.ITEM_TYPE_ID',
'    WHERE SO.SO_TYPE =  ''''645''''',
'      AND SO.STATUS = ''''Y''''',
'      AND UA.APP_TYPE = ''''813''''',
'    GROUP BY UM.U_NAME, SO.SALE_OFFER_ID,  SO.ORDER_DATE, IT.ITEM_TYPE_NAME,',
'       IT.DET_ID ',
'         UNION ALL ',
'',
'         ',
'   ----------------------------------------------------------------',
'-- PURCHASE TRADING',
'----------------------------------------------------------------',
'',
'SELECT',
'    UM.U_NAME AS SALE_OFFICER,',
'    APO.SALE_OFFICER_ID AS USER_ID,',
'    ''''Trading Purchase'''' AS STATUS,',
'',
'    SUM(NVL(APOD.CHANGE_BAGS, 0)) AS TOTAL_BAGS,',
'',
'    TRUNC(APO.TRANSACTION_DATE, ''''MM'''') AS SHIPMENT_DATE,',
'',
'   IT.ITEM_TYPE_NAME AS ITEM_TYPE,',
'   IT.DET_ID AS TYPE_ID',
'',
'FROM AB_PO_PURCHASE_ORDER APO',
'',
'LEFT JOIN AB_PO_PURCHASE_ORDER_DET APOD',
'    ON APOD.PO_ID = APO.PO_ID',
'',
'LEFT JOIN AB_UM_USERS_REG UM',
'    ON UM.USER_ID = APO.SALE_OFFICER_ID',
'',
'LEFT JOIN USER_APPROVAL UA',
'    ON UA.APP_ID = APO.PO_ID     ',
'',
'LEFT JOIN AB_ITEMS_MASTER ITMS',
'    ON ITMS.ITEM_ID = APOD.ITEM_ID',
'',
'LEFT JOIN ITEM_TYPE_NAMES IT',
'   ON IT.DET_ID = ITMS.ITEM_TYPE_ID',
'',
'WHERE APO.PO_TYPE = ''''642''''',
'  AND APO.STATUS = ''''Y''''',
'  AND APO.ORG_ID = :GV_ORG_ID',
'',
'GROUP BY',
'    UM.U_NAME,',
'    APO.SALE_OFFICER_ID,',
'    TRUNC(APO.TRANSACTION_DATE, ''''MM''''),',
'   IT.ITEM_TYPE_NAME,',
'    IT.DET_ID',
')',
'',
'----------------------------------------------------------------',
'-- FINAL MERGE',
'----------------------------------------------------------------',
'SELECT',
'',
'     C.SALE_OFFICER,',
'     C.USER_ID,',
'    ',
'     MAX(C.STATUS) AS STATUS,',
'    TO_CHAR(',
'        ROUND(SUM(NVL(C.TOTAL_BAGS,0))),',
'        ''''999,999,999,999,999,999,990''''',
'    ) AS TOTAL_BAGS,',
'    MAX(C.SHIPMENT_DATE) AS SHIPMENT_DATE,',
'    --MAX(C.ITEM_TYPE) AS ITEM_TYPE,',
'    NULL AS ITEM_TYPE,',
'    MAX(C.TYPE_ID) AS TYPE_ID',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- MONTH COLUMNS',
'    ---------------------------------------------------------------------',
'',
'    FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'',
'   DBMS_LOB.APPEND(v_sql, '', ',
'    ''''<strong>'''' || ',
'    NVL( ',
'        TO_CHAR( ',
'            ROUND( ',
'                SUM( ',
'                    CASE ',
'                        WHEN TRUNC(C.SHIPMENT_DATE,''''MM'''') = ',
'                             TRUNC(ADD_MONTHS(DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''','' || i || ''), ''''MM'''') ',
'                        THEN NVL(C.TOTAL_BAGS,0) ',
'                        ELSE 0 ',
'                    END ',
'                ) ',
'            ), ',
'            ''''999,999,999,999,999,999,990'''' ',
'        ), ',
'        ''''0'''' ',
'    ) ',
'    || ''''</strong>'''' AS '' || UPPER(TO_CHAR(ADD_MONTHS(v_start_date,i),''MON_YYYY'')) ',
'    ); ',
'END LOOP;',
'',
'    ---------------------------------------------------------------------',
'    -- FROM + JOINS',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'FROM BASE_DATA C',
'',
'WHERE C.SHIPMENT_DATE BETWEEN',
'      DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || ''''''',
'  AND DATE '''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || ''''''',
'',
'AND (',
'    C.STATUS IN (',
'        SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL)',
'        FROM DUAL',
'        CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL) IS NOT NULL',
'    )',
'    OR :P1194_BAGS_TYPE IS NULL',
')',
'',
'AND (',
'    :P1194_ITEM_TYPE IS NULL',
'    OR TYPE_ID IN (',
'        SELECT REGEXP_SUBSTR(:P1194_ITEM_TYPE, ''''[^:]+'''', 1, LEVEL)',
'        FROM dual',
'        CONNECT BY REGEXP_SUBSTR(:P1194_ITEM_TYPE, ''''[^:]+'''', 1, LEVEL) IS NOT NULL',
'    )',
')',
'',
'',
'GROUP BY C.SALE_OFFICER, C.USER_ID',
'',
'UNION ALL',
'',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL ROW',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'SELECT',
'',
'    ''''TOTAL'''' AS SALE_OFFICER,',
'     NULL    AS USER_ID,',
'   ',
'    NULL  AS STATUS,',
'    ''''<strong>'''' ||',
'    TO_CHAR(',
'        ROUND(SUM(NVL(C.TOTAL_BAGS,0))),',
'        ''''999,999,999,999,999,999,990''''',
'    )',
'    || ''''</strong>'''' AS TOTAL_BAGS,',
'     NULL AS SHIPMENT_DATE,',
'     NULL AS ITEM_TYPE,',
'     NULL AS TYPE_ID',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL MONTH COLUMNS',
'    ---------------------------------------------------------------------',
'',
'    FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'',
'       DBMS_LOB.APPEND(v_sql, '', ',
'    ''''<strong>'''' || ',
'    NVL( ',
'        TO_CHAR( ',
'            ROUND( ',
'                SUM( ',
'                    CASE ',
'                        WHEN TRUNC(C.SHIPMENT_DATE,''''MM'''') = ',
'                             TRUNC(ADD_MONTHS(DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''','' || i || ''), ''''MM'''') ',
'                        THEN NVL(C.TOTAL_BAGS,0) ',
'                        ELSE 0 ',
'                    END ',
'                ) ',
'            ), ',
'            ''''999,999,999,999,999,999,990'''' ',
'        ), ',
'        ''''0'''' ',
'    ) ',
'    || ''''</strong>'''' AS '' || UPPER(TO_CHAR(ADD_MONTHS(v_start_date,i),''MON_YYYY'')) ',
'    ); ',
'END LOOP;',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL FROM',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'',
'FROM BASE_DATA C',
'',
'WHERE C.SHIPMENT_DATE BETWEEN',
'      DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''' AND DATE '''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || ''''''',
'',
'AND (',
'    :P1194_ITEM_TYPE IS NULL',
'    OR TYPE_ID IN (',
'        SELECT REGEXP_SUBSTR(:P1194_ITEM_TYPE, ''''[^:]+'''', 1, LEVEL)',
'        FROM dual',
'        CONNECT BY REGEXP_SUBSTR(:P1194_ITEM_TYPE, ''''[^:]+'''', 1, LEVEL) IS NOT NULL',
'    )',
') ',
'',
'AND (',
'    C.STATUS IN (',
'        SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL)',
'        FROM DUAL',
'        CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL) IS NOT NULL',
'    )',
'    OR :P1194_BAGS_TYPE IS NULL',
');',
'',
'',
''');',
'',
'    RETURN v_sql;',
'',
'END;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1194_BAGS_TYPE,P1194_YEAR,P1194_ITEM_TYPE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CHANGE FROM 7 SEP FOR NOTT GETTING RAHEEL AHMAER AND REVERSE OFFICER',
'ES SY PEHLY UMAR NY KAM KIA HAI ES PR '))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(131538450035496903)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'UMAR'
,p_internal_uid=>131538450035496903
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131538494099496904)
,p_db_column_name=>'SALE_OFFICER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sale Officer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131538684359496906)
,p_db_column_name=>'TOTAL_BAGS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Bags'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57267182981080005)
,p_db_column_name=>'USER_ID'
,p_display_order=>160
,p_column_identifier=>'AD'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57267295627080006)
,p_db_column_name=>'STATUS'
,p_display_order=>170
,p_column_identifier=>'AE'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57267300666080007)
,p_db_column_name=>'SHIPMENT_DATE'
,p_display_order=>180
,p_column_identifier=>'AF'
,p_column_label=>'Shipment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279313018345911)
,p_db_column_name=>'JUN_2026'
,p_display_order=>190
,p_column_identifier=>'AG'
,p_column_label=>'Jun 2026'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279429601345912)
,p_db_column_name=>'MAY_2026'
,p_display_order=>200
,p_column_identifier=>'AH'
,p_column_label=>'May 2026'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279575191345913)
,p_db_column_name=>'APR_2026'
,p_display_order=>210
,p_column_identifier=>'AI'
,p_column_label=>'Apr 2026'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279669882345914)
,p_db_column_name=>'MAR_2026'
,p_display_order=>220
,p_column_identifier=>'AJ'
,p_column_label=>'Mar 2026'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279707679345915)
,p_db_column_name=>'FEB_2026'
,p_display_order=>230
,p_column_identifier=>'AK'
,p_column_label=>'Feb 2026'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279887585345916)
,p_db_column_name=>'JAN_2026'
,p_display_order=>240
,p_column_identifier=>'AL'
,p_column_label=>'Jan 2026'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68279965802345917)
,p_db_column_name=>'DEC_2025'
,p_display_order=>250
,p_column_identifier=>'AM'
,p_column_label=>'Dec 2025'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68280052835345918)
,p_db_column_name=>'NOV_2025'
,p_display_order=>260
,p_column_identifier=>'AN'
,p_column_label=>'Nov 2025'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68280153339345919)
,p_db_column_name=>'OCT_2025'
,p_display_order=>270
,p_column_identifier=>'AO'
,p_column_label=>'Oct 2025'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68280267711345920)
,p_db_column_name=>'SEP_2025'
,p_display_order=>280
,p_column_identifier=>'AP'
,p_column_label=>'Sep 2025'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68280359012345921)
,p_db_column_name=>'AUG_2025'
,p_display_order=>290
,p_column_identifier=>'AQ'
,p_column_label=>'Aug 2025'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68280436900345922)
,p_db_column_name=>'JUL_2025'
,p_display_order=>300
,p_column_identifier=>'AR'
,p_column_label=>'Jul 2025'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82356404374878415)
,p_db_column_name=>'JUL_2026'
,p_display_order=>310
,p_column_identifier=>'AS'
,p_column_label=>'Jul 2026'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102979007991829535)
,p_db_column_name=>'SEP_2026'
,p_display_order=>320
,p_column_identifier=>'AT'
,p_column_label=>'Sep 2026'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102979128178829536)
,p_db_column_name=>'AUG_2026'
,p_display_order=>330
,p_column_identifier=>'AU'
,p_column_label=>'Aug 2026'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106514928798251426)
,p_db_column_name=>'ITEM_TYPE'
,p_display_order=>340
,p_column_identifier=>'AV'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106515023562251427)
,p_db_column_name=>'TYPE_ID'
,p_display_order=>350
,p_column_identifier=>'AW'
,p_column_label=>'Type Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(132094263697154195)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'340241'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SALE_OFFICER:TOTAL_BAGS:SEP_2026:AUG_2026:JUL_2026:JUN_2026:MAY_2026:APR_2026:MAR_2026:FEB_2026:JAN_2026:DEC_2025:NOV_2025:OCT_2025:SEP_2025:AUG_2025:JUL_2025'
,p_sort_column_1=>'0'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188596342580885894)
,p_plug_name=>'TAB'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green"">',
'   Apply Filters',
'</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188596425429885895)
,p_plug_name=>'Sale Orders'
,p_parent_plug_id=>wwv_flow_imp.id(188596342580885894)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_sql          CLOB;',
'    v_start_month  VARCHAR2(2) := ''07'';',
'    v_start_year   VARCHAR2(4) := ''2025'';',
'    v_start_date   DATE;',
'    v_end_date     DATE;',
'    v_current_date DATE;',
'    v_month_count  NUMBER;',
'BEGIN',
'',
'    v_start_date := TO_DATE(''01-'' || v_start_month || ''-'' || v_start_year, ''DD-MM-YYYY'');',
'    v_end_date   := TRUNC(LAST_DAY(SYSDATE));',
'',
'    v_month_count := MONTHS_BETWEEN(TRUNC(v_end_date,''MM''), TRUNC(v_start_date,''MM'')) + 1;',
'',
'    DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
'',
'    ---------------------------------------------------------------------',
'    -- MAIN QUERY',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'WITH USER_APPROVAL AS (',
'    SELECT APP_IDS APP_ID, APP_TYPE, APPROVAL_STATUS',
'    FROM AB_USER_ACTION_APPROVAL',
'    WHERE STATUS = ''''Y''''',
'    AND APP_TYPE IN (''''820'''')',
'      AND APPROVAL_STATUS = ''''APPROVED''''',
')',
'',
'SELECT',
'',
'    UM.USER_NAME AS SALE_OFFICER,',
'    TO_CHAR(UM.USER_ID) AS USER_ID,',
'',
'    TO_CHAR(',
'        ROUND(SUM(NVL(C.NO_BAGS,0))),',
'        ''''999,999,999,999,999,999,990''''',
'    ) AS TOTAL_BAGS',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- MONTH COLUMNS',
'    ---------------------------------------------------------------------',
'',
'    FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'',
'        DBMS_LOB.APPEND(v_sql, '',',
'',
'    NVL(',
'        TO_CHAR(',
'            ROUND(',
'                SUM(',
'                    CASE',
'                        WHEN TRUNC(C.SHIPMENT_DATE,''''MM'''') =',
'                             TRUNC(ADD_MONTHS(DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''','' || i || ''))',
'                        THEN NVL(C.NO_BAGS,0)',
'                        ELSE 0',
'                    END',
'                )',
'            ),',
'            ''''999,999,999,999,999,999,990''''',
'        ),',
'        ''''0''''',
'    ) AS '' || UPPER(TO_CHAR(ADD_MONTHS(v_start_date,i),''MON_YYYY''))',
'    );',
'',
'    END LOOP;',
'',
'    ---------------------------------------------------------------------',
'    -- FROM + JOINS',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'FROM TABLE(AB_SALE_ORDER_PKG.SALE_ORDER_SHIPMENT(:GV_ORG_ID)) C',
'',
'JOIN AB_SO_ORDER_HEAD SO',
'    ON SO.SO_ID = C.SO_ID',
'',
'JOIN USER_APPROVAL UA ON UA.APP_ID = C.SHIPMENT_IDD',
'',
'LEFT JOIN AB_ITEMS_MASTER ITMS',
'    ON ITMS.ITEM_ID = C.ITEM_ID',
'',
'LEFT JOIN AB_UM_APPLICATION_USERS UM',
'    ON UM.USER_ID = C.SALE_OFFICER_ID',
'',
'WHERE C.SHIPMENT_DATE BETWEEN',
'      DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || ''''''',
'  AND DATE '''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || ''''''',
'',
'',
'',
'AND (',
'    C.STATUS IN (',
'        SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL)',
'        FROM DUAL',
'        CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL) IS NOT NULL',
'    )',
'    OR :P1194_BAGS_TYPE IS NULL',
')',
'',
'AND C.ITEM_ID = NVL(:P1194_ITEM_NAME,C.ITEM_ID)',
'',
'GROUP BY UM.USER_NAME, UM.USER_ID',
'',
'UNION ALL',
'',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL ROW',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'SELECT',
'',
'    ''''TOTAL'''' AS SALE_OFFICER,',
'    ''''TO_CHAR(UM.USER_ID)''''    AS USER_ID,',
'',
'    ''''<strong>'''' ||',
'    TO_CHAR(',
'        ROUND(SUM(NVL(C.NO_BAGS,0))),',
'        ''''999,999,999,999,999,999,990''''',
'    )',
'    || ''''</strong>'''' AS TOTAL_BAGS',
''');',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL MONTH COLUMNS',
'    ---------------------------------------------------------------------',
'',
'    FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'',
'        DBMS_LOB.APPEND(v_sql, '',',
'',
'    ''''<strong>'''' ||',
'',
'    NVL(',
'        TO_CHAR(',
'            ROUND(',
'                SUM(',
'                    CASE',
'                        WHEN TRUNC(C.SHIPMENT_DATE,''''MM'''') =',
'                             TRUNC(ADD_MONTHS(DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''','' || i || ''))',
'                        THEN NVL(C.NO_BAGS,0)',
'                        ELSE 0',
'                    END',
'                )',
'            ),',
'            ''''999,999,999,999,999,999,990''''',
'        ),',
'        ''''0''''',
'    )',
'',
'    || ''''</strong>'''' AS '' || UPPER(TO_CHAR(ADD_MONTHS(v_start_date,i),''MON_YYYY''))',
'    );',
'',
'    END LOOP;',
'',
'    ---------------------------------------------------------------------',
'    -- TOTAL FROM',
'    ---------------------------------------------------------------------',
'',
'    DBMS_LOB.APPEND(v_sql, ''',
'',
'FROM TABLE(AB_SALE_ORDER_PKG.SALE_ORDER_SHIPMENT(:GV_ORG_ID)) C',
'',
'JOIN AB_SO_ORDER_HEAD SO',
'    ON SO.SO_ID = C.SO_ID',
'',
'JOIN USER_APPROVAL UA ON UA.APP_ID = C.SHIPMENT_IDD',
'',
'LEFT JOIN AB_ITEMS_MASTER ITMS',
'    ON ITMS.ITEM_ID = C.ITEM_ID',
'',
'LEFT JOIN AB_UM_APPLICATION_USERS UM',
'    ON UM.USER_ID = C.SALE_OFFICER_ID',
'',
'WHERE C.SHIPMENT_DATE BETWEEN',
'      DATE '''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || ''''''',
'  AND DATE '''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || ''''''',
'',
'',
'',
'AND (',
'    C.STATUS IN (',
'        SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL)',
'        FROM DUAL',
'        CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE,''''[^:]+'''',1,LEVEL) IS NOT NULL',
'    )',
'    OR :P1194_BAGS_TYPE IS NULL',
')',
'',
'AND C.ITEM_ID = NVL(:P1194_ITEM_NAME,C.ITEM_ID)',
'',
'',
''');',
'',
'    RETURN v_sql;',
'',
'END;',
'',
'',
'',
'-- DECLARE',
'--     v_sql          CLOB;',
'--     v_start_month  VARCHAR2(2) := ''07'';  -- July',
'--     v_start_year   VARCHAR2(4) := ''2025'';',
'--     v_start_date   DATE;',
'--     v_end_date     DATE;',
'--     v_current_date DATE;',
'--     v_month_count  NUMBER;',
'-- BEGIN',
'--     v_start_date := TO_DATE(''01-'' || v_start_month || ''-'' || v_start_year, ''DD-MM-YYYY'');',
'--     v_end_date   := TRUNC(LAST_DAY(SYSDATE));  -- Current month end',
'    ',
'--     -- Calculate number of months from July 2025 to current month',
'--      v_month_count := MONTHS_BETWEEN(TRUNC(v_end_date, ''MM''), TRUNC(v_start_date, ''MM'')) + 1;',
'       ',
'',
'    ',
'--     DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
'',
'--     -------------------------------------------------------------------------',
'--     -- MAIN (GROUPED) SELECT - Individual Sale Officers',
'--     -------------------------------------------------------------------------',
'--     DBMS_LOB.APPEND(v_sql, ''',
'--       WITH USER_APPROVAL AS(',
'--         SELECT APP_IDS APP_ID, APP_TYPE, APPROVAL_STATUS',
'--         FROM AB_USER_ACTION_APPROVAL',
'--         WHERE STATUS=''''Y''''',
'--         AND APP_TYPE IN (''''820'''', ''''918'''')',
'         ',
'--     )',
'-- SELECT',
'  ',
'--     UM.USER_NAME            AS SALE_OFFICER,',
'--       UM.USER_ID     AS USER_ID,',
'   ',
'--     TO_CHAR(',
'--     ROUND(SUM(NVL(C.NO_BAGS, 0))),',
'--     ''''999,999,999,999,999,999,990''''',
'-- ) AS TOTAL_BAGS''',
'--     );',
'',
'--     -- Generate columns for each month from July 2025 to current month',
'--     FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'--         v_current_date := ADD_MONTHS(v_start_date, i);',
'        ',
'--         DBMS_LOB.APPEND(v_sql, '',',
'--     NVL(TO_CHAR(',
'--         ROUND(SUM(',
'--             CASE WHEN TRUNC(SO.ORDER_DATE, ''''MM'''') = TO_DATE('''''' || TO_CHAR(v_current_date,''YYYY-MM-DD'') || '''''',''''YYYY-MM-DD'''')',
'--                  THEN NVL(C.NO_BAGS,0)  END',
'--         )),',
'--         ''''999,999,999,999,999,999,990''''',
'--     ),0) AS '' || UPPER(TO_CHAR(v_current_date, ''MON_YYYY'')));',
'--     END LOOP;',
'',
'--     DBMS_LOB.APPEND(v_sql, ''',
'--  FROM TABLE(AB_SALE_ORDER_PKG.SALE_ORDER_SHIPMENT(:GV_ORG_ID)) C',
'--         JOIN AB_SO_ORDER_HEAD SO ON SO.SO_ID = C.SO_ID',
'--          JOIN USER_APPROVAL UA ON UA.APP_ID = C.SHIPMENT_IDD AND APP_TYPE=''''820''''',
'--         LEFT JOIN AB_ITEMS_MASTER ITMS ON ITMS.ITEM_ID = C.ITEM_ID ',
'--        LEFT JOIN AB_UM_APPLICATION_USERS UM ON UM.USER_ID = SO.SALE_OFFER_ID',
'  ',
'--    AND C.ORDER_DATE BETWEEN ',
'--     TO_DATE('''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''',''''YYYY-MM-DD'''')',
'--     AND TO_DATE('''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || '''''',''''YYYY-MM-DD'''')',
'',
'--      AND  (C.STATUS IN ( SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE, ''''[^:]+'''', 1, LEVEL) FROM dual ',
'--    CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE, ''''[^:]+'''', 1, LEVEL) IS NOT NULL ) OR :P1194_BAGS_TYPE IS NULL)  ',
'--  AND C.ITEM_ID = NVL(:P1194_ITEM_NAME,C.ITEM_ID)        ',
'-- GROUP BY UM.USER_NAME, UM.USER_ID',
'',
'',
'-- UNION ALL',
'',
'-- '');',
'',
'--     -------------------------------------------------------------------------',
'--     -- TOTAL ROW (no GROUP BY) - Sum of all columns',
'--     -------------------------------------------------------------------------',
'--     DBMS_LOB.APPEND(v_sql, ''',
'-- SELECT',
'     ',
'--     ''''TOTAL'''' AS SALE_OFFICER,',
'--        UM.USER_ID      AS USER_ID,',
'--     ''''<strong>'''' || TO_CHAR(',
'--         ROUND(SUM(NVL(C.NO_BAGS, 0) )),',
'--         ''''999,999,999,999,999,999,990''''',
'--         ) || ''''</strong>'''' AS TOTAL_BAGS''',
'--     );',
'',
'--     -- Generate total columns for each month',
'--     FOR i IN REVERSE 0 .. v_month_count-1 LOOP',
'--         v_current_date := ADD_MONTHS(v_start_date, i);',
'        ',
'--         DBMS_LOB.APPEND(v_sql, '',',
'--     ''''<strong>'''' || NVL(TO_CHAR(',
'--         ROUND(SUM(',
'       ',
'--             CASE WHEN TRUNC(SO.ORDER_DATE, ''''MM'''') = TO_DATE('''''' || TO_CHAR(v_current_date,''YYYY-MM-DD'') || '''''',''''YYYY-MM-DD'''')',
'--                  THEN NVL(C.NO_BAGS,0)  END',
'--         )),',
'--         ''''999,999,999,999,999,999,990''''',
'--     ),0) || ''''</strong>'''' AS '' || UPPER(TO_CHAR(v_current_date, ''MON_YYYY'')));',
'--     END LOOP;',
'',
'--     DBMS_LOB.APPEND(v_sql, ''',
'-- FROM TABLE(AB_SALE_ORDER_PKG.SALE_ORDER_SHIPMENT(:GV_ORG_ID)) C',
'--         JOIN AB_SO_ORDER_HEAD SO ON SO.SO_ID = C.SO_ID',
'--          JOIN USER_APPROVAL UA ON UA.APP_ID = C.SHIPMENT_IDD AND APP_TYPE=''''820''''',
'--         LEFT JOIN AB_ITEMS_MASTER ITMS ON ITMS.ITEM_ID = C.ITEM_ID ',
'--        LEFT JOIN AB_UM_APPLICATION_USERS UM ON UM.USER_ID = SO.SALE_OFFER_ID',
'  ',
'--   AND C.ORDER_DATE BETWEEN ',
'--     TO_DATE('''''' || TO_CHAR(v_start_date,''YYYY-MM-DD'') || '''''',''''YYYY-MM-DD'''')',
'--     AND TO_DATE('''''' || TO_CHAR(v_end_date,''YYYY-MM-DD'') || '''''',''''YYYY-MM-DD'''')',
'',
'--      AND  (C.STATUS IN ( SELECT REGEXP_SUBSTR(:P1194_BAGS_TYPE, ''''[^:]+'''', 1, LEVEL) FROM dual ',
'--    CONNECT BY REGEXP_SUBSTR(:P1194_BAGS_TYPE, ''''[^:]+'''', 1, LEVEL) IS NOT NULL ) OR :P1194_BAGS_TYPE IS NULL) ',
'--    AND C.ITEM_ID = NVL(:P1194_ITEM_NAME,C.ITEM_ID) ',
'--    GROUP BY UM.USER_ID ',
'           ',
'-- '');',
'',
'--     RETURN v_sql;',
'-- END;',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1194_YEAR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(188596516020885896)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'WASAY'
,p_internal_uid=>188596516020885896
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188596576229885897)
,p_db_column_name=>'SALE_OFFICER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sale Officer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132509969829662393)
,p_db_column_name=>'TOTAL_BAGS'
,p_display_order=>20
,p_column_identifier=>'HR'
,p_column_label=>'Total Bags'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="background-color:#F7B7A3; padding:6px; display:block;">',
'  #TOTAL_BAGS#',
'</span>'))
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280267627508738528)
,p_db_column_name=>'USER_ID'
,p_display_order=>340
,p_column_identifier=>'HQ'
,p_column_label=>'User Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54918810596036346)
,p_db_column_name=>'MAY_2026'
,p_display_order=>350
,p_column_identifier=>'HS'
,p_column_label=>'May 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54918911681036347)
,p_db_column_name=>'APR_2026'
,p_display_order=>360
,p_column_identifier=>'HT'
,p_column_label=>'Apr 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54919005121036348)
,p_db_column_name=>'MAR_2026'
,p_display_order=>370
,p_column_identifier=>'HU'
,p_column_label=>'Mar 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54919122052036349)
,p_db_column_name=>'FEB_2026'
,p_display_order=>380
,p_column_identifier=>'HV'
,p_column_label=>'Feb 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54919283706036350)
,p_db_column_name=>'JAN_2026'
,p_display_order=>390
,p_column_identifier=>'HW'
,p_column_label=>'Jan 2026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56174967200852701)
,p_db_column_name=>'DEC_2025'
,p_display_order=>400
,p_column_identifier=>'HX'
,p_column_label=>'Dec 2025'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56175000969852702)
,p_db_column_name=>'NOV_2025'
,p_display_order=>410
,p_column_identifier=>'HY'
,p_column_label=>'Nov 2025'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56175114303852703)
,p_db_column_name=>'OCT_2025'
,p_display_order=>420
,p_column_identifier=>'HZ'
,p_column_label=>'Oct 2025'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56175264416852704)
,p_db_column_name=>'SEP_2025'
,p_display_order=>430
,p_column_identifier=>'IA'
,p_column_label=>'Sep 2025'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56175394956852705)
,p_db_column_name=>'AUG_2025'
,p_display_order=>440
,p_column_identifier=>'IB'
,p_column_label=>'Aug 2025'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56175462095852706)
,p_db_column_name=>'JUL_2025'
,p_display_order=>450
,p_column_identifier=>'IC'
,p_column_label=>'Jul 2025'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(188713427908898176)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'906432'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SALE_OFFICER:TOTAL_BAGS'
,p_sum_columns_on_break=>'PURCASE_TRADING_BAGS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(57267636354080010)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(131538273336496902)
,p_button_name=>'PRINT_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Report'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1114:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-card-holder'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106514638085251423)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(131538273336496902)
,p_button_name=>'PRINT_REPORT_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Month Wise Report'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1404:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-card-holder'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105077990720524574)
,p_name=>'P1194_BAGS_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(188596342580885894)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Bags Type</b>'
,p_display_as=>'NATIVE_COMBOBOX'
,p_lov=>'STATIC2:Normal Sale Order;Normal Sale Order,Advance Sale Order;Advance Sale Order,Trading Sale;Trading Sale,Trading Purchase;Trading Purchase'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_css_classes=>'large-input'
,p_item_icon_css_classes=>'fa-combo-chart'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'manual_entries_item', 'P1194_BAGS_TYPE_ADD',
  'match_type', 'CONTAINS',
  'min_chars', '0',
  'multi_selection', 'Y')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105078129947524575)
,p_name=>'P1194_BAGS_TYPE_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(188596342580885894)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105125301892883120)
,p_name=>'P1194_ITEM_TYPE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(188596342580885894)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106515130243251428)
,p_name=>'P1194_ITEM_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(188596342580885894)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Item Type</B>'
,p_display_as=>'NATIVE_COMBOBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'',
'       LOOKUP_DET_NAME,',
'       det_id',
'      ',
'      ',
'  from AB_LOOKUP_DETAIL',
'  WHERE  status = ''Y''',
'  AND LOOKUP_DET_NAME IS NOT NULL',
'  and LOOKUP_ID = ''004''',
'  ORDER BY LOOKUP_DET_ID',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_css_classes=>'large-input'
,p_item_icon_css_classes=>'fa-combo-chart'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'manual_entries_item', 'P1194_TYPE_ID',
  'match_type', 'CONTAINS',
  'min_chars', '0',
  'multi_selection', 'Y')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106515277066251429)
,p_name=>'P1194_TYPE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(188596342580885894)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188189762824205717)
,p_name=>'P1194_YEAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(188596342580885894)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Month Wise</B>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''2026 - 2027'' AS DISPLAY_VALUE,',
'       ''2026'' AS RETURN_VALUE',
'FROM DUAL',
'',
'UNION ALL',
'',
'SELECT ''2025 - 2026'' AS DISPLAY_VALUE,',
'       ''2025'' AS RETURN_VALUE',
'FROM DUAL;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188772137521918300)
,p_name=>'P1194_SOD_SALE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(188596425429885895)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188772310406918301)
,p_name=>'P1194_SO_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(188596425429885895)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188772374308918302)
,p_name=>'P1194_SO_CREATED_ON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(188596425429885895)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(246918290785393493)
,p_name=>'P1194_PO_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(188596425429885895)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56126125055432131)
,p_name=>'Refresh the region according to sale officer'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1194_SALE_OFFICER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56128759489432132)
,p_name=>'New_5'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1194_MONTH_V1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56124276873432131)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1194_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105128283558883149)
,p_event_id=>wwv_flow_imp.id(56124276873432131)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131538273336496902)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56123328599432130)
,p_name=>'New_1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1194_ITEM_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56123849326432130)
,p_event_id=>wwv_flow_imp.id(56123328599432130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131538273336496902)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57267490920080008)
,p_event_id=>wwv_flow_imp.id(56123328599432130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(57066413592596812)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56127490738432132)
,p_name=>'New_8'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1194_YEAR_V2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56126503953432132)
,p_name=>'New_2'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1194_BAGS_TYPES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56127055563432132)
,p_event_id=>wwv_flow_imp.id(56126503953432132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131538273336496902)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56127864472432132)
,p_name=>'Refresh Reports'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1194_PURCHASE_OFFICER_WISE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56130027401432133)
,p_name=>'New_4'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1194_BAGS_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56130563252432133)
,p_event_id=>wwv_flow_imp.id(56130027401432133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131538273336496902)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57068942513596837)
,p_event_id=>wwv_flow_imp.id(56130027401432133)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(57066413592596812)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106515323185251430)
,p_name=>'New_3'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1194_ITEM_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106515425167251431)
,p_event_id=>wwv_flow_imp.id(106515323185251430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131538273336496902)
,p_attribute_01=>'N'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
