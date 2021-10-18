/* ==================================================== REBUILD TEST DATABASE ====================================================== *
 *
 * Ripristina i sequence su tutti gli schemi. Imposta il valore minimo di sequence a 10.000, per riservare gli id inferiori ai test
 * Svuota il DB
 * Ripopola le tabelle
 * ================================================================================================================================= */

/* ===================================================== 00 DELETE ======================================================= *
 *
 * Ripulisce tutte le tabelle
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				DELETE TUTTE LE TABELLE
 * SCHEMA: 				GLOBAL
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */


select public.truncate_tables('cust') into temp a;
drop table a;

select public.truncate_tables('loyalty') into temp b;
drop table b;

select public.truncate_tables('common') into temp c;
drop table c;

select public.truncate_tables('promotion') into temp d;
drop table d;



/* ==================================================== 01 RESET SEQUENCE ====================================================== *
 *
 * Ripristina i sequence. Imposta il valore minimo di sequence a 10.000, per riservare gli id inferiori ai test
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RESET SEQUENCE
 * SCHEMA: 				COMMON
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */
ALTER SEQUENCE common.apps_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.apps_config_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.apps_division_sales_network_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.brand_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.brand_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.calendar_group_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.calendar_group_item_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.calendar_group_store_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.calendar_item_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.certification_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.certification_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.classification_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.classification_detail_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.classification_type_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.config_types_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.country_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.country_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.currency_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.currency_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.dictionary_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.division_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.division_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.division_sales_network_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.entity_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.entity_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.grant_operation_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.grant_operation_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.grant_permission_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.grant_role_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.grant_role_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.grant_role_user_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.language_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.language_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.param_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.param_channel_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.param_channel_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.param_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.province_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.province_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.sales_calendar_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.sales_network_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.sales_network_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.service_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.service_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.service_store_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.service_type_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.service_type_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.state_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.state_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.store_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.store_classification_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.store_group_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.store_group_detail_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.store_group_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.store_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.supplier_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.supplier_brand_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.supplier_certification_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.toponym_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE common.user_store_division_id_seq START 10000 RESTART 10000;


/* ==================================================== 02 RESET SEQUENCE ====================================================== *
 *
 * Ripristina i sequence. Imposta il valore minimo di sequence a 10.000, per riservare gli id inferiori ai test
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RESET SEQUENCE
 * SCHEMA: 				CUST
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */
ALTER SEQUENCE cust.account_type_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.civil_status_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.civil_status_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_auth_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_auth_history_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_auth_ochannel_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_auth_tokens_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_card_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_card_replace_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_company_data_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_delegate_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_ext_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_ext_type_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_host_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_host_classification_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_host_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_processing_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.customer_service_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.dictionary_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.education_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.education_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.employment_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.employment_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.grant_operation_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.grant_operation_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.grant_permission_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.grant_role_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.grant_role_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.grant_role_user_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.shopping_detail_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.shopping_header_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.social_accounts_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.source_system_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE cust.source_system_nls_id_seq START 10000 RESTART 10000;


/* ==================================================== 03 RESET SEQUENCE ====================================================== *
 *
 * Ripristina i sequence. Imposta il valore minimo di sequence a 10.000, per riservare gli id inferiori ai test
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RESET SEQUENCE
 * SCHEMA: 				LOYALTY
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */
ALTER SEQUENCE loyalty.acm_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.acm_layout_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.acm_layout_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.acm_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.acm_type_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.acm_type_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.balance_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.card_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.card_batch_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.card_def_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.card_def_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.card_homing_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.catalog_checkout_error_log_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.channel_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.channel_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.cluster_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.cluster_head_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.cluster_head_cust_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.cluster_head_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.cluster_head_ochannel_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.cluster_head_ochannel_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.cluster_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.cluster_type_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.cluster_type_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.dictionary_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.grant_operation_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.grant_operation_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.grant_permission_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.grant_role_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.grant_role_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.grant_role_user_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.layout_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.layout_detail_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.layout_detail_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.layout_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.movement_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.movement_trans_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.param_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.param_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.param_ochannel_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.param_ochannel_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.reason_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.reason_acm_action_type_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.reason_acm_type_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.reason_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.reservation_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.reservation_gift_head_received_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.reservation_gift_itm_received_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.reservation_gift_status_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.reservation_itm_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.self_scanning_items_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.self_scanning_rules_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.self_scanning_rules_dtl_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.self_scanning_rules_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.self_scanning_service_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.self_scanning_service_detail_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.self_scanning_sessions_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE loyalty.self_scanning_totals_idsession_seq START 10000 RESTART 10000;


/* ==================================================== 04 RESET SEQUENCE ====================================================== *
 *
 * Ripristina i sequence. Imposta il valore minimo di sequence a 10.000, per riservare gli id inferiori ai test
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RESET SEQUENCE
 * SCHEMA: 				PROMOTION
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */
ALTER SEQUENCE promotion.action_type_id_seq         START 10000 RESTART 10000;
ALTER SEQUENCE promotion.campaign_id_seq            START 10000 RESTART 10000;
ALTER SEQUENCE promotion.campaign_detail_id_seq     START 10000 RESTART 10000;
ALTER SEQUENCE promotion.campaign_detail_division_id_seq  START 10000 RESTART 10000;
ALTER SEQUENCE promotion.campaign_detail_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE promotion.campaign_nls_id_seq        START 10000 RESTART 10000;
ALTER SEQUENCE promotion.campaign_type_id_seq       START 10000 RESTART 10000;
ALTER SEQUENCE promotion.campaign_type_nls_id_seq   START 10000 RESTART 10000;
ALTER SEQUENCE promotion.catalog_id_seq             START 10000 RESTART 10000;
ALTER SEQUENCE promotion.catalog_div_sal_net_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE promotion.catalog_gift_id_seq        START 10000 RESTART 10000;
ALTER SEQUENCE promotion.catalog_gift_itm_id_seq    START 10000 RESTART 10000;
ALTER SEQUENCE promotion.catalog_store_excl_id_seq  START 10000 RESTART 10000;
ALTER SEQUENCE promotion.dictionary_id_seq          START 10000 RESTART 10000;
ALTER SEQUENCE promotion.discount_type_id_seq       START 10000 RESTART 10000;
ALTER SEQUENCE promotion.discount_type_nls_id_seq   START 10000 RESTART 10000;
ALTER SEQUENCE promotion.gift_itm_promo_id_seq      START 10000 RESTART 10000;
ALTER SEQUENCE promotion.gift_template_id_seq       START 10000 RESTART 10000;
ALTER SEQUENCE promotion.grant_operation_id_seq     START 10000 RESTART 10000;
ALTER SEQUENCE promotion.grant_operation_nls_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE promotion.grant_permission_id_seq    START 10000 RESTART 10000;
ALTER SEQUENCE promotion.grant_role_id_seq          START 10000 RESTART 10000;
ALTER SEQUENCE promotion.grant_role_nls_id_seq      START 10000 RESTART 10000;
ALTER SEQUENCE promotion.grant_role_user_id_seq     START 10000 RESTART 10000;
ALTER SEQUENCE promotion.import_gift_detail_id_seq  START 10000 RESTART 10000;
ALTER SEQUENCE promotion.import_gift_head_id_seq    START 10000 RESTART 10000;
ALTER SEQUENCE promotion.layout_id_seq              START 10000 RESTART 10000;
ALTER SEQUENCE promotion.layout_detail_id_seq       START 10000 RESTART 10000;
ALTER SEQUENCE promotion.layout_detail_nls_id_seq   START 10000 RESTART 10000;
ALTER SEQUENCE promotion.logical_operator_id_seq    START 10000 RESTART 10000;
ALTER SEQUENCE promotion.message_id_seq             START 10000 RESTART 10000;
ALTER SEQUENCE promotion.message_type_id_seq        START 10000 RESTART 10000;
ALTER SEQUENCE promotion.offer_id_seq               START 10000 RESTART 10000;
ALTER SEQUENCE promotion.offer_classification_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE promotion.offer_nls_id_seq           START 10000 RESTART 10000;
ALTER SEQUENCE promotion.promo_acm_condition_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE promotion.promo_condition_id_seq     START 10000 RESTART 10000;
ALTER SEQUENCE promotion.promo_general_condition_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE promotion.promo_header_id_seq        START 10000 RESTART 10000;
ALTER SEQUENCE promotion.promo_header_classification_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE promotion.promo_header_destination_id_seq START 10000 RESTART 10000;
ALTER SEQUENCE promotion.promo_header_nls_id_seq    START 10000 RESTART 10000;
ALTER SEQUENCE promotion.promo_rule_id_seq          START 10000 RESTART 10000;
ALTER SEQUENCE promotion.promo_rule_item_id_seq     START 10000 RESTART 10000;
ALTER SEQUENCE promotion.template_id_seq            START 10000 RESTART 10000;
ALTER SEQUENCE promotion.template_nls_id_seq        START 10000 RESTART 10000;
ALTER SEQUENCE promotion.type_gift_id_seq           START 10000 RESTART 10000;
ALTER SEQUENCE promotion.wizard_id_seq              START 10000 RESTART 10000;
ALTER SEQUENCE promotion.wizard_nls_id_seq          START 10000 RESTART 10000;
ALTER SEQUENCE promotion.ochannel_user_id_seq 		START 10000 RESTART 10000;
ALTER SEQUENCE promotion.ochannel_privacy_id_seq 	START 10000 RESTART 10000;
ALTER SEQUENCE promotion.campaign_ochannel_id_seq 	START 10000 RESTART 10000;
ALTER SEQUENCE promotion.ochannel_id_seq 			START 10000 RESTART 10000;
ALTER SEQUENCE promotion.layout_message_id_seq      START 10000 RESTART 10000;

