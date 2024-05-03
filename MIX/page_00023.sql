prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>8044464770314096
,p_default_application_id=>104
,p_default_id_offset=>369794444153416969
,p_default_owner=>'STASKS'
);
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Cadastro_Invoice'
,p_alias=>'CADASTRO-INVOICE'
,p_page_mode=>'MODAL'
,p_step_title=>'Cadastro Invoice'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-bodyWrapperIn {',
'    -webkit-overflow-scrolling: touch;',
'    height: 100%;',
'    left: 0;',
'    overflow: auto;',
'    position: absolute;',
'    top: 0;',
'    width: 100%;',
'    background-color: #e6e6e6;',
'}',
'',
'/*CSS DAS ABAS*/',
'.t-Tabs--simple .t-Tabs-item.is-active .t-Tabs-link {',
'    box-shadow: 0 50px 0  #0F4C81 /*#00abb4*/ inset !important;',
'    border-radius: 10px;',
'}',
'.t-Tabs-link {',
'    background-color:  #f0f0f0;',
'    color:#fff;',
'    /*color: var(--ut-tabs-item-text-color,var(--ut-link-text-color));*/',
'    display: block;',
'    overflow: hidden;',
'    padding: var(--ut-tabs-item-padding-y,.75rem) var(--ut-tabs-item-padding-x,.75rem);',
'    position: relative;',
'    text-align: center;',
'    text-overflow: ellipsis;',
'    white-space: nowrap;',
'    font-size: 1.2rem;',
'    font-weight: var(--a-base-font-weight-bold, 700);',
'}',
'',
'/*CSS DAS ABAS*/',
'.t-Tabs-item.is-active .t-Tabs-link {',
'    box-shadow: 0 50px 0  #0F4C81/*#056ac8 #00abb4*/ inset !important;',
'    border-radius: 10px;',
'}',
'.t-Tabs--pill {',
'    background-color: #f9f9f9;',
'    border-radius: 10px;',
'    border-color:#0F4C81; /*#056ac8;#00abb4;*/',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);',
'    background-clip: padding-box;',
'    margin-bottom: 0px;',
'}',
'.t-Tabs--fillLabels {',
'    display: flex;',
'    width: 100%;',
'}',
'.t-Tabs-item.is-active {',
'    --ut-tabs-item-text-color: none;',
'    --ut-tabs-item-background-color: none;',
'    --ut-tabs-item-highlight-color: none;',
'    --ut-tabs-item-font-weight: none;',
'}',
'.t-Tabs--small {',
'    --ut-tabs-item-padding-y: .3rem;',
'}',
'.t-Region-title {',
'    flex-basis: auto;',
'    flex-grow: 1;',
'    flex-shrink: 1;',
'    font-size: inherit;',
'    font-weight: inherit;',
'    line-height: inherit;',
'    margin: 0;',
'    display: none;',
'}',
'',
'.t-ButtonRegion-wrap {',
'    align-items: center;',
'    display: grid;',
'    grid-template-areas: "button-left button-content button-right";',
'    grid-template-columns: auto 1fr auto;',
'    background-color: #e6e6e6;',
'}',
unistr('/* bot\00E3o cancelar*/'),
'#cancel{',
'    display: none;',
'}',
'',
'#delete {',
unistr('    margin-left: -17px; /* ou qualquer valor negativo que voc\00EA preferir */'),
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'60%'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'DEV001'
,p_last_upd_yyyymmddhh24miss=>'20240502124309'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64111773060370217)
,p_plug_name=>'Abas'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(27527334554706359913)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64111991868370219)
,p_plug_name=>unistr('Informa\00E7\00F5es')
,p_parent_plug_id=>wwv_flow_imp.id(64111773060370217)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(27527258142578359881)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1352048717142470430)
,p_plug_name=>'Cadastro'
,p_parent_plug_id=>wwv_flow_imp.id(64111991868370219)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(27527258142578359881)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'MIX_INVOICE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P23_INVOICE_AUX'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(784410373915350995)
,p_plug_name=>'Dados Gerais'
,p_parent_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(27527286902707359893)
,p_plug_display_sequence=>50
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1352074270767470417)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(27527260956427359882)
,p_plug_display_sequence=>190
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1352084282214434497)
,p_plug_name=>'Processo'
,p_parent_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(27527286902707359893)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1352084470452434499)
,p_plug_name=>'Despesas'
,p_parent_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(27527286902707359893)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1359705281543414382)
,p_plug_name=>'Impostos'
,p_parent_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(27527286902707359893)
,p_plug_display_sequence=>40
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64112164563370221)
,p_plug_name=>unistr('Informa\00E7\00F5es Complementares')
,p_parent_plug_id=>wwv_flow_imp.id(64111773060370217)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(27527258142578359881)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64112687861370226)
,p_plug_name=>'Forma de Pagamento'
,p_parent_plug_id=>wwv_flow_imp.id(64112164563370221)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(27527286902707359893)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       INVOICE,',
'       PARCELA,',
'       PRAZO,',
'       DATA_PAGTO,',
'       VALOR1,',
'       VALOR900',
'  from MIX_INV_PAGTO',
'  where INVOICE = :P23_INVOICE_AUX',
'',
'',
'',
'',
'',
'',
'',
'/*select * from',
'(select',
'       INVOICE,',
'       PARCELA,',
'       PRAZO,',
'       DATA_PAGTO,',
'       VALOR1,',
'       VALOR900',
'  from MIX_INV_PAGTO',
') txa',
',(select :P23_INVOICE_AUX as invoice_aux from dual ) txb',
'where txa.invoice = txb.invoice_aux*/',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_INVOICE_AUX'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Forma de Pagamento'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64112894609370228)
,p_name=>'INVOICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64112943011370229)
,p_name=>'PARCELA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARCELA'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Parcela'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64113016313370230)
,p_name=>'PRAZO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRAZO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Prazo'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64113152278370231)
,p_name=>'DATA_PAGTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA_PAGTO'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Data Pagto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD/MM/RR'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64113225718370232)
,p_name=>'VALOR1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALOR1'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Valor 001'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'FM999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'   delete config.appearance.formatMask',
'   return config;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64113381392370233)
,p_name=>'VALOR900'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALOR900'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Valor 900'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'FM999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'   delete config.appearance.formatMask',
'   return config;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64114375498370243)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64114488742370244)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(64112794215370227)
,p_internal_uid=>64112794215370227
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:ACTIONS_MENU:SAVE'
,p_add_button_label=>'+'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>250
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'       // toolbarGroup = toolbarData[toolbarData.length - 1];',
'       toolbarGroup = toolbarData.toolbarFind("actions3");',
'',
'    config.reportSettingsArea = false;',
'',
'    toolbarGroup.controls.push({',
'        type: "BUTTON",',
'        label: " ",',
'        action: "selection-delete",',
'        iconBeforeLabel: true,',
'        id:"deletar",',
'    });',
'    config.toolbarData = toolbarData;',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(65344789726988329)
,p_interactive_grid_id=>wwv_flow_imp.id(64112794215370227)
,p_static_id=>'653448'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(65344911987988330)
,p_report_id=>wwv_flow_imp.id(65344789726988329)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65345490216988334)
,p_view_id=>wwv_flow_imp.id(65344911987988330)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(64112894609370228)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65346325255988336)
,p_view_id=>wwv_flow_imp.id(65344911987988330)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(64112943011370229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65347230344988337)
,p_view_id=>wwv_flow_imp.id(65344911987988330)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(64113016313370230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65348121417988339)
,p_view_id=>wwv_flow_imp.id(65344911987988330)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(64113152278370231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65349000593988341)
,p_view_id=>wwv_flow_imp.id(65344911987988330)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(64113225718370232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65349939598988342)
,p_view_id=>wwv_flow_imp.id(65344911987988330)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(64113381392370233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65365758604262012)
,p_view_id=>wwv_flow_imp.id(65344911987988330)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(64114375498370243)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64113552205370235)
,p_plug_name=>'Despesas Diversas'
,p_parent_plug_id=>wwv_flow_imp.id(64112164563370221)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:margin-top-sm:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(27527286902707359893)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INVOICE,',
'       DESCRICAO,',
'       PRAZO,',
'       DATA_PAGTO,',
'       VALOR,',
'       SEQ',
'  from MIX_INV_DESPESA',
'  where INVOICE = :P23_INVOICE_AUX'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_INVOICE_AUX'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Despesas Diversas'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64113720079370237)
,p_name=>'INVOICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64113848700370238)
,p_name=>'DESCRICAO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRICAO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Descricao'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64113907599370239)
,p_name=>'PRAZO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRAZO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Prazo'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64114044230370240)
,p_name=>'DATA_PAGTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA_PAGTO'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Data Pagto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD/MM/RR'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64114136877370241)
,p_name=>'VALOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALOR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Valor'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'FM999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'   delete config.appearance.formatMask',
'   return config;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64114645339370246)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64114711734370247)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(65379684389304417)
,p_name=>'SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Seq'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(64113636357370236)
,p_internal_uid=>64113636357370236
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:ACTIONS_MENU:SAVE'
,p_add_button_label=>'+'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>250
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'       // toolbarGroup = toolbarData[toolbarData.length - 1];',
'       toolbarGroup = toolbarData.toolbarFind("actions3");',
'',
'    config.reportSettingsArea = false;',
'',
'    toolbarGroup.controls.push({',
'        type: "BUTTON",',
'        label: " ",',
'        action: "selection-delete",',
'        iconBeforeLabel: true,',
'        id:"deletar",',
'    });',
'    config.toolbarData = toolbarData;',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(65352922817028690)
,p_interactive_grid_id=>wwv_flow_imp.id(64113636357370236)
,p_static_id=>'653530'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(65353148988028690)
,p_report_id=>wwv_flow_imp.id(65352922817028690)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65353633925028691)
,p_view_id=>wwv_flow_imp.id(65353148988028690)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(64113720079370237)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65354584789028693)
,p_view_id=>wwv_flow_imp.id(65353148988028690)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(64113848700370238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65355456672028695)
,p_view_id=>wwv_flow_imp.id(65353148988028690)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(64113907599370239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65356349524028697)
,p_view_id=>wwv_flow_imp.id(65353148988028690)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(64114044230370240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65357268619028698)
,p_view_id=>wwv_flow_imp.id(65353148988028690)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(64114136877370241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65367022901262016)
,p_view_id=>wwv_flow_imp.id(65353148988028690)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(64114645339370246)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65872905740381177)
,p_view_id=>wwv_flow_imp.id(65353148988028690)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(65379684389304417)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(363123441568549502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1352074270767470417)
,p_button_name=>'CANCEL'
,p_button_static_id=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(27527397946283359942)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(363123881071549502)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1352074270767470417)
,p_button_name=>'DELETE'
,p_button_static_id=>'delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(27527397946283359942)
,p_button_image_alt=>'Deletar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P23_ID_INVOICE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(363124214993549502)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1352074270767470417)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(27527397233100359942)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_ID_INVOICE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save-as'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(363124657102549501)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1352074270767470417)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(27527397946283359942)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cadastrar'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_ID_INVOICE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64112308750370223)
,p_name=>'P23_DATA_EMBARQUE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(784410373915350995)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Data Embarque'
,p_format_mask=>'DD/MM/RR'
,p_source=>'DATA_EMBARQUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64112464920370224)
,p_name=>'P23_DATA_PEDIDO_INVOICE'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(784410373915350995)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>'return sysdate;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Data Pedido Invoice'
,p_format_mask=>'DD/MM/RR'
,p_source=>'DATA_PEDIDO_INVOICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>8044464770314096
,p_default_application_id=>104
,p_default_id_offset=>369794444153416969
,p_default_owner=>'STASKS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64112533575370225)
,p_name=>'P23_DATA_DESEMBARQUE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(784410373915350995)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Data Desembarque'
,p_format_mask=>'DD/MM/RR'
,p_source=>'DATA_DESEMBARQUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65379033241304411)
,p_name=>'P23_INVOICE_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64112687861370226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373445030242276605)
,p_name=>'P23_FORNECEDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Fornecedor'
,p_source=>'FORNECEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct',
'        NOME_FORNECEDOR display',
'       ,FORNECEDOR9||''/''||lpad(FORNECEDOR4, 4, ''0'')||''-''||FORNECEDOR2 retorno',
'from systextil.supr_010',
'order by nome_fornecedor asc',
''))
,p_cSize=>30
,p_cMaxlength=>20
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373445119750276606)
,p_name=>'P23_NOME_TRANSPORTADORA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Transportadora'
,p_source=>'NOME_TRANSPORTADORA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct',
'        NOME_FORNECEDOR display',
'       ,FORNECEDOR9||''/''||lpad(FORNECEDOR4, 4, ''0'')||''-''||FORNECEDOR2 retorno',
'from systextil.supr_010',
'order by nome_fornecedor asc'))
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784409513456350972)
,p_name=>'P23_II_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'II_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784409553521350973)
,p_name=>'P23_IPI_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'IPI_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784409664749350974)
,p_name=>'P23_PIS_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'PIS_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784409750976350975)
,p_name=>'P23_COFINS_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'COFINS_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784409886984350976)
,p_name=>'P23_ICMS_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'ICMS_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784410011220350977)
,p_name=>'P23_ICMS_ST_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'ICMS_ST_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784410107699350978)
,p_name=>'P23_PIS_COFINS_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'PIS_COFINS_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784410238068350979)
,p_name=>'P23_VMLD_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'VMLD_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784410325741350980)
,p_name=>'P23_DADOS_GERAIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'DADOS_GERAIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784419409021350971)
,p_name=>'P23_PREVISAO_EMBARQUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(784410373915350995)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Embarque previsto'
,p_source=>'PREVISAO_EMBARQUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784419587211350972)
,p_name=>'P23_FORMA_PAGAMENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(784410373915350995)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'FORMA_PAGAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784419682542350973)
,p_name=>'P23_DOCTO_EMBARQUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(784410373915350995)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Docto Embarque'
,p_source=>'DOCTO_EMBARQUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784419774001350974)
,p_name=>'P23_NUMERO_CONTAINER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(784410373915350995)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Numero Container'
,p_source=>'NUMERO_CONTAINER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784419820294350975)
,p_name=>'P23_PRESENCA_CARGA'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(784410373915350995)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Presenca Carga'
,p_format_mask=>'DD/MM/RR'
,p_source=>'PRESENCA_CARGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1091565521062672750)
,p_name=>'P23_NOTA_FISCAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'NOTA_FISCAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1091565647825672751)
,p_name=>'P23_VMLD_FOB_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'VMLD_FOB_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1101610072021444553)
,p_name=>'P23_PESO_BRUTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Peso Bruto'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'PESO_BRUTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352084057103470397)
,p_name=>'P23_ID_INVOICE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Processo'
,p_source=>'ID_INVOICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352084450554470396)
,p_name=>'P23_DI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Di'
,p_source=>'DI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352084891991470396)
,p_name=>'P23_DATA'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Data'
,p_format_mask=>'DD/MM/RR'
,p_source=>'DATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352085226856470395)
,p_name=>'P23_LOTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Lote'
,p_source=>'LOTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352085613016470395)
,p_name=>'P23_TAXA_DOLAR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Taxa Dolar'
,p_format_mask=>'99G999G999G999G990D0000'
,p_source=>'TAXA_DOLAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352086061684470394)
,p_name=>'P23_FOB_TOTAL1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'FOB_TOTAL1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352086495348470394)
,p_name=>'P23_FOB_TOTAL2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'FOB_TOTAL2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352089237752470391)
,p_name=>'P23_CAPATAZIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Capatazia'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'CAPATAZIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352089610195470391)
,p_name=>'P23_ADIC_CAPATAZIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Adic Capatazia'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'ADIC_CAPATAZIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352089642614470393)
,p_name=>'P23_VOLUMES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Volumes'
,p_source=>'VOLUMES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352090028781470393)
,p_name=>'P23_PESO_LIQUIDO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Peso Liquido'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'PESO_LIQUIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352090034252470391)
,p_name=>'P23_FRETE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'$ Frete'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'FRETE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352090438699470393)
,p_name=>'P23_QTDE_ITENS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'QTDE_ITENS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352090456852470391)
,p_name=>'P23_TAXA_SISCOMEX'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Taxa Siscomex'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'TAXA_SISCOMEX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352090851251470390)
,p_name=>'P23_AFRMM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Afrmm'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'AFRMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352091185233470390)
,p_name=>'P23_VMLD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'VMLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352091588175470390)
,p_name=>'P23_SEGURO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Seguro'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'SEGURO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352093195522470389)
,p_name=>'P23_MULTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Multa'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'MULTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352093608350470389)
,p_name=>'P23_DESPAC_ADUANEIRO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'DESPAC_ADUANEIRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352094076655470389)
,p_name=>'P23_DESP_ADUANEIRA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Desp Aduaneira'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'DESP_ADUANEIRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352094465415470389)
,p_name=>'P23_ARMAZENAGEM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Armazenagem'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'ARMAZENAGEM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352094490865470391)
,p_name=>'P23_II'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'II'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352094801471470389)
,p_name=>'P23_AGENTE_CARGA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Agente Carga'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'AGENTE_CARGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352094841097470391)
,p_name=>'P23_IPI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'IPI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352095211213470389)
,p_name=>'P23_TRANSPORTADORA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Transportadora'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'TRANSPORTADORA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352095222519470391)
,p_name=>'P23_PIS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'PIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352095633630470389)
,p_name=>'P23_SCANNER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Scanner'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'SCANNER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352095635367470391)
,p_name=>'P23_COFINS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'COFINS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352096014767470388)
,p_name=>'P23_MULTA_LIBERACAO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Multa Liberacao'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'MULTA_LIBERACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352096025284470390)
,p_name=>'P23_ADIC_COFINS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'ADIC_COFINS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352096446283470388)
,p_name=>'P23_MULTA_ICMS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'R$ Multa Icms'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'MULTA_ICMS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352096503749470390)
,p_name=>'P23_ICMS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'ICMS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352096837825470390)
,p_name=>'P23_ICMS_ST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'ICMS_ST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352097252880470390)
,p_name=>'P23_SITUACAO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Situacao'
,p_source=>'SITUACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Nota emitida;0,A emitir;1,Digitando;2'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527396763354359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352098095503470390)
,p_name=>'P23_PROTOCOLO_DI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1352084282214434497)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'Protocolo Di'
,p_source=>'PROTOCOLO_DI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>8044464770314096
,p_default_application_id=>104
,p_default_id_offset=>369794444153416969
,p_default_owner=>'STASKS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359747157752414336)
,p_name=>'P23_P_IPI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1359705281543414382)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>'0'
,p_source=>'P_IPI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359747253167414337)
,p_name=>'P23_P_PIS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1359705281543414382)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>'0'
,p_prompt=>'% PIS'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'P_PIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359747445236414338)
,p_name=>'P23_P_ICMS_TAC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1359705281543414382)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>'0'
,p_prompt=>'% ICMS DIRETO'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'P_ICMS_TAC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359747545377414339)
,p_name=>'P23_P_ICMS_SUBS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1359705281543414382)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>'0'
,p_prompt=>'% ICMS ST'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'P_ICMS_SUBS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359747741502414341)
,p_name=>'P23_P_ICMS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1359705281543414382)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>'0'
,p_prompt=>unistr('% ICMS Base de Redu\00E7\00E3o')
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'P_ICMS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359747851426414342)
,p_name=>'P23_P_II'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1359705281543414382)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>'0'
,p_prompt=>'% ||'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'P_II'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359747868266414343)
,p_name=>'P23_P_ADIC_COFINS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1359705281543414382)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>'0'
,p_prompt=>'% ADICIONAL COFINS'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'P_ADIC_COFINS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359748232471414346)
,p_name=>'P23_P_COFINS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1359705281543414382)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>'0'
,p_prompt=>'% COFINS'
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'P_COFINS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359860356022793197)
,p_name=>'P23_CUSTO_COMERCIAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'CUSTO_COMERCIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359860431405793198)
,p_name=>'P23_CUSTO_FISCAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'CUSTO_FISCAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359894482272793171)
,p_name=>'P23_AGENTE_ADUANEIRO_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_source=>'AGENTE_ADUANEIRO_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1359895245958793178)
,p_name=>'P23_PIS_COFINS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1352084470452434499)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_item_default=>':P23_AGENTE_CARGA - :P23_AGENTE_CARGA-(602.41*9.25/100)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('R$ Cr\00E9dito PIS COFINS')
,p_format_mask=>'99G999G999G999G990D00'
,p_source=>'PIS_COFINS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1373930812895790630)
,p_name=>'P23_P_ICMS_BASE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1359705281543414382)
,p_item_source_plug_id=>wwv_flow_imp.id(1352048717142470430)
,p_prompt=>'% ICMS Base'
,p_source=>'P_ICMS_BASE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(27527395473923359941)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(363125699218549499)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(363123441568549502)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(363126174463549498)
,p_event_id=>wwv_flow_imp.id(363125699218549499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(363126503899549498)
,p_name=>'Desabilita campos'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_SITUACAO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(363127095454549497)
,p_event_id=>wwv_flow_imp.id(363126503899549498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_ID_INVOICE,P23_SITUACAO,P23_DI,P23_DATA,P23_CAPATAZIA,P23_ADIC_CAPATAZIA,P23_LOTE,P23_FRETE,P23_TAXA_SISCOMEX,P23_TAXA_DOLAR,P23_QTDE_ITENS,P23_SEGURO,P23_VOLUMES,P23_PESO_LIQUIDO,P23_MULTA,P23_DESPAC_ADUANEIRO,P23_DESP_ADUANEIRA,P23_ARMAZENAGEM,'
||'P23_AGENTE_CARGA,P23_TRANSPORTADORA,P23_SCANNER,P23_MULTA_LIBERACAO,P23_MULTA_ICMS'
,p_client_condition_type=>'LESS_THAN_OR_EQUAL'
,p_client_condition_element=>'P23_SITUACAO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(363127546691549497)
,p_event_id=>wwv_flow_imp.id(363126503899549498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_ID_INVOICE,P23_SITUACAO,P23_DI,P23_DATA,P23_CAPATAZIA,P23_ADIC_CAPATAZIA,P23_LOTE,P23_FRETE,P23_TAXA_SISCOMEX,P23_TAXA_DOLAR,P23_QTDE_ITENS,P23_SEGURO,P23_VOLUMES,P23_PESO_LIQUIDO,P23_MULTA,P23_DESPAC_ADUANEIRO,P23_DESP_ADUANEIRA,P23_ARMAZENAGEM,'
||'P23_AGENTE_CARGA,P23_TRANSPORTADORA,P23_SCANNER,P23_MULTA_LIBERACAO,P23_MULTA_ICMS'
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P23_SITUACAO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(363127964168549497)
,p_name=>'Default Fields'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(363128414326549497)
,p_event_id=>wwv_flow_imp.id(363127964168549497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ii_param        number := 0;',
'v_ipi_param       number := 0;',
'v_pis_param       number := 0; ',
'v_icms_tac_param  number := 0;',
'v_icms_subs_param number := 0;',
'v_cofins_param    number := 0;',
'v_icms_param      number := 0;',
'v_adic_cofins_param number :=0;',
'v_base_icms number :=0;',
'    ',
'begin',
'     select valor ',
'     into   v_ii_param',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''II''',
'     ;',
'    /* select valor ',
'     into   v_ipi_param',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''IPI''',
'     ;*/ ',
'     select valor ',
'     into   v_pis_param',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''PIS''',
'     ; ',
'     select valor ',
'     into   v_icms_tac_param',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''ICMS DIRETO''',
'     ;',
'     select valor ',
'     into   v_icms_subs_param',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''ICMS ST''',
'     ;',
'     select valor ',
'     into   v_cofins_param',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''COFINS''',
'     ;',
'     select valor ',
'     into   v_icms_param',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''ICMS''',
'     ;',
'     select valor ',
'     into   v_adic_cofins_param',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''ADIC COFINS''',
'     ;',
'     select valor ',
'     into   v_adic_cofins_param',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''ADIC COFINS''',
'     ;',
'     select valor ',
'     into   v_base_icms',
'     from   mix_parametros',
'     where  grupo = ''Invoice''',
'     and    nome  = ''ICMS BASE''',
'     ;',
'     --retorno',
'     :P23_P_COFINS      := v_cofins_param;',
'     :P23_P_ICMS        := v_icms_param;',
'     :P23_P_ICMS_TAC    := v_icms_tac_param;',
'     :P23_P_II          := v_ii_param;',
'     :P23_P_IPI         := 0;',
'     :P23_P_PIS         := v_pis_param;',
'     :P23_P_ICMS_SUBS   := v_icms_subs_param;',
'     :P23_P_ADIC_COFINS := v_adic_cofins_param;',
'     :P23_P_ICMS_BASE   := v_base_icms;',
'     :P23_INVOICE_AUX   := :P23_ID_INVOICE;',
'      ',
'end ;',
''))
,p_attribute_03=>'P23_P_II,P23_P_IPI,P23_P_PIS,P23_P_ICMS_TAC,P23_P_ICMS_SUBS,P23_P_ICMS,P23_P_COFINS,P23_P_ADIC_COFINS,P23_P_ICMS_BASE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P23_ID_INVOICE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65379177007304412)
,p_event_id=>wwv_flow_imp.id(363127964168549497)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P23_INVOICE_AUX",apex.item( "P23_ID_INVOICE" ).getValue());'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(363128979994549497)
,p_event_id=>wwv_flow_imp.id(363127964168549497)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_SITUACAO,P23_ID_INVOICE,P23_P_II,P23_FRETE,P23_P_IPI,P23_SEGURO,P23_DI,P23_P_PIS,P23_CAPATAZIA,P23_PROTOCOLO_DI,P23_P_COFINS,P23_ADIC_CAPATAZIA,P23_DATA,P23_P_ICMS_BASE,P23_TAXA_SISCOMEX,P23_CUSTO_COMERCIAL,P23_AFRMM,P23_P_ICMS,P23_ARMAZENAGEM,P2'
||'3_VMLD,P23_LOTE,P23_P_ICMS_TAC,P23_MULTA,P23_ADIC_COFINS,P23_ICMS_ST,P23_ICMS,P23_MULTA_ICMS,P23_PIS,P23_MULTA_LIBERACAO,P23_PIS_COFINS,P23_IPI,P23_AGENTE_ADUANEIRO_2,P23_II,P23_TRANSPORTADORA,P23_P_ICMS_SUBS,P23_SCANNER,P23_PESO_LIQUIDO,P23_DESP_ADU'
||'ANEIRA,P23_TAXA_DOLAR,P23_VOLUMES,P23_AGENTE_CARGA,P23_P_ADIC_COFINS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P23_SITUACAO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(363129413614549496)
,p_event_id=>wwv_flow_imp.id(363127964168549497)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(363123881071549502)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P23_SITUACAO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(363129911974549496)
,p_event_id=>wwv_flow_imp.id(363127964168549497)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(363124214993549502)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P23_SITUACAO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65379221324304413)
,p_event_id=>wwv_flow_imp.id(363127964168549497)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64112687861370226)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65379387230304414)
,p_event_id=>wwv_flow_imp.id(363127964168549497)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64113552205370235)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(363130348095549496)
,p_name=>'formatacao data'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_DATA'
,p_condition_element=>'P23_DATA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(363130818951549496)
,p_event_id=>wwv_flow_imp.id(363130348095549496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Obt\00E9m o valor do campo no Oracle APEX'),
'let entrada = apex.item("P23_DATA").getValue();',
'',
unistr('// Verifica se a entrada \00E9 um n\00FAmero de 4 d\00EDgitos'),
'if (/^\d{4}$/.test(entrada)) {',
'  // Adiciona o ano de 2023',
'  entrada = entrada + ''/2023'';',
'} else if (/^\d{1,2}\/\d{1,2}$/.test(entrada)) {',
unistr('  // Divide a entrada em dia e m\00EAs'),
'  const [dia, mes] = entrada.split(''/'');',
'  ',
unistr('  // Verifica se o dia e o m\00EAs est\00E3o entre 1 e 31 e 1 e 12, respectivamente'),
'  if (parseInt(dia) >= 1 && parseInt(dia) <= 31 && parseInt(mes) >= 1 && parseInt(mes) <= 12) {',
unistr('    // Formata o dia e o m\00EAs com dois d\00EDgitos, e adiciona o ano de 2023'),
'    entrada = `${dia.padStart(2, ''0'')}/${mes.padStart(2, ''0'')}/2023`;',
'  } else {',
unistr('    // Formato inv\00E1lido, mant\00E9m a entrada original'),
'    entrada = entrada;',
'  }',
'} else if (/^\d{3}$/.test(entrada)) {',
unistr('  // Adiciona o m\00EAs de maio'),
'  entrada = ''14/'' + entrada;',
'}',
'',
'// Atualiza o valor do campo no Oracle APEX',
'apex.item("P23_DATA").setValue(entrada);',
'',
'// Exemplos de uso:',
unistr('console.log(transformarData(''1405''));    // Sa\00EDda: 14/05/2023'),
unistr('console.log(transformarData(''145''));     // Sa\00EDda: 14/05'),
unistr('console.log(transformarData(''14/09''));   // Sa\00EDda: 14/09/2023'),
unistr('console.log(transformarData(''1/5''));     // Sa\00EDda: 01/05/2023'),
unistr('console.log(transformarData(''01/05''));   // Sa\00EDda: 01/05/2023'),
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(363131209279549496)
,p_name=>'retorna calc'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_PIS_COFINS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(363131799808549495)
,p_event_id=>wwv_flow_imp.id(363131209279549496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   :P23_PIS_COFINS :=  replace(:P23_AGENTE_CARGA,''.'','''')   - (replace(:P23_AGENTE_CARGA,''.'','''')-(602.41*9.25/100))',
'                     +(replace(:P23_TRANSPORTADORA,''.'','''') - (replace(:P23_TRANSPORTADORA,''.'','''')*90.75/100))',
'                     +(replace(:P23_DESP_ADUANEIRA,''.'','''') - (replace(:P23_DESP_ADUANEIRA,''.'','''')-(2600*9.25/100)))',
'                     +((replace(:P23_SEGURO,''.'','''')-(replace(:P23_SEGURO,''.'','''')*90.25/100)));',
'end;'))
,p_attribute_02=>'P23_AGENTE_CARGA,P23_TRANSPORTADORA,P23_DESP_ADUANEIRA,P23_SEGURO'
,p_attribute_03=>'P23_PIS_COFINS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65378129294304402)
,p_name=>'Default fields insert'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64112687861370226)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65378221320304403)
,p_event_id=>wwv_flow_imp.id(65378129294304402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = this.data.model,    ',
'    rec   = this.data.record,    ',
'    meta  = model.getRecordMetadata(this.data.recordId);',
'',
'if ( meta.inserted ) {    ',
'    model.setValue(rec,"INVOICE", $v("P23_ID_INVOICE"));',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65378349165304404)
,p_name=>'Default fields insert dadod gerais pagto'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64113552205370235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65378486527304405)
,p_event_id=>wwv_flow_imp.id(65378349165304404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = this.data.model,    ',
'    rec   = this.data.record,    ',
'    meta  = model.getRecordMetadata(this.data.recordId);',
'',
'if ( meta.inserted ) {    ',
'    model.setValue(rec,"INVOICE", $v("P23_ID_INVOICE"));',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65378528687304406)
,p_name=>'Refresh'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64112687861370226)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65378625927304407)
,p_event_id=>wwv_flow_imp.id(65378528687304406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64112687861370226)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65378720120304408)
,p_name=>unistr('refresca regi\00E3o')
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64113552205370235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65378812501304409)
,p_event_id=>wwv_flow_imp.id(65378720120304408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64113552205370235)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(363088710777549523)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1352048717142470430)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form_Invoice'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'CASE :APEX$ROW_STATUS  ',
'WHEN ''C'' THEN ',
'INSERT INTO MIX_INVOICE (',
'ID_INVOICE,DI,DATA,LOTE,TAXA_DOLAR,CAPATAZIA,',
'ADIC_CAPATAZIA,FRETE,TAXA_SISCOMEX,AFRMM,SEGURO,VOLUMES, ',
'PESO_LIQUIDO,QTDE_ITENS,MULTA,DESPAC_ADUANEIRO,DESP_ADUANEIRA, ',
'ARMAZENAGEM,AGENTE_CARGA,TRANSPORTADORA,SCANNER,MULTA_LIBERACAO, ',
'MULTA_ICMS,SITUACAO,FORNECEDOR,PROTOCOLO_DI,',
'P_ADIC_COFINS,P_COFINS,P_ICMS,',
'P_ICMS_SUBS,P_ICMS_TAC,P_II,',
'P_IPI,P_PIS,AGENTE_ADUANEIRO_2, PIS_COFINS, P_ICMS_BASE, NOME_TRANSPORTADORA, PESO_BRUTO,',
'DATA_PEDIDO_INVOICE,previsao_embarque, DATA_EMBARQUE, DATA_DESEMBARQUE ,docto_embarque, numero_container, presenca_carga)',
'VALUES(',
':P23_ID_INVOICE, :P23_DI, :P23_DATA, :P23_LOTE, :P23_TAXA_DOLAR, REPLACE(:P23_CAPATAZIA, ''.'', ''''),',
'replace(:P23_ADIC_CAPATAZIA,''.'',''''), replace(:P23_FRETE,''.'',''''), replace(:P23_TAXA_SISCOMEX,''.'',''''),replace(:P23_AFRMM,''.'',''''),replace(:P23_SEGURO,''.'',''''), :P23_VOLUMES,',
'replace(:P23_PESO_LIQUIDO,''.'',''''),   :P23_QTDE_ITENS, replace(:P23_MULTA,''.'',''''),replace(:P23_DESPAC_ADUANEIRO,''.'',''''), replace(:P23_DESP_ADUANEIRA,''.'',''''), ',
'replace(:P23_ARMAZENAGEM,''.'',''''),    replace(:P23_AGENTE_CARGA,''.'',''''), replace(:P23_TRANSPORTADORA,''.'',''''), replace(:P23_SCANNER,''.'',''''), replace(:P23_MULTA_LIBERACAO,''.'',''''),',
'replace(:P23_MULTA_ICMS,''.'',''''),     :P23_SITUACAO,:P23_FORNECEDOR,:P23_PROTOCOLO_DI,',
'replace(:P23_P_ADIC_COFINS,''.'',''''), replace(:P23_P_COFINS,''.'',''''), replace(:P23_P_ICMS,''.'',''''),',
'replace(:P23_P_ICMS_SUBS,''.'',''''), replace(:P23_P_ICMS_TAC,''.'',''''), replace(:P23_P_II,''.'',''''),',
'0, replace(:P23_P_PIS,''.'',''''), replace(:P23_AGENTE_ADUANEIRO_2,''.'',''''), replace(:P23_PIS_COFINS,''.'',''''), replace(:P23_P_ICMS_BASE,''.'',''''),',
':P23_NOME_TRANSPORTADORA, REPLACE(:P23_PESO_BRUTO, ''.'', '''')',
unistr(',:P23_DATA_PEDIDO_INVOICE, :P23_PREVISAO_EMBARQUE, :P23_DATA_EMBARQUE, :P23_DATA_DESEMBARQUE, :P23_DOCTO_EMBARQUE, :P23_NUMERO_CONTAINER, :P23_PRESENCA_CARGA);  --O replace ir\00E1 trocar'),
'',
'ST_PCK_MIX.PR_MIX_INCLUIR_DESP_INVOICE(:P23_ID_INVOICE);',
'COMMIT;',
'WHEN ''U'' THEN  ',
'UPDATE MIX_INVOICE  ',
'SET DI   = :P23_DI ',
',DATA = :P23_DATA',
',LOTE = :P23_LOTE',
',TAXA_DOLAR =  :P23_TAXA_DOLAR',
',CAPATAZIA =  REPLACE(:P23_CAPATAZIA, ''.'', '''')',
',ADIC_CAPATAZIA = REPLACE(:P23_ADIC_CAPATAZIA, ''.'', '''')',
',FRETE = REPLACE(:P23_FRETE, ''.'', '''')',
',TAXA_SISCOMEX = REPLACE(:P23_TAXA_SISCOMEX, ''.'', '''')',
',AFRMM = REPLACE(:P23_AFRMM, ''.'', '''')',
',SEGURO = REPLACE(:P23_SEGURO, ''.'', '''')',
',VOLUMES = :P23_VOLUMES',
',PESO_LIQUIDO = REPLACE(:P23_PESO_LIQUIDO, ''.'', '''')',
',QTDE_ITENS = :P23_QTDE_ITENS',
',MULTA = REPLACE(:P23_MULTA, ''.'', '''')',
',DESPAC_ADUANEIRO = REPLACE(:P23_DESPAC_ADUANEIRO, ''.'', '''')',
',DESP_ADUANEIRA = REPLACE(:P23_DESP_ADUANEIRA, ''.'', '''')',
',ARMAZENAGEM = REPLACE(:P23_ARMAZENAGEM, ''.'', '''')',
',AGENTE_CARGA = REPLACE(:P23_AGENTE_CARGA, ''.'', '''')',
',TRANSPORTADORA = REPLACE(:P23_TRANSPORTADORA, ''.'', '''')',
',SCANNER = REPLACE(:P23_SCANNER, ''.'', '''')',
',MULTA_LIBERACAO = REPLACE(:P23_MULTA_LIBERACAO, ''.'', '''')',
',MULTA_ICMS = REPLACE(:P23_MULTA_ICMS, ''.'', '''')',
',SITUACAO = :P23_SITUACAO',
',FORNECEDOR = :P23_FORNECEDOR',
',PROTOCOLO_DI = :P23_PROTOCOLO_DI',
',P_ADIC_COFINS = replace(:P23_P_ADIC_COFINS,''.'','''')',
',P_COFINS = replace(:P23_P_COFINS,''.'','''')',
',P_ICMS = replace(:P23_P_ICMS,''.'','''')',
',P_ICMS_SUBS = replace(:P23_P_ICMS_SUBS,''.'','''')',
',P_ICMS_TAC = replace(:P23_P_ICMS_TAC,''.'','''')',
',P_II =  replace(:P23_P_II,''.'','''')',
',P_PIS = replace(:P23_P_PIS,''.'','''')',
',AGENTE_ADUANEIRO_2 = replace(:P23_AGENTE_ADUANEIRO_2,''.'','''')',
',PIS_COFINS = replace(:P23_PIS_COFINS,''.'','''')',
',P_ICMS_BASE = replace(:P23_P_ICMS_BASE,''.'','''')',
',NOME_TRANSPORTADORA = :P23_NOME_TRANSPORTADORA',
',PESO_BRUTO  = REPLACE(:P23_PESO_BRUTO, ''.'', '''')',
',DATA_PEDIDO_INVOICE = :P23_DATA_PEDIDO_INVOICE',
',previsao_embarque = :P23_PREVISAO_EMBARQUE',
',DATA_EMBARQUE = :P23_DATA_EMBARQUE',
',DATA_DESEMBARQUE = :P23_DATA_DESEMBARQUE',
',docto_embarque = :P23_DOCTO_EMBARQUE',
',numero_container = :P23_NUMERO_CONTAINER',
',presenca_carga = :P23_PRESENCA_CARGA',
'WHERE ID_INVOICE = :P23_ID_INVOICE;',
'COMMIT;',
'WHEN ''D'' THEN  ',
'DELETE MIX_INVOICE',
'WHERE ID_INVOICE = :P23_ID_INVOICE;',
'COMMIT;    ',
'END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>363088710777549523
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(363125247203549499)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P23_INVOICE_AUX'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>363125247203549499
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64114597693370245)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(64112687861370226)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Forma de pagamento - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64114597693370245
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64114889259370248)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(64113552205370235)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Despesas Diversas - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64114889259370248
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(363088378987549524)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1352048717142470430)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form_Invoice'
,p_attribute_01=>'P23_INVOICE_AUX'
,p_attribute_02=>'P23_INVOICE_AUX'
,p_attribute_03=>'P23_INVOICE_AUX'
,p_internal_uid=>363088378987549524
);
wwv_flow_imp.component_end;
end;
/