/* ===================================================== 05 REBUILD ======================================================= *
 *
 * Ripopola le tabelle fondamentali dello schema
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE FONDAMENTALI DELLO SCHEMA
 * SCHEMA: 				COMMON
 * REBUILDED TABLES:	language	currency		country					state		province				toponym
 * 						division	sales_network	division_sales_network	store		user_store_division		config_types	param param_nls
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */
-- REBUILD LANGUAGE
INSERT INTO common."language"
(id, iso_code, nls_code, "language", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'it-IT', 'it', 'Italian (Italy)', '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD CURRENCY
INSERT INTO common.currency
(id, iso_code, "name", simbol, "decimal", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'EUR', 'Euro', '�', 2, '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD COUNTRY
INSERT INTO common.country
(id, iso_code, "name", language_id, currency_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, iso_code_two)
VALUES(1, 'IT', 'ITALIA', 1, 1, '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL);

-- REBUILD STATE
INSERT INTO common.state
(id, code, country_id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, '1', 1, 'CAMPANIA', 'Campania', '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD PROVINCE
INSERT INTO common.province
(id, code, country_id, state_id, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'NA', 1, 1, 'Napoli', '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD TOPONYM
INSERT INTO common.toponym
(id, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'Via', '0', '0', '0', '2020-04-24 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD DIVISION
INSERT INTO common.division
(id, code, "name", description, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, '0', 'Divisione Annullata', 'Divisione Annullata', NULL, NULL, '1', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.division
(id, code, "name", description, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, '1', 'PdV Iper', 'PdV Ipermercati', NULL, NULL, '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.division
(id, code, "name", description, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, '2', 'PdV Diretti', 'PdV affiliati', NULL, NULL, '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD SALES NETWORK
INSERT INTO common.sales_network
(id, code, "name", description, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(0, '0', 'Rete Annullata', 'Rete Annullata', 'nologo', 'http://logourl.test/test.png', '1', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO common.sales_network
(id, code, "name", description, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(1, '1', 'LeonePdV', 'Leone PdV', 'nologo', 'http://logourl.test/test.png', '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO common.sales_network
(id, code, "name", description, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(2, '2', 'GranZebra Iper', 'GranZebra Iper', 'nologo', 'http://logourl.test/test.png', '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO common.sales_network
(id, code, "name", description, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(3, '3', 'TestElefante', 'ElefanteArrabbiato', 'nologo', 'http://logourl.test/test.png', '0', '0', '0', '2021-09-27 00:00:00.000', NULL, NULL, 50, NULL, NULL, 1);

-- REBUILD DIVISION SALES NETWORK
INSERT INTO common.division_sales_network
(id, division_id, sales_network_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 0, 0, '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.division_sales_network
(id, division_id, sales_network_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 2, 1, '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.division_sales_network
(id, division_id, sales_network_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 1, 2, '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.division_sales_network
(id, division_id, sales_network_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 1, 3, '0', '0', '0', '2021-09-27 00:00:00.000', NULL, NULL, 50, NULL, NULL);
INSERT INTO common.division_sales_network
(id, division_id, sales_network_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 2, 2, '0', '0', '0', '2021-09-27 00:00:00.000', NULL, NULL, 50, NULL, NULL);


-- REBUILD STORE
INSERT INTO common.store
(id, code, host_code, date_start, date_end, "name", short_name, description, division_sales_network_id, channel_loyalty_id, country_id, state_id, province_id, toponym_id, city, zip_code, address_number, address_1, address_2, telephone_1, telephone_2, telephone_3, fax, email, contact_1, contact_2, note_1, note_2, note_3, longitude, latitude, altitude, ip_address, flg_graphical_printer, front_end_id, promotion_id, customer_id, loyalty_id, analitics_id, backoffice_id, couponing_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_campaign_candidate, ext_flyer_url)
VALUES(0, 'IT00', 'IT00', '1970-01-01', '2099-12-31', 'Leone annullato', 'Leone annullato', 'Leone annullato', 1, 1, 1, 1, 1, 1, 'NAPOLI', '80125', NULL, 'Viale Kenya, 97', NULL, '081 6739 1066', NULL, NULL, '800 558 655', 'leonenull@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL, '1', NULL);
INSERT INTO common.store
(id, code, host_code, date_start, date_end, "name", short_name, description, division_sales_network_id, channel_loyalty_id, country_id, state_id, province_id, toponym_id, city, zip_code, address_number, address_1, address_2, telephone_1, telephone_2, telephone_3, fax, email, contact_1, contact_2, note_1, note_2, note_3, longitude, latitude, altitude, ip_address, flg_graphical_printer, front_end_id, promotion_id, customer_id, loyalty_id, analitics_id, backoffice_id, couponing_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_campaign_candidate, ext_flyer_url)
VALUES(1, 'IT01', 'IT01', '1970-01-01', '2099-12-31', 'Leone Napoli 2 Dir', 'Leone Napoli 2 Dir', 'Leone Napoli 2 Dir', 1, 1, 1, 1, 1, 1, 'NAPOLI', '80125', NULL, 'Viale Eritrea, 75', NULL, '081 8639 1066', NULL, NULL, '800 558 655', 'leone@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL, '1', NULL);
INSERT INTO common.store
(id, code, host_code, date_start, date_end, "name", short_name, description, division_sales_network_id, channel_loyalty_id, country_id, state_id, province_id, toponym_id, city, zip_code, address_number, address_1, address_2, telephone_1, telephone_2, telephone_3, fax, email, contact_1, contact_2, note_1, note_2, note_3, longitude, latitude, altitude, ip_address, flg_graphical_printer, front_end_id, promotion_id, customer_id, loyalty_id, analitics_id, backoffice_id, couponing_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_campaign_candidate, ext_flyer_url)
VALUES(2, 'IT02', 'IT02', '2017-01-01', '2099-01-01', 'GranZebra Napoli 1 Iper', 'GranZebra Napoli 1 Iper', 'GranZebra Napoli 1 Iper', 2, 2, 1, 1, 1, 1, 'NAPOLI', '80125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zebra@mailinator.com', 'Frodo', NULL, 'zebra dejuventinizzata', NULL, NULL, 40.810505000000, 14.163934000000, NULL, NULL, '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '2020-04-23 18:22:05.000', NULL, NULL, 1, NULL, NULL, '1', NULL);
INSERT INTO common.store
(id, code, host_code, date_start, date_end, "name", short_name, description, division_sales_network_id, channel_loyalty_id, country_id, state_id, province_id, toponym_id, city, zip_code, address_number, address_1, address_2, telephone_1, telephone_2, telephone_3, fax, email, contact_1, contact_2, note_1, note_2, note_3, longitude, latitude, altitude, ip_address, flg_graphical_printer, front_end_id, promotion_id, customer_id, loyalty_id, analitics_id, backoffice_id, couponing_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_campaign_candidate, ext_flyer_url)
VALUES(3, 'IT03', 'IT03', '2017-01-01', '2099-01-01', 'GranZebra Napoli 3 Iper', 'GranZebra Napoli 3 Iper', 'GranZebra Napoli 3 Iper', 2, 2, 1, 1, 1, 1, 'NAPOLI', '80125', NULL, 'Via Roma 51', NULL, NULL, NULL, NULL, NULL, 'zebra@mailinator.com', 'Frodo', NULL, 'zebra dejuventinizzata', NULL, NULL, 40.810505000000, 14.163934000000, NULL, NULL, '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '2020-04-23 18:22:05.000', NULL, NULL, 1, NULL, NULL, '1', NULL);


-- REBUILD USER STORE DIVISION
INSERT INTO common.user_store_division
(id, user_id, division_sales_network_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, "scope", operation)
VALUES(1, 50, 1, 1, '0', '0', '0', '2021-01-28 00:00:00.000', NULL, NULL, 1, NULL, NULL, 'CATALOG', NULL);
INSERT INTO common.user_store_division
(id, user_id, division_sales_network_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, "scope", operation)
VALUES(2, 50, 2, 2, '0', '0', '0', '2021-09-09 10:00:00.000', NULL, NULL, 50, NULL, NULL, 'LOYALTY', NULL);
INSERT INTO common.user_store_division
(id, user_id, division_sales_network_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, "scope", operation)
VALUES(3, 50, 3, 10000, '0', '0', '0', '2021-09-27 14:53:10.889', NULL, NULL, 50, NULL, NULL, 'LOYALTY', NULL);
INSERT INTO common.user_store_division
(id, user_id, division_sales_network_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, "scope", operation)
VALUES(4, 50, 4, 10001, '0', '0', '0', '2021-09-27 00:00:00.000', NULL, NULL, 50, NULL, NULL, 'LOYALTY', NULL);



-- REBUILD CONFIG TYPES
INSERT INTO common.config_types
(id, "key", "schema", flg_state, form_schema, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'key annullata', NULL, '1', NULL, '0', '0', '2021-02-25 15:21:14.777', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.config_types
(id, "key", "schema", flg_state, form_schema, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'customer-mandatory', NULL, '0', NULL, '0', '0', '2021-02-25 15:21:14.777', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.config_types
(id, "key", "schema", flg_state, form_schema, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 'donapunti', '{
    "$schema": "http://json-schema.org/draft-07/schema",
    "$id": "http://example.com/example.json",
    "type": "object",
    "title": "The root schema",
    "description": "The root schema comprises the entire JSON document.",
    "default": {},
    "examples": [
        {
            "codiceFiltroPunti": "PUNTIDONATI",
            "nome": "Dona Punti 2020 ",
            "dataFine": "2021-10-10",
            "dataInizio": "2020-10-10",
            "regolamento": "<br /><b>REGALA i tuoi punti a chi vuoi tu!</b><p>Se sei titolare di una Carta Club Famila puoi trasferire i tuoi punti ad un''''�altra carta Club Famila tramite la APP FAMILA Nordest</p><br /><b>QUANDO REGALARE I TUOI PUNTI</b><p>Puoi trasferire i punti dalla tua carta club Famila alla carta Club Famila di un altro titolare esclusivamente durante il periodo in cui � attiva la raccolta punti elettronici.</p><p>In ogni momento puoi consultare lo storico dei punti REGALATI o RICEVUTI</p><br /><b>COME REGALARE I TUOI PUNTI</b><p>Il trasferimento dei punti dalla tua carta club Famila alla carta Club Famila di un altro titolare � possibile esclusivamente tramite APP.</p><p>Il trasferimento punti � un''''�operazione irreversibile: presta molta attenzione nel digitare il codice della carta Club Famila sulla quale trasferire i punti.</p><p>Digita o scansiona il codice della carta Club Famila cui vuoi regalare i punti ed inserisci l''''�importo dei punti che vuoi regalare.</p><br /><b>QUANTI PUNTI PUOI REGALARE</b><br />Puoi trasferire multipli di 5 punti, con una soglia minima di 5",
            "multiploDonabile": 5
        }
    ],
    "required": [
        "codiceFiltroPunti",
        "nome",
        "dataFine",
        "dataInizio",
        "regolamento",
        "multiploDonabile"
    ],
    "properties": {
        "codiceFiltroPunti": {
            "$id": "#/properties/codiceFiltroPunti",
            "type": "string",
            "title": "The codiceFiltroPunti schema",
            "description": "An explanation about the purpose of this instance.",
            "default": "",
            "examples": [
                "PUNTIDONATI"
            ]
        },
        "nome": {
            "$id": "#/properties/nome",
            "type": "string",
            "title": "The nome schema",
            "description": "An explanation about the purpose of this instance.",
            "default": "",
            "examples": [
                "Dona Punti 2020 "
            ]
        },
        "dataFine": {
            "$id": "#/properties/dataFine",
            "type": "string",
            "title": "The dataFine schema",
            "description": "An explanation about the purpose of this instance.",
            "default": "",
            "examples": [
                "2021-10-10"
            ]
        },
        "dataInizio": {
            "$id": "#/properties/dataInizio",
            "type": "string",
            "title": "The dataInizio schema",
            "description": "An explanation about the purpose of this instance.",
            "default": "",
            "examples": [
                "2020-10-10"
            ]
        },
        "regolamento": {
            "$id": "#/properties/regolamento",
            "type": "string",
            "title": "The regolamento schema",
            "description": "An explanation about the purpose of this instance.",
            "default": "",
            "examples": [
                "<br /><b>REGALA i tuoi punti a chi vuoi tu!</b><p>Se sei titolare di una Carta Club Famila puoi trasferire i tuoi punti ad un''''�altra carta Club Famila tramite la APP FAMILA Nordest</p><br /><b>QUANDO REGALARE I TUOI PUNTI</b><p>Puoi trasferire i punti dalla tua carta club Famila alla carta Club Famila di un altro titolare esclusivamente durante il periodo in cui � attiva la raccolta punti elettronici.</p><p>In ogni momento puoi consultare lo storico dei punti REGALATI o RICEVUTI</p><br /><b>COME REGALARE I TUOI PUNTI</b><p>Il trasferimento dei punti dalla tua carta club Famila alla carta Club Famila di un altro titolare � possibile esclusivamente tramite APP.</p><p>Il trasferimento punti � un''''�operazione irreversibile: presta molta attenzione nel digitare il codice della carta Club Famila sulla quale trasferire i punti.</p><p>Digita o scansiona il codice della carta Club Famila cui vuoi regalare i punti ed inserisci l''''�importo dei punti che vuoi regalare.</p><br /><b>QUANTI PUNTI PUOI REGALARE</b><br />Puoi trasferire multipli di 5 punti, con una soglia minima di 5"
            ]
        },
        "multiploDonabile": {
            "$id": "#/properties/multiploDonabile",
            "type": "integer",
            "title": "The multiploDonabile schema",
            "description": "An explanation about the purpose of this instance.",
            "default": 0,
            "examples": [
                5
            ]
        }
    },
    "additionalProperties": true
}', '0', '{
     "codiceFiltroPunti": {
        "description": "Codice filtro punti",
        "type": "string",
        "minLength": 1
      },
      "nome": {
        "description": "Nome",
        "type": "string",
        "minLength": 1
      },
      "dataFine": {
        "description": "Data Fine",
        "type": "string",
        "widget": "calendar"
      },
      "dataInizio": {
        "description": "Data Inizio",
        "type": "string",
        "widget": "calendar"
      },
      "regolamento": {
        "description": "Regolamento",
        "type": "string",
        "widget": "textarea"
      },
      "multiploDonabile": {
        "description": "Multiplo donabile",
        "type": "string",
        "widget": "number"
      }
    }', '0', '0', '2021-02-25 15:21:14.777', NULL, NULL, 1, NULL, NULL);

-- REBUILD PARAM
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(3, '1', 1, 'ww', '0', '0', '0', '2017-11-17 22:55:02.361', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(103, 'ParamGroup', 1, 'Param Description of Param Group', '0', '0', '0', '2018-01-11 14:26:11.512', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(42, 'AccumulatorCsState', 0, 'Valido', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(43, 'AccumulatorCsState', 1, 'Annullato', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(44, 'AccumulatorCsState', 2, 'Scaduto', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(45, 'AccumulatorCsState', 3, 'Deployed', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(46, 'AccumulatorCsState', 4, 'Completare', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(51, 'AcmOperatorType', 0, 'N/A', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(52, 'AcmOperatorType', 1, 'Minore', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(53, 'AcmOperatorType', 2, 'Maggiore', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(54, 'AcmOperatorType', 3, 'Uguale', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(55, 'AcmOperatorType', 4, 'Minore o Uguale', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(56, 'AcmOperatorType', 5, 'Maggiore o Uguale', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(61, 'AcmOperTrigger', 0, 'N/A', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(62, 'AcmOperTrigger', 1, 'Switch Off Response', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(63, 'AcmOperTrigger', 2, 'Force Defaults', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, 'DEF', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(71, 'CardType', 1, 'Carta Fedelta', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(72, 'CardType', 2, 'Carta Esterna', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(81, 'DayOfWeek', 0, 'Domenica', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(82, 'DayOfWeek', 1, 'Luned�', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(83, 'DayOfWeek', 2, 'Marted�', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(84, 'DayOfWeek', 3, 'Mercoled�', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(11, 'ReasonType', 100, 'Bollini', '0', '0', '0', '2018-01-12 16:45:07.863', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(12, 'ReasonType', 200, 'Bollini Nazionali', '0', '0', '0', '2018-01-12 16:45:07.863', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(13, 'ReasonType', 201, 'EAN Omaggio', '0', '0', '0', '2018-01-12 16:45:07.863', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(14, 'ReasonType', 202, 'EAN Omaggio Nazionali', '0', '0', '0', '2018-01-12 16:46:19.875', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(15, 'ReasonType', 400, 'Valore Spesa', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(32, 'ReasonSign', 0, '+', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, '+', NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(33, 'ReasonSign', 1, '-', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, '-', NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(34, 'ReasonSign', 4, 'N', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, '+', NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(35, 'ReasonSign', 6, '+ (Calcolo invertito)', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, '+', NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(36, 'ReasonSign', 7, '- (Calcolo invertito)', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, '-', NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(102, 'ManualMovements', 5, 'Other', '1', '0', '0', '2018-01-10 10:11:29.009', NULL, '2018-01-10 10:11:29.147', 0, NULL, NULL, '3.0', 'OTHER', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(85, 'DayOfWeek', 4, 'Gioved�', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(86, 'DayOfWeek', 5, 'Venerd�', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(87, 'DayOfWeek', 6, 'Sabato', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(88, 'DayOfWeek', 7, 'Domenica', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(91, 'AcmResetTrigger', 1, 'Giornalmente', '0', '0', '0', '2018-01-08 09:59:29.898', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(92, 'AcmResetTrigger', 2, 'Settimanalmente', '0', '0', '0', '2018-01-08 09:59:29.898', '2018-01-11 16:35:29.161', NULL, 1024, NULL, NULL, NULL, 'WEEK', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(93, 'AcmResetTrigger', 3, 'Mensilmente', '0', '0', '0', '2018-01-08 09:59:29.898', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(16, 'ReasonType', 500, 'Rettifica Premio', '0', '0', '0', '2018-03-21 08:05:50.549', NULL, NULL, 1024, NULL, NULL, NULL, 'RETTIFICAPREMIO', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(100, 'ManualMovements', 1, 'DefaultTermId', '0', '0', '0', '2018-03-21 08:06:28.448', NULL, NULL, 1024, NULL, NULL, '1.0', 'TERMID', 0, NULL);
INSERT INTO common.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(101, 'ManualMovements', 3, 'ActionType', '0', '0', '0', '2018-03-21 08:06:28.448', NULL, NULL, 1024, NULL, NULL, '2.0', 'ACTIONTYPE', 0, NULL);




/* ===================================================== 06 REBUILD ======================================================= *
 *
 * Ripopola le tabelle fondamentali dello schema
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE FONDAMENTALI DELLO SCHEMA
 * SCHEMA: 				CUST
 * REBUILDED TABLES:	account_type	civil_status		dictionary		education		employment		source_system
 * EMPTY TABLES:		dictionary
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD ACCOUNT TYPE
INSERT INTO cust.account_type
(id, host_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'A', 'Annullato', '1', '0', '0', '2018-01-01 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.account_type
(id, host_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'F', 'Facebook', '0', '0', '0', '2018-01-01 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.account_type
(id, host_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 'M', 'Mail', '0', '0', '0', '2018-01-01 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.account_type
(id, host_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 'E', 'EMail', '0', '0', '0', '2018-01-01 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD CIVIL STATUS
INSERT INTO cust.civil_status
(id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'ANNULLATO', 'Stato Civile Annullato ', '1', '0', '0', '2020-06-28 12:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.civil_status
(id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'SINGLE', 'Single', '0', '0', '0', '2020-06-28 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD DICTIONARY
-- TO DO

-- REBUILD EDUCATION
INSERT INTO cust.education
(id, title, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'Dott. annullato', 'Laurea magistrale (annullato)', '1', '0', '0', '2020-06-28 12:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.education
(id, title, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'Dott.', 'Laurea magistrale', '0', '0', '0', '2020-06-28 12:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD EMPLOYMENT
INSERT INTO cust.employment
(id, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'Impiegato/a (annullato/a)', '1', '0', '0', '2018-05-31 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.employment
(id, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'Impiegato/a', '0', '0', '0', '2018-05-31 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD SOURCE SYSTEM
INSERT INTO cust.source_system
(id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, host_id)
VALUES(0, 'Leone Annullato', 'Leone Annullato', '1', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL, '000');
INSERT INTO cust.source_system
(id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, host_id)
VALUES(1, 'Leone Affiliati', 'Leone Affiliati', '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL, '001');
INSERT INTO cust.source_system
(id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, host_id)
VALUES(2, 'IperZebra', 'Zebra Iper', '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL, '002');


/* ===================================================== 07 REBUILD ======================================================= *
 *
 * Ripopola le tabelle fondamentali dello schema
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE FONDAMENTALI DELLO SCHEMA
 * SCHEMA: 				LOYALTY
 * REBUILDED TABLES:	param		reason				channel			acm_type 			acm
 * 						layout		layout_detail		acm_layout		reason_acm_type		reason_acm_action_type
 * EMPTY TABLES:		reason_acm_action_type
 * PARTICOLARITA':		elimina e reinserisce in loyalty.grant_role un record con id 0 utilizzato solo nel testo automatico IntelliJ GET REASON LIST BY ROLE
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- INTEGRATE LOYALTY GRANT ROLE
DELETE FROM loyalty.grant_role WHERE id=0;
INSERT INTO loyalty.grant_role
(id, descr, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, "type")
VALUES(0, 'Role for Automatic Test', '0', '0', '0', '2017-05-16 00:00:00.000', NULL, NULL, 0, NULL, NULL, NULL);

-- REBUILD CHANNEL
INSERT INTO loyalty.channel
(id, channel_code, description, default_store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'PANGOLINO', 'Channel Annullato', 2, '1', '0', '0', '2020-04-27 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.channel
(id, channel_code, description, default_store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'LEONE', 'Channel Leone', 1, '0', '0', '0', '2020-04-27 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.channel
(id, channel_code, description, default_store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 'ZEBRA', 'Channel Zebra', 2, '0', '0', '0', '2020-04-27 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD PARAM
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(71, 'CardType', 1, 'Carta Fedelta', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, 'I', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(72, 'CardType', 2, 'Carta Esterna', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, 'E', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414118, 'KWallet-ValassisCouponGallery', 1, 'DataSynSrc per ValassisCouponGallery in KWallet', '0', '0', '0', '2020-10-02 16:03:00.000', NULL, NULL, 0, NULL, NULL, 'scinZNS6zAk%3D', NULL, NULL, 'KWALLET.DATA.SYNC.SRC.001');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(103, 'ParamGroup', 1, 'Param Description of Param Group', '0', '0', '0', '2018-01-11 14:26:11.512', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2601, 'TouchPointType', 1, 'FrontEnd', '0', '0', '0', '2019-06-04 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'PROMO.OCHANNEL_TYPE.A');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(32, 'ReasonSign', 0, '+', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1024, NULL, NULL, '+', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(33, 'ReasonSign', 1, '-', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1024, NULL, NULL, '-', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414120, 'KWallet-ValassisCouponGallery', 2, 'DataSynSrc per ValassisCouponGallery in KWallet', '0', '0', '0', '2020-10-02 16:04:00.000', NULL, NULL, 0, NULL, NULL, 'EiKy1%2BI5AOY%3D', NULL, NULL, 'KWALLET.DATA.SYNC.SRC.003');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2602, 'TouchPointType', 2, 'Type B', '0', '0', '0', '2019-06-04 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'PROMO.OCHANNEL_TYPE.B');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2603, 'TouchPointPrivacyAction', 1, 'Action A', '0', '0', '0', '2019-06-04 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'PROMO.OCHANNEL__PRIVACY.ACTION_A');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(42, 'AccumulatorCsState', 0, 'Valido', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(43, 'AccumulatorCsState', 1, 'Annullato', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(44, 'AccumulatorCsState', 2, 'Scaduto', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(45, 'AccumulatorCsState', 3, 'Deployed', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(46, 'AccumulatorCsState', 4, 'Completare', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2611, 'LayoutDetailRowPosition', 1, 'Position A', '0', '0', '0', '2019-06-12 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'LAYOUT_DETAIL.ROW_POSITION_A', NULL, 'LAYOUT_DETAIL.ROW_POSITION_A');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2612, 'LayoutDetailRowPosition', 2, 'Position B', '0', '0', '0', '2019-06-12 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'LAYOUT_DETAIL.ROW_POSITION_B', NULL, 'LAYOUT_DETAIL.ROW_POSITION_B');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2604, 'TouchPointPrivacyAction', 2, 'Action B', '0', '0', '0', '2019-06-04 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'PROMO.OCHANNEL__PRIVACY.ACTION_B');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(27, 'DefaultStoreId', 1, 'Default store id', '0', '0', '0', '2019-06-11 15:23:45.334', NULL, NULL, 1, NULL, NULL, '0', 'CARDSTORE.DEFAULT', 0, 'CARDSTORE.DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2605, 'LayoutPrintType', 1, 'Layout A', '0', '0', '0', '2019-06-12 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'LAYOUT.PRINT_TYPE_A', NULL, 'LAYOUT.PRINT_TYPE.A');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2606, 'LayoutPrintType', 2, 'Layout B', '0', '0', '0', '2019-06-12 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'LAYOUT.PRINT_TYPE_B', NULL, 'LAYOUT.PRINT_TYPE.B');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2607, 'LayoutTillType', 1, 'Till A', '0', '0', '0', '2019-06-12 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'LAYOUT.TILL_TYPE_A', NULL, 'LAYOUT.TILL_TYPE_A');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2608, 'LayoutTillType', 2, 'Till B', '0', '0', '0', '2019-06-12 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'LAYOUT.TILL_TYPE_B', NULL, 'LAYOUT.TILL_TYPE_B');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2609, 'LayoutTemplate', 1, 'Template A', '0', '0', '0', '2019-06-12 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'LAYOUT.TEMPLATE_A', NULL, 'LAYOUT.TEMPLATE_A');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2610, 'LayoutTemplate', 2, 'Template B', '0', '0', '0', '2019-06-12 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'LAYOUT.TEMPLATE_B', NULL, 'LAYOUT.TEMPLATE_B');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2614, 'MessageBarCodeType', 1, 'BarCode Type A', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'MESSAGE.BARCODE_TYPE_A', NULL, 'MESSAGE.BARCODE_TYPE_A');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(102, 'ManualMovements', 5, 'Other', '1', '0', '0', '2018-01-10 10:11:29.009', NULL, '2018-01-10 10:11:29.147', 0, NULL, NULL, '3.0', 'OTHER', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(2613, 'MessageBarCodeType', 2, 'BarCode Type B', '0', '0', '0', '0201-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, NULL, 'MESSAGE.BARCODE_TYPE_B', NULL, 'MESSAGE.BARCODE_TYPE_B');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(28, 'ParamTest', 200, 'Param Test Item', '0', '0', '0', '2019-07-02 16:41:02.085', NULL, NULL, 51, NULL, NULL, 'PCODE', 'PFCODE', 0, 'PKCODE');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(29, 'TEST PARAM GROUP', 1, 'DESCRIZIONE TEST PARAM', '0', '0', '0', '2019-07-15 14:08:51.517', '2019-07-15 14:09:20.966', NULL, 50, 50, NULL, 'TEST PARAM', NULL, 0, 'KEY_TEST_PARAM');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(11, 'ReasonType', 100, 'Bollini', '0', '0', '0', '2018-01-12 16:45:07.000', NULL, NULL, 1024, NULL, NULL, 'B', 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(12, 'ReasonType', 200, 'Bollini Nazionali', '0', '0', '0', '2018-01-12 16:45:07.000', NULL, NULL, 1024, NULL, NULL, 'B', 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(13, 'ReasonType', 201, 'EAN Omaggio', '0', '0', '0', '2018-01-12 16:45:07.000', NULL, NULL, 1024, NULL, NULL, 'E', 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(14, 'ReasonType', 202, 'EAN Omaggio Nazionali', '0', '0', '0', '2018-01-12 16:46:19.000', NULL, NULL, 1024, NULL, NULL, 'E', 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(15, 'ReasonType', 400, 'Valore Spesa', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1024, NULL, NULL, 'J', 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(3, '1', 1, 'parametroServlet', '0', '0', '0', '2017-11-17 22:55:02.361', '2019-08-30 11:14:49.800', NULL, 1, 11, NULL, 'A1234', NULL, 1, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(37, 'AcmDefaultKloy', 1, 'Id accumulatore kloy', '0', '0', '0', '2019-11-19 15:43:31.979', NULL, NULL, 1, NULL, NULL, '4', 'ACM_DEFAULT', NULL, 'ACM_DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(16, 'ReasonType', 500, 'Rettifica Premio', '0', '0', '0', '2018-03-21 08:05:50.549', NULL, NULL, 1024, NULL, NULL, NULL, 'RETTIFICAPREMIO', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(17, 'PointTransfer', 1, 'Point transfer source reason', '0', '0', '0', '2019-04-16 00:00:00.000', NULL, NULL, 60, NULL, NULL, '1', NULL, NULL, 'POINTTRANSFER.REASON.SRC');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(22, 'BarcodeType', 2, 'Tipo di Barcode 2 - EAN 8', '0', '0', '0', '2019-05-31 12:27:56.513', '2020-03-25 11:46:48.376', NULL, 66, 1, NULL, 'C', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(51, 'AcmOperatorType', 0, 'N/A', '0', '0', '0', '2017-12-27 09:52:04.303', '2020-03-30 16:58:31.960', NULL, 1024, 1, NULL, '0', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(19, 'BarcodeType', 0, 'Tipo di Barcode 1 - EAN 13', '0', '0', '0', '2019-05-31 12:27:01.709', '2020-03-25 11:44:48.469', NULL, 66, 1, NULL, 'C', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(52, 'AcmOperatorType', 1, 'Minore', '0', '0', '0', '2017-12-27 09:52:04.303', '2020-03-30 16:59:19.357', NULL, 1024, 1, NULL, '1', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(56, 'AcmOperatorType', 5, 'Maggiore o Uguale', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, '5', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(55, 'AcmOperatorType', 4, 'Minore o Uguale', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, '4', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(54, 'AcmOperatorType', 3, 'Uguale', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, '3', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(53, 'AcmOperatorType', 2, 'Maggiore', '0', '0', '0', '2017-12-27 09:52:04.303', NULL, NULL, 1024, NULL, NULL, '2', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(61, 'AcmOperTrigger', 0, 'N/A', '0', '0', '0', '2017-12-27 09:52:04.303', '2020-03-30 17:53:05.447', NULL, 1024, 1, NULL, '0', 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(63, 'AcmOperTrigger', 2, 'Force Defaults', '0', '0', '0', '2017-12-27 09:52:04.303', '2020-03-30 17:53:49.113', NULL, 1024, 1, NULL, '2', 'DEF', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(91, 'AcmResetTrigger', 1, 'Giornalmente', '0', '0', '0', '2018-01-08 09:59:29.898', '2020-04-06 09:58:24.767', NULL, 1024, 1, NULL, '0', 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(92, 'AcmResetTrigger', 2, 'Settimanalmente', '0', '0', '0', '2018-01-08 09:59:29.898', '2020-04-06 09:58:49.503', NULL, 1024, 1, NULL, '1', 'WEEK', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(93, 'AcmResetTrigger', 3, 'Mensilmente', '0', '0', '0', '2018-01-08 09:59:29.898', '2020-04-06 09:59:06.026', NULL, 1024, 1, NULL, '2', 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(34, 'ReasonSign', 4, 'Nessuna Operazione (N)', '0', '0', '0', '2017-12-27 09:52:04.000', '2020-04-06 17:00:10.264', NULL, 1024, 1, NULL, 'N', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(81, 'DayOfWeek', 0, 'Domenica', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, ' 1', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(5, 'AnalyticType', 2, 'Analytic 2', '0', '0', '0', '2018-08-09 12:04:09.585', NULL, NULL, 98, NULL, NULL, '2', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(4, 'AnalyticType', 1, 'Analytic 1', '0', '0', '0', '2018-08-09 12:03:33.970', '2018-08-09 12:04:25.725', NULL, 98, 98, NULL, '1', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414110, 'Setup', 1, 'External System Setup', '0', '0', '0', '2018-07-31 10:40:07.000', NULL, NULL, 2048, NULL, NULL, 'VSLP.MAIORANA', NULL, 0, 'CUSTOM.KEY.TAG');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(6, 'BackOfficeType', 1, 'BackOffice 1', '0', '0', '0', '2018-08-09 12:05:26.961', NULL, NULL, 98, NULL, NULL, '1', '', 0, 'TEST');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(7, 'BackOfficeType', 2, 'BackOffice 2', '0', '0', '0', '2018-08-09 12:05:52.974', NULL, NULL, 98, NULL, NULL, '2', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(8, 'FrontEndType', 1, 'FrontEnd 1', '0', '0', '0', '2018-08-09 12:06:24.401', NULL, NULL, 98, NULL, NULL, '1', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(9, 'FrontEndType', 2, 'FrontEnd 2', '0', '0', '0', '2018-08-09 12:06:47.962', NULL, NULL, 98, NULL, NULL, '2', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(23, 'BalanceType', 1, 'Tipo Bilancio Generato 1', '0', '0', '0', '2019-05-31 12:30:11.526', NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(24, 'BalanceType', 2, 'Tipo di Bilancio Generato 2', '0', '0', '0', '2019-05-31 12:30:35.374', NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(10, 'LoyaltyType', 1, 'Loyalty 1', '0', '0', '0', '2018-08-09 12:15:15.921', '2018-08-09 12:16:44.678', NULL, 98, 98, NULL, '1', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(25, 'BudgetType', 1, 'Tipo di Budget 1', '0', '0', '0', '2019-05-31 12:31:06.508', NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(26, 'BudgetType', 2, 'Tipo di Budget 2', '0', '0', '0', '2019-05-31 12:31:27.984', NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(30, 'TEST PARAM GROUP', 2, 'DESCRIZIONE TEST', '0', '0', '0', '2019-07-15 14:21:45.304', '2019-07-15 14:22:14.900', NULL, 50, 50, NULL, 'TEST PARAM', NULL, 0, 'TEST_PARAM_KEY_2');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(38, 'Channel default', 1, 'Channel default', '0', '0', '0', '2019-11-19 15:45:32.093', NULL, NULL, 1, NULL, NULL, '12', 'CHANNEL_DEFAULT', 0, 'CHANNEL_DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414116, 'ReasonType', 501, 'VSLP Loyalty', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414101, 'Balance', 1, 'Balanced ACM default', '0', '0', '0', '2018-01-11 14:26:11.000', NULL, NULL, 2048, NULL, NULL, '4096', 'ACMVSLP', NULL, 'ACMVSLP');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414102, 'Balance', 2, 'Balanced Channel default', '0', '0', '0', '2018-01-11 14:26:11.000', NULL, NULL, 2048, NULL, NULL, '4096', 'CHANNELVSLP', NULL, 'CHANNELVSLP');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414103, 'Card', 1, 'Default Batch ID', '0', '0', '0', '2018-03-21 08:06:28.000', NULL, NULL, 2048, NULL, NULL, '141414', 'CARDBATCH.DEFAULT', 0, 'CARDBATCH.DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414104, 'Card', 3, 'Default Type Def', '0', '0', '0', '2018-03-21 08:06:28.000', NULL, NULL, 2048, NULL, NULL, '71', 'CARDTYPE.DEFAULT', 0, 'CARDTYPE.DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414105, 'Card', 2, 'Default Card Definition', '0', '0', '0', '2018-03-21 08:06:28.000', NULL, NULL, 2048, NULL, NULL, '111111', 'CARDDEF.DEFAULT', 0, 'CARDDEF.DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414106, 'Card', 4, 'Default Type Def', '0', '0', '0', '2018-03-21 08:06:28.000', NULL, NULL, 2048, NULL, NULL, '444441', 'CHANNEL.DEFAULT', 0, 'CHANNEL.DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414107, 'Card', 5, 'Default Reason', '0', '0', '0', '2018-03-21 08:06:28.000', NULL, NULL, 2048, NULL, NULL, '212121', 'REASON.DEFAULT', 0, 'REASON.DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414108, 'Card', 6, 'Default Reason Substitute', '0', '0', '0', '2018-03-21 08:06:28.000', NULL, NULL, 2048, NULL, NULL, '212122', 'CARD.SUBSTITUTE.REASON', 0, 'CARD.SUBSTITUTE.REASON');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(88, 'DayOfWeek', 7, 'Domenica', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(100, 'ManualMovements', 1, 'DefaultTermId', '0', '0', '0', '2018-03-21 08:06:28.448', NULL, NULL, 1024, NULL, NULL, '1', 'TERMID', 0, 'MOVEMENT.TERMID');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(101, 'ManualMovements', 3, 'ActionType', '0', '0', '0', '2018-03-21 08:06:28.448', NULL, NULL, 1024, NULL, NULL, '2', 'ACTIONTYPE', 0, 'MOVEMENT.ACTIONTYPE');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(18, 'PointTransfer', 2, 'Point transfer destination reason', '0', '0', '0', '2019-04-16 00:00:00.000', NULL, NULL, 60, NULL, NULL, '2', NULL, NULL, 'POINTTRANSFER.REASON.DEST');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(39, 'AccumulatorTypeRetrieve', 0, 'Retrieve Tipo Acc, 010 Spicciolo, Carta I', '0', '0', '0', '2020-03-28 09:57:50.722', '2020-03-28 17:19:44.051', NULL, 1, 1, NULL, '1,2', 'cardType$I;loyChanCode$010', 1025, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(40, 'AccumulatorTypeUpdate', 0, 'Update Tipo Acc, 010 Spicciolo, Carta I', '0', '0', '0', '2020-03-28 12:04:41.078', '2020-03-28 17:20:19.704', NULL, 1, 1, NULL, '1,2', 'cardType$I;loyChanCode$010', 1024, ' chiave univoca.... division ID nullable ma obbligatorio in inserimento');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(62, 'AcmOperTrigger', 1, 'Switch Off Response', '0', '0', '0', '2017-12-27 09:52:04.303', '2020-03-30 17:53:36.033', NULL, 1024, 1, NULL, '1', 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(105, 'AccumulatorType', 2, 'Iniziativa Bruciata', '0', '0', '0', '2020-03-31 13:19:46.065', NULL, NULL, 1, NULL, NULL, '2', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(106, 'AccumulatorType', 3, 'Accumulo valore', '0', '0', '0', '2020-03-31 13:19:46.065', NULL, NULL, 1, NULL, NULL, '3', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(107, 'AccumulatorType', 4, 'Accumulo frequenza', '0', '0', '0', '2020-03-31 13:19:46.065', NULL, NULL, 1, NULL, NULL, '4', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(108, 'AccumulatorType', 5, 'Fruizione fatturato e frequenza', '0', '0', '0', '2020-03-31 13:19:46.065', NULL, NULL, 1, NULL, NULL, '5', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(109, 'AccumulatorType', 6, 'Stampa coupon', '0', '0', '0', '2020-03-31 13:19:46.065', NULL, NULL, 1, NULL, NULL, '6', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(110, 'AccumulatorType', 7, 'SACS', '0', '0', '0', '2020-03-31 13:19:46.065', NULL, NULL, 1, NULL, NULL, '7', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(111, 'AccumulatorType', 8, 'Promozione On Demand', '0', '0', '0', '2020-03-31 13:19:46.065', NULL, NULL, 1, NULL, NULL, '8', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(112, 'AccumulatorType', 9, 'Sconto Punti Aggiuntivo', '0', '0', '0', '2020-03-31 13:19:46.065', NULL, NULL, 1, NULL, NULL, '9', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(104, 'AccumulatorType', 1, 'Punti', '0', '0', '0', '2020-03-31 13:19:46.065', '2020-03-31 16:36:15.743', NULL, 1, 1, NULL, '1', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(82, 'DayOfWeek', 1, 'Lunedì', '0', '0', '0', '2018-01-03 07:51:12.828', '2018-08-09 12:19:18.170', NULL, 1024, 98, NULL, ' 2', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(84, 'DayOfWeek', 3, 'Mercoledì', '0', '0', '0', '2018-01-03 07:51:12.828', '2018-08-09 12:19:44.220', NULL, 1024, 98, NULL, ' 4', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(87, 'DayOfWeek', 6, 'Sabato', '0', '0', '0', '2018-01-03 07:51:12.828', NULL, NULL, 1024, NULL, NULL, ' 7', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(83, 'DayOfWeek', 2, 'Martedì', '0', '0', '0', '2018-01-03 07:51:12.828', '2020-04-06 10:08:04.059', NULL, 1024, 1, NULL, ' 3', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(85, 'DayOfWeek', 4, 'Giovedì', '0', '0', '0', '2018-01-03 07:51:12.828', '2018-08-09 12:19:54.423', NULL, 1024, 98, NULL, ' 5', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(86, 'DayOfWeek', 5, 'Venerdì', '0', '0', '0', '2018-01-03 07:51:12.828', '2018-08-09 12:20:13.067', NULL, 1024, 98, NULL, ' 6', '', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(48, 'BalanceRetrieveAcmType', 0, 'Tipo acc da recuperare nei saldi ', '0', '0', '0', '2020-04-10 17:10:33.959', NULL, NULL, 1, NULL, NULL, '1,2', 'GLOBAL', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(49, 'CluRetrieveMode', 0, 'Modo: current/linked/master (linked=tutte)', '0', '0', '0', '2020-04-10 17:41:17.702', NULL, NULL, 1, NULL, NULL, 'master', 'GLOBAL', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(50, 'CardDefRetrieveMode', 0, 'CardDef: esclude le definzioni esterne al range', '0', '0', '0', '2020-04-11 11:17:11.714', NULL, NULL, 1, NULL, NULL, 'excludeExtern', 'GLOBAL', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(47, 'BalanceRetrieveMode', 0, 'Recupero saldi e flottanti (linked/master/current)', '0', '0', '0', '2020-04-10 17:06:23.206', '2020-04-11 11:15:15.789', NULL, 1, 1, NULL, 'masterCust=linked;linkedCust=linked', 'GLOBAL', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(94, 'SelfScanRules', 10, 'Tipologia Servizi per i servizi cliente', '0', '0', '0', '2020-03-31 13:19:46.065', NULL, NULL, 1, NULL, NULL, '4', '', NULL, 'SELFSCAN.ServiceTypeId');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(115, 'SelfScanServices', 3, 'Campo default insert self_scanning_service', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 1, NULL, NULL, '10', '', 0, 'SELFSCANSERVICES.channel_id');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(116, 'SelfScanServices', 4, 'Campo default insert self_scanning_service', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 1, NULL, NULL, '212126', '', 0, 'SELFSCANSERVICES.reason_id');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(118, 'SelfScanRules', 11, 'Codice servizio per insert nella self_scanning', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 1, NULL, NULL, '22', '', 0, 'SELFSCAN.ServiceId');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(36, 'ReasonSign', 7, '- (Calcolo invertito)', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1024, NULL, NULL, '-i', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(35, 'ReasonSign', 6, '+ (Calcolo invertito)', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1024, NULL, NULL, '+i', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(120, 'MovOperType', 1, 'Detail Movement Operator', '0', '0', '0', '2020-06-16 00:36:02.033', NULL, NULL, 1, NULL, NULL, 'detail', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(119, 'MovOperType', 0, 'Head Movement Operator', '0', '0', '0', '2020-06-16 00:36:02.033', NULL, NULL, 1, NULL, NULL, 'head', NULL, 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(121, 'ReasonType', 602, 'Bruciatura', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(67, 'SelfScanRules', 7, 'Configurazione campo min', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 66, NULL, NULL, '25', NULL, 0, 'SELFSCANRULESDETAIL.min');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(68, 'SelfScanRules', 8, 'Configurazione campo max', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 66, NULL, NULL, '25', NULL, 0, 'SELFSCANRULESDETAIL.max');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(69, 'SelfScanRules', 9, 'Configurazione campo step', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 66, NULL, NULL, '25', NULL, 0, 'SELFSCANRULESDETAIL.step');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(96, 'KWallet-ValassisCouponGallery', 0, 'DataSynSrc per ValassisCouponGallery in KWallet', '0', '0', '0', '2020-05-22 18:04:39.128', NULL, NULL, 0, NULL, NULL, 'yQIHeXMUZtw%3D', NULL, NULL, 'KWALLET.DATA.SYNC.SRC.TEST');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(89, 'VirtualLoy.CrossChanCfg', 10, 'Canali in Virtual Loy 10 (CardType&LoyChan)', '0', '0', '0', '2020-05-05 16:56:17.309', NULL, NULL, 1, NULL, NULL, '010,011', 'cardType$I;loyChanCode$010', 1022, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(90, 'VirtualLoy.CrossChanCfg', 20, 'Canali in Virtual Loy 11 (CardType&LoyChan)', '0', '0', '0', '2020-05-05 16:57:08.521', NULL, NULL, 1, NULL, NULL, '010,011', 'cardType$I;loyChanCode$011', 1022, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414111, 'ReasonSelfScan', 1, 'SelfScanning Reason Type', '0', '0', '0', '2020-05-25 10:40:07.000', NULL, NULL, 2048, NULL, NULL, NULL, NULL, 0, 'SELFSCANNING.TYPE');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(97, 'ReasonType', 601, 'Temporanea', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1024, NULL, NULL, NULL, 'NA', 0, NULL);
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(98, 'SelfScanServices', 1, 'Campo default insert self_scanning_service', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 1, NULL, NULL, '0', '', 0, 'SELFSCANSERVICES.uid_chk_chance');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(57, 'SelfScanRules', 1, 'Configurazione campo chk_min_num', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 66, NULL, NULL, '25', NULL, 0, 'SELFSCANRULES.chk_min_num');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(58, 'SelfScanRules', 2, 'Configurazione campo chk_max_num', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 66, NULL, NULL, '25', NULL, 0, 'SELFSCANRULES.chk_max_num');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(60, 'SelfScanRules', 3, 'Configurazione campo tx_interval', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 66, NULL, NULL, '25', NULL, 0, 'SELFSCANRULES.tx_interval');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(64, 'SelfScanRules', 4, 'Configurazione campo void_qta_max', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 66, NULL, NULL, '25', NULL, 0, 'SELFSCANRULES.void_qta_max');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(65, 'SelfScanRules', 5, 'Configurazione campo void_val_max', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 66, NULL, NULL, '25', NULL, 0, 'SELFSCANRULES.void_val_max');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(66, 'SelfScanRules', 6, 'Configurazione campo num_valid_check', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 66, NULL, NULL, '25', NULL, 0, 'SELFSCANRULES.num_valid_check');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(113, 'SelfScanServices', 2, 'Campo default insert self_scanning_service', '0', '0', '0', '2020-04-20 12:39:59.662', NULL, NULL, 1, NULL, NULL, 'IT', '', 0, 'SELFSCANSERVICES.def_lng_term');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414121, 'Card', 100, 'Path Base PDF Carta', '0', '0', '0', '2021-02-21 19:48:28.533', NULL, NULL, 50, NULL, NULL, 'http://www.pdf995.com/samples', NULL, 0, 'CARD.PDF_PATH_BASE');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(233, 'KLOY.VIRTUAL_STORE.WEB', 1, '', '0', '0', '0', '2020-11-16 18:17:53.158', NULL, NULL, 1, NULL, NULL, '99001', '', NULL, 'KLOY.VIRTUAL_STORE.WEB');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(234, 'KLOY.VIRTUAL_STORE.APP', 1, '', '0', '0', '0', '2020-11-16 18:17:53.193', NULL, NULL, 1, NULL, NULL, '99002', '', NULL, 'KLOY.VIRTUAL_STORE.APP');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(1115, 'UnicommFamila', 0, 'Point transfer accumulator default', '0', '0', '0', '2019-04-16 00:00:00.000', NULL, NULL, 60, NULL, NULL, '1', NULL, NULL, 'POINTTRANS.API.ACM.DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(500001, 'UnicommFamila', 1, 'Point transfer movement type default', '0', '0', '0', '2019-04-16 00:00:00.000', NULL, NULL, 60, NULL, NULL, 'P', NULL, NULL, 'MOVEMENT.API.TYPE.DEFAULT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414122, 'CheckDigitCard', 0, 'How calculate checkdigit', '0', '0', '0', '2019-02-07 20:46:15.130', NULL, NULL, 1, NULL, NULL, 'EAN13_WITH_CHCKDGT', 'CARDTYPE.KEY.TAG', 0, 'CARDTYPE.KEY.TAG');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414127, 'test IT paramGroup', 1, 'test IT descr', '0', '0', '0', '2021-04-02 12:55:23.756', '2021-04-02 12:55:24.092', '2021-04-02 12:55:24.030', 50, 50, 50, 'test IT PCODE', 'test IT PFCODE', 1001, 'test IT PKCODE');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414128, 'test EN paramGroup', 1, 'test EN descr', '0', '0', '0', '2021-04-02 12:55:23.771', '2021-04-02 12:55:24.116', '2021-04-02 12:55:24.044', 50, 50, 50, 'test EN PCODE', 'test EN PFCODE', 1002, 'test EN PKCODE');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414123, 'CosiComodo', 0, 'Default cassa oChannel', '0', '0', '0', '2019-02-07 20:46:15.130', NULL, NULL, 1, NULL, NULL, '4', NULL, 0, 'TOUCHPOINT.CASSA');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414159, 'reservation_store_it', 2, 'Assegnazione Parziale', '0', '0', '0', '2021-06-15 18:14:00.270', NULL, NULL, -11, NULL, NULL, '3', '2', NULL, 'ASS.PART.IT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414165, 'reservation_store_en', 5, 'Partial Assignment', '0', '0', '0', '2021-06-15 18:14:00.270', NULL, NULL, -11, NULL, NULL, '3', '55', NULL, 'ASS.PART.EN');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414134, 'ApiConfig', 0, 'Minuti per  reset password o  recover login', '0', '0', '0', '2019-02-07 20:46:15.130', NULL, NULL, 1, NULL, NULL, '10', NULL, 0, 'API.MIN.RECOVERY.RESET.TIME.X');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414164, 'reservation_store_en', 4, 'To Assign', '0', '0', '0', '2021-06-15 18:14:00.224', NULL, NULL, -11, NULL, NULL, '1', '44', NULL, 'TO.ASS.EN');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414160, 'reservation_store_en', 3, 'Already Assigned', '0', '0', '0', '2021-06-15 18:14:00.175', NULL, NULL, -11, NULL, NULL, '0', '3', NULL, 'ASS.EN');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414158, 'reservation_store_it', 1, 'Da assegnare', '0', '0', '0', '2021-06-15 18:14:00.224', NULL, NULL, -11, NULL, NULL, '1', '1', NULL, 'TO.ASS.IT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414177, 'dbt_crd_store_host_code_format', 0, 'Debit Credit store host_code format lenght', '0', '0', '0', '2021-07-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '5', NULL, NULL, 'DBT.CRD.HOST_CODE.FORMAT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414163, 'reservation_type', 3, 'Tutti i canali', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '0003', NULL, NULL, 'RES.ALL.CHANNEL');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414162, 'reservation_type', 2, 'On line', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '0002', NULL, NULL, 'RES.ONLINE');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414161, 'reservation_type', 1, 'Punto vendita', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '0001', NULL, NULL, 'RES.PDV');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414146, 'delivery_type', 4, 'Email/Sms', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '0004', NULL, NULL, 'DEL.EMAIL.SMS');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414145, 'delivery_type', 3, 'Punto vendita o indirizzo di consegna', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '0003', NULL, NULL, 'DEL.PDV.ADDRESS');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414144, 'delivery_type', 2, 'Indirizzo di consegna', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '0002', NULL, NULL, 'DEL.ADDRESS');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414166, 'barcode_type', 1, 'EAN-8', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '0001', NULL, NULL, 'BARCODE.8');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414167, 'barcode_type', 2, 'EAN-13', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '0002', NULL, NULL, 'BARCODE.13');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414142, 'delivery_type', 1, 'Punto vendita', '0', '0', '0', '2017-12-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '0001', NULL, NULL, 'DEL.PDV');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414109, 'CardBlackList', 1, 'Blacklist Reason Type', '0', '0', '0', '2018-07-31 10:40:07.000', NULL, NULL, 2048, NULL, NULL, '212123', NULL, 0, 'BLACKLIST.TYPE');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414157, 'reservation_store_it', 0, 'Già assegnati', '0', '0', '0', '2021-06-15 18:14:00.175', NULL, NULL, -11, NULL, NULL, '0', '0', NULL, 'ASS.IT');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414170, 'debit_credit_reason', 1, 'Debit reason', '0', '0', '0', '2021-07-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '406', NULL, NULL, 'DEBIT.RSN');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414169, 'debit_credit_reason', 0, 'Credit reason', '0', '0', '0', '2021-07-27 09:52:04.000', NULL, NULL, 1, NULL, NULL, '200', NULL, NULL, 'CREDIT.RSN');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414175, 'qrcode_prefix_gabrielli', 1, 'Prefix QrCode Communication Gabrielli', '0', '0', '0', '2021-07-26 10:44:39.760', NULL, NULL, 1, NULL, NULL, 'PREMIK', NULL, NULL, 'PRE.QRCODE.GABRIELLI');
INSERT INTO loyalty.param
(id, param_group, param_order, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, param_code, param_functional_code, division_id, param_key)
VALUES(414277, 'ui_version', 0, 'Applicativo non aggiornato. Ricaricare la pagina', '0', '0', '0', '2021-09-09 10:38:34.043', NULL, NULL, 1, NULL, NULL, '1.10.95', NULL, NULL, 'UI.VERSION');

-- REBUILD PARAM NLS
INSERT INTO loyalty.param_nls
(id, param_id, nls_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 48, 'en', 'Tipo acc da recuperare nei saldi ', '0', '0', '0', '2020-04-10 17:10:34.234', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.param_nls
(id, param_id, nls_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 49, 'en', 'Modo: current/linked/master (linked=tutte)', '0', '0', '0', '2020-04-10 17:41:17.975', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.param_nls
(id, param_id, nls_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 47, 'en', 'Recupero saldi e flottanti (linked/master/current)', '0', '0', '0', '2020-04-10 17:06:23.470', '2020-04-11 11:15:16.015', NULL, 1, 1, NULL);
INSERT INTO loyalty.param_nls
(id, param_id, nls_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 50, 'en', 'CardDef: esclude le definzioni esterne al range', '0', '0', '0', '2020-04-11 11:17:11.997', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.param_nls
(id, param_id, nls_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 119, 'en', 'Head Movement Operator', '0', '0', '0', '2020-06-16 00:36:02.341', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.param_nls
(id, param_id, nls_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, 414128, 'en', 'test EN descr', '0', '0', '0', '2021-04-02 12:55:23.776', '2021-04-02 12:55:24.016', NULL, 50, 50, NULL);

-- REBUILD PARAM OCHANNEL
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(1, 3, 1, 'ssss', '0', '0', '0', '2019-03-08 16:51:53.940', NULL, NULL, 66, NULL, NULL, 'aaa');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(2, 30, 6, 'desc', '0', '0', '0', '2019-07-15 14:22:16.354', NULL, NULL, 50, NULL, NULL, '1');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(3, 3, 6, 'ParametroServlet', '0', '0', '0', '2019-08-30 11:14:51.217', NULL, NULL, 11, NULL, NULL, 'A456');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(4, 104, 6, 'Accumulatore Punti Vs53 ''P''', '0', '0', '0', '2020-03-31 18:44:18.691', NULL, NULL, 1, NULL, NULL, 'P');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(5, 105, 6, 'Accumulatore Iniziative Bruciate Vs53 ''B''', '0', '0', '0', '2020-03-31 18:46:06.691', NULL, NULL, 1, NULL, NULL, 'B');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(6, 106, 6, 'Accumulatore Valore Vs53 ''V''', '0', '0', '0', '2020-03-31 18:50:47.105', NULL, NULL, 1, NULL, NULL, 'V');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(7, 107, 6, 'Accumulatore Frequenza Vs53 ''N''', '0', '0', '0', '2020-03-31 18:51:45.158', NULL, NULL, 1, NULL, NULL, 'N');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(8, 108, 6, 'Acc. Fatturato Frequenza Vs53 ''F''', '0', '0', '0', '2020-03-31 18:51:45.471', NULL, NULL, 1, NULL, NULL, 'F');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(9, 109, 6, 'Stampa Coupon Vs53 ''C''', '0', '0', '0', '2020-03-31 18:51:45.787', NULL, NULL, 1, NULL, NULL, 'C');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(10, 110, 6, 'SACS Coop Vs53 ''B''', '0', '0', '0', '2020-03-31 18:51:46.032', NULL, NULL, 1, NULL, NULL, 'B');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(11, 111, 6, 'Promo On Demand Vs53 ''H''', '0', '0', '0', '2020-03-31 18:51:46.298', NULL, NULL, 1, NULL, NULL, 'H');
INSERT INTO loyalty.param_ochannel
(id, param_id, ochannel_id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, conversion_code)
VALUES(12, 112, 6, 'Sconto Punti Aggiuntivo Vs53 ''A''', '0', '0', '0', '2020-03-31 18:51:46.557', NULL, NULL, 1, NULL, NULL, 'A');



-- REBUILD REASON
INSERT INTO loyalty.reason
(id, reason_code, description, short_description, sign_pid, type_pid, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, '0', 'Reason annullata', 'Reason annullata', 8, 6, '1', '0', '0', '2020-05-27 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.reason
(id, reason_code, description, short_description, sign_pid, type_pid, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, '1', 'Accumulo punti', 'Accumulo punti', 8, 6, '0', '0', '0', '2020-05-27 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.reason
(id, reason_code, description, short_description, sign_pid, type_pid, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, '2', 'Link Carta SelfScanning', 'Link Carta SelfScanning', 8, 6, '0', '0', '0', '2019-08-02 16:50:52.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.reason
(id, reason_code, description, short_description, sign_pid, type_pid, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, '3', 'Carta in blacklist', 'Carta in blacklist', 8, 26, '0', '0', '0', '2019-08-02 16:50:52.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.reason
(id, reason_code, description, short_description, sign_pid, type_pid, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, '4', 'Causale trasferimento punti', 'Causale trasferimento punti', 8, 6, '0', '0', '0', '2019-08-02 16:50:52.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD ACM TYPE
INSERT INTO loyalty.acm_type
(id, acm_type_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_operation, acm_typei_pid, acm_typeo_pid)
VALUES(0, 0, 'Acm type cancellato', '1', '0', '0', '2021-03-02 14:59:55.019', NULL, NULL, 1, NULL, NULL, 'G', 18, 18);
INSERT INTO loyalty.acm_type
(id, acm_type_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_operation, acm_typei_pid, acm_typeo_pid)
VALUES(1, 1, 'Accumulo punti fidelity', '0', '0', '0', '2021-03-02 14:59:55.019', NULL, NULL, 1, NULL, NULL, 'G', 18, 18);
INSERT INTO loyalty.acm_type
(id, acm_type_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_operation, acm_typei_pid, acm_typeo_pid)
VALUES(2, 2, 'Iniziativa bruciata', '0', '0', '0', '2021-03-02 14:59:55.019', NULL, NULL, 1, NULL, NULL, 'G', 18, 19);

-- REBUILD ACM
INSERT INTO loyalty.acm
(id, channel_id, acm_code, acm_type_id, description, short_descr, date_start, date_end, host_code, max_num, max_value, oper_max_num_pid, oper_max_value_pid, oper_trigger_num_pid, oper_trigger_value_pid, def_num, def_value, flg_periodic_reset, period_reset_pid, value_period_pid, trigger_cluster_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 2, 'ACMCANC', 1, 'Accumulatore Cancellato', 'ACM CANC', '2020-01-01', '2020-12-31', 'HCCANC', 1000, 10000.00, 21, 21, 22, 22, 1, 100.00, '0', 23, 24, NULL, '1', '0', '0', '2021-03-02 15:22:10.483', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.acm
(id, channel_id, acm_code, acm_type_id, description, short_descr, date_start, date_end, host_code, max_num, max_value, oper_max_num_pid, oper_max_value_pid, oper_trigger_num_pid, oper_trigger_value_pid, def_num, def_value, flg_periodic_reset, period_reset_pid, value_period_pid, trigger_cluster_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 2, 'ACM20', 1, 'Accumulatore Punti 2020', 'ACM 2020', '2020-01-01', '2020-12-31', 'HC20', 50, 5000.00, 21, 21, 22, 22, 1, 100.00, '0', 23, 24, NULL, '0', '0', '0', '2021-03-02 15:22:10.483', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.acm
(id, channel_id, acm_code, acm_type_id, description, short_descr, date_start, date_end, host_code, max_num, max_value, oper_max_num_pid, oper_max_value_pid, oper_trigger_num_pid, oper_trigger_value_pid, def_num, def_value, flg_periodic_reset, period_reset_pid, value_period_pid, trigger_cluster_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, 'ACM21', 1, 'Accumulatore Punti 2021', 'ACM 2021', '2021-01-01', '2099-12-31', 'HC21', 1000, 10000.00, 21, 21, 22, 22, 1, 100.00, '0', 23, 24, NULL, '0', '0', '0', '2021-03-02 15:22:10.483', NULL, NULL, 1, NULL, NULL);

-- REBUILD LAYOUT
INSERT INTO loyalty.layout
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'Layout Annullato', '1', '0', '0', '2021-03-29 17:55:10.815', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.layout
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'Layout accumulatore ordinario', '0', '0', '0', '2021-03-29 17:55:10.576', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.layout
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 'Layout accumulatore straordinario', '0', '0', '0', '2021-03-29 17:55:10.695', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.layout
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 'Layout acm prova', '0', '0', '0', '2021-10-04 10:25:58.779', NULL, NULL, 50, NULL, NULL);


-- REBUILD ACM LAYOUT
INSERT INTO loyalty.acm_layout
(id, acm_id, layout_id, description_fe, format_string, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 1, 'AcmId=1 LayoutId=1', 'formatstring', '0', '0', '0', '2021-03-29 18:00:38.352', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.acm_layout
(id, acm_id, layout_id, description_fe, format_string, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, 1, 'AcmId=2 LayoutId=1', 'formatstring', '0', '0', '0', '2021-03-29 18:00:38.352', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.acm_layout
(id, acm_id, layout_id, description_fe, format_string, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 2, 'AcmLayout Annullato', 'formatstring', '1', '0', '0', '2021-03-29 18:00:38.352', NULL, NULL, 1, NULL, NULL);

-- REBUILD LAYOUT DETAIL
INSERT INTO loyalty.layout_detail
(id, acm_layout_id, row_position, row_description, row_max_lenght, start_offset, flg_print, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 1, 'Prima riga', 40, 1, '0', '0', '0', '0', '2021-03-29 18:13:48.776', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.layout_detail
(id, acm_layout_id, row_position, row_description, row_max_lenght, start_offset, flg_print, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 0, 'Riga annullata', 40, 1, '0', '1', '0', '0', '2021-03-29 18:13:48.776', NULL, NULL, 1, NULL, NULL);

-- REBUILD REASON ACM TYPE
INSERT INTO loyalty.reason_acm_type
(id, reason_id, acm_type_id, grant_role_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 2, 0, '1', '0', '0', '2021-03-31 17:16:20.932', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.reason_acm_type
(id, reason_id, acm_type_id, grant_role_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 1, 0, '0', '0', '0', '2021-03-31 17:16:20.932', NULL, NULL, 1, NULL, NULL);

-- REBUILD REASON ACM ACTION TYPE
--TO DO


/* ========================================================= 08 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Customer/Cards
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO CUSTOMER/CARDS
 *
 * SCHEMA: 				LOYALTY, CUST, PROMOTION
 *
 * REBUILDED TABLES:	cust. social_accounts					loyalty.card_homing						cust.cutomer_card_replace				cust.customer_host_classification			cust.customer_service
 * 						loyalty.cluster_head_ochannel			loyalty.cluster_head_cust 				cust.customer_auth_tokens				cust.customer_auth_ochannel					cust.customer_auth
 * 						cust.customer_card						cust.customer_company_data				cust.customer							cust.customer_host							loyalty.card
 * 						promotion.ochannel_privacy 				promotion.message_layout 				promotion.campaign_ochannel 			loyalty.card_batch							loyalty.card_def
 * 						loyalty.cluster_head					loyalty.cluster							loyalty.cluster_type					promotion.ochannel_user 					promotion.ochannel
 *
 * EMPTY TABLES:		cust.cutomer_card_replace				promotion.ochannel_privacy 				promotion.message_layout 				promotion.campaign_ochannel					cust.customer_service
 * 						cust.customer_auth_ochannel
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD [LOYALTY] CLUSTER TYPE
INSERT INTO loyalty.cluster_type
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'CT000', 'Loyalty Annullato', '1', '0', '0', '2020-06-15 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.cluster_type
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'CT001', 'Loyalty Anagrafici', '0', '0', '0', '2020-06-15 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.cluster_type
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, '0', 'Cluster cablato. Non cambiare valore code (=0)', '0', '0', '0', '2020-06-15 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD [LOYALTY] CLUSTER
INSERT INTO loyalty."cluster"
(id, "type", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, cluster_type_id)
VALUES(0, '1', 'Cluster annullato Card Home', '1', '0', '0', '2020-06-12 00:00:00.000', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO loyalty."cluster"
(id, "type", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, cluster_type_id)
VALUES(1, '1', 'Special Card Home', '0', '0', '0', '2020-06-12 00:00:00.000', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO loyalty."cluster"
(id, "type", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, cluster_type_id)
VALUES(2, '2', 'Cluster collegato a Cluster Type con code 0', '0', '0', '0', '2020-06-12 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);

-- REBUILD [LOYALTY] CLUSTER HEAD
INSERT INTO loyalty.cluster_head
(id, cluster_id, date_start, date_end, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, depends_on_cluster_head_id, exclude_cluster_head_id, rules)
VALUES(0, 1, '2019-04-01', '2019-04-30', 'Home Generale', '1', '0', '0', '2020-06-12 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO loyalty.cluster_head
(id, cluster_id, date_start, date_end, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, depends_on_cluster_head_id, exclude_cluster_head_id, rules)
VALUES(1, 1, '2020-04-01', '2090-04-30', 'Home Generale', '0', '0', '0', '2020-06-12 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO loyalty.cluster_head
(id, cluster_id, date_start, date_end, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, depends_on_cluster_head_id, exclude_cluster_head_id, rules)
VALUES(2, 2, '2020-04-01', '2090-04-30', 'Cluster Head collegato a Cluster con Cluster Type di code=0', '0', '0', '0', '2020-06-12 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- REBUILD [LOYALTY] CARD DEF
INSERT INTO loyalty.card_def
(id, channel_id, card_prefix, card_suffix, cluster_id, card_lenght, range_min, range_max, barcode_type_pid, card_loyalty_type_pid, description, balance_type_gen, balance_type_req, mask, flg_std_promo_cnf, flg_point_acc, flg_points_fru, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, '00', '00', 1, 12, '00000000', '00010000', 4, 5, '#Home Leone Annullato', '0', '0', '901', '1', '0', '1', '1', '0', '0', '2018-01-12 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.card_def
(id, channel_id, card_prefix, card_suffix, cluster_id, card_lenght, range_min, range_max, barcode_type_pid, card_loyalty_type_pid, description, balance_type_gen, balance_type_req, mask, flg_std_promo_cnf, flg_point_acc, flg_points_fru, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, '01', '10', 1, 12, '10000000', '10010000', 4, 5, '#Home Leone', '0', '0', '901', '1', '0', '1', '0', '0', '0', '2018-01-12 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.card_def
(id, channel_id, card_prefix, card_suffix, cluster_id, card_lenght, range_min, range_max, barcode_type_pid, card_loyalty_type_pid, description, balance_type_gen, balance_type_req, mask, flg_std_promo_cnf, flg_point_acc, flg_points_fru, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, '02', '20', 1, 12, '20000000', '20010000', 3, 5, '#Home Zebra', '0', '0', '902', '1', '0', '1', '0', '0', '0', '2018-01-12 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD [LOYALTY] CARD BATCH
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(0, 1, 1, '1', 1, 2000, '0', '0', '2020-04-04 00:00:00.000', NULL, NULL, 1, NULL, NULL, 5, '0', 1, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(1, 1, 1, '0', 10000001, 10002000, '0', '0', '2020-04-04 00:00:00.000', '2021-04-01 10:44:01.961', NULL, 1, 50, NULL, 5, '0', 1, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(2, 2, 2, '0', 20000001, 20002000, '0', '0', '2020-04-04 00:00:00.000', '2021-04-01 10:44:02.493', NULL, 1, 50, NULL, 5, '0', 2, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(3, 1, 1, '0', 30000001, 30002000, '0', '1', '2020-04-04 00:00:00.000', '2021-04-01 10:44:14.585', NULL, 1, 50, NULL, 5, '0', 1, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(4, 2, 2, '0', 40000001, 40002000, '0', '1', '2020-04-04 00:00:00.000', '2021-04-01 10:44:15.231', NULL, 1, 50, NULL, 5, '0', 2, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(5, 1, 1, '0', 50000001, 50002000, '0', '2', '2020-04-04 00:00:00.000', '2021-03-31 10:48:09.682', NULL, 1, 50, NULL, 5, '0', 1, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(6, 2, 2, '0', 60000001, 60002000, '0', '2', '2020-04-04 00:00:00.000', '2021-03-31 10:48:10.295', NULL, 1, 50, NULL, 5, '0', 2, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(7, 1, 1, '0', 70000001, 70002000, '0', '3', '2020-04-04 00:00:00.000', '2021-03-31 10:48:07.308', NULL, 1, 50, NULL, 5, '0', 1, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(8, 2, 2, '0', 80000001, 80002000, '0', '3', '2020-04-04 00:00:00.000', '2021-03-31 10:48:08.426', NULL, 1, 50, NULL, 5, '0', 2, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(9, 1, 1, '0', 90000001, 90002000, '0', '4', '2020-04-04 00:00:00.000', '2021-04-01 10:44:16.661', NULL, 1, 50, NULL, 5, '0', 1, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(10, 2, 2, '0', 10000001, 10002000, '0', '4', '2020-04-04 00:00:00.000', '2021-04-01 10:44:17.295', NULL, 1, 50, NULL, 5, '0', 2, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(11, 2, 2, '0', 10000001, 10002000, '0', '9', '2020-04-04 00:00:00.000', '2021-04-01 10:38:56.909', NULL, 1, 50, NULL, 5, '0', 2, 1, 0);
INSERT INTO loyalty.card_batch
(id, store_id, channel_id, flg_state, num_min, num_max, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_type_pid, flg_initial_state, card_def_id, cluster_head_id, current_num)
VALUES(12, 2, 2, '0', 10000001, 10002000, '0', '9', '2020-04-04 00:00:00.000', '2021-04-01 10:38:56.909', NULL, 1, 50, NULL, 5, '0', 2, 1, 0);


-- REBUILD [LOYALTY] CARD
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(1, '022000000152', 2, 2, 2, 5, '1', '2020-01-15', '11:30:00', 1, '2018-09-24', '2048-09-28', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(2, '022000000252', 2, 2, 2, 5, '0', NULL, NULL, 1, '2018-09-24', '2048-09-28', '1', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(3, '011000000351', 1, 1, 1, 5, '0', NULL, NULL, 1, '2020-01-01', '2099-12-31', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(4, '022000000452', 2, 2, 2, 5, '0', NULL, NULL, 1, '2019-12-31', '2099-12-30', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(5, '011000000551', 1, 1, 1, 5, '0', NULL, NULL, 1, '2020-01-01', '2099-12-31', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(6, '022000000652', 2, 2, 2, 5, '1', '2020-01-15', '11:30:00', 1, '2020-01-01', '2099-12-31', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(7, '022000000752', 2, 2, 2, 5, '0', NULL, NULL, 1, '2020-01-01', '2099-12-31', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(8, '022000000852', 2, 2, 2, 5, '0', NULL, NULL, 1, '2020-01-01', '2099-12-31', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(9, '022000000952', 2, 2, 2, 5, '0', NULL, NULL, 1, '2018-09-24', '2048-09-28', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(10, '022000001052', 2, 2, 2, 5, '0', NULL, NULL, 1, '2018-09-24', '2048-09-28', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(11, '022000001152', 2, 2, 2, 5, '0', NULL, NULL, 1, '2018-09-25', '2018-10-31', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(12, '022000001252', 2, 2, 2, 5, '0', NULL, NULL, 1, '2018-10-04', '2099-02-02', '0', '0', '0', '2020-04-29 11:11:27.249', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(13, '022000001352', 2, 2, 2, 5, '0', NULL, NULL, 1, '2019-07-23', '2049-07-26', '0', '0', '1', '2020-04-29 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(14, '022000001452', 2, 2, 2, 5, '0', NULL, NULL, 1, '2018-09-25', '2099-12-31', '0', '0', '1', '2021-01-20 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO loyalty.card
(id, card_no, card_batch_id, store_id, channel_id, card_type_pid, flg_blk_lst, date_blk_lst, time_blk_lst, reason_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_def_id)
VALUES(15, '022000001552', 2, 2, 2, 5, '0', NULL, NULL, 1, '2018-10-04', '2099-02-02', '0', '0', '0', '2020-04-29 11:11:27.249', NULL, NULL, 1, NULL, NULL, 2);

-- REBUILD [CUST] CUSTOMER HOST
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(1, 'K1', 2, NULL, 1, 1, 1, '0', '0', '1', '1', '1', '0', '0', '0', 'ALEKSANDR', 'PUSKIN', 'M', NULL, '1965-09-14', 1, 1, 'PSKLXD89H32F893C', 'Mosca', '80124', 1, '22', 'Via Stalingrado', NULL, '39023443230', NULL, NULL, 'pusko@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(2, 'K2', 2, NULL, 1, 1, 1, '0', '0', '1', '1', '1', '0', '0', '0', 'FEODOR', 'DOSTOJEVSKI', 'M', NULL, '1968-01-03', 1, 1, 'DSTFDR89H32F893C', 'SAN PIETROBURGO', '80124', 1, '22', 'Via Notti Bianche', NULL, '39021118830', NULL, NULL, 'dosto@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '1', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(3, 'K3', 2, NULL, 1, 1, 1, '0', '0', '1', '1', '1', '0', '0', '0', 'ARSENIO', 'LUPIN', NULL, NULL, NULL, 1, 1, 'LPNRSN43G12N647J', 'Parigi', NULL, 1, '4', 'Via del Tranello', NULL, '3514154280', NULL, NULL, 'lupin@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '1', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 1);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(4, 'K4', 2, NULL, 1, 1, 1, '0', '0', '0', '1', '0', '0', '0', '0', 'WOLFGANG AMADEUS', 'MOZART', 'M', NULL, '2000-11-11', 1, 1, 'ABCDSF12D45C123F', NULL, NULL, NULL, NULL, NULL, NULL, '3489689012', NULL, NULL, 'wam@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, 0, 0, 0, '0', 0, '0', '0', 'N', '2017-12-11 16:15:13.797', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(5, 'K5', 1, NULL, 1, 1, 1, '0', '0', '1', '1', '1', '0', '0', '0', 'FRANZ', 'SCHUBERT', NULL, NULL, NULL, 1, 1, 'SBRFRZ43G12N647J', NULL, NULL, 1, '4', 'Via del Melo', NULL, '34740040440', NULL, NULL, 'shubert@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 1);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(6, 'K6', 2, NULL, 1, 1, 1, '0', '0', '1', '1', '1', '0', '0', '0', 'GIOVANNI', 'PASCOLI', 'M', 'POLLENA', NULL, 1, 1, 'PSCGVN91A03F673H', NULL, NULL, 1, '2', 'Via del pero', NULL, '34750050550', NULL, NULL, 'pascoli@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(7, 'K7', 2, NULL, 1, 1, 1, '0', '0', '1', '1', '1', '0', '0', '0', 'DANTE', 'ALIGHIERI', 'M', NULL, '1965-09-14', 1, 1, 'LGRDNT89H32F893C', NULL, NULL, NULL, NULL, NULL, NULL, '34730030330', NULL, NULL, 'vivabeatrice@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(8, 'K8', 2, NULL, 1, 1, 1, '0', '0', '1', '1', '1', '0', '0', '0', 'JANIS', 'JOPLIN', 'F', NULL, '1943-01-19', 1, 1, 'JNSJPL29D45S904T', 'New York', NULL, 1, NULL, NULL, NULL, '34720020220', NULL, NULL, 'janis@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(9, 'K9', 2, NULL, 1, 1, 1, '0', '0', '0', '1', '0', '0', '0', '0', 'GIACOMO', 'LEOPARDI', 'M', NULL, '1976-01-05', 1, 1, 'LPDGCM91F48X901Z', 'Roma', NULL, 1, '17', 'Via Gufaccio', NULL, '34760060660', NULL, NULL, 'giacomino@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2019-02-26 13:07:39.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(10, 'K10', 2, NULL, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', 'LUDWIG', 'VON BEETHOVEN', NULL, NULL, NULL, 1, 1, 'BTVLDW64S17A509A', NULL, NULL, NULL, NULL, NULL, NULL, '34813572468', NULL, NULL, 'lvb@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2021-01-13 16:46:11.687', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 0, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(11, 'K11', 2, NULL, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', 'VINCENZO', 'BELLINI', 'M', 'Catania', '2001-03-11', 1, 1, 'BLLVNC64S17A509A', 'Napoli', '80124', 1, '23', 'Toledo', NULL, '08145678765', NULL, NULL, 'enzobell@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2021-01-14 10:17:08.437', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(12, 'K12', 2, NULL, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', 'ALESSANDRO', 'MANZONI', NULL, NULL, '1970-01-01', 1, 1, 'MNZLSR64S17A509A', NULL, NULL, 1, '3', 'Via della Nonna', NULL, '3394454131', NULL, NULL, 'sandromanzo@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2021-01-20 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(13, 'K13', 2, NULL, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', 'WILLIAM', 'SHAKESPEARE', NULL, NULL, NULL, 1, 1, 'SHKWLL64S17A509A', NULL, NULL, NULL, NULL, NULL, NULL, '3907474131', NULL, NULL, 'willys@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2021-02-01 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 0, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(14, 'K14', 2, NULL, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', 'MARIA', 'CALLAS', 'F', NULL, '1923-12-02', 1, 1, 'CLSMRA64S17A509A', NULL, NULL, NULL, NULL, NULL, NULL, '3926674131', NULL, NULL, 'marycal@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2021-02-01 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(15, 'K15', 2, NULL, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', 'JIMI', 'HENDRIX', 'M', NULL, '1942-11-27', 1, 1, 'HDXJMI64S17A509A', NULL, NULL, NULL, NULL, NULL, NULL, '3919974139', NULL, NULL, 'jimix@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2021-02-01 00:00:00.000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(16, 'K16', 2, NULL, 1, 1, 1, '0', '0', '0', '1', '0', '0', '0', '0', 'ARTEMISIA', 'GENTILESCHI', 'F', NULL, '2000-11-11', 1, 1, 'GTLRTM12D45C123F', NULL, NULL, NULL, NULL, NULL, NULL, '34895775012', NULL, NULL, 'artem@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, 0, 0, 0, '0', 0, '1', '0', 'N', '2017-12-11 16:15:13.797', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(17, 'K17', 2, NULL, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', 'GIACOMO', 'PUCCINI', 'M', 'Cecina', '1947-01-01', 1, 1, 'PCNGCM64S17A509A', NULL, NULL, NULL, NULL, NULL, NULL, '393733004131', NULL, NULL, 'gipuccio@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2021-02-08 17:33:34.317', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);
INSERT INTO cust.customer_host
(id, host_id, source_system_id, group_number, country_id, state_id, province_id, flg_privacy_terminal, flg_privacy_generic_comm, flg_privacy_mktg_research, flg_privacy_auth, flg_privacy_mktg_profiling, flg_privacy_mktg_activitiy, flg_privacy_pruchase_com, flg_privacy_optin, "name", surname, sex, birth_place, birth_date, employment_id, education_id, fiscal_code, city, zip_code, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, number_son, name_mate, surname_mate, sex_mate, birth_place_mate, birth_date_mate, employment_mate_id, education_mate_id, sex_son_1, birth_date_son_1, employment_son_id_1, education_son_id_1, sex_son_2, birth_date_son_2, employment_son_id_2, education_son_id_2, sex_son_3, birth_date_son_3, employment_son_id_3, education_son_id_3, sex_son_4, birth_date_son_4, employment_son_id_4, education_son_id_4, sex_son_5, birth_date_son_5, employment_son_id_5, education_son_id_5, flg_other_components, flg_hobby_1, flg_hobby_2, flg_hobby_3, flg_hobby_4, flg_hobby_5, flg_hobby_6, flg_hobby_7, flg_hobby_8, flg_hobby_9, flg_hobby_10, flg_hobby_11, flg_hobby_12, pet_no_1, pet_no_2, pet_no_3, pet_no_4, other_pet_name, other_pet, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ts_upd_flg_privacy_terminal, user_upd_flg_privacy_terminal, ts_upd_flg_privacy_generic_comm, user_upd_flg_privacy_generic_comm, ts_upd_flg_privacy_mktg_research, user_upd_flg_privacy_mktg_research, ts_upd_flg_privacy_auth, user_upd_flg_privacy_auth, ts_upd_flg_privacy_mktg_profiling, user_upd_flg_privacy_mktg_profiling, ts_upd_flg_privacy_mktg_activitiy, user_upd_flg_privacy_mktg_activitiy, ts_upd_flg_privacy_pruchase_com, user_upd_flg_privacy_pruchase_com, ts_upd_flg_privacy_optin, user_upd_flg_privacy_optin, flg_company, flg_dummy, civil_status_id, ts_upd_civil_status, user_upd_civil_status, flg_newsletter, ts_upd_flg_newsletter, user_upd_flg_newsletter, flg_employee, ts_upd_flg_employee, user_upd_flg_employee, preferred_store_id)
VALUES(18, 'K18', 2, NULL, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', 'DIEGO ARMANDO', 'MARADONA', 'M', 'Napoli', '1947-01-01', 1, 1, 'NNNNNN64S17A509A', NULL, NULL, NULL, NULL, NULL, NULL, '351733004131', NULL, NULL, 'nnnnnn@mailinator.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', 0, '0', '0', '0', '2021-02-08 17:33:34.317', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '0', 1, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 2);

-- REBUILD [CUST] CUSTOMER
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 18, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 1, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 3, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 4, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 11:06:39.521', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 5, NULL, 2, 1, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, 6, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(7, 7, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(8, 8, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '1', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(9, 9, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 09:06:39.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(10, 10, NULL, 1, 2, '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2021-01-13 16:46:11.716', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(11, 11, NULL, 1, 2, '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2021-01-14 10:17:08.483', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(12, 12, NULL, 1, 2, '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2021-01-20 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(13, 13, NULL, 1, 2, '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2021-02-01 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(14, 14, NULL, 1, 2, '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2021-02-01 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(15, 15, NULL, 1, 2, '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2021-02-01 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(16, 16, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 11:06:39.521', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(17, 17, NULL, 1, 2, '0', '0', NULL, NULL, NULL, NULL, '1', '0', '0', '2021-02-08 17:33:34.345', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(18, NULL, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(19, NULL, NULL, 2, 1, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer
(id, customer_host_id, parent_id, division_id, sales_network_id, flg_fidelity, flg_delegate, welcome_date, type_message_id, flg_signature, date_signature, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(20, NULL, NULL, 1, 2, '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD [CUST] CUSTOMER COMPANY DATA
INSERT INTO cust.customer_company_data
(id, customer_host_id, row_num, flg_type, company_name, country_id, state_id, province_id, fiscal_code, vat_code, zip_code, city, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 1, '0', 'COMPANY ANNULLATA', 1, 1, 1, '99999999999', '99999999999', '80124', 'Milano', 1, '29', 'Piazza Annullata', NULL, '0819898989', '3359898989', NULL, 'annullata@mailinator.com', NULL, '1', '0', '0', '2021-04-12 09:52:28.958', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_company_data
(id, customer_host_id, row_num, flg_type, company_name, country_id, state_id, province_id, fiscal_code, vat_code, zip_code, city, toponym_id, address_number, address_1, address_2, telephone, mobile, other_telephone, email, email_2, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 9, 1, '0', 'ACME CORPORATION', 1, 1, 1, '05808481211', '05808481211', '80124', 'Napoli', 1, '29', 'Piazza Amedeo', NULL, '0819898989', '3359898989', NULL, 'acme@mailinator.com', NULL, '0', '0', '0', '2021-04-12 09:52:28.958', NULL, NULL, 1, NULL, NULL);

-- REBUILD [CUST] CUSTOMER CARD
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 1, NULL, '0', '0', '0', '2021-01-20 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, 2, NULL, '0', '0', '0', '2021-01-20 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 4, 12, NULL, '0', '0', '0', '2018-10-04 22:26:23.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, 6, 13, NULL, '0', '0', '0', '2018-09-25 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(7, 7, 6, NULL, '0', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(8, 8, 8, NULL, '0', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(12, 12, 14, NULL, '0', '0', '0', '2021-01-20 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(14, 14, 11, NULL, '0', '0', '0', '2018-09-25 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(15, 15, 7, NULL, '0', '0', '0', '2018-03-21 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(16, 16, 15, NULL, '0', '0', '0', '2021-01-20 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(17, 17, 9, NULL, '0', '0', '0', '2018-09-25 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(18, 18, 10, NULL, '0', '0', '0', '2018-09-25 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(19, 19, 5, NULL, '0', '0', '0', '2021-01-20 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_card
(id, customer_id, card_id, delegate_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(20, 20, 3, NULL, '0', '0', '0', '2018-09-25 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD [CUST] CUSTOMER AUTH
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(1, 18, 2, 'anonimo@mailinator.com', '2021-02-08 17:33:34.378', '1n1llqa3f4a9lvddk6l77j07f2', '9087dc22f145cc06ced88a7afc85b555eee10635039e43231e6d1408a5a939dae5bc7fc41dc650de1d18e9799277e2c3b81c4be90417723dbcfb758cff0578e3', '2022-02-08', '2021-02-08 17:33:34.377', '0', '0', '0', '2021-02-08 17:33:34.377', '2021-02-08 17:37:50.041', NULL, 1, NULL, NULL, 2);
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(4, 4, 2, 'wam@mailinator.com', '2029-01-12 16:55:36.000', 'ff4q9n99b39i05dhurq7ut86f', '262b826f83321195bfc3a2f4078fff05d86211604926069a104d039136a7a66c9fb1c25500fdc96ac4f76671b355d99b99904863b346a8f4e5863b96340bc199', '2099-01-12', '2021-01-12 16:55:36.436', '0', '0', '0', '2021-01-12 16:55:36.436', '2021-01-20 12:13:59.744', NULL, 1, NULL, NULL, 2);
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(6, 6, 2, 'pascoli@mailinator.com', '2021-01-20 15:35:50.020', '5qc4do4q1aslibh6f7ms10f080', 'b90724a0a0239894e6ee81e59be469e590a800908afc812701994199b2ca6d0bb8afbdd1aed40a86aa9862515b19a973f5f43ce677bdefb8fd182ca14190cfcd', '2099-01-12', '2021-01-20 15:35:24.943', '1', '0', '0', '2021-01-20 00:00:00.000', '2021-01-20 15:35:50.021', '2021-01-20 15:36:04.314', 1, NULL, 1, 2);
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(11, 11, 2, 'enzobell@mailinator.com', '2021-01-14 10:17:08.539', 'ff4q9n99b39i05dhurq7ut86f', '262b826f83321195bfc3a2f4078fff05d86211604926069a104d039136a7a66c9fb1c25500fdc96ac4f76671b355d99b99904863b346a8f4e5863b96340bc199', '2099-01-12', '2021-01-14 10:17:08.538', '0', '0', '0', '2021-01-14 10:17:08.538', '2021-01-14 10:37:01.438', NULL, 1, NULL, NULL, 2);
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(12, 12, 2, 'sandromanzo@mailinator.com', '2021-01-20 14:01:56.945', 'bcc1pe4vb5vmelkg1rcphlqcq2', '423ef37a322d357b3587be1d8b9d8cfc3a96966cb65fdd7ae631f5807d2158ad4b929e61b3724202dbb2737fdb2751467303c67f410d6856d97127f950fdca4e', '2022-04-07', '2021-01-20 14:01:56.945', '3', '0', '0', '2021-01-20 00:00:00.000', '2021-04-07 09:26:46.008', NULL, 1, 50, NULL, 2);
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(13, 13, 2, 'willys@mailinator.com', '2021-02-01 15:09:40.987', 'j1ou9qssgt4vr0eiaaslpheqn1', 'c69f481f0b088f385c4f56408a2b179dacf7577879c5a43f3b8f6b63ff7262cc71011877de4fefbb883970796dad81ed1e56e5a151637d0f1e22e99f117a30ac', '2099-01-12', '2021-02-01 15:09:40.987', '2', '0', '0', '2021-02-01 00:00:00.000', '2021-02-01 15:13:22.223', NULL, 1, 1, NULL, 2);
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(14, 14, 2, 'marycal@mailinator.com', '2021-02-01 16:38:01.895', '5k1mg63hq18ggc3l1merss4e41', '06227003386f900c4145aae83442d52bff98656969a41fd2c119769695c88cacc18a08fa30facd0eec2c783b41de6dbd336283b9f3c12c65a5b6ebe303c67245', '2099-01-12', '2021-02-01 16:38:01.835', '1', '0', '0', '2021-02-01 00:00:00.000', '2021-02-01 16:42:00.567', NULL, 1, NULL, 1, 2);
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(15, 15, 2, 'jimix@mailinator.com', '2021-02-01 16:43:18.345', 'c8ri0t3euknnd9b1cquqchb7ia', '8512ac7765c968cf89fd141d4e65aa481ecd29b6d64c9056fc5939191a5ce86c61a61b7ac25550b9f9ccbef6794738a6259f7fec13191b58d2a688a0c9157415', '2099-01-12', '2021-02-01 16:43:18.345', '3', '0', '0', '2021-02-01 00:00:00.000', '2021-02-01 16:45:48.968', NULL, 1, 1, NULL, 2);
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(17, 17, 2, 'gipuccio@mailinator.com', '2021-02-08 17:33:34.378', '1n1llqa3f4a9lvddk6l77j07f2', '9087dc22f145cc06ced88a7afc85b555eee10635039e43231e6d1408a5a939dae5bc7fc41dc650de1d18e9799277e2c3b81c4be90417723dbcfb758cff0578e3', '2022-02-08', '2021-02-08 17:33:34.377', '0', '0', '0', '2021-02-08 17:33:34.377', '2021-02-08 17:37:50.041', NULL, 1, NULL, NULL, 2);
INSERT INTO cust.customer_auth
(id, customer_id, account_type_id, user_account, ts_user_account_update, salt, user_password, password_end_date, ts_password_update, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id)
VALUES(10, 10, 2, 'lvb@mailinator.com', '2021-01-13 00:00:00.000', 'e0parmssa24r6g1ksl2u98653k', 'b32bb1487b103dafe945027d1f29ab899236930643c81d59f7b85e97f7cfa87a459d7f24b00c900f85a055d0bd1faf8bd9fb47de678731bf654ce483ec903242', '2099-01-12', '2021-01-13 00:00:00.000', '0', '0', '0', '2021-01-13 16:46:11.841', '2021-10-05 09:11:48.876', NULL, 1, 50, NULL, 2);



-- REBUILD [CUST] CUSTOMER AUTH OCHANNEL
-- TO DO

-- REBUILD [CUST] CUSTOMER AUTH TOKENS
INSERT INTO cust.customer_auth_tokens
(id, customer_id, "token", token_type, ts_expiry, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 10, '984189', 'suspended', '2031-01-20 16:46:11.000', '0', '0', '0', '2021-01-13 16:46:11.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_auth_tokens
(id, customer_id, "token", token_type, ts_expiry, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 15, '992266$029014009052', 'generated', '2021-02-09 00:00:00.000', '0', '0', '0', '2021-02-02 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_auth_tokens
(id, customer_id, "token", token_type, ts_expiry, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 14, '992266$029014009052', 'shopping', '2021-02-09 00:00:00.000', '0', '0', '0', '2021-02-02 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_auth_tokens
(id, customer_id, "token", token_type, ts_expiry, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 15, '984190', 'suspended', '2031-01-20 16:46:11.000', '0', '0', '0', '2021-01-13 16:46:11.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD [LOYALTY] CLUSTER HEAD CUST
INSERT INTO loyalty.cluster_head_cust
(id, cluster_head_id, customer_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, tmp_customer_host_id, callerid)
VALUES(0, 1, 4, '2020-03-29', '2099-03-29', '1', '0', '0', '2021-03-29 18:20:13.254', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO loyalty.cluster_head_cust
(id, cluster_head_id, customer_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, tmp_customer_host_id, callerid)
VALUES(1, 1, 12, '2020-03-29', '2099-03-29', '0', '0', '0', '2021-03-29 18:20:13.254', NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- REBUILD [LOYALTY] CLUSTER HEAD OCHANNEL
INSERT INTO loyalty.cluster_head_ochannel
(id, cluster_head_id, ochannel_id, conversion_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, icon_url, icon_b64)
VALUES(0, 1, 2, '1', 'Record Annullato', '1', '0', '0', '2021-03-29 18:24:43.969', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO loyalty.cluster_head_ochannel
(id, cluster_head_id, ochannel_id, conversion_code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, icon_url, icon_b64)
VALUES(1, 1, 1, '1', 'ClusterHead=1 OChannel=1', '0', '0', '0', '2021-03-29 18:24:43.969', NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- REBUILD [CUST] CUSTOMER HOST CLASSIFICATION
INSERT INTO cust.customer_host_classification
(id, customer_host_id, classification_detail_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 4, 2, '0', '0', '0', '2018-12-12 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_host_classification
(id, customer_host_id, classification_detail_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 4, 0, '0', '0', '0', '2018-12-12 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_host_classification
(id, customer_host_id, classification_detail_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 4, 4, '0', '0', '0', '2018-12-12 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_host_classification
(id, customer_host_id, classification_detail_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 4, 3, '1', '0', '0', '2018-12-12 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD [CUST] CUSTOMER SERVICE
-- TO DO

-- REBUILD [CUST] CUSTOMER CARD REPLACE
-- TO DO

-- REBUILD [CUST] CUSTOMER CARD HOMING
INSERT INTO loyalty.card_homing
(id, card_id, division_sales_network_src_id, store_src_id, store_dest_id, division_sales_network_dest_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_no_start, card_no_end, operation_type)
VALUES(0, 12, NULL, 3, 2, NULL, '1', '0', '3', '2021-03-31 16:17:54.028', '2021-03-31 16:17:54.371', NULL, 1, 50, NULL, '', '', 1);
INSERT INTO loyalty.card_homing
(id, card_id, division_sales_network_src_id, store_src_id, store_dest_id, division_sales_network_dest_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_no_start, card_no_end, operation_type)
VALUES(1, 14, NULL, 3, 2, NULL, '0', '0', '3', '2021-03-31 16:17:51.930', '2021-03-31 16:17:56.606', NULL, 1, 50, NULL, '', '', 1);
INSERT INTO loyalty.card_homing
(id, card_id, division_sales_network_src_id, store_src_id, store_dest_id, division_sales_network_dest_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, card_no_start, card_no_end, operation_type)
VALUES(2, NULL, NULL, 3, 2, NULL, '0', '0', '3', '2021-03-31 16:17:54.028', '2021-03-31 16:17:54.371', NULL, 1, 50, NULL, '10', '12', 1);

-- REBUILD SOCIAL ACCOUNTS
INSERT INTO cust.social_accounts
(id, customer_id, account_type_id, user_account, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 12, 2, 'sandromanzo_null', '1', '0', '0', '2021-04-12 11:32:57.508', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.social_accounts
(id, customer_id, account_type_id, user_account, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 12, 1, 'sandromanzo', '0', '0', '0', '2021-04-12 11:32:57.508', NULL, NULL, 1, NULL, NULL);

-- REBUILD CUST CUSTOMER SERVICE
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, 12, '2020-01-01', NULL, '0', ' ', NULL, 212126, ' ', ' ', '2017-05-05 20:39:46.410', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(9, 2, 18, '2020-06-16', '2020-11-26', '0', '0', NULL, NULL, '0', '0', '2020-06-16 11:52:51.665', NULL, NULL, 116, NULL, NULL);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(10, 2, 8, NULL, '2022-01-01', '0', '1', NULL, 212126, '0', '0', '2020-10-01 10:48:50.157', '2020-10-01 10:53:08.427', '2020-10-01 10:52:38.061', 11, 11, 11);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(11, 3, 6, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '2020-10-01 10:56:30.365', NULL, NULL, 11, NULL, NULL);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 7, '2017-05-05', NULL, '0', '0', NULL, NULL, ' ', ' ', '2017-05-05 20:39:46.410', '2020-10-12 16:16:39.781', '2020-10-12 16:16:26.916', 1, 3, 3);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 1, 2, '2020-06-08', '2020-06-30', '0', '0', NULL, NULL, '0', '0', '2020-06-12 16:48:18.421', '2020-06-15 14:44:31.302', '2020-06-15 14:44:26.078', 1, 116, 116);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 2, 3, '2017-05-05', '2020-06-20', '0', '1', '2020-06-15', 212126, '0', '0', '2020-06-15 14:57:20.218', '2020-06-15 15:05:26.044', '2020-06-15 15:05:03.287', 116, 116, 116);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, 23, 9, '2020-06-15', '2022-06-30', '0', '0', NULL, NULL, '0', '0', '2020-06-15 16:26:01.319', '2020-06-15 16:34:29.933', '2020-06-15 16:34:10.998', 116, 116, 116);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(7, 1, 20, '2020-06-15', '2020-09-30', '0', '0', NULL, NULL, '0', '0', '2020-06-15 16:57:33.811', '2020-06-16 10:48:54.257', NULL, 116, 11, NULL);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(8, 1, 4, '2020-06-16', '2020-06-18', '0', '0', NULL, NULL, '0', '0', '2020-06-16 10:53:40.499', NULL, NULL, 3, NULL, NULL);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(12, 4, 11, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '2021-04-21 09:36:08.797', '2021-04-21 09:36:13.479', '2021-04-21 09:36:12.749', 50, 50, 50);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(13, 4, 12, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '2021-04-21 09:36:09.076', NULL, '2021-04-21 09:36:12.945', 50, NULL, 50);
INSERT INTO cust.customer_service
(id, service_id, customer_id, date_start, date_end, flg_state, flg_blklst, date_blklist, reason_id, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(16, 3, 5, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '2021-06-10 11:19:58.845', NULL, NULL, 50, NULL, NULL);



/* ========================================================= 09 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Common Apps
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO COMMON APPS
 *
 * SCHEMA: 				COMMON
 *
 * REBUILDED TABLES:	apps		apps_division_sales_network		apps_config
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD APPS
INSERT INTO common.apps
(id, "name", host_code, default_longitude, default_latitude, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id, media_code)
VALUES(1, 'KWZEBRA', 'KWZ', 4.763875700000, 52.354792500000, '0', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2, NULL);
INSERT INTO common.apps
(id, "name", host_code, default_longitude, default_latitude, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, source_system_id, media_code)
VALUES(0, 'KWANNULL', 'KWZANNULL', 4.763875700000, 52.354792500000, '1', '0', '0', '2020-05-04 00:00:00.000', NULL, NULL, 1, NULL, NULL, 2, NULL);

-- REBUILD APPS_DIVISION_SALES_NETWORK
INSERT INTO common.apps_division_sales_network
(id, division_sales_network_id, app_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 2, 1, '0', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.apps_division_sales_network
(id, division_sales_network_id, app_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 0, 1, '1', '0', '0', '2020-04-23 00:00:00.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD APPS_CONFIG
INSERT INTO common.apps_config
(id, app_id, config_key, config_value, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 'chiave-annullata', '{"Test_Value": "value"}', '1', '0', '0', '2021-02-25 15:31:41.764', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.apps_config
(id, app_id, config_key, config_value, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 'customer-mandatory', '{"Test_Value": "value"}', '0', '0', '0', '2021-02-25 15:31:41.764', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.apps_config
(id, app_id, config_key, config_value, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 1, 'donapunti', '{
    "codiceFiltroPunti": "PUNTIDONATI",
    "nome": "Dona Punti 2020 ",
    "dataFine": "2021-10-10",
    "dataInizio": "2020-10-10",
    "regolamento": "<br /><b>REGALA i tuoi punti a chi vuoi tu!</b><p>Se sei titolare di una Carta Club Famila puoi trasferire i tuoi punti ad un''''�altra carta Club Famila tramite la APP FAMILA Nordest</p><br /><b>QUANDO REGALARE I TUOI PUNTI</b><p>Puoi trasferire i punti dalla tua carta club Famila alla carta Club Famila di un altro titolare esclusivamente durante il periodo in cui � attiva la raccolta punti elettronici.</p><p>In ogni momento puoi consultare lo storico dei punti REGALATI o RICEVUTI</p><br /><b>COME REGALARE I TUOI PUNTI</b><p>Il trasferimento dei punti dalla tua carta club Famila alla carta Club Famila di un altro titolare � possibile esclusivamente tramite APP.</p><p>Il trasferimento punti � un''''�operazione irreversibile: presta molta attenzione nel digitare il codice della carta Club Famila sulla quale trasferire i punti.</p><p>Digita o scansiona il codice della carta Club Famila cui vuoi regalare i punti ed inserisci l''''�importo dei punti che vuoi regalare.</p><br /><b>QUANTI PUNTI PUOI REGALARE</b><br />Puoi trasferire multipli di 5 punti, con una soglia minima di 5",
    "multiploDonabile": 5
}', '0', '0', '0', '2021-02-25 15:31:41.764', NULL, NULL, 1, NULL, NULL);


/* ========================================================= 10 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Common Calendar
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO COMMON CALENDAR
 *
 * SCHEMA: 				COMMON
 *
 * REBUILDED TABLES:	calendar_item		calendar_group		calendar_group_item			calendar_group_store
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD CALENDAR ITEM
INSERT INTO common.calendar_item
(id, code, description, time_range, monday, tuesday, wednesday, thursday, friday, saturday, sunday, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_extra_open)
VALUES(1, 'ORD', 'Giorno Ordinario Infrasettimanale', '8:30-21:30', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '2020-04-24 16:21:57.000', NULL, NULL, 1, NULL, NULL, '0');
INSERT INTO common.calendar_item
(id, code, description, time_range, monday, tuesday, wednesday, thursday, friday, saturday, sunday, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_extra_open)
VALUES(2, 'SAB', 'Sabato', '20:00-21:00', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '2020-04-24 16:22:24.000', NULL, NULL, 1, NULL, NULL, '0');
INSERT INTO common.calendar_item
(id, code, description, time_range, monday, tuesday, wednesday, thursday, friday, saturday, sunday, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_extra_open)
VALUES(3, 'DOM', 'Domenica e festivit� ordinarie', '10:00-18:00', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '2020-04-24 16:23:04.000', NULL, NULL, 1, NULL, NULL, '1');
INSERT INTO common.calendar_item
(id, code, description, time_range, monday, tuesday, wednesday, thursday, friday, saturday, sunday, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_extra_open)
VALUES(4, 'STR', 'Apertura straordinaria', '10:00-21:00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-04-24 16:23:36.000', NULL, NULL, 1, NULL, NULL, '1');
INSERT INTO common.calendar_item
(id, code, description, time_range, monday, tuesday, wednesday, thursday, friday, saturday, sunday, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_extra_open)
VALUES(5, 'ANN', 'Item Annullato', '8:30-21:30', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '2020-04-24 16:21:57.000', NULL, NULL, 1, NULL, NULL, '0');

-- REBUILD CALENDAR GROUP
INSERT INTO common.calendar_group
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'STD', 'Calendario Standard Base', '0', '0', '0', '2020-05-04 11:18:33.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.calendar_group
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 'STDNULL', 'Calendario Annullato', '1', '0', '0', '2020-05-04 11:18:33.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD CALENDAR GROUP ITEM
INSERT INTO common.calendar_group_item
(id, calendar_item_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, calendar_group_id)
VALUES(1, 1, '0', '0', '0', '2020-04-24 16:28:06.000', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO common.calendar_group_item
(id, calendar_item_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, calendar_group_id)
VALUES(2, 2, '0', '0', '0', '2020-04-24 16:28:18.000', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO common.calendar_group_item
(id, calendar_item_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, calendar_group_id)
VALUES(3, 3, '0', '0', '0', '2020-04-24 16:28:26.000', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO common.calendar_group_item
(id, calendar_item_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, calendar_group_id)
VALUES(4, 4, '0', '0', '0', '2020-04-24 16:28:33.000', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO common.calendar_group_item
(id, calendar_item_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, calendar_group_id)
VALUES(5, 5, '1', '0', '0', '2020-04-24 16:28:33.000', NULL, NULL, 1, NULL, NULL, 1);


-- REBUILD CALENDAR GROUP STORE
INSERT INTO common.calendar_group_store
(id, calendar_group_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, start_date)
VALUES(1, 1, 2, '0', '0', '0', '2020-05-04 11:28:34.000', NULL, NULL, 1, NULL, NULL, '2020-05-04');
INSERT INTO common.calendar_group_store
(id, calendar_group_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, start_date)
VALUES(2, 1, 1, '0', '0', '0', '2020-05-04 11:28:34.000', NULL, NULL, 1, NULL, NULL, '2020-05-04');


/* ========================================================= 11 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Common Classification
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO COMMON CLASSIFICATION
 *
 * SCHEMA: 				COMMON
 *
 * REBUILDED TABLES:	classification_type		classification		classification_detail		store_classification
 *
 * EMPTY TABLES:		store_classification
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD CLASSIFICATION TYPES
INSERT INTO common.classification_type
(id, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'store', '0', '0', '0', '2021-02-10 09:46:24.312', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification_type
(id, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'store_cancellato', '1', '0', '0', '2021-01-10 00:00:00.000', NULL, '2021-01-15 00:00:00.000', 1, NULL, 1);
INSERT INTO common.classification_type
(id, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 'customer', '0', '0', '0', '2021-01-10 00:00:00.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification_type
(id, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(9, 'customer_cancellato', '1', '0', '0', '2021-01-10 00:00:00.000', NULL, '2021-01-15 00:00:00.000', 1, NULL, 1);

-- REBUILD CLASSIFICATION
INSERT INTO common.classification
(id, parent_id, "name", classification_type_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, NULL, 'Categoria Professionale cancellato', 2, '1', '0', '0', '2021-02-10 09:36:51.632', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification
(id, parent_id, "name", classification_type_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, NULL, 'Residenza', 2, '0', '0', '0', '2021-02-10 09:36:51.632', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification
(id, parent_id, "name", classification_type_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, NULL, 'Professione', 2, '0', '0', '0', '2021-02-10 09:36:51.632', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification
(id, parent_id, "name", classification_type_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, NULL, 'Store Area', 1, '0', '0', '0', '2021-02-10 09:36:51.632', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification
(id, parent_id, "name", classification_type_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, NULL, 'Store Type', 1, '0', '0', '0', '2021-02-10 09:36:51.632', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification
(id, parent_id, "name", classification_type_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(11, 3, 'Italia', 2, '0', '0', '0', '2021-02-10 09:36:51.632', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification
(id, parent_id, "name", classification_type_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(12, 3, 'Estero', 2, '0', '0', '0', '2021-02-10 09:36:51.632', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification
(id, parent_id, "name", classification_type_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(20, 2, 'Sottocategoria Professionale cancellato', 2, '1', '0', '0', '2021-02-10 09:36:51.632', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.classification
(id, parent_id, "name", classification_type_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(22, 2, 'Dipendente', 2, '0', '0', '0', '2021-02-10 09:36:51.632', NULL, NULL, 1, NULL, NULL);

-- REBUILD CLASSIFICATION DETAIL
INSERT INTO common.classification_detail
(id, classification_id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 11, 'NDX9', 'NORD CANCELLATO', '1', '0', '0', '2021-02-10 09:41:30.627', NULL, NULL, 999, NULL, NULL);
INSERT INTO common.classification_detail
(id, classification_id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 11, 'ND', 'NORD', '0', '0', '0', '2021-02-10 09:41:30.627', NULL, NULL, 999, NULL, NULL);
INSERT INTO common.classification_detail
(id, classification_id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 11, 'SD', 'SUD', '0', '0', '0', '2021-02-10 09:41:30.627', NULL, NULL, 999, NULL, NULL);
INSERT INTO common.classification_detail
(id, classification_id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 11, 'CT', 'CENTRO', '0', '0', '0', '2021-02-10 09:41:30.627', NULL, NULL, 999, NULL, NULL);
INSERT INTO common.classification_detail
(id, classification_id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 12, 'EU', 'EUROPA', '0', '0', '0', '2021-02-10 09:41:30.627', NULL, NULL, 999, NULL, NULL);
INSERT INTO common.classification_detail
(id, classification_id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 12, 'EX', 'EXTRA EUROPA', '0', '0', '0', '2021-02-10 09:41:30.627', NULL, NULL, 999, NULL, NULL);
INSERT INTO common.classification_detail
(id, classification_id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, 3, 'DEF', 'STORE AREA DEFAULT', '0', '0', '0', '2021-02-10 09:41:30.627', NULL, NULL, 999, NULL, NULL);


-- REBUILD STORE CLASSIFICATION
---TO DO


/* ========================================================= 12 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Common Service
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO COMMON SERVICE
 *
 * SCHEMA: 				COMMON
 *
 * REBUILDED TABLES:	service_type		service_type		service			service_store
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD SERVICE TYPE
INSERT INTO common.service_type
(id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'Tipo servizio annullato', 'Tipo servizio annullato', '1', '0', '0', '2020-04-24 18:47:40.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.service_type
(id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'Servizi cliente', 'Servizi rivolti al cliente', '0', '0', '0', '2020-04-24 18:47:40.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.service_type
(id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 'Test', 'Test service', '0', '0', '0', '2020-04-24 18:47:40.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD SERVICE
INSERT INTO common.service
(id, service_type_id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_print, linked_table)
VALUES(0, 1, 'Servizio annullato', 'Servizio annullato con service_type valido', '1', '0', '0', '2020-04-24 17:18:14.000', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO common.service
(id, service_type_id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_print, linked_table)
VALUES(1, 1, 'Cassa Prioritaria Mamme', 'Cassa Prioritaria Mamme', '0', '0', '0', '2020-04-24 17:18:14.000', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO common.service
(id, service_type_id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_print, linked_table)
VALUES(2, 1, 'Sviluppo Foto', 'Sviluppo Foto', '0', '0', '0', '2020-04-24 17:18:14.000', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO common.service
(id, service_type_id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_print, linked_table)
VALUES(3, 0, 'Bar', 'Servizio valido con service type annullato', '0', '0', '0', '2020-04-24 17:18:14.000', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO common.service
(id, service_type_id, "name", description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, flg_print, linked_table)
VALUES(4, 4, 'Test Service', 'Servizio valido con service type annullato', '0', '0', '0', '2020-04-24 17:18:14.000', NULL, NULL, 1, NULL, NULL, NULL, NULL);


-- REBUILD SERVICE STORE
INSERT INTO common.service_store
(id, service_id, store_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 2, 1, '2020-01-01', '2099-12-31', '1', '0', '0', '2021-02-25 15:15:19.918', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.service_store
(id, service_id, store_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 0, 1, '2020-01-01', '2099-12-31', '0', '0', '0', '2021-02-25 15:15:19.918', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.service_store
(id, service_id, store_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 1, 1, '2020-01-01', '2099-12-31', '0', '0', '0', '2021-02-25 15:15:19.918', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.service_store
(id, service_id, store_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 3, 1, '2020-01-01', '2099-12-31', '0', '0', '0', '2021-02-25 15:15:19.918', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.service_store
(id, service_id, store_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 1, 2, '2019-01-01', '2019-12-31', '0', '0', '0', '2021-02-25 15:15:19.918', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.service_store
(id, service_id, store_id, date_start, date_end, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 2, 2, '2020-01-01', '2099-12-31', '0', '0', '0', '2021-02-25 15:15:19.918', NULL, NULL, 1, NULL, NULL);


/* ========================================================= 13 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Common Store Group
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO COMMON STORE GROUP
 *
 * SCHEMA: 				COMMON
 *
 * REBUILDED TABLES:	store_group		store_group_detail
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD STORE GROUP
INSERT INTO common.store_group
(id, code, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, '1', 'Gruppo 1', '0', '0', '0', '2021-03-23 16:17:26.425', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.store_group
(id, code, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, '2', 'Gruppo 2', '0', '0', '0', '2021-03-23 16:17:26.425', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.store_group
(id, code, "name", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, '0', 'Gruppo Cancellato', '1', '0', '0', '2021-03-23 16:17:26.425', NULL, NULL, 1, NULL, NULL);


-- REBUILD STORE GROUP DETAIL
INSERT INTO common.store_group_detail
(id, store_group_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 2, 1, '1', '0', '0', '2021-03-23 16:18:48.247', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.store_group_detail
(id, store_group_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 1, '0', '0', '0', '2021-03-23 16:18:48.247', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.store_group_detail
(id, store_group_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 1, 2, '0', '0', '0', '2021-03-23 16:18:48.247', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.store_group_detail
(id, store_group_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 1, 0, '0', '0', '0', '2021-03-23 16:18:48.247', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.store_group_detail
(id, store_group_id, store_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 2, 2, '0', '0', '0', '2021-03-23 16:18:48.247', NULL, NULL, 1, NULL, NULL);


/* ========================================================= 14 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Common Supplier/Brand/Certification
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO COMMON SUPPLIER/BRAND/CERTIFICATION
 *
 * SCHEMA: 				COMMON
 *
 * REBUILDED TABLES:	brand	supplier	certification	supplier_brand		supplier_certification		entity
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD ENTITY
INSERT INTO common.entity
(id, "name", country_id, state_id, vat_code, description, address_number, address_1, address_2, url, contact_1, contact_2, note_1, note_2, note_3, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'Paper and paper', 1, 1, '9239030022', 'Distributore cartoleria', '23', 'Via Emilio Monzo', NULL, NULL, 'Evaristo Monzo', 'John Monzo', NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '2020-05-04 12:32:25.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.entity
(id, "name", country_id, state_id, vat_code, description, address_number, address_1, address_2, url, contact_1, contact_2, note_1, note_2, note_3, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'Seven League Boots', 1, 1, '91239034209', 'Distribuzione Calzature Seven League Boots', '14', 'Piazza Amedeo', NULL, NULL, 'Emilio Monzo', 'Giovanni Monzo', NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 12:32:25.000', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.entity
(id, "name", country_id, state_id, vat_code, description, address_number, address_1, address_2, url, contact_1, contact_2, note_1, note_2, note_3, logo_name, logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 'HighHeels', 1, 1, '49302923093', 'Distribuzione calzature da donna', '41', 'Piazza Emilio Manzo', NULL, NULL, 'Giulietta Monzo', 'Romeo Monzo', NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '2020-05-04 12:32:25.000', NULL, NULL, 1, NULL, NULL);

-- REBUILD CERTIFICATION
INSERT INTO common.certification
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'C0', 'Certificazione Annullata', '1', '0', '0', '2021-03-25 16:29:31.457', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.certification
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'C1', 'Certificazione Valida', '0', '0', '0', '2021-03-25 16:29:31.481', NULL, NULL, 1, NULL, NULL);

-- REBUILD BRAND
INSERT INTO common.brand
(id, code, "name", logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'MW', 'MonzoWear', 'htpp://www.cappelli.it/cappellinomonzo.jpg', '1', '0', '0', '2021-03-25 16:30:47.844', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.brand
(id, code, "name", logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'ADIDAS', 'Adidas', 'htpp://www.cappelli.it/cappellinomonzo.jpg', '0', '0', '0', '2021-03-25 16:30:47.844', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.brand
(id, code, "name", logo, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 'PUMA', 'Puma', 'htpp://www.cappelli.it/cappellinomonzo.jpg', '0', '0', '0', '2021-03-25 16:30:47.844', NULL, NULL, 1, NULL, NULL);

-- REBUILD SUPPLIER
INSERT INTO common.supplier
(id, entity_id, code, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 'FORNITORE ANNULLATO CON ENTITA'' VALIDA', '0', '0', '0', '2021-03-25 16:36:00.040', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier
(id, entity_id, code, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 0, 'FORNITORE VALIDO CON ENTITA'' ANNULLATA', '0', '0', '0', '2021-03-25 16:36:00.040', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier
(id, entity_id, code, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 1, 'FORNITORE VALIDO CON ENTITA'' 1 (VALIDA)', '0', '0', '0', '2021-03-25 16:36:00.040', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier
(id, entity_id, code, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 2, 'FORNITORE VALIDO CON ENTITA''  2 (VALIDA)', '0', '0', '0', '2021-03-25 16:36:00.040', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier
(id, entity_id, code, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 1, 'SECONDO FORNITORE VALIDO CON ENTITA''  1 (VALIDA)', '0', '0', '0', '2021-03-25 16:36:00.040', NULL, NULL, 1, NULL, NULL);

-- REBUILD SUPPLIER CERTIFICATION
INSERT INTO common.supplier_certification
(id, supplier_id, certification_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 1, '1', '0', '0', '2021-03-25 16:40:00.466', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier_certification
(id, supplier_id, certification_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 0, 1, '0', '0', '0', '2021-03-25 16:40:00.466', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier_certification
(id, supplier_id, certification_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 1, 0, '0', '0', '0', '2021-03-25 16:40:00.466', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier_certification
(id, supplier_id, certification_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 2, 1, '0', '0', '0', '2021-03-25 16:40:00.466', NULL, NULL, 1, NULL, NULL);

-- REBUILD SUPPLIER BRAND
INSERT INTO common.supplier_brand
(id, supplier_id, brand_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 1, '1', '0', '0', '2021-03-25 16:41:55.740', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier_brand
(id, supplier_id, brand_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 0, '0', '0', '0', '2021-03-25 16:41:55.740', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier_brand
(id, supplier_id, brand_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 0, 1, '0', '0', '0', '2021-03-25 16:41:55.740', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier_brand
(id, supplier_id, brand_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 1, 2, '0', '0', '0', '2021-03-25 16:41:55.740', NULL, NULL, 1, NULL, NULL);
INSERT INTO common.supplier_brand
(id, supplier_id, brand_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 2, 2, '0', '0', '0', '2021-03-25 16:41:55.740', NULL, NULL, 1, NULL, NULL);


/* ========================================================= 15 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Cust Customer Ext
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO CUST CUSTOMER EXT
 *
 * SCHEMA: 				CUST
 *
 * REBUILDED TABLES:	customer_ext		customer_ext_type
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD CUSTOMER EXT TYPE
INSERT INTO cust.customer_ext_type
(id, code, description, value_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, "schema")
VALUES(0, 'null_code', 'Customer Ext Type Annullato', '0', '1', '0', '0', '2021-04-12 09:59:15.299', NULL, NULL, 1, NULL, NULL, '{
   "$schema":"http://json-schema.org/draft-07/schema",
   "type":"object",
   "title":"Delivery Address",
   "description":"Singolo delivery address.",
   "required":[
      "type",
      "altro",
      "data"
   ],
   "properties":{
      "type":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "altro":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "data":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      }
   }
}');
INSERT INTO cust.customer_ext_type
(id, code, description, value_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, "schema")
VALUES(1, 'delivery_address', 'Clienti Gruppo ABC', '1', '0', '0', '0', '2021-04-12 09:59:15.299', NULL, NULL, 1, NULL, NULL, '{
   "$schema":"http://json-schema.org/draft-07/schema",
   "type":"object",
   "title":"Delivery Address",
   "description":"Singolo delivery address.",
   "required":[
      "address_type",
      "name",
      "surname",
      "address_1",
      "address_2",
      "address_number",
      "city",
      "zip_code",
      "province_code",
      "country_code",
      "contact_number",
      "lift",
      "notes"
   ],
   "properties":{
      "address_type":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "name":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "surname":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "address_1":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "address_2":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "address_number":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "city":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "zip_code":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "province_code":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "country_code":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "contact_number":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "lift":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "notes":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      }
   }
}');
INSERT INTO cust.customer_ext_type
(id, code, description, value_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, "schema")
VALUES(2, 'customer_ext_type_generico', 'Clienti Gruppo ABC - Generico', '2', '0', '0', '0', '2021-04-12 09:59:15.299', NULL, NULL, 1, NULL, NULL, '{
   "$schema":"http://json-schema.org/draft-07/schema",
   "type":"object",
   "title":"Generic",
   "description":"Singolo delivery address.",
   "required":[
      "type",
      "altro",
      "data"
   ],
   "properties":{
      "type":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "altro":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      },
      "data":{
         "type":"string",
         "description":"An explanation about the purpose of this instance."
      }
   }
}');


-- REBUILD CUSTOMER EXT
INSERT INTO cust.customer_ext
(id, customer_host_id, customer_ext_type_id, n_value, s_value, j_value, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 2, 1, NULL, NULL, NULL, '1', '0', '0', '2021-04-12 10:00:22.234', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_ext
(id, customer_host_id, customer_ext_type_id, n_value, s_value, j_value, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 1, NULL, NULL, NULL, '0', '0', '0', '2021-04-12 10:00:22.234', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.customer_ext
(id, customer_host_id, customer_ext_type_id, n_value, s_value, j_value, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 1, 2, NULL, NULL, NULL, '0', '0', '0', '2021-04-12 10:00:22.234', NULL, NULL, 1, NULL, NULL);


/* ========================================================= 16 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Cust Customer Schopping
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO CUST SHOPPING
 *
 * SCHEMA: 				CUST
 *
 * REBUILDED TABLES:	shopping_header		shopping_detail
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD SHOPPING HEADER
INSERT INTO cust.shopping_header
(id, customer_host_id, store_id, list_name, flg_active, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 11, 2, 'CASA ANNULLATA', '0', '1', '0', '0', '2021-02-08 12:00:41.270', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.shopping_header
(id, customer_host_id, store_id, list_name, flg_active, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 11, 2, 'CASA', '0', '0', '0', '0', '2021-02-08 12:00:41.270', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.shopping_header
(id, customer_host_id, store_id, list_name, flg_active, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 11, 2, 'CENA', '1', '0', '0', '0', '2021-02-08 11:58:20.190', NULL, NULL, 1, NULL, NULL);

-- REBUILD SHOPPING DETAIL
INSERT INTO cust.shopping_detail
(id, shopping_header_id, item_type, item_id, item_bcd, item_descr, flg_purchased, qty, ts_expiry, flg_active, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 'I', '1', '12131968', 'DETERSIVO CANCELLATO', '0', 1.00, '2099-01-01', '0', '1', '0', '0', '2021-02-08 12:00:41.323', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.shopping_detail
(id, shopping_header_id, item_type, item_id, item_bcd, item_descr, flg_purchased, qty, ts_expiry, flg_active, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 'I', '1', '12131968', 'DETERSIVO', '0', 1.00, '2099-01-01', '0', '0', '0', '0', '2021-02-08 12:00:41.323', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.shopping_detail
(id, shopping_header_id, item_type, item_id, item_bcd, item_descr, flg_purchased, qty, ts_expiry, flg_active, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, 'C', '2', NULL, 'PASSATA', '1', 3.00, '2099-01-01', '0', '0', '0', '0', '2021-02-08 13:56:21.131', NULL, NULL, 1, NULL, NULL);
INSERT INTO cust.shopping_detail
(id, shopping_header_id, item_type, item_id, item_bcd, item_descr, flg_purchased, qty, ts_expiry, flg_active, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 2, 'I', '1', '03011968', 'SPAGHETTI', '0', 1.00, '2030-01-01', '0', '0', '0', '0', '2021-02-08 13:56:21.130', NULL, NULL, 1, NULL, NULL);


/* ========================================================= 17 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Loyalty Movements
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO LOYALTY MOVEMENTS
 *
 * SCHEMA: 				CUST
 *
 * REBUILDED TABLES:	movement		movement_trans		balance
 *
 * EMPTY TABLES:		movement_trans
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD MOVEMENT
INSERT INTO loyalty.movement
(id, acm_id, card_id, customer_id, reason_id, division_id, card_no, store_id, term_id, flg_manual, sequence_id, xact_id, xact_date, xact_time, operator_id, item_code, ean, discount, action_type, promo_code, qty, flg_dsc_tot, flg_dsc_item, value, value_2, previous_balance, previous_balance_2, obj_code, object_value, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, rc, msg, host_ref, wnotes, ts_upd_bal, movement_id)
VALUES(0, 2, 14, 12, 1, 1, '022000001452', 2, 1, '1', 1, 1, '2021-02-28', '12:00:00', 0, NULL, NULL, NULL, NULL, NULL, 1.00, '0', '0', 0.00, NULL, 500.00, 500.00, NULL, NULL, '1', '0', '0', '2021-03-02 15:54:30.929', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO loyalty.movement
(id, acm_id, card_id, customer_id, reason_id, division_id, card_no, store_id, term_id, flg_manual, sequence_id, xact_id, xact_date, xact_time, operator_id, item_code, ean, discount, action_type, promo_code, qty, flg_dsc_tot, flg_dsc_item, value, value_2, previous_balance, previous_balance_2, obj_code, object_value, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, rc, msg, host_ref, wnotes, ts_upd_bal, movement_id)
VALUES(1, 2, 14, 12, 1, 1, '022000001452', 2, 1, '1', 1, 1, '2021-03-01', '12:01:00', NULL, NULL, NULL, NULL, NULL, NULL, 1.00, '0', '0', 100.00, NULL, 1000.00, 1100.00, NULL, NULL, '0', '0', '0', '2021-03-02 15:54:30.929', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO loyalty.movement
(id, acm_id, card_id, customer_id, reason_id, division_id, card_no, store_id, term_id, flg_manual, sequence_id, xact_id, xact_date, xact_time, operator_id, item_code, ean, discount, action_type, promo_code, qty, flg_dsc_tot, flg_dsc_item, value, value_2, previous_balance, previous_balance_2, obj_code, object_value, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, rc, msg, host_ref, wnotes, ts_upd_bal, movement_id)
VALUES(2, 2, 14, 12, 1, 1, '022000001452', 2, 1, '1', 1, 1, '2021-03-02', '12:02:00', 0, NULL, NULL, NULL, NULL, NULL, 1.00, '0', '0', 200.00, NULL, 1100.00, 1300.00, NULL, NULL, '0', '0', '0', '2021-03-02 15:54:30.929', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- REBUILD MOVEMENT TRANS
-- TO DO

-- REBUILD BALANCE
INSERT INTO loyalty.balance
(id, acm_id, customer_id, channel_id, value, value_2, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 12, 2, 250.00, 10.00, '1', '0', '0', '2021-03-02 15:26:47.400', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.balance
(id, acm_id, customer_id, channel_id, value, value_2, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 2, 12, 2, 1450.00, 0.00, '0', '0', '0', '2021-03-02 15:26:47.400', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.balance
(id, acm_id, customer_id, channel_id, value, value_2, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 0, 12, 2, 3000.00, 30.00, '0', '0', '0', '2021-03-02 15:26:47.400', NULL, NULL, 1, NULL, NULL);


/* ========================================================= 18 REBUILD ============================================================ *
 *
 * Ripopola le tabelle del gruppo logico Loyalty Self Scanning
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DEL GRUPPO LOGICO SELF SCANNING
 *
 * SCHEMA: 				CUST
 *
 * REBUILDED TABLES:	self_scanning_service 		self_scanning_rules 	self_scanning_sessions 		self_scanning_service_detail
 * 						self_scanning_rules_dtl 	self_scanning_totals 	self_scanning_items
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD SELF SCANNING SERVICE
INSERT INTO loyalty.self_scanning_service
(id, customer_id, channel_id, message_id, uid_chk_chance, number_trx_checked, number_trx_used, date_last_trx, time_trx, number_last_check, number_next_check, uid_last_check_chance, last_chk_status, flg_blk_ss, spot_chk_status, time_last_chk, not_payed_trx, trx_tot_time, num_forced_rescan, num_up_rescan, num_down_rescan, num_eq_rescan, last_chk_chance, curr_chk_chance, flg_state, flg_low_line, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, reason_id, customer_service_id, def_lng_term)
VALUES(0, 12, 2, 1, '1         ', 5, 5, '2021-03-31', '15:33:24', 1, 2, '1         ', '0         ', '0', 0, '2021-03-31 15:33:24.825', 0, 10, 0, 0, 0, 10, '0         ', '0         ', '0', '0', '0', '0', '2021-03-31 15:33:24.825', NULL, NULL, 1, NULL, NULL, NULL, 0, '0  ');
INSERT INTO loyalty.self_scanning_service
(id, customer_id, channel_id, message_id, uid_chk_chance, number_trx_checked, number_trx_used, date_last_trx, time_trx, number_last_check, number_next_check, uid_last_check_chance, last_chk_status, flg_blk_ss, spot_chk_status, time_last_chk, not_payed_trx, trx_tot_time, num_forced_rescan, num_up_rescan, num_down_rescan, num_eq_rescan, last_chk_chance, curr_chk_chance, flg_state, flg_low_line, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, reason_id, customer_service_id, def_lng_term)
VALUES(1, 12, 2, 1, '1         ', 5, 5, '2021-03-31', '15:33:24', 1, 2, '1         ', '0         ', '0', 0, '2021-03-31 15:33:24.825', 0, 10, 0, 0, 0, 10, '0         ', '0         ', '0', '0', '0', '0', '2021-03-31 15:33:24.825', NULL, NULL, 1, NULL, NULL, NULL, 0, '0  ');
INSERT INTO loyalty.self_scanning_service
(id, customer_id, channel_id, message_id, uid_chk_chance, number_trx_checked, number_trx_used, date_last_trx, time_trx, number_last_check, number_next_check, uid_last_check_chance, last_chk_status, flg_blk_ss, spot_chk_status, time_last_chk, not_payed_trx, trx_tot_time, num_forced_rescan, num_up_rescan, num_down_rescan, num_eq_rescan, last_chk_chance, curr_chk_chance, flg_state, flg_low_line, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, reason_id, customer_service_id, def_lng_term)
VALUES(2, 4, 2, 1, '1         ', 5, 5, '2021-03-31', '15:33:24', 1, 2, '1         ', '0         ', '0', 0, '2021-03-31 15:33:24.825', 0, 10, 0, 0, 0, 10, '0         ', '0         ', '0', '0', '0', '0', '2021-03-31 15:33:24.825', NULL, NULL, 1, NULL, NULL, NULL, 0, '0  ');

-- REBUILD SELF SCANNING RULES
INSERT INTO loyalty.self_scanning_rules
(id, division_sales_network_id, description, date_start, date_end, chk_min_num, chk_max_num, tx_interval, void_qta_max, void_val_max, num_valid_check, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 'Regola Self Scanning Annullata e Scaduta', '2020-01-01', '2020-03-31', 1, 10, 1, 100, 500.00, 1, '1', '0', '0', '2021-03-31 15:14:44.696', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.self_scanning_rules
(id, division_sales_network_id, description, date_start, date_end, chk_min_num, chk_max_num, tx_interval, void_qta_max, void_val_max, num_valid_check, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 'Regola Self Scanning Valida DSN=1 e Scaduta', '2021-01-01', '2021-03-01', 1, 10, 1, 100, 500.00, 1, '0', '0', '0', '2021-03-31 15:14:44.696', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.self_scanning_rules
(id, division_sales_network_id, description, date_start, date_end, chk_min_num, chk_max_num, tx_interval, void_qta_max, void_val_max, num_valid_check, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, 'Regola Self Scanning Valida DSN=2', '2021-01-01', '2099-12-31', 1, 10, 1, 100, 500.00, 1, '0', '0', '0', '2021-03-31 15:14:44.696', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.self_scanning_rules
(id, division_sales_network_id, description, date_start, date_end, chk_min_num, chk_max_num, tx_interval, void_qta_max, void_val_max, num_valid_check, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 1, 'Regola Self Scanning Valida DSN=1 e In corso', '2021-03-02', '2099-12-31', 1, 10, 1, 100, 500.00, 1, '0', '0', '0', '2021-03-31 15:14:44.696', NULL, NULL, 1, NULL, NULL);

-- REBUILD SELF SCANNING SESSIONS
INSERT INTO loyalty.self_scanning_sessions
(id, device_id, start_date, end_date, card_no, store_code, flg_state, void_count, void_total)
VALUES(0, '1', '2021-03-31 15:41:24.000', '2021-03-31 15:43:42.355', '14', '2', '1', 1, 10.00);
INSERT INTO loyalty.self_scanning_sessions
(id, device_id, start_date, end_date, card_no, store_code, flg_state, void_count, void_total)
VALUES(1, '1', '2021-03-31 15:41:24.000', '2021-03-31 15:43:42.355', '14', '2', '0', 1, 10.00);
INSERT INTO loyalty.self_scanning_sessions
(id, device_id, start_date, end_date, card_no, store_code, flg_state, void_count, void_total)
VALUES(2, '1', '2021-03-31 15:39:42.000', '2021-03-31 15:42:50.000', '12', '2', '0', 1, 10.00);

-- REBUILD SELF SCANNING SERVICE DETAIL
INSERT INTO loyalty.self_scanning_service_detail
(id, self_scanning_service_id, division_id, store_id, trx_num, term_id, operator_id, trx_date, time_trx, card_id, customer_id, flg_chk_result, rmnd_val, flg_chk, last_chk_chance, curr_chk_chance, number_trx_checked, number_trx_used, number_last_check, spot_chk_status, time_last_chk, reason_id, not_payed_trx, num_forced_rescan, num_up_rescan, num_eq_rescan, num_down_rescan, flg_host_status, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, trx_json, trx_json_app)
VALUES(0, 1, 1, 2, 1, 71, '29', '2021-03-31', '10:23:45', 14, 12, '0', 0, '0', '0         ', '0         ', 10, 10, 9, 0, '2021-03-31 15:40:45.823', 2, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '2021-03-31 15:40:45.823', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO loyalty.self_scanning_service_detail
(id, self_scanning_service_id, division_id, store_id, trx_num, term_id, operator_id, trx_date, time_trx, card_id, customer_id, flg_chk_result, rmnd_val, flg_chk, last_chk_chance, curr_chk_chance, number_trx_checked, number_trx_used, number_last_check, spot_chk_status, time_last_chk, reason_id, not_payed_trx, num_forced_rescan, num_up_rescan, num_eq_rescan, num_down_rescan, flg_host_status, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, trx_json, trx_json_app)
VALUES(1, 1, 1, 2, 1, 23, '29', '2021-03-31', '10:23:58', 14, 12, '0', 0, '0', '0         ', '0         ', 10, 10, 9, 0, '2021-03-31 15:40:45.823', 2, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '2021-03-31 15:40:45.823', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO loyalty.self_scanning_service_detail
(id, self_scanning_service_id, division_id, store_id, trx_num, term_id, operator_id, trx_date, time_trx, card_id, customer_id, flg_chk_result, rmnd_val, flg_chk, last_chk_chance, curr_chk_chance, number_trx_checked, number_trx_used, number_last_check, spot_chk_status, time_last_chk, reason_id, not_payed_trx, num_forced_rescan, num_up_rescan, num_eq_rescan, num_down_rescan, flg_host_status, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, trx_json, trx_json_app)
VALUES(2, 1, 1, 2, 1, 23, '6', '2021-03-31', '10:24:01', 12, 4, '0', 0, '0', '0         ', '0         ', 10, 10, 9, 0, '2021-03-31 15:40:45.823', 2, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '2021-03-31 15:40:45.823', NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- REBUILD SELF SCANNING RULES DTL
INSERT INTO loyalty.self_scanning_rules_dtl
(id, self_scanning_rules_id, row_no, min, max, step, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 1, 2, 1.00, 2.00, 1, '1', '0', '0', '2021-03-31 15:26:29.114', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.self_scanning_rules_dtl
(id, self_scanning_rules_id, row_no, min, max, step, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 1, 1.00, 2.00, 1, '0', '0', '0', '2021-03-31 15:26:28.975', NULL, NULL, 1, NULL, NULL);
INSERT INTO loyalty.self_scanning_rules_dtl
(id, self_scanning_rules_id, row_no, min, max, step, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, 1, 1.00, 2.00, 1, '0', '0', '0', '2021-03-31 15:26:28.975', NULL, NULL, 1, NULL, NULL);

-- REBUILD SELF SCANNING ITEMS
INSERT INTO loyalty.self_scanning_items
(id, idsession, barcode, iditem, qty, price, discount, total, total_discount)
VALUES(1, 1, '1234567', '22', 1, 12.75, 1.25, 11.50, 1.25);
INSERT INTO loyalty.self_scanning_items
(id, idsession, barcode, iditem, qty, price, discount, total, total_discount)
VALUES(2, 1, '7654321', '22', 2, 10.25, 0.00, 20.50, 0.00);
INSERT INTO loyalty.self_scanning_items
(id, idsession, barcode, iditem, qty, price, discount, total, total_discount)
VALUES(3, 2, '7654321', '18', 1, 10.25, 0.00, 10.25, 0.00);

-- REBUILD SELF SCANNING TOTALS
INSERT INTO loyalty.self_scanning_totals
(idsession, totalitems, totalamount, totaldiscounts, amounttopay, flg_state)
VALUES(0, 2, 33.25, 1.25, 32.0000, '1');
INSERT INTO loyalty.self_scanning_totals
(idsession, totalitems, totalamount, totaldiscounts, amounttopay, flg_state)
VALUES(1, 2, 33.25, 1.25, 32.0000, '0');
INSERT INTO loyalty.self_scanning_totals
(idsession, totalitems, totalamount, totaldiscounts, amounttopay, flg_state)
VALUES(2, 1, 10.25, 0.00, 10.2500, '0');

/* ========================================================= 19 REBUILD ============================================================ *
 *
 * Ripopola le tabelle dello schema PROMOTION e del Catalogo premi
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 * ACTION:				RIPOPOLA LE TABELLE DELLO SCHEMA PROMOTION E CATALOGO PREMI (LOYALTY)
 *
 * SCHEMA: 				PROMOTION, LOYALTY
 *
 * REBUILDED TABLES:	ochannel	ochannel_user	catalog 	catalog_div_sal_net	 catalog_gift_itm   gift_template
 *
 * 						reservation_gift_status     campaign_ochannle      message_layout    type_gift  type_gift_itm
 *
 *                      catalog_gift     reservation    reservation_gift_head_received   reservation_gift_item_received
 *
 *                      reservation_itm   gift_itm_promo	campaign	wizard	campaign_type	layout	gift_status_definition
 *
 * --------------------------------------------------------------------------------------------------------------------------------- *
 */

-- REBUILD [PROMOTION] OCHANNEL
INSERT INTO promotion.ochannel
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ochannel_type_pid)
VALUES(0, 'DITR', 'Ditron', '0', '0', '0', '2020-05-05 18:04:16.000', NULL, NULL, 1, NULL, NULL, 17);
INSERT INTO promotion.ochannel
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ochannel_type_pid)
VALUES(1, 'ECOMM', 'eCommerce', '0', '0', '0', '2020-05-05 18:04:16.000', NULL, NULL, 1, NULL, NULL, 17);
INSERT INTO promotion.ochannel
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, ochannel_type_pid)
VALUES(2, 'VS54', 'TouchPoint VS54', '0', '0', '0', '2020-05-05 18:04:16.000', NULL, NULL, 1, NULL, NULL, 17);

-- REBUILD [PROMOTION] OCHANNEL USER
INSERT INTO promotion.ochannel_user
(id, ochannel_id, user_id, flg_default, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 50, '0', '0', '0', '0', '2020-11-20 18:04:16.000', NULL, NULL, 666, NULL, NULL);

-- REBUILD [PROMOTION] CATALOG
INSERT INTO promotion.catalog
(id, code, description, dt_start, dt_end, id_promo_type_with, id_promo_type_wout, barcode_cont_pickup, barcode_nocont_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(0, 'test', 'test','2021-09-17', '2023-09-1', NULL, NULL, NULL, NULL, '0', '0', '0', '2021-09-22 18:03:10', NULL, NULL, 1, NULL, NULL);
INSERT INTO promotion.catalog
(id, code, description, dt_start, dt_end, id_promo_type_with, id_promo_type_wout, barcode_cont_pickup, barcode_nocont_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'test1', 'test1','2021-09-17', '2023-09-1', NULL, NULL, NULL, NULL, '0', '0', '0', '2021-09-22 18:03:10', NULL, NULL, 1, NULL, NULL);

-- REBUILD [PROMOTION] CATALOG DIVISION SALES NETWORK
INSERT INTO promotion.catalog_div_sal_net
(id, catalog_id, division_sales_network_id, dt_start_reservation, dt_end_reservation, acm_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 1, 1, '2021-09-23', '2025-09-23', 0, '0', '0', '0','2021-09-23 10:00:00', NULL, NULL, 0, 0, NULL);
INSERT INTO promotion.catalog_div_sal_net
(id, catalog_id, division_sales_network_id, dt_start_reservation, dt_end_reservation, acm_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 10000, 1, '2021-09-23', '2025-09-23', 0, '0', '0', '0','2021-09-23 10:00:00', NULL, NULL, 0, 0, NULL);


-- REBUILD [PROMOTION] CATALOG GIFT ITEM
INSERT INTO promotion.catalog_gift_itm
(id, catalog_gift_id, progres, rdm_points, rdm_value, barcode, barcode_print, barcode_format, article_code, itm_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 14, 1, 100, NULL, '24535007', '24535007', '0001', '453500', '002', '0', '0', '0', '2021-09-23 10:00:00', NULL, NULL, 50, NULL, NULL);

-- REBULD [PROMOTION] GIFT TEMPLATE
INSERT INTO promotion.gift_template (type_gift_id,delivery_type,comm_action,comm_type,"template",flg_state,flg_kf,flg_dpl,ts_ins,ts_upd,ts_del,user_ins_id,user_upd_id,user_del_id,priority)
VALUES
	 (1,'0002','confirm','mobile','conferma_casa_premi_template_mobile.json','0','0','0','2021-06-21 16:35:52.082',NULL,NULL,50,NULL,NULL,2),
	 (1,'0001','confirm','email','conferma_pdv_premi_template_email.json','0','0','0','2021-06-21 16:35:52.082',NULL,NULL,50,NULL,NULL,1),
	 (1,'0001','confirm','mobile','conferma_pdv_premi_template_mobile.json','0','0','0','2021-06-21 16:35:52.082',NULL,NULL,50,NULL,NULL,2),
	 (2,'0004','confirm','email','conferma_online_premi_template_email.json','0','0','0','2021-06-21 16:35:52.082',NULL,NULL,50,NULL,NULL,1),
	 (0,'0000','cancel','email','annulla_premio_template_email.json','0','0','0','2021-06-21 16:35:52.082',NULL,NULL,50,NULL,NULL,1),
	 (0,'0000','cancel','mobile','annulla_premio_template_mobile.json','0','0','0','2021-06-21 16:35:52.082',NULL,NULL,50,NULL,NULL,2),
	 (1,'0001','pickup','email','ritiro_premi_template_email.json','0','0','0','2021-06-21 16:35:52.082',NULL,NULL,50,NULL,NULL,1),
	 (1,'0001','pickup','mobile','ritiro_premi_template_mobile.json','0','0','0','2021-06-21 16:35:52.082',NULL,NULL,50,NULL,NULL,2),
	 (1,'0002','confirm','email','conferma_casa_premi_template_email.json','0','0','0','2021-06-21 16:35:52.082',NULL,NULL,50,NULL,NULL,1);

-- REBUILD [LOYALTY] RESERVATION GIFT STATUS
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 1, 7, NULL, '0', '0', '0', '2021-06-11 15:22:32.641', '2021-06-16 08:10:36.269', NULL, 1, 50, 0);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(9, 5, 7, NULL, '0', '0', '0', '2021-06-16 10:33:51.135', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(10, 4, 5, NULL, '0', '0', '0', '2021-06-16 13:07:19.573', '2021-06-16 15:55:08.798', '2021-06-16 15:54:30.923', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(16, 2, 6, NULL, '0', '0', '0', '2021-06-11 15:22:00.089', '2021-06-21 14:37:24.617', NULL, 1, 50, 0);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(17, 1, 6, NULL, '0', '0', '0', '2021-06-11 15:22:00.089', '2021-06-21 14:37:24.617', NULL, 1, 50, 0);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(18, 0, 6, NULL, '0', '0', '0', '2021-06-11 15:22:00.089', '2021-06-21 14:37:24.617', NULL, 1, 50, 0);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(15, 3, 6, NULL, '0', '0', '0', '2021-06-11 15:22:00.089', '2021-06-21 14:37:24.617', NULL, 1, 50, 0);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(12, 7, 5, 'comm', '1', '0', '0', '2021-06-22 08:13:54.820', '2021-06-22 08:14:10.041', '2021-06-22 08:14:23.143', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(13, 6, 0, 'comm', '1', '0', '0', '2021-06-22 08:13:54.820', '2021-06-22 08:14:10.041', '2021-06-22 08:14:23.143', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(14, 6, 2, 'comm', '1', '0', '0', '2021-06-22 08:13:54.820', '2021-06-22 08:14:10.041', '2021-06-22 08:14:23.143', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 4, 7, NULL, '0', '0', '0', '2021-06-11 15:22:00.089', '2021-09-21 08:16:31.432', '2021-09-21 08:16:29.115', 1, 50, 50);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 1, 2, NULL, '0', '0', '0', '2021-06-11 15:22:17.159', '2021-06-15 10:14:47.586', NULL, 1, 50, 0);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 1, 5, NULL, '0', '0', '0', '2021-06-15 10:11:53.659', '2021-06-15 10:35:57.994', '2021-06-15 10:35:07.746', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, 3, 4, NULL, '0', '0', '0', '2021-06-15 10:36:25.434', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(8, 3, 7, NULL, '0', '0', '0', '2021-06-16 08:06:48.751', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_status
(id, status_initial_id, status_final_id, "action", flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 2, 3, NULL, '0', '0', '0', '2021-06-11 15:22:47.317', '2021-07-23 14:24:12.768', '2021-07-23 15:12:48.139', 1, 50, 50);

-- REBUILD [PROMOTION] LAYOUT
INSERT INTO promotion.layout
(id, code, description, flg_graph, bmp_path, bmp_ref, layout_barcode, layout_print_type_pid, layout_till_type_pid, layout_template_pid, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(57, '1', 'Layout Welcom per web', '1', 'url', 'immaginewelcom', NULL, NULL, NULL, NULL, '0', '0', '0', '2019-08-30 13:10:12.276', NULL, NULL, 3, NULL, NULL);


-- REBUILD [PROMOTION] CAMPAIGN TYPE
INSERT INTO promotion.campaign_type
(id, code, description, check_impl_class, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(18, '1', 'Tipo Campagna Test', NULL, '0', '0', '0', '2019-05-31 12:26:29.726', '2020-01-17 18:57:19.323', NULL, 50, 11, NULL);


-- REBUILD [PROMOTION] WIZARD
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(14, '13', 'Prova 3 Template con valori di default (4, 17, 22)', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "fe_template_id", "default": 4}, {"name": "redemption_template_id", "default": 17}, {"name": "emission_template_id", "default": 22}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(15, '14', '3 flg in fondo settati a"1", "0", "1"', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "flg_fidelity", "default": "1"}, {"name": "flg_card_holder", "default": "0"}, {"name": "flg_open_coupon", "default": "1"}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(7, '6', 'Description Default & type_message_id mandatory false', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "description", "default": "prova description default"}, {"name": "type_message_id", "mandatory": false}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(6, '5', 'Code default  Readonly', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "code", "default": "provaCodeDefaultReadonly", "readonly": true}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(16, '15', 'Discount type/amt readonly', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "discount_type_id", "readonly": true}, {"name": "discount_amt", "readonly": true}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(17, '16', 'Card holder default ''1'' readonly true', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "flg_card_holder", "default": "1", "readonly": true}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(18, '17', 'Uno di ognuno readonly', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "code", "default": "prova", "readonly": true}, {"name": "discount_type_id", "default": 3, "readonly": true}, {"name": "discount_amt", "default": 3, "readonly": true}, {"name": "flg_fidelity", "default": "1", "readonly": true}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(21, 'CP1', 'Campagna di prova 1', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"max": null, "min": null, "name": "description", "default": null, "readonly": true, "mandatory": true}]}, {"step": "details", "fields": [{"name": "message_id", "mandatory": true}, {"name": "start_date", "mandatory": true}, {"name": "end_date", "mandatory": true}, {"name": "start_redem_date", "default": null, "readonly": true}, {"name": "end_redem_date", "default": null, "readonly": true}]}]'::jsonb, 'campaign');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(22, 'CP2', 'Campagna di prova 2', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"max": null, "min": null, "name": "description", "default": null, "readonly": true, "mandatory": true}]}, {"step": "details", "fields": [{"name": "message_id", "mandatory": true}, {"name": "start_date", "mandatory": true}, {"name": "end_date", "mandatory": true}, {"name": "start_redem_date", "default": null, "readonly": true}, {"name": "end_redem_date", "default": null, "readonly": true}]}]'::jsonb, 'campaign');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(2, '1', 'Stretch Value Min Max Default null', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"max": 10, "min": 3, "name": "stretch_value", "default": null}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(4, '3', 'Coupon Type & Notes Default', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "coupon_type", "default": "ProvaCouponDefault"}, {"name": "notes", "default": "ProvaNotesDefault"}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(1, 'Coupon', 'Code Default Mandatory', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "code", "default": "ProvaCode", "mandatory": true}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(3, '4', 'Code Default Readonly & Discount Amt Min e Max Deafault', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"max": 3, "min": 1, "name": "discount_amt", "default": 2}, {"name": "code", "default": "ProvaCodeDefault", "readonly": true}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(13, '12', 'Stretch Value (min 0 max 10 def 2)  & TreshHold Value (min null, max 5 def null)', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"max": 10, "min": 0, "name": "stretch_value", "default": 2}, {"max": 5, "min": null, "name": "threshold_value", "default": null}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(20, 'CampaignNoRedem', 'Campaign without redemption', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"max": null, "min": null, "name": "description", "default": null, "readonly": true, "mandatory": true}]}, {"step": "details", "fields": [{"name": "message_id", "mandatory": true}, {"name": "start_date", "mandatory": true}, {"name": "end_date", "mandatory": true}, {"name": "start_redem_date", "default": null, "readonly": true}, {"name": "end_redem_date", "default": null, "readonly": true}]}]'::jsonb, 'campaign');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(10, '9', 'Bar Code Type Id Default 2613', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "barcode_type_pid", "default": 2613}, {"name": "type_message_id", "default": 19}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(8, '7', 'Discount Type Default 22', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "discount_type_id", "default": 22}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(5, '2', 'Bar Code Default mandatory true', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "barcode", "default": "provaBarCodeDefault", "mandatory": true}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(9, '8', 'Message Types Default 19 & Readonly true', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "type_message_id", "default": 19, "readonly": true}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(23, 'CP3', 'Campagna di prova 3', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"max": null, "min": null, "name": "description", "default": null, "readonly": true, "mandatory": true}]}, {"step": "details", "fields": [{"name": "message_id", "mandatory": true}, {"name": "start_date", "mandatory": true}, {"name": "end_date", "mandatory": true}, {"name": "start_redem_date", "default": null, "readonly": true}, {"name": "end_redem_date", "default": null, "readonly": true}]}]'::jsonb, 'campaign');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(24, 'CP4', 'HEAD: code e description default readonly', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"max": null, "min": null, "name": "code", "default": "provacodedefault", "readonly": true}, {"max": null, "min": null, "name": "description", "default": "provadescriptiondefault", "readonly": true}]}, {"step": "details", "fields": [{"name": "message_id", "mandatory": true}, {"name": "start_date", "mandatory": true}, {"name": "end_date", "mandatory": true}, {"name": "start_redem_date", "default": null, "readonly": true}, {"name": "end_redem_date", "default": null, "readonly": true}]}]'::jsonb, 'campaign');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(11, '10', 'Cluster Id Default 50', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"name": "cluster_id", "default": 50, "readonly": true}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(12, '11', 'Days From Emission min 3 max 5 def 4', '0', '0', '0', '2019-06-14 00:00:00.000', NULL, NULL, 60, NULL, NULL, '{"fields": [{"max": 5, "min": 3, "name": "days_from_emission", "default": 4}]}'::jsonb, 'message');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(25, 'CP5', 'HEAD:  2 date default e readonly', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"max": null, "min": null, "name": "start_date", "default": "2019-06-26", "readonly": true}, {"max": null, "min": null, "name": "start_redem_date", "default": "2019-06-26", "readonly": true}]}, {"step": "details", "fields": [{"name": "message_id", "mandatory": true}, {"name": "start_date", "mandatory": true}, {"name": "end_date", "mandatory": true}, {"name": "start_redem_date", "default": null, "readonly": true}, {"name": "end_redem_date", "default": null, "readonly": true}]}]'::jsonb, 'campaign');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(26, 'CP6', 'HEAD:  small desc default e campaign type default readonly', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"max": null, "min": null, "name": "small_description", "default": "provasmalldefault", "readonly": true}, {"max": null, "min": null, "name": "campaign_type_id", "default": 31, "readonly": true}]}, {"step": "details", "fields": [{"name": "message_id", "mandatory": true}, {"name": "start_date", "mandatory": true}, {"name": "end_date", "mandatory": true}, {"name": "start_redem_date", "default": null, "readonly": true}, {"name": "end_redem_date", "default": null, "readonly": true}]}]'::jsonb, 'campaign');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(27, 'CP7', 'HEAD:  priority min max default e flag default 1 readonly', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"max": 5, "min": 2, "name": "priority", "default": "3", "readonly": false}, {"max": null, "min": null, "name": "flag_pressure_rules", "default": "1", "readonly": true}]}, {"step": "details", "fields": [{"name": "message_id", "mandatory": true}, {"name": "start_date", "mandatory": true}, {"name": "end_date", "mandatory": true}, {"name": "start_redem_date", "default": null, "readonly": true}, {"name": "end_redem_date", "default": null, "readonly": true}]}]'::jsonb, 'campaign');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(28, 'AAA', 'HEAD: cambia solo code', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"name": "code", "default": "cod"}, {"name": "description", "default": "desc"}, {"name": "start_date", "default": "2019-06-26"}, {"name": "end_date", "default": "2019-06-27"}, {"name": "start_redem_date", "default": "2019-06-26"}, {"name": "end_redem_date", "default": "2019-06-27"}, {"name": "small_description", "default": "desc"}, {"name": "campaign_type_id", "default": 18}]}]'::jsonb, 'campaign');
INSERT INTO promotion.wizard
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, j_definition, wtype)
VALUES(29, 'BBB', 'HEAD: cambia solo code DETAIL date defult', '0', '0', '0', '2019-06-18 00:00:00.000', NULL, NULL, 60, NULL, NULL, '[{"step": "main", "fields": [{"name": "code", "default": "cod", "mandatory": true}, {"name": "description", "default": "desc", "mandatory": true}, {"name": "start_date", "default": "2019-06-26", "mandatory": true}, {"name": "end_date", "default": "2019-06-27", "mandatory": true}, {"name": "start_redem_date", "default": "2019-06-26", "mandatory": true}, {"name": "end_redem_date", "default": "2019-06-27", "mandatory": true}, {"name": "small_description", "default": "desc", "mandatory": true}, {"name": "campaign_type_id", "default": 18, "mandatory": true}]}, {"step": "details", "fields": [{"name": "message_id", "default": 34, "mandatory": true}, {"name": "start_date", "default": "2019-07-05", "mandatory": true}, {"name": "end_date", "default": "2019-07-06", "mandatory": true}, {"name": "start_redem_date", "default": "2019-07-10", "mandatory": true}, {"name": "end_redem_date", "default": "2019-07-12", "mandatory": true}, {"name": "description", "default": "bulabula", "mandatory": true}, {"name": "dsnList", "default": [1001, 1002, 1005], "mandatory": true}]}]'::jsonb, 'campaign');



-- REBUILD [PROMOTION] CAMPAIGN
INSERT INTO promotion.campaign
(id, code, start_date, end_date, start_redem_date, end_redem_date, description, small_description, campaign_type_id, priority, flag_pressure_rules, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, wizard_id)
VALUES(102, 'USAMI', '2019-06-26', '2019-06-27', '2019-06-26', '2019-06-27', 'desc', 'desc', 18, 0, '0', '0', '0', '0', '2019-06-28 16:50:10.833', NULL, NULL, 60, NULL, NULL, 28);
INSERT INTO promotion.campaign
(id, code, start_date, end_date, start_redem_date, end_redem_date, description, small_description, campaign_type_id, priority, flag_pressure_rules, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, wizard_id)
VALUES(115, 'codTU46U7TYUR', '2019-06-26', '2019-06-27', '2019-06-26', '2019-06-27', 'desc', 'desc', 18, 0, '0', '0', '0', '0', '2019-07-03 17:52:23.684', NULL, NULL, 60, NULL, NULL, 29);
INSERT INTO promotion.campaign
(id, code, start_date, end_date, start_redem_date, end_redem_date, description, small_description, campaign_type_id, priority, flag_pressure_rules, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, wizard_id)
VALUES(116, 'codMIAO', '2019-06-26', '2019-06-27', '2019-06-26', '2019-06-27', 'desct', 'desc', 18, 0, '0', '0', '0', '0', '2019-07-04 09:39:12.280', '2019-07-04 09:41:16.020', NULL, 60, 60, NULL, 28);
INSERT INTO promotion.campaign
(id, code, start_date, end_date, start_redem_date, end_redem_date, description, small_description, campaign_type_id, priority, flag_pressure_rules, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, wizard_id)
VALUES(119, 'cod4', '2019-06-26', '2019-06-27', '2019-06-26', '2019-06-27', 'desc', 'desc', 18, 0, '0', '0', '0', '0', '2019-07-04 09:43:02.900', NULL, NULL, 60, NULL, NULL, 28);
INSERT INTO promotion.campaign
(id, code, start_date, end_date, start_redem_date, end_redem_date, description, small_description, campaign_type_id, priority, flag_pressure_rules, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, wizard_id)
VALUES(148, 'Campagna 1', '2019-06-26', '2019-06-27', '2019-06-26', '2019-06-27', 'desc', 'desc', 18, 0, '0', '0', '0', '0', '2019-07-05 09:36:11.241', '2020-03-20 16:06:02.064', NULL, 60, 3, NULL, 29);


-- REBUILD [PROMOTION] CAMPAIGN OCHANNEL
INSERT INTO promotion.campaign_ochannel
(id, campaign_id, ochannel_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(19, 115, 1, '0', '0', '0', '2019-07-03 17:52:35.417', NULL, NULL, 60, NULL, NULL);
INSERT INTO promotion.campaign_ochannel
(id, campaign_id, ochannel_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(21, 102, 1, '0', '0', '0', '2019-07-04 09:15:35.321', NULL, NULL, 60, NULL, NULL);
INSERT INTO promotion.campaign_ochannel
(id, campaign_id, ochannel_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(28, 116, 1, '0', '0', '0', '2019-07-04 09:42:08.602', NULL, NULL, 60, NULL, NULL);
INSERT INTO promotion.campaign_ochannel
(id, campaign_id, ochannel_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(36, 119, 1, '0', '0', '0', '2019-07-04 09:43:36.874', NULL, NULL, 60, NULL, NULL);
INSERT INTO promotion.campaign_ochannel
(id, campaign_id, ochannel_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(40, 148, 1, '0', '0', '0', '2019-07-05 09:36:34.138', NULL, NULL, 60, NULL, NULL);


-- REBUILD [PROMOTION] MESSAGE LAYOUT
INSERT INTO promotion.message_layout
(id, message_id, ochannel_id, message_layout_id, start_visibility_date, end_visibility_date, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(23, 38, 1, 57, '2019-06-26', '2019-06-23', '0', '0', '0', '2019-06-26 09:21:14.754', NULL, NULL, 60, NULL, NULL);
INSERT INTO promotion.message_layout
(id, message_id, ochannel_id, message_layout_id, start_visibility_date, end_visibility_date, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 3, 1, 57, '2019-06-24', '2019-06-26', '0', '0', '0', '2019-06-25 09:52:03.210', NULL, NULL, 60, NULL, NULL);
INSERT INTO promotion.message_layout
(id, message_id, ochannel_id, message_layout_id, start_visibility_date, end_visibility_date, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(14, 15, 1, 57, '2019-06-20', '2019-06-28', '1', '0', '0', '2019-06-25 15:48:51.777', NULL, '2019-06-25 15:52:14.293', 60, NULL, 60);
INSERT INTO promotion.message_layout
(id, message_id, ochannel_id, message_layout_id, start_visibility_date, end_visibility_date, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(17, 15, 1, 57, '2019-06-01', '2019-06-02', '1', '0', '0', '2019-06-25 15:57:58.111', '2019-06-25 15:58:02.044', '2019-06-25 15:58:28.643', 60, 60, 60);

-- REBUILD [PROMOTION] TYPE GIFT
INSERT INTO promotion.type_gift
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 'FIS', 'Fisico', '0', '0', '0', '2021-06-08 07:29:51.000', NULL, NULL, 50, 50, NULL);
INSERT INTO promotion.type_gift
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 'DIG', 'Digitale', '0', '0', '0', '2021-06-08 14:00:08.308', NULL, NULL, 50, NULL, NULL);

-- REBUILD [PROMOTION] TYPE GIFT ITEM
INSERT INTO promotion.type_gift_itm
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, '006', 'Ritiro prenotazione articolo punti + contributo', '0', '0', '0', '2021-06-24 14:54:49.690', NULL, NULL, 1, 0, 0);
INSERT INTO promotion.type_gift_itm
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, '005', 'Prenotazione articolo punti + contributo', '0', '0', '0', '2021-06-24 14:55:11.215', NULL, NULL, 1, 0, 0);
INSERT INTO promotion.type_gift_itm
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, '004', 'Articolo punti + contributo', '0', '0', '0', '2021-06-24 14:55:32.476', NULL, NULL, 1, 0, 0);
INSERT INTO promotion.type_gift_itm
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, '003', 'Ritiro prenotazione articolo 100% punti', '0', '0', '0', '2021-06-24 14:55:48.997', NULL, NULL, 1, 0, 0);
INSERT INTO promotion.type_gift_itm
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, '002', 'Prenotazione articolo 100% punti', '0', '0', '0', '2021-06-24 14:56:08.331', NULL, NULL, 1, 0, 0);
INSERT INTO promotion.type_gift_itm
(id, code, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, '001', 'Articolo 100% punti', '0', '0', '0', '2021-06-24 14:56:16.204', NULL, NULL, 1, 0, 0);

-- REBUILD [PROMOTION] CATALOG GIFT
INSERT INTO promotion.catalog_gift
(id, catalog_id, itm_code, img_url, img_b64, description, flg_reserved, itm_code_host, type_gift_id, reservation_type, delivery_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(14, 1, '14', 'url', 'text', 'description', '0', 'itm_code_host', 1, 'rtype', 'dtype', '0', '0', '0', '2021-06-08 10:31:46.789', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.catalog_gift
(id, catalog_id, itm_code, img_url, img_b64, description, flg_reserved, itm_code_host, type_gift_id, reservation_type, delivery_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(15, 1, '15', 'url', 'text', 'description', '0', 'itm_code_host', 1, 'rtype', 'dtype', '0', '0', '0', '2021-06-08 10:41:23.210', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.catalog_gift
(id, catalog_id, itm_code, img_url, img_b64, description, flg_reserved, itm_code_host, type_gift_id, reservation_type, delivery_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(16, 1, '16', 'url', 'text', 'description', '0', 'itm_code_host', 1, 'rtype', 'dtype', '0', '0', '0', '2021-06-08 10:41:38.094', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.catalog_gift
(id, catalog_id, itm_code, img_url, img_b64, description, flg_reserved, itm_code_host, type_gift_id, reservation_type, delivery_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(17, 1, '17', 'url', 'text', 'description', '0', 'itm_code_host', 1, 'rtype', 'dtype', '0', '0', '0', '2021-06-08 10:41:43.782', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.catalog_gift
(id, catalog_id, itm_code, img_url, img_b64, description, flg_reserved, itm_code_host, type_gift_id, reservation_type, delivery_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(20, 1, '20', 'url', 'text', 'description', '0', 'itm_code_host', 1, 'rtype', 'dtype', '0', '0', '0', '2021-06-08 10:45:02.128', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.catalog_gift
(id, catalog_id, itm_code, img_url, img_b64, description, flg_reserved, itm_code_host, type_gift_id, reservation_type, delivery_type, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(23, 1, '23', 'url', 'text', 'description', '0', 'itm_code_host', 1, 'rtype', 'dtype', '0', '0', '0', '2021-06-08 13:06:33.590', NULL, NULL, 50, NULL, NULL);

-- REBUILD [LOYALTY] GIFT STATUS DEFINITION
INSERT INTO loyalty.gift_status_definition
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, code)
VALUES(0, 'Prenotato', '0', '0', '0', '2021-06-11 14:46:12.451', NULL, NULL, 1, 0, 0, NULL);
INSERT INTO loyalty.gift_status_definition
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, code)
VALUES(1, 'PrenotatoDaPagare', '0', '0', '0', '2021-06-11 14:47:26.856', NULL, NULL, 1, 0, 0, NULL);
INSERT INTO loyalty.gift_status_definition
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, code)
VALUES(7, 'Ritirato', '0', '0', '0', '2021-06-11 14:47:26.856', NULL, NULL, 1, 0, 0, NULL);
INSERT INTO loyalty.gift_status_definition
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, code)
VALUES(2, 'InElaborazione', '0', '0', '0', '2021-06-11 14:47:26.856', NULL, NULL, 1, 0, 0, NULL);
INSERT INTO loyalty.gift_status_definition
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, code)
VALUES(3, 'Pronto', '0', '0', '0', '2021-06-11 14:47:26.856', NULL, NULL, 1, 0, 0, NULL);
INSERT INTO loyalty.gift_status_definition
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, code)
VALUES(4, 'Pagato', '0', '0', '0', '2021-06-11 14:47:26.856', NULL, NULL, 1, 0, 0, NULL);
INSERT INTO loyalty.gift_status_definition
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, code)
VALUES(5, 'Confermato', '0', '0', '0', '2021-06-11 14:47:26.856', NULL, NULL, 1, 0, 0, NULL);
INSERT INTO loyalty.gift_status_definition
(id, description, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, code)
VALUES(6, 'Annullato', '0', '0', '0', '2021-06-11 14:47:26.856', NULL, NULL, 1, 0, 0, NULL);



-- REBUILD [LOYALTY] RESERVATION
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, '2020-12-31 23:00:00.000', 2, 4, 1, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-24 03:33:04.489', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, '2020-12-31 23:00:00.000', 2, 2, 1, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-24 03:33:04.489', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(30, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-25 03:31:39.993', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(31, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-25 03:31:40.034', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(32, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-25 03:33:16.872', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(33, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-25 03:33:16.913', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(10, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-15 03:31:25.482', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(13, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-15 03:32:49.592', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(16, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-16 03:32:50.389', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(18, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-19 03:31:33.711', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(19, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-19 03:31:33.738', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(20, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-19 03:33:05.706', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(21, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-19 03:33:05.739', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(22, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-23 03:31:35.687', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(34, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-26 03:31:38.314', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(25, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-23 03:33:05.645', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(26, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-24 03:31:31.154', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(27, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-24 03:31:31.186', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(28, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-24 03:33:04.451', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(35, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-26 03:31:38.356', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(36, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-26 03:33:06.536', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(37, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-26 03:33:06.573', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(38, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-30 03:31:31.091', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(39, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-30 03:31:31.141', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(40, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-30 03:33:11.051', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(41, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-06-30 03:33:11.090', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(42, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-01 03:31:32.002', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(43, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-01 03:31:32.038', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(44, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-01 03:32:55.177', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(45, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-01 03:32:55.221', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(46, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-02 03:31:30.192', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(47, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-02 03:31:30.233', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(48, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-02 03:33:00.971', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(49, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-02 03:33:01.005', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(51, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-06 03:31:33.616', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(52, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-06 03:32:53.453', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(53, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-06 03:32:53.484', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(54, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-07 03:31:28.527', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(55, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-07 03:31:28.563', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(56, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-07 03:32:52.574', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(57, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-07 03:32:52.608', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(58, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-09 03:31:49.016', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(59, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-09 03:31:49.058', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(60, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-09 03:33:23.686', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(61, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-09 03:33:23.731', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(62, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-10 03:31:40.988', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(63, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-10 03:31:41.025', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(64, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-10 03:33:12.891', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(66, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-13 03:31:42.774', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(69, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-13 03:33:15.359', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(70, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-14 03:31:39.757', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(71, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-14 03:31:39.795', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(72, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-14 03:33:07.297', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(73, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-14 03:33:07.349', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(74, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-15 03:31:36.287', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(75, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-15 03:31:36.336', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(76, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-15 03:33:09.818', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(77, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-15 03:33:09.857', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(78, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-16 03:31:33.976', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(79, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-16 03:31:34.013', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(80, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-16 03:33:07.990', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(81, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-16 03:33:08.030', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(82, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-17 03:31:36.758', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(83, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-17 03:31:36.801', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(84, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-17 03:33:09.788', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(85, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-17 03:33:09.821', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(86, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-20 03:31:39.628', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(87, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-20 03:31:39.665', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(90, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-21 03:31:33.613', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(91, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-21 03:31:33.650', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(92, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-21 03:33:05.738', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(93, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-21 03:33:05.770', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(94, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-22 03:31:40.273', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(95, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-22 03:31:40.327', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(96, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-22 03:33:12.201', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(97, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-22 03:33:12.236', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(98, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-23 03:31:47.224', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(99, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-23 03:31:47.265', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(100, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-23 03:33:17.609', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(101, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-23 03:33:17.639', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(102, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-24 03:31:42.701', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(103, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-24 03:31:42.748', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(105, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-24 03:33:22.782', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(106, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-24 03:33:22.828', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(108, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-27 03:31:36.239', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(109, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-27 03:31:36.285', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(111, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-27 03:33:12.602', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(112, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-27 03:33:12.645', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(114, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-28 03:31:31.279', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(115, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-28 03:31:31.321', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(117, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-28 03:33:05.938', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(118, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-28 03:33:05.980', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(120, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-29 03:31:30.788', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(121, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-29 03:31:30.825', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(123, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-29 03:33:05.199', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(124, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-29 03:33:05.241', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(126, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-31 03:31:31.663', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(127, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-31 03:31:31.709', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(129, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-31 03:32:52.465', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(130, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-07-31 03:32:52.499', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(132, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-03 03:31:31.686', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(133, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-03 03:31:31.736', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(135, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-03 03:32:59.692', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(136, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-03 03:32:59.735', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(138, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-04 03:31:39.252', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(139, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-04 03:31:39.295', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(141, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-04 03:33:08.529', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(142, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-04 03:33:08.574', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(144, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-05 03:31:34.504', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(145, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-05 03:31:34.543', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(147, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-05 03:32:58.609', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(148, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-05 03:32:58.643', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(150, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-06 03:31:23.499', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(151, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-06 03:31:23.536', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(153, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-06 03:32:41.841', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(154, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-06 03:32:41.872', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(156, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-07 03:31:31.266', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(157, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-07 03:31:31.308', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(159, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-07 03:32:56.602', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(160, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-07 03:32:56.637', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(162, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-10 03:31:31.043', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(163, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-10 03:31:31.084', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(165, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-10 03:33:04.696', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(166, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-10 03:33:04.740', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(170, '2021-01-01 00:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-13 09:33:43.394', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(190, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-28 03:32:57.773', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(191, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-28 03:32:57.811', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(175, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-21 03:31:29.399', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(176, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-21 03:31:29.436', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(178, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-21 03:32:54.260', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(179, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-21 03:32:54.297', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(174, '2021-01-01 00:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-13 10:05:15.132', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(181, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-27 03:31:50.907', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(193, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-31 03:31:50.547', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(194, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-31 03:31:50.590', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(196, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-31 03:33:34.313', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(182, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-27 03:31:50.954', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(184, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-27 03:33:28.854', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(185, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-27 03:33:28.916', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(187, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-28 03:31:32.819', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(188, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-28 03:31:32.863', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(197, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-08-31 03:33:34.367', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(199, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-01 03:31:34.048', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(200, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-01 03:31:34.089', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(202, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-01 03:32:58.250', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(203, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-01 03:32:58.302', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(205, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-02 03:31:35.606', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(206, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-02 03:31:35.642', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(208, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-02 03:32:58.985', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(209, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-02 03:32:59.032', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(211, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-03 03:31:34.511', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(212, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-03 03:31:34.554', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(214, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-03 03:33:03.217', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(215, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-03 03:33:03.250', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(217, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-07 03:31:25.049', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(218, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-07 03:31:25.082', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(220, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-07 03:32:48.365', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(221, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-07 03:32:48.416', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(223, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-08 03:31:29.176', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(224, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-08 03:31:29.211', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(226, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-08 03:32:56.607', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(227, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-08 03:32:56.639', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(229, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-09 03:31:39.609', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(230, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-09 03:31:39.650', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(232, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-09 03:33:05.625', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(233, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-09 03:33:05.666', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(235, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-10 03:31:49.106', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(236, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-10 03:31:49.145', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(238, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-10 03:33:19.103', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(239, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-10 03:33:19.143', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(241, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-11 03:31:56.878', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(242, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-11 03:31:56.921', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(244, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-11 03:33:23.398', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(245, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-11 03:33:23.439', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(247, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-13 07:56:32.117', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(248, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-13 07:56:32.164', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(249, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-13 07:57:48.411', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(250, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-13 07:57:48.454', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(252, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-13 10:37:22.968', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(253, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-13 10:37:23.019', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(255, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-13 10:38:39.669', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(256, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-13 10:38:39.703', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(261, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-17 03:33:21.792', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(262, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-17 03:33:21.832', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(264, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 07:48:39.681', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(265, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 07:48:39.730', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(267, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 07:50:14.840', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(268, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 07:50:14.881', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(272, '2021-01-01 00:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:18:12.273', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(273, '2021-01-01 00:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:18:12.810', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(284, '2021-01-01 00:00:00.000', 50, 207273, 47993, 2, 55, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:33:52.631', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(285, '2021-01-01 00:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:33:53.266', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(276, '2021-01-01 00:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:25:08.231', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(277, '2021-01-01 00:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:25:08.718', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(298, '2020-12-31 23:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:48:37.407', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(292, '2021-01-01 00:00:00.000', 50, 207273, 47993, 2, 55, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:41:02.903', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(280, '2021-01-01 00:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:27:32.559', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(281, '2021-01-01 00:00:00.000', 1, 48150, 48111, 1, 1, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:27:33.067', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(293, '2021-01-01 00:00:00.000', 50, 207273, 47993, 2, 55, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:41:03.387', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(288, '2021-01-01 00:00:00.000', 50, 207273, 47993, 2, 55, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:39:01.905', NULL, NULL, 51, NULL, NULL);
INSERT INTO loyalty.reservation
(id, dt_reservation, store_id, card_id, customer_id, acm_id, catalog_id, points_pre, points_used, mobile, email, city, address, address_number, zip_code, province_id, surname, "name", store_pickup_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(289, '2021-01-01 00:00:00.000', 50, 207273, 47993, 2, 55, 3000, 1000, '3345522109', 'email@email.com', 'Napoli', 'Via Diaz', '1', '80110', 1, 'Rossi', 'Mario', 1, '0', '0', '0', '2021-09-21 08:39:02.414', NULL, NULL, 51, NULL, NULL);

-- REBUILD [LOYALTY] RESERVATION GIFT HEAD RECEIVED
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-15 03:31:43.651', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-15 03:33:09.367', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-15 03:33:09.408', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-16 03:31:46.659', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-16 03:31:46.688', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(7, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-16 03:33:10.598', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(8, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-16 03:33:10.636', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(9, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-19 03:31:57.295', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(10, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-19 03:31:57.330', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(11, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-19 03:33:26.730', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(12, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-19 03:33:26.768', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(13, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-23 03:31:57.530', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(14, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-23 03:31:57.560', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(15, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-23 03:33:29.035', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(16, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-23 03:33:29.069', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(17, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-24 03:31:51.840', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(18, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-24 03:31:51.874', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(19, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-24 03:33:23.750', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(20, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-24 03:33:23.788', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(21, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-25 03:32:03.509', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(22, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-25 03:32:03.542', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(23, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-25 03:33:40.692', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(24, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-25 03:33:40.727', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(25, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-26 03:32:00.927', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(26, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-26 03:32:00.954', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(27, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-26 03:33:27.054', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(28, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-26 03:33:27.078', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(29, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-30 03:31:57.463', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(30, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-30 03:31:57.507', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(31, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-30 03:33:34.291', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(32, 2, '2021-01-01', 'note', '0', '0', '0', '2021-06-30 03:33:34.325', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(33, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-01 03:31:53.234', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(34, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-01 03:31:53.268', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(35, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-01 03:33:13.780', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(36, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-01 03:33:13.810', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(37, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-02 03:31:52.056', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(38, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-02 03:31:52.092', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(39, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-02 03:33:24.139', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(40, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-02 03:33:24.175', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(41, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-06 03:31:52.975', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(42, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-06 03:31:52.998', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(43, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-06 03:33:10.597', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(44, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-06 03:33:10.626', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(45, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-07 03:31:48.245', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(46, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-07 03:31:48.271', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(47, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-07 03:33:11.152', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(48, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-07 03:33:11.177', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(49, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-09 03:32:12.192', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(50, 2, '2021-09-01', 'testHead', '0', '0', '0', '2021-09-01 10:00:00.000', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(51, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-09 03:33:46.412', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(52, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-09 03:33:46.444', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(53, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-10 03:32:02.214', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(54, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-10 03:32:02.242', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(55, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-10 03:33:35.520', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(56, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-10 03:33:35.552', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(57, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-13 03:32:07.102', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(58, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-13 03:32:07.138', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(59, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-13 03:33:36.555', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(60, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-13 03:33:36.600', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(61, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-14 03:32:01.343', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(62, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-14 03:32:01.377', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(63, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-14 03:33:28.987', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(64, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-14 03:33:29.013', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(65, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-15 03:31:57.693', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(66, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-15 03:31:57.720', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(67, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-15 03:33:34.001', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(68, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-15 03:33:34.034', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(69, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-16 03:31:56.363', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(70, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-16 03:31:56.398', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(71, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-16 03:33:33.052', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(72, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-16 03:33:33.085', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(73, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-17 03:32:00.325', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(74, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-17 03:32:00.367', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(75, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-17 03:33:30.018', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(76, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-17 03:33:30.045', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(77, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-20 03:32:00.892', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(78, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-20 03:32:00.919', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(79, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-20 03:33:32.859', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(80, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-20 03:33:32.892', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(81, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-21 03:31:55.676', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(82, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-21 03:31:55.704', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(83, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-21 03:33:28.787', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(84, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-21 03:33:28.823', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(85, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-22 03:32:02.469', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(86, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-22 03:32:02.504', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(87, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-22 03:33:35.384', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(88, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-22 03:33:35.428', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(89, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-23 03:32:11.146', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(90, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-23 03:32:11.185', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(91, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-23 03:33:38.920', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(92, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-23 03:33:38.960', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(93, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-24 03:32:09.819', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(94, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-24 03:32:09.868', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(95, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-24 03:33:48.747', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(96, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-24 03:33:48.785', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(97, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-27 03:31:57.350', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(98, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-27 03:31:57.378', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(99, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-27 03:33:36.439', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(100, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-27 03:33:36.473', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(101, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-28 03:31:53.492', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(102, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-28 03:31:53.521', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(103, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-28 03:33:30.466', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(104, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-28 03:33:30.506', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(105, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-29 03:31:54.003', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(106, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-29 03:31:54.033', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(107, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-29 03:33:26.737', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(108, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-29 03:33:26.766', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(109, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-31 03:31:50.479', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(110, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-31 03:31:50.507', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(111, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-31 03:33:09.491', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(112, 2, '2021-01-01', 'note', '0', '0', '0', '2021-07-31 03:33:09.516', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(113, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-03 03:31:51.819', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(114, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-03 03:31:51.854', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(115, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-03 03:33:20.005', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(116, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-03 03:33:20.038', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(117, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-04 03:32:00.320', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(118, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-04 03:32:00.348', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(119, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-04 03:33:27.647', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(120, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-04 03:33:27.684', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(121, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-05 03:31:53.649', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(122, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-05 03:31:53.674', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(123, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-05 03:33:16.808', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(124, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-05 03:33:16.842', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(125, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-06 03:31:41.605', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(126, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-06 03:31:41.636', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(127, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-06 03:32:58.131', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(128, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-06 03:32:58.158', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(129, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-07 03:31:52.647', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(130, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-07 03:31:52.680', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(131, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-07 03:33:16.028', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(132, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-07 03:33:16.061', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(133, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-10 03:31:53.157', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(134, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-10 03:31:53.202', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(135, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-10 03:33:25.213', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(136, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-10 03:33:25.248', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(137, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-13 09:38:00.256', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(138, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-13 09:38:00.410', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(139, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-21 03:31:49.411', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(140, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-21 03:31:49.446', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(141, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-21 03:33:17.494', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(142, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-21 03:33:17.524', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(143, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-27 03:32:17.697', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(144, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-27 03:32:17.733', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(145, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-27 03:33:53.103', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(146, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-27 03:33:53.138', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(147, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-28 03:31:54.269', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(148, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-28 03:31:54.291', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(149, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-28 03:33:19.711', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(150, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-28 03:33:19.741', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(151, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-31 03:32:17.279', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(152, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-31 03:32:17.327', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(153, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-31 03:33:59.961', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(154, 2, '2021-01-01', 'note', '0', '0', '0', '2021-08-31 03:33:59.995', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(155, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-01 03:31:56.155', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(156, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-01 03:31:56.197', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(157, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-01 03:33:20.302', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(158, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-01 03:33:20.333', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(159, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-02 03:31:53.843', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(160, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-02 03:31:53.886', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(161, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-02 03:33:19.422', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(162, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-02 03:33:19.463', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(163, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-03 03:31:55.856', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(164, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-03 03:31:55.891', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(165, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-03 03:33:26.231', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(166, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-03 03:33:26.264', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(167, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-07 03:31:44.401', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(168, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-07 03:31:44.432', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(169, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-07 03:33:09.422', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(170, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-07 03:33:09.458', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(171, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-08 03:31:50.915', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(172, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-08 03:31:50.957', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(173, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-08 03:33:17.173', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(174, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-08 03:33:17.204', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(175, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-09 03:32:00.636', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(176, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-09 03:32:00.673', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(177, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-09 03:33:28.108', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(178, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-09 03:33:28.143', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(179, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-10 03:32:11.992', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(180, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-10 03:32:12.027', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(181, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-10 03:33:40.474', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(182, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-10 03:33:40.515', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(183, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-11 03:32:19.447', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(184, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-11 03:32:19.487', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(185, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-11 03:33:44.917', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(186, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-11 03:33:44.955', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(187, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-13 07:58:12.011', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(188, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-13 07:58:12.053', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(189, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-13 10:37:42.469', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(190, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-13 10:37:42.497', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(191, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-13 10:39:00.010', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(192, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-13 10:39:00.046', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(193, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-17 03:32:05.438', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(194, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-17 03:32:05.475', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(195, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-17 03:33:41.716', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(196, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-17 03:33:41.751', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(197, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-21 07:49:00.931', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(198, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-21 07:49:00.975', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(199, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-21 07:50:34.490', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(200, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-21 07:50:34.519', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(201, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-21 08:47:22.798', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_head_received
(id, store_id, dt_received, ship_note, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(202, 2, '2021-01-01', 'note', '0', '0', '0', '2021-09-21 08:47:22.830', NULL, NULL, 50, NULL, NULL);

-- REBUILD [LOYALTY] RESERVATION GIFT ITEM RECEIVED
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(1, 2, '14', 1, 1, '0', '0', '0', '2021-06-07 16:56:10.176', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(2, 2, '1', 1, 1, '0', '0', '0', '2021-06-07 17:01:01.281', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 2, '1', 1, 1, '0', '0', '0', '2021-06-07 17:13:40.904', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 2, '1', 1, 1, '0', '0', '0', '2021-06-07 17:13:43.167', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(7, 2, '1', 1, 1, '0', '0', '0', '2021-06-15 03:30:44.234', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 2, '1', 1, 1, '1', '0', '0', '2021-06-15 03:30:43.101', '2021-06-15 03:30:45.139', '2021-06-15 03:30:45.405', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, 2, '1', 1, 1, '1', '0', '0', '2021-06-15 03:30:44.107', NULL, '2021-06-15 03:30:45.557', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(10, 2, '1', 1, 1, '0', '0', '0', '2021-06-15 03:32:05.774', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(8, 3, '1', 1, 1, '1', '0', '0', '2021-06-15 03:32:04.571', '2021-06-15 03:32:06.710', '2021-06-15 03:32:07.005', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(9, 3, '1', 1, 1, '1', '0', '0', '2021-06-15 03:32:05.623', NULL, '2021-06-15 03:32:07.194', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(13, 49, '1', 1, 1, '0', '0', '0', '2021-06-16 03:30:47.114', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(11, 49, '1', 1, 1, '1', '0', '0', '2021-06-16 03:30:45.925', '2021-06-16 03:30:48.027', '2021-06-16 03:30:48.441', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(12, 50, '1', 1, 1, '1', '0', '0', '2021-06-16 03:30:46.982', NULL, '2021-06-16 03:30:48.527', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(16, 50, '1', 1, 1, '0', '0', '0', '2021-06-16 03:32:07.023', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(14, 50, '1', 1, 1, '1', '0', '0', '2021-06-16 03:32:05.903', '2021-06-16 03:32:08.182', '2021-06-16 03:32:08.497', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(15, 50, '1', 1, 1, '1', '0', '0', '2021-06-16 03:32:06.912', NULL, '2021-06-16 03:32:08.570', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(19, 49, '1', 1, 1, '0', '0', '0', '2021-06-19 03:30:48.192', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(17, 2, '1', 1, 1, '1', '0', '0', '2021-06-19 03:30:46.941', '2021-06-19 03:30:49.252', '2021-06-19 03:30:49.588', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(18, 2, '1', 1, 1, '1', '0', '0', '2021-06-19 03:30:48.056', NULL, '2021-06-19 03:30:49.683', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(22, 3, '1', 1, 1, '0', '0', '0', '2021-06-19 03:32:18.925', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(20, 4, '1', 1, 1, '1', '0', '0', '2021-06-19 03:32:17.674', '2021-06-19 03:32:20.083', '2021-06-19 03:32:20.384', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(21, 4, '1', 1, 1, '1', '0', '0', '2021-06-19 03:32:18.798', NULL, '2021-06-19 03:32:20.672', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(360, 4, '1', 1, 1, '0', '0', '0', '2021-09-22 08:41:55.307', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(361, 4, '1', 1, 1, '0', '0', '0', '2021-09-22 08:41:56.106', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(364, 100, '1', 1, 1, '0', '0', '0', '2021-09-22 08:42:42.426', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(389, 100, '1', 1, 1, '1', '0', '0', '2021-09-22 15:16:39.303', '2021-09-22 15:16:45.107', '2021-09-22 15:16:45.924', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(362, 101, '1', 1, 1, '1', '0', '0', '2021-09-22 08:42:41.238', '2021-09-22 08:42:43.951', '2021-09-22 08:42:44.275', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(363, 23, '1', 1, 1, '1', '0', '0', '2021-09-22 08:42:42.110', NULL, '2021-09-22 08:42:44.550', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(367, 10, '1', 1, 1, '0', '0', '0', '2021-09-22 08:43:38.613', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(380, 10, '1', 1, 1, '1', '0', '0', '2021-09-22 08:50:37.491', '2021-09-22 08:50:40.091', '2021-09-22 08:50:40.179', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(365, 11, '1', 1, 1, '1', '0', '0', '2021-09-22 08:43:37.493', '2021-09-22 08:43:40.328', '2021-09-22 08:43:40.568', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(366, 12, '1', 1, 1, '1', '0', '0', '2021-09-22 08:43:38.270', NULL, '2021-09-22 08:43:40.787', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(370, 13, '1', 1, 1, '0', '0', '0', '2021-09-22 08:44:25.904', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(368, 13, '1', 1, 1, '1', '0', '0', '2021-09-22 08:44:24.884', NULL, '2021-09-22 08:44:27.059', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(369, 11, '1', 1, 1, '1', '0', '0', '2021-09-22 08:44:25.659', NULL, '2021-09-22 08:44:27.288', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(373, 12, '1', 1, 1, '0', '0', '0', '2021-09-22 08:44:51.741', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(381, 12, '1', 1, 1, '1', '0', '0', '2021-09-22 08:50:38.638', NULL, '2021-09-22 08:50:40.380', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(371, 13, '1', 1, 1, '1', '0', '0', '2021-09-22 08:44:50.604', '2021-09-22 08:44:53.430', '2021-09-22 08:44:54.176', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(372, 13, '1', 1, 1, '1', '0', '0', '2021-09-22 08:44:51.385', NULL, '2021-09-22 08:44:54.490', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(376, 14, '1', 1, 1, '0', '0', '0', '2021-09-22 08:45:35.923', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(385, 14, '1', 1, 1, '0', '0', '0', '2021-09-22 08:52:26.044', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(390, 15, '1', 1, 1, '1', '0', '0', '2021-09-22 15:16:40.532', NULL, '2021-09-22 15:16:46.759', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(374, 15, '1', 1, 1, '1', '0', '0', '2021-09-22 08:45:34.773', '2021-09-22 08:45:38.057', '2021-09-22 08:45:38.687', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(375, 16, '1', 1, 1, '1', '0', '0', '2021-09-22 08:45:35.548', NULL, '2021-09-22 08:45:39.006', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(379, 18, '1', 1, 1, '0', '0', '0', '2021-09-22 08:46:06.751', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(383, 17, '1', 1, 1, '1', '0', '0', '2021-09-22 08:52:24.817', '2021-09-22 08:52:27.433', '2021-09-22 08:52:27.655', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(384, 19, '1', 1, 1, '1', '0', '0', '2021-09-22 08:52:25.907', NULL, '2021-09-22 08:52:27.735', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(377, 109, '1', 1, 1, '1', '0', '0', '2021-09-22 08:46:05.567', '2021-09-22 08:46:08.425', '2021-09-22 08:46:08.743', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(378, 109, '1', 1, 1, '1', '0', '0', '2021-09-22 08:46:06.385', NULL, '2021-09-22 08:46:09.133', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(382, 167, '1', 1, 1, '0', '0', '0', '2021-09-22 08:50:38.793', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(388, 177, '1', 1, 1, '0', '0', '0', '2021-09-22 15:13:52.373', NULL, NULL, 50, NULL, NULL);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(394, 188, '1', 1, 1, '1', '0', '0', '2021-09-22 15:26:17.346', NULL, '2021-09-22 15:26:23.840', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(386, 178, '1', 1, 1, '1', '0', '0', '2021-09-22 15:13:50.266', '2021-09-22 15:13:56.641', '2021-09-22 15:13:57.844', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(387, 198, '1', 1, 1, '1', '0', '0', '2021-09-22 15:13:51.516', NULL, '2021-09-22 15:13:58.665', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(391, 14, '1', 1, 1, '1', '0', '0', '2021-09-22 15:23:15.822', '2021-09-22 15:23:21.682', '2021-09-22 15:23:22.531', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(392, 13, '1', 1, 1, '1', '0', '0', '2021-09-22 15:23:17.080', NULL, '2021-09-22 15:23:23.361', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(393, 13, '1', 1, 1, '1', '0', '0', '2021-09-22 15:26:16.127', '2021-09-22 15:26:22.248', '2021-09-22 15:26:23.056', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(395, 2, '1', 1, 1, '1', '0', '0', '2021-09-22 15:26:47.192', '2021-09-22 15:26:53.278', '2021-09-22 15:26:54.106', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(396, 2, '1', 1, 1, '1', '0', '0', '2021-09-22 15:26:48.484', NULL, '2021-09-22 15:26:54.925', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(397, 6, '1', 1, 1, '1', '0', '0', '2021-09-22 15:27:23.505', '2021-09-22 15:27:29.208', '2021-09-22 15:27:30.171', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(398, 17, '1', 1, 1, '1', '0', '0', '2021-09-22 15:27:24.822', NULL, '2021-09-22 15:27:31.018', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(399, 76, '1', 1, 1, '1', '0', '0', '2021-09-22 15:28:10.549', '2021-09-22 15:28:16.284', '2021-09-22 15:28:17.113', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(400, 200, '1', 1, 1, '1', '0', '0', '2021-09-22 15:28:11.795', NULL, '2021-09-22 15:28:17.957', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(401, 89, '1', 1, 1, '1', '0', '0', '2021-09-22 15:31:39.178', '2021-09-22 15:31:45.383', '2021-09-22 15:31:46.931', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(402, 90, '1', 1, 1, '1', '0', '0', '2021-09-22 15:31:40.383', NULL, '2021-09-22 15:31:47.749', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(403, 90, '1', 1, 1, '1', '0', '0', '2021-09-22 15:32:40.073', '2021-09-22 15:32:45.771', '2021-09-22 15:32:46.552', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(404, 91, '1', 1, 1, '1', '0', '0', '2021-09-22 15:32:41.247', NULL, '2021-09-22 15:32:47.359', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(405, 91, '1', 1, 1, '1', '0', '0', '2021-09-22 15:33:58.002', '2021-09-22 15:34:04.591', '2021-09-22 15:34:05.417', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(406, 91, '1', 1, 1, '1', '0', '0', '2021-09-22 15:33:59.205', NULL, '2021-09-22 15:34:06.224', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(407, 81, '1', 1, 1, '1', '0', '0', '2021-09-22 16:20:57.850', '2021-09-22 16:21:00.348', '2021-09-22 16:21:00.443', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(408, 81, '1', 1, 1, '1', '0', '0', '2021-09-22 16:20:58.918', NULL, '2021-09-22 16:21:00.528', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(409, 71, '1', 1, 1, '1', '0', '0', '2021-09-22 16:22:39.870', '2021-09-22 16:22:42.698', '2021-09-22 16:22:42.785', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(410, 199, '1', 1, 1, '1', '0', '0', '2021-09-22 16:22:41.138', NULL, '2021-09-22 16:22:42.863', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(411, 19, '1', 1, 1, '1', '0', '0', '2021-09-23 08:37:53.679', '2021-09-23 08:37:56.730', '2021-09-23 08:37:56.829', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(412, 19, '1', 1, 1, '1', '0', '0', '2021-09-23 08:37:54.849', NULL, '2021-09-23 08:37:56.917', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(413, 19, '1', 1, 1, '1', '0', '0', '2021-09-23 08:39:36.976', '2021-09-23 08:39:39.886', '2021-09-23 08:39:39.982', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(414, 178, '1', 1, 1, '1', '0', '0', '2021-09-23 08:39:38.180', NULL, '2021-09-23 08:39:40.065', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(415, 14, '1', 1, 1, '1', '0', '0', '2021-09-23 15:34:02.407', '2021-09-23 15:34:05.258', '2021-09-23 15:34:05.354', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(416, 12, '1', 1, 1, '1', '0', '0', '2021-09-23 15:34:03.603', NULL, '2021-09-23 15:34:05.441', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(417, 12, '1', 1, 1, '1', '0', '0', '2021-09-23 15:35:43.216', '2021-09-23 15:35:46.205', '2021-09-23 15:35:46.300', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(418, 13, '1', 1, 1, '1', '0', '0', '2021-09-23 15:35:44.412', NULL, '2021-09-23 15:35:46.394', 50, NULL, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(419, 14, '1', 1, 1, '1', '0', '0', '2021-09-24 07:21:43.341', '2021-09-24 07:21:46.618', '2021-09-24 07:21:47.095', 50, 50, 50);
INSERT INTO loyalty.reservation_gift_itm_received
(id, reserv_gift_head_id, catalog_gift_itm_code, num_received, num_assigned, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(420, 14, '1', 1, 1, '1', '0', '0', '2021-09-24 07:21:43.695', NULL, '2021-09-24 07:21:47.572', 50, NULL, 50);

-- REBUILD [LOYALTY] RESERVATION ITEM
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(1, 1, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-21 16:11:39.078', NULL, NULL, 0, 0, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(2, 1, 1, 1, '0', 1, '2021-01-01', '2021-01-01', NULL, '0', '0', '0', '2021-09-21 16:11:39.078', NULL, NULL, 0, 0, NULL, NULL, 3, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(419, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 15:37:00.590', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(373, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 09:54:43.482', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(374, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 09:54:52.916', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(375, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 09:55:27.152', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(376, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 09:55:28.356', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(379, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 09:55:43.658', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(400, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-22 16:22:08.121', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(377, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 09:55:41.701', '2021-09-22 09:55:46.344', '2021-09-22 09:55:46.899', 50, 50, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(378, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 09:55:43.066', NULL, '2021-09-22 09:55:47.352', 50, NULL, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(382, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 09:56:51.846', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(383, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 09:56:52.292', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(401, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-22 16:22:08.156', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(380, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 09:56:50.070', '2021-09-22 09:56:54.497', '2021-09-22 09:56:55.040', 50, 50, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(381, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 09:56:51.313', NULL, '2021-09-22 09:56:55.472', 50, NULL, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(386, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 09:58:33.374', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(387, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 09:58:33.749', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(402, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-22 16:22:08.187', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(403, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-22 16:23:51.324', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(404, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-22 16:23:51.355', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(384, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 09:58:31.452', '2021-09-22 09:58:36.980', '2021-09-22 09:58:38.064', 50, 50, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(385, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 09:58:32.804', NULL, '2021-09-22 09:58:38.572', 50, NULL, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(390, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 10:00:19.307', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(391, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 10:00:19.673', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(405, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-22 16:23:51.378', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(388, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 10:00:13.111', '2021-09-22 10:01:02.129', '2021-09-22 10:01:50.270', 50, 50, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(389, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 10:00:18.695', NULL, '2021-09-22 10:01:50.708', 50, NULL, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(394, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 10:02:30.877', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(395, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 10:02:31.360', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(420, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 15:37:00.628', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(406, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 08:39:05.465', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(407, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 08:39:05.508', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(408, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 08:39:05.563', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(392, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 10:02:28.860', '2021-09-22 10:02:34.345', '2021-09-22 10:02:36.128', 50, 50, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(393, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 10:02:30.218', NULL, '2021-09-22 10:02:36.566', 50, NULL, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(398, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 12:15:14.624', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(399, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-22 12:15:15.006', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(409, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 08:40:55.420', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(410, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 08:40:55.464', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(411, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 08:40:55.488', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(421, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 15:37:00.661', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(396, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 12:15:12.398', '2021-09-22 12:15:18.863', '2021-09-22 12:15:20.563', 50, 50, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(397, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-22 12:15:13.771', NULL, '2021-09-22 12:15:21.005', 50, NULL, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(414, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-23 12:26:06.131', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(415, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-23 12:26:06.357', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(424, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-24 07:19:34.218', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(425, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '0', '0', '0', '2021-09-24 07:19:34.573', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(412, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-23 12:26:05.149', '2021-09-23 12:26:07.400', '2021-09-23 12:26:07.794', 50, 50, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(413, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-23 12:26:05.827', NULL, '2021-09-23 12:26:07.879', 50, NULL, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(416, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 15:35:10.587', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(417, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 15:35:10.622', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(423, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-24 07:19:33.739', NULL, '2021-09-24 07:19:39.212', 50, NULL, 50, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(418, 2, 1, 1, '0', 1, '2020-12-31', '2020-12-31', '2020-12-31', '0', '0', '0', '2021-09-23 15:35:10.651', NULL, NULL, 50, NULL, NULL, NULL, 0, NULL);
INSERT INTO loyalty.reservation_itm
(id, reservation_id, catalog_gift_itm_id, progr, flg_pickup_store, reservation_gift_itm_received_id, dt_export, dt_assigned, dt_pickup, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, dt_deleted, gift_status_id, receipt_data)
VALUES(422, 2, 1, 1, '0', 1, '2021-01-01', '2021-01-01', '2021-01-01', '1', '0', '0', '2021-09-24 07:19:33.354', '2021-09-24 07:19:37.133', '2021-09-24 07:19:38.758', 50, 50, 50, NULL, 0, NULL);


-- REBUILD[LOYALTY] GIFT ITEM PROMO
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(3, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '0', '0', '0', '2021-06-08 15:43:07.451', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(4, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '0', '0', '0', '2021-06-08 15:43:09.255', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(7, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '0', '0', '0', '2021-06-08 15:50:16.973', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(5, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '1', '0', '0', '2021-06-08 15:50:14.626', '2021-06-08 15:50:18.806', '2021-06-08 15:50:19.710', 50, 50, 50);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(6, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '1', '0', '0', '2021-06-08 15:50:16.618', NULL, '2021-06-08 15:50:19.946', 50, NULL, 50);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(10, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '0', '0', '0', '2021-06-08 15:51:42.419', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(8, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '1', '0', '0', '2021-06-08 15:51:40.086', '2021-06-08 15:51:44.102', '2021-06-08 15:51:45.014', 50, 50, 50);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(9, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '1', '0', '0', '2021-06-08 15:51:42.080', NULL, '2021-06-08 15:51:45.254', 50, NULL, 50);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(13, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '0', '0', '0', '2021-06-08 15:53:47.130', NULL, NULL, 50, NULL, NULL);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(11, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '1', '0', '0', '2021-06-08 15:53:10.533', '2021-06-08 15:53:52.841', '2021-06-08 15:53:53.667', 50, 50, 50);
INSERT INTO promotion.gift_itm_promo
(id, catalog_gift_itm_id, catalog_div_sal_net_id, promo_off_id, promo_head_id, promo_link_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id)
VALUES(12, 3, 1, 'po_off_id', 'po_head_id', 'po_link_id', '1', '0', '0', '2021-06-08 15:53:45.986', NULL, '2021-06-08 15:53:53.975', 50, NULL, 50);



-- REBUILD [PROMOTION] OCHANNEL PRIVACY
-- TO DO


-- REBUILD [PROMOTION] MESSAGE
INSERT INTO promotion.message
(id, code, type_message_id, discount_type_id, discount_amt, coupon_type, description, notes, cluster_id, flg_fidelity, flg_card_holder, barcode_type_pid, barcode, flg_open_coupon, days_from_emission, stretch_value, threshold_value, fe_template_id, redemption_template_id, emission_template_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, wizard_id)
VALUES (1, 'messaggio1',7,NULL,0.00,NULL,'Test inserimento messaggio',NULL,NULL,'0','0',NULL,NULL,'0',0,0,0,NULL,NULL,NULL,'0','0','0','2019-06-25 11:13:08.628','2020-01-17 19:08:37.754',NULL,60,11,NULL,2);
INSERT INTO promotion.message
(id, code, type_message_id, discount_type_id, discount_amt, coupon_type, description, notes, cluster_id, flg_fidelity, flg_card_holder, barcode_type_pid, barcode, flg_open_coupon, days_from_emission, stretch_value, threshold_value, fe_template_id, redemption_template_id, emission_template_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, wizard_id)
VALUES (2, 'messaggio1',7,NULL,0.00,NULL,'Test inserimento messaggio',NULL,NULL,'0','0',NULL,NULL,'0',0,0,0,NULL,NULL,NULL,'0','0','0','2019-06-25 11:13:08.628','2020-01-17 19:08:37.754',NULL,60,11,NULL,2);
INSERT INTO promotion.message
(id, code, type_message_id, discount_type_id, discount_amt, coupon_type, description, notes, cluster_id, flg_fidelity, flg_card_holder, barcode_type_pid, barcode, flg_open_coupon, days_from_emission, stretch_value, threshold_value, fe_template_id, redemption_template_id, emission_template_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, wizard_id)
VALUES (3, 'messaggio1',7,NULL,0.00,NULL,'Test inserimento messaggio',NULL,NULL,'0','0',NULL,NULL,'0',0,0,0,NULL,NULL,NULL,'0','0','0','2019-06-25 11:13:08.628','2020-01-17 19:08:37.754',NULL,60,11,NULL,2);
INSERT INTO promotion.message
(id, code, type_message_id, discount_type_id, discount_amt, coupon_type, description, notes, cluster_id, flg_fidelity, flg_card_holder, barcode_type_pid, barcode, flg_open_coupon, days_from_emission, stretch_value, threshold_value, fe_template_id, redemption_template_id, emission_template_id, flg_state, flg_kf, flg_dpl, ts_ins, ts_upd, ts_del, user_ins_id, user_upd_id, user_del_id, wizard_id)
VALUES (4, 'messaggio1',7,NULL,0.00,NULL,'Test inserimento messaggio',NULL,NULL,'0','0',NULL,NULL,'0',0,0,0,NULL,NULL,NULL,'0','0','0','2019-06-25 11:13:08.628','2020-01-17 19:08:37.754',NULL,60,11,NULL,2);

-- REBUILD [PROMOTION] MESSAGE_TYPE
INSERT INTO promotion.message_type
(id, code,description,flg_state,flg_kf,flg_dpl,ts_ins,ts_upd,ts_del,user_ins_id,user_upd_id,user_del_id)
VALUES(1,'5','Coupon @Till','0','0','0','2019-06-06 17:41:26.758','2020-01-17 18:59:03.964',NULL,60,11,NULL);

-- REBUILD [PROMOTION] TEMPLATE
INSERT INTO promotion."template"
(id,code,description,flg_type_template,flg_state,flg_kf,flg_dpl,ts_ins,ts_upd,ts_del,user_ins_id,user_upd_id,user_del_id)
VALUES(15, '0.04050220','test2','0','1','0','0','2019-06-07 12:13:41.519','2019-06-07 12:13:46.392','2019-06-07 12:13:47.867',60,60,60);
INSERT INTO promotion."template"
(id,code,description,flg_type_template,flg_state,flg_kf,flg_dpl,ts_ins,ts_upd,ts_del,user_ins_id,user_upd_id,user_del_id)
VALUES(16,'0.62668843','test2','0','1','0','0','2019-06-07 12:12:46.746','2019-06-07 12:12:51.798','2019-06-11 16:41:31.503',60,60,60);
