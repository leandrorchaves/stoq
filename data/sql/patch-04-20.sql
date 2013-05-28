CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


-- Pass 1: Add UUID columns
ALTER TABLE account ADD uid uuid UNIQUE;
ALTER TABLE account_transaction ADD uid uuid UNIQUE;
ALTER TABLE address ADD uid uuid UNIQUE;
ALTER TABLE attachment ADD uid uuid UNIQUE;
ALTER TABLE bank_account ADD uid uuid UNIQUE;
ALTER TABLE bill_option ADD uid uuid UNIQUE;
ALTER TABLE branch ADD uid uuid UNIQUE;
ALTER TABLE branch_station ADD uid uuid UNIQUE;
ALTER TABLE branch_synchronization ADD uid uuid UNIQUE;
ALTER TABLE calls ADD uid uuid UNIQUE;
ALTER TABLE card_installment_settings ADD uid uuid UNIQUE;
ALTER TABLE card_installments_provider_details ADD uid uuid UNIQUE;
ALTER TABLE card_installments_store_details ADD uid uuid UNIQUE;
ALTER TABLE card_operation_cost ADD uid uuid UNIQUE;
ALTER TABLE card_payment_device ADD uid uuid UNIQUE;
ALTER TABLE cfop_data ADD uid uuid UNIQUE;
ALTER TABLE check_data ADD uid uuid UNIQUE;
ALTER TABLE client ADD uid uuid UNIQUE;
ALTER TABLE client_category ADD uid uuid UNIQUE;
ALTER TABLE client_category_price ADD uid uuid UNIQUE;
ALTER TABLE client_salary_history ADD uid uuid UNIQUE;
ALTER TABLE commission ADD uid uuid UNIQUE;
ALTER TABLE commission_source ADD uid uuid UNIQUE;
ALTER TABLE company ADD uid uuid UNIQUE;
ALTER TABLE contact_info ADD uid uuid UNIQUE;
ALTER TABLE cost_center ADD uid uuid UNIQUE;
ALTER TABLE cost_center_entry ADD uid uuid UNIQUE;
ALTER TABLE credit_card_data ADD uid uuid UNIQUE;
ALTER TABLE credit_card_details ADD uid uuid UNIQUE;
ALTER TABLE credit_check_history ADD uid uuid UNIQUE;
ALTER TABLE credit_provider ADD uid uuid UNIQUE;
ALTER TABLE delivery ADD uid uuid UNIQUE;
ALTER TABLE device_constant ADD uid uuid UNIQUE;
ALTER TABLE device_settings ADD uid uuid UNIQUE;
ALTER TABLE employee ADD uid uuid UNIQUE;
ALTER TABLE employee_role ADD uid uuid UNIQUE;
ALTER TABLE employee_role_history ADD uid uuid UNIQUE;
ALTER TABLE fiscal_book_entry ADD uid uuid UNIQUE;
ALTER TABLE fiscal_day_history ADD uid uuid UNIQUE;
ALTER TABLE fiscal_day_tax ADD uid uuid UNIQUE;
ALTER TABLE fiscal_sale_history ADD uid uuid UNIQUE;
ALTER TABLE image ADD uid uuid UNIQUE;
ALTER TABLE individual ADD uid uuid UNIQUE;
ALTER TABLE installed_plugin ADD uid uuid UNIQUE;
ALTER TABLE inventory ADD uid uuid UNIQUE;
ALTER TABLE inventory_item ADD uid uuid UNIQUE;
ALTER TABLE invoice_field ADD uid uuid UNIQUE;
ALTER TABLE invoice_layout ADD uid uuid UNIQUE;
ALTER TABLE invoice_printer ADD uid uuid UNIQUE;
ALTER TABLE loan ADD uid uuid UNIQUE;
ALTER TABLE loan_item ADD uid uuid UNIQUE;
ALTER TABLE login_user ADD uid uuid UNIQUE;
ALTER TABLE military_data ADD uid uuid UNIQUE;
ALTER TABLE parameter_data ADD uid uuid UNIQUE;
ALTER TABLE payment ADD uid uuid UNIQUE;
ALTER TABLE payment_category ADD uid uuid UNIQUE;
ALTER TABLE payment_change_history ADD uid uuid UNIQUE;
ALTER TABLE payment_comment ADD uid uuid UNIQUE;
ALTER TABLE payment_flow_history ADD uid uuid UNIQUE;
ALTER TABLE payment_group ADD uid uuid UNIQUE;
ALTER TABLE payment_method ADD uid uuid UNIQUE;
ALTER TABLE payment_renegotiation ADD uid uuid UNIQUE;
ALTER TABLE person ADD uid uuid UNIQUE;
ALTER TABLE product ADD uid uuid UNIQUE;
ALTER TABLE product_component ADD uid uuid UNIQUE;
ALTER TABLE product_history ADD uid uuid UNIQUE;
ALTER TABLE product_icms_template ADD uid uuid UNIQUE;
ALTER TABLE production_item ADD uid uuid UNIQUE;
ALTER TABLE production_item_quality_result ADD uid uuid UNIQUE;
ALTER TABLE production_material ADD uid uuid UNIQUE;
ALTER TABLE production_order ADD uid uuid UNIQUE;
ALTER TABLE production_produced_item ADD uid uuid UNIQUE;
ALTER TABLE production_service ADD uid uuid UNIQUE;
ALTER TABLE product_ipi_template ADD uid uuid UNIQUE;
ALTER TABLE product_manufacturer ADD uid uuid UNIQUE;
ALTER TABLE product_quality_test ADD uid uuid UNIQUE;
ALTER TABLE product_stock_item ADD uid uuid UNIQUE;
ALTER TABLE product_supplier_info ADD uid uuid UNIQUE;
ALTER TABLE product_tax_template ADD uid uuid UNIQUE;
ALTER TABLE profile_settings ADD uid uuid UNIQUE;
ALTER TABLE purchase_item ADD uid uuid UNIQUE;
ALTER TABLE purchase_order ADD uid uuid UNIQUE;
ALTER TABLE quotation ADD uid uuid UNIQUE;
ALTER TABLE quote_group ADD uid uuid UNIQUE;
ALTER TABLE receiving_order ADD uid uuid UNIQUE;
ALTER TABLE receiving_order_item ADD uid uuid UNIQUE;
ALTER TABLE returned_sale ADD uid uuid UNIQUE;
ALTER TABLE returned_sale_item ADD uid uuid UNIQUE;
ALTER TABLE sale ADD uid uuid UNIQUE;
ALTER TABLE sale_item ADD uid uuid UNIQUE;
ALTER TABLE sale_item_icms ADD uid uuid UNIQUE;
ALTER TABLE sale_item_ipi ADD uid uuid UNIQUE;
ALTER TABLE sales_person ADD uid uuid UNIQUE;
ALTER TABLE sellable ADD uid uuid UNIQUE;
ALTER TABLE sellable_category ADD uid uuid UNIQUE;
ALTER TABLE sellable_tax_constant ADD uid uuid UNIQUE;
ALTER TABLE sellable_unit ADD uid uuid UNIQUE;
ALTER TABLE service ADD uid uuid UNIQUE;
ALTER TABLE stock_decrease ADD uid uuid UNIQUE;
ALTER TABLE stock_decrease_item ADD uid uuid UNIQUE;
ALTER TABLE stock_transaction_history ADD uid uuid UNIQUE;
ALTER TABLE storable ADD uid uuid UNIQUE;
ALTER TABLE storable_batch ADD uid uuid UNIQUE;
ALTER TABLE supplier ADD uid uuid UNIQUE;
ALTER TABLE till ADD uid uuid UNIQUE;
ALTER TABLE till_entry ADD uid uuid UNIQUE;
ALTER TABLE transfer_order ADD uid uuid UNIQUE;
ALTER TABLE transfer_order_item ADD uid uuid UNIQUE;
ALTER TABLE transporter ADD uid uuid UNIQUE;
ALTER TABLE ui_field ADD uid uuid UNIQUE;
ALTER TABLE ui_form ADD uid uuid UNIQUE;
ALTER TABLE user_branch_access ADD uid uuid UNIQUE;
ALTER TABLE user_profile ADD uid uuid UNIQUE;
ALTER TABLE voter_data ADD uid uuid UNIQUE;
ALTER TABLE work_order ADD uid uuid UNIQUE;
ALTER TABLE work_order_category ADD uid uuid UNIQUE;
ALTER TABLE work_order_item ADD uid uuid UNIQUE;
ALTER TABLE work_order_package ADD uid uuid UNIQUE;
ALTER TABLE work_order_package_item ADD uid uuid UNIQUE;
ALTER TABLE work_permit_data ADD uid uuid UNIQUE;

-- Pass 2: Generate new UUIDs

UPDATE account SET uid = uuid_generate_v4();
UPDATE account_transaction SET uid = uuid_generate_v4();
UPDATE address SET uid = uuid_generate_v4();
UPDATE attachment SET uid = uuid_generate_v4();
UPDATE bank_account SET uid = uuid_generate_v4();
UPDATE bill_option SET uid = uuid_generate_v4();
UPDATE branch SET uid = uuid_generate_v4();
UPDATE branch_station SET uid = uuid_generate_v4();
UPDATE branch_synchronization SET uid = uuid_generate_v4();
UPDATE calls SET uid = uuid_generate_v4();
UPDATE card_installment_settings SET uid = uuid_generate_v4();
UPDATE card_installments_provider_details SET uid = uuid_generate_v4();
UPDATE card_installments_store_details SET uid = uuid_generate_v4();
UPDATE card_operation_cost SET uid = uuid_generate_v4();
UPDATE card_payment_device SET uid = uuid_generate_v4();
UPDATE cfop_data SET uid = uuid_generate_v4();
UPDATE check_data SET uid = uuid_generate_v4();
UPDATE client SET uid = uuid_generate_v4();
UPDATE client_category SET uid = uuid_generate_v4();
UPDATE client_category_price SET uid = uuid_generate_v4();
UPDATE client_salary_history SET uid = uuid_generate_v4();
UPDATE commission SET uid = uuid_generate_v4();
UPDATE commission_source SET uid = uuid_generate_v4();
UPDATE company SET uid = uuid_generate_v4();
UPDATE contact_info SET uid = uuid_generate_v4();
UPDATE cost_center SET uid = uuid_generate_v4();
UPDATE cost_center_entry SET uid = uuid_generate_v4();
UPDATE credit_card_data SET uid = uuid_generate_v4();
UPDATE credit_card_details SET uid = uuid_generate_v4();
UPDATE credit_check_history SET uid = uuid_generate_v4();
UPDATE credit_provider SET uid = uuid_generate_v4();
UPDATE delivery SET uid = uuid_generate_v4();
UPDATE device_constant SET uid = uuid_generate_v4();
UPDATE device_settings SET uid = uuid_generate_v4();
UPDATE employee SET uid = uuid_generate_v4();
UPDATE employee_role SET uid = uuid_generate_v4();
UPDATE employee_role_history SET uid = uuid_generate_v4();
UPDATE fiscal_book_entry SET uid = uuid_generate_v4();
UPDATE fiscal_day_history SET uid = uuid_generate_v4();
UPDATE fiscal_day_tax SET uid = uuid_generate_v4();
UPDATE fiscal_sale_history SET uid = uuid_generate_v4();
UPDATE image SET uid = uuid_generate_v4();
UPDATE individual SET uid = uuid_generate_v4();
UPDATE installed_plugin SET uid = uuid_generate_v4();
UPDATE inventory SET uid = uuid_generate_v4();
UPDATE inventory_item SET uid = uuid_generate_v4();
UPDATE invoice_field SET uid = uuid_generate_v4();
UPDATE invoice_layout SET uid = uuid_generate_v4();
UPDATE invoice_printer SET uid = uuid_generate_v4();
UPDATE loan SET uid = uuid_generate_v4();
UPDATE loan_item SET uid = uuid_generate_v4();
UPDATE login_user SET uid = uuid_generate_v4();
UPDATE military_data SET uid = uuid_generate_v4();
UPDATE parameter_data SET uid = uuid_generate_v4();
UPDATE payment SET uid = uuid_generate_v4();
UPDATE payment_category SET uid = uuid_generate_v4();
UPDATE payment_change_history SET uid = uuid_generate_v4();
UPDATE payment_comment SET uid = uuid_generate_v4();
UPDATE payment_flow_history SET uid = uuid_generate_v4();
UPDATE payment_group SET uid = uuid_generate_v4();
UPDATE payment_method SET uid = uuid_generate_v4();
UPDATE payment_renegotiation SET uid = uuid_generate_v4();
UPDATE person SET uid = uuid_generate_v4();
UPDATE product SET uid = uuid_generate_v4();
UPDATE product_component SET uid = uuid_generate_v4();
UPDATE product_history SET uid = uuid_generate_v4();
UPDATE product_icms_template SET uid = uuid_generate_v4();
UPDATE production_item SET uid = uuid_generate_v4();
UPDATE production_item_quality_result SET uid = uuid_generate_v4();
UPDATE production_material SET uid = uuid_generate_v4();
UPDATE production_order SET uid = uuid_generate_v4();
UPDATE production_produced_item SET uid = uuid_generate_v4();
UPDATE production_service SET uid = uuid_generate_v4();
UPDATE product_ipi_template SET uid = uuid_generate_v4();
UPDATE product_manufacturer SET uid = uuid_generate_v4();
UPDATE product_quality_test SET uid = uuid_generate_v4();
UPDATE product_stock_item SET uid = uuid_generate_v4();
UPDATE product_supplier_info SET uid = uuid_generate_v4();
UPDATE product_tax_template SET uid = uuid_generate_v4();
UPDATE profile_settings SET uid = uuid_generate_v4();
UPDATE purchase_item SET uid = uuid_generate_v4();
UPDATE purchase_order SET uid = uuid_generate_v4();
UPDATE quotation SET uid = uuid_generate_v4();
UPDATE quote_group SET uid = uuid_generate_v4();
UPDATE receiving_order SET uid = uuid_generate_v4();
UPDATE receiving_order_item SET uid = uuid_generate_v4();
UPDATE returned_sale SET uid = uuid_generate_v4();
UPDATE returned_sale_item SET uid = uuid_generate_v4();
UPDATE sale SET uid = uuid_generate_v4();
UPDATE sale_item SET uid = uuid_generate_v4();
UPDATE sale_item_icms SET uid = uuid_generate_v4();
UPDATE sale_item_ipi SET uid = uuid_generate_v4();
UPDATE sales_person SET uid = uuid_generate_v4();
UPDATE sellable SET uid = uuid_generate_v4();
UPDATE sellable_category SET uid = uuid_generate_v4();
UPDATE sellable_tax_constant SET uid = uuid_generate_v4();
UPDATE sellable_unit SET uid = uuid_generate_v4();
UPDATE service SET uid = uuid_generate_v4();
UPDATE stock_decrease SET uid = uuid_generate_v4();
UPDATE stock_decrease_item SET uid = uuid_generate_v4();
UPDATE stock_transaction_history SET uid = uuid_generate_v4();
UPDATE storable SET uid = uuid_generate_v4();
UPDATE storable_batch SET uid = uuid_generate_v4();
UPDATE supplier SET uid = uuid_generate_v4();
UPDATE till SET uid = uuid_generate_v4();
UPDATE till_entry SET uid = uuid_generate_v4();
UPDATE transfer_order SET uid = uuid_generate_v4();
UPDATE transfer_order_item SET uid = uuid_generate_v4();
UPDATE transporter SET uid = uuid_generate_v4();
UPDATE ui_field SET uid = uuid_generate_v4();
UPDATE ui_form SET uid = uuid_generate_v4();
UPDATE user_branch_access SET uid = uuid_generate_v4();
UPDATE user_profile SET uid = uuid_generate_v4();
UPDATE voter_data SET uid = uuid_generate_v4();
UPDATE work_order SET uid = uuid_generate_v4();
UPDATE work_order_category SET uid = uuid_generate_v4();
UPDATE work_order_item SET uid = uuid_generate_v4();
UPDATE work_order_package SET uid = uuid_generate_v4();
UPDATE work_order_package_item SET uid = uuid_generate_v4();
UPDATE work_permit_data SET uid = uuid_generate_v4();

-- Pass 3: Add and update new foreign keys


ALTER TABLE client ADD person_uid uuid
    REFERENCES person(uid);
UPDATE client SET person_uid = person.uid
    FROM person
    WHERE client.person_id = person.id;

ALTER TABLE client DROP COLUMN person_id;
ALTER TABLE client RENAME COLUMN person_uid TO person_id;


ALTER TABLE client ADD category_uid uuid
    REFERENCES client_category(uid);
UPDATE client SET category_uid = client_category.uid
    FROM client_category
    WHERE client.category_id = client_category.id;

ALTER TABLE client DROP COLUMN category_id;
ALTER TABLE client RENAME COLUMN category_uid TO category_id;


ALTER TABLE company ADD person_uid uuid
    REFERENCES person(uid);
UPDATE company SET person_uid = person.uid
    FROM person
    WHERE company.person_id = person.id;

ALTER TABLE company DROP COLUMN person_id;
ALTER TABLE company RENAME COLUMN person_uid TO person_id;


ALTER TABLE individual ADD person_uid uuid
    REFERENCES person(uid);
UPDATE individual SET person_uid = person.uid
    FROM person
    WHERE individual.person_id = person.id;

ALTER TABLE individual DROP COLUMN person_id;
ALTER TABLE individual RENAME COLUMN person_uid TO person_id;


ALTER TABLE bill_option ADD bank_account_uid uuid
    REFERENCES bank_account(uid);
UPDATE bill_option SET bank_account_uid = bank_account.uid
    FROM bank_account
    WHERE bill_option.bank_account_id = bank_account.id;

ALTER TABLE bill_option DROP COLUMN bank_account_id;
ALTER TABLE bill_option RENAME COLUMN bank_account_uid TO bank_account_id;


ALTER TABLE employee ADD role_uid uuid
    REFERENCES employee_role(uid);
UPDATE employee SET role_uid = employee_role.uid
    FROM employee_role
    WHERE employee.role_id = employee_role.id;

ALTER TABLE employee DROP COLUMN role_id;
ALTER TABLE employee RENAME COLUMN role_uid TO role_id;


ALTER TABLE employee ADD workpermit_data_uid uuid
    REFERENCES work_permit_data(uid);
UPDATE employee SET workpermit_data_uid = work_permit_data.uid
    FROM work_permit_data
    WHERE employee.workpermit_data_id = work_permit_data.id;

ALTER TABLE employee DROP COLUMN workpermit_data_id;
ALTER TABLE employee RENAME COLUMN workpermit_data_uid TO workpermit_data_id;


ALTER TABLE employee ADD military_data_uid uuid
    REFERENCES military_data(uid);
UPDATE employee SET military_data_uid = military_data.uid
    FROM military_data
    WHERE employee.military_data_id = military_data.id;

ALTER TABLE employee DROP COLUMN military_data_id;
ALTER TABLE employee RENAME COLUMN military_data_uid TO military_data_id;


ALTER TABLE employee ADD voter_data_uid uuid
    REFERENCES voter_data(uid);
UPDATE employee SET voter_data_uid = voter_data.uid
    FROM voter_data
    WHERE employee.voter_data_id = voter_data.id;

ALTER TABLE employee DROP COLUMN voter_data_id;
ALTER TABLE employee RENAME COLUMN voter_data_uid TO voter_data_id;


ALTER TABLE employee ADD bank_account_uid uuid
    REFERENCES bank_account(uid);
UPDATE employee SET bank_account_uid = bank_account.uid
    FROM bank_account
    WHERE employee.bank_account_id = bank_account.id;

ALTER TABLE employee DROP COLUMN bank_account_id;
ALTER TABLE employee RENAME COLUMN bank_account_uid TO bank_account_id;


ALTER TABLE employee ADD person_uid uuid
    REFERENCES person(uid);
UPDATE employee SET person_uid = person.uid
    FROM person
    WHERE employee.person_id = person.id;

ALTER TABLE employee DROP COLUMN person_id;
ALTER TABLE employee RENAME COLUMN person_uid TO person_id;


ALTER TABLE branch ADD manager_uid uuid
    REFERENCES employee(uid);
UPDATE branch SET manager_uid = employee.uid
    FROM employee
    WHERE branch.manager_id = employee.id;

ALTER TABLE branch DROP COLUMN manager_id;
ALTER TABLE branch RENAME COLUMN manager_uid TO manager_id;


ALTER TABLE branch ADD person_uid uuid
    REFERENCES person(uid);
UPDATE branch SET person_uid = person.uid
    FROM person
    WHERE branch.person_id = person.id;

ALTER TABLE branch DROP COLUMN person_id;
ALTER TABLE branch RENAME COLUMN person_uid TO person_id;


ALTER TABLE employee ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE employee SET branch_uid = branch.uid
    FROM branch
    WHERE employee.branch_id = branch.id;

ALTER TABLE employee DROP COLUMN branch_id;
ALTER TABLE employee RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE sales_person ADD person_uid uuid
    REFERENCES person(uid);
UPDATE sales_person SET person_uid = person.uid
    FROM person
    WHERE sales_person.person_id = person.id;

ALTER TABLE sales_person DROP COLUMN person_id;
ALTER TABLE sales_person RENAME COLUMN person_uid TO person_id;


ALTER TABLE supplier ADD person_uid uuid
    REFERENCES person(uid);
UPDATE supplier SET person_uid = person.uid
    FROM person
    WHERE supplier.person_id = person.id;

ALTER TABLE supplier DROP COLUMN person_id;
ALTER TABLE supplier RENAME COLUMN person_uid TO person_id;


ALTER TABLE transporter ADD person_uid uuid
    REFERENCES person(uid);
UPDATE transporter SET person_uid = person.uid
    FROM person
    WHERE transporter.person_id = person.id;

ALTER TABLE transporter DROP COLUMN person_id;
ALTER TABLE transporter RENAME COLUMN person_uid TO person_id;


ALTER TABLE login_user ADD profile_uid uuid
    REFERENCES user_profile(uid);
UPDATE login_user SET profile_uid = user_profile.uid
    FROM user_profile
    WHERE login_user.profile_id = user_profile.id;

ALTER TABLE login_user DROP COLUMN profile_id;
ALTER TABLE login_user RENAME COLUMN profile_uid TO profile_id;


ALTER TABLE login_user ADD person_uid uuid
    REFERENCES person(uid);
UPDATE login_user SET person_uid = person.uid
    FROM person
    WHERE login_user.person_id = person.id;

ALTER TABLE login_user DROP COLUMN person_id;
ALTER TABLE login_user RENAME COLUMN person_uid TO person_id;


ALTER TABLE user_branch_access ADD user_uid uuid
    REFERENCES login_user(uid);
UPDATE user_branch_access SET user_uid = login_user.uid
    FROM login_user
    WHERE user_branch_access.user_id = login_user.id;

ALTER TABLE user_branch_access DROP COLUMN user_id;
ALTER TABLE user_branch_access RENAME COLUMN user_uid TO user_id;


ALTER TABLE user_branch_access ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE user_branch_access SET branch_uid = branch.uid
    FROM branch
    WHERE user_branch_access.branch_id = branch.id;

ALTER TABLE user_branch_access DROP COLUMN branch_id;
ALTER TABLE user_branch_access RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE client_salary_history ADD user_uid uuid
    REFERENCES login_user(uid);
UPDATE client_salary_history SET user_uid = login_user.uid
    FROM login_user
    WHERE client_salary_history.user_id = login_user.id;

ALTER TABLE client_salary_history DROP COLUMN user_id;
ALTER TABLE client_salary_history RENAME COLUMN user_uid TO user_id;


ALTER TABLE client_salary_history ADD client_uid uuid
    REFERENCES client(uid);
UPDATE client_salary_history SET client_uid = client.uid
    FROM client
    WHERE client_salary_history.client_id = client.id;

ALTER TABLE client_salary_history DROP COLUMN client_id;
ALTER TABLE client_salary_history RENAME COLUMN client_uid TO client_id;


ALTER TABLE sellable_category ADD category_uid uuid
    REFERENCES sellable_category(uid);
UPDATE sellable_category SET category_uid = sellable_category.uid
    WHERE sellable_category.category_id = sellable_category.id;

ALTER TABLE sellable_category DROP COLUMN category_id;
ALTER TABLE sellable_category RENAME COLUMN category_uid TO category_id;


ALTER TABLE sellable_category ADD tax_constant_uid uuid
    REFERENCES sellable_tax_constant(uid);
UPDATE sellable_category SET tax_constant_uid = sellable_tax_constant.uid
    FROM sellable_tax_constant
    WHERE sellable_category.tax_constant_id = sellable_tax_constant.id;

ALTER TABLE sellable_category DROP COLUMN tax_constant_id;
ALTER TABLE sellable_category RENAME COLUMN tax_constant_uid TO tax_constant_id;


ALTER TABLE product_ipi_template ADD product_tax_template_uid uuid
    REFERENCES product_tax_template(uid);
UPDATE product_ipi_template SET product_tax_template_uid = product_tax_template.uid
    FROM product_tax_template
    WHERE product_ipi_template.product_tax_template_id = product_tax_template.id;

ALTER TABLE product_ipi_template DROP COLUMN product_tax_template_id;
ALTER TABLE product_ipi_template RENAME COLUMN product_tax_template_uid TO product_tax_template_id;


ALTER TABLE sellable ADD image_uid uuid
    REFERENCES image(uid);
UPDATE sellable SET image_uid = image.uid
    FROM image
    WHERE sellable.image_id = image.id;

ALTER TABLE sellable DROP COLUMN image_id;
ALTER TABLE sellable RENAME COLUMN image_uid TO image_id;


ALTER TABLE sellable ADD unit_uid uuid
    REFERENCES sellable_unit(uid);
UPDATE sellable SET unit_uid = sellable_unit.uid
    FROM sellable_unit
    WHERE sellable.unit_id = sellable_unit.id;

ALTER TABLE sellable DROP COLUMN unit_id;
ALTER TABLE sellable RENAME COLUMN unit_uid TO unit_id;


ALTER TABLE sellable ADD category_uid uuid
    REFERENCES sellable_category(uid);
UPDATE sellable SET category_uid = sellable_category.uid
    FROM sellable_category
    WHERE sellable.category_id = sellable_category.id;

ALTER TABLE sellable DROP COLUMN category_id;
ALTER TABLE sellable RENAME COLUMN category_uid TO category_id;


ALTER TABLE sellable ADD tax_constant_uid uuid
    REFERENCES sellable_tax_constant(uid);
UPDATE sellable SET tax_constant_uid = sellable_tax_constant.uid
    FROM sellable_tax_constant
    WHERE sellable.tax_constant_id = sellable_tax_constant.id;

ALTER TABLE sellable DROP COLUMN tax_constant_id;
ALTER TABLE sellable RENAME COLUMN tax_constant_uid TO tax_constant_id;


ALTER TABLE sellable ADD default_sale_cfop_uid uuid
    REFERENCES cfop_data(uid);
UPDATE sellable SET default_sale_cfop_uid = cfop_data.uid
    FROM cfop_data
    WHERE sellable.default_sale_cfop_id = cfop_data.id;

ALTER TABLE sellable DROP COLUMN default_sale_cfop_id;
ALTER TABLE sellable RENAME COLUMN default_sale_cfop_uid TO default_sale_cfop_id;


ALTER TABLE product_icms_template ADD product_tax_template_uid uuid
    REFERENCES product_tax_template(uid);
UPDATE product_icms_template SET product_tax_template_uid = product_tax_template.uid
    FROM product_tax_template
    WHERE product_icms_template.product_tax_template_id = product_tax_template.id;

ALTER TABLE product_icms_template DROP COLUMN product_tax_template_id;
ALTER TABLE product_icms_template RENAME COLUMN product_tax_template_uid TO product_tax_template_id;


ALTER TABLE product ADD icms_template_uid uuid
    REFERENCES product_icms_template(uid);
UPDATE product SET icms_template_uid = product_icms_template.uid
    FROM product_icms_template
    WHERE product.icms_template_id = product_icms_template.id;

ALTER TABLE product DROP COLUMN icms_template_id;
ALTER TABLE product RENAME COLUMN icms_template_uid TO icms_template_id;


ALTER TABLE product ADD ipi_template_uid uuid
    REFERENCES product_ipi_template(uid);
UPDATE product SET ipi_template_uid = product_ipi_template.uid
    FROM product_ipi_template
    WHERE product.ipi_template_id = product_ipi_template.id;

ALTER TABLE product DROP COLUMN ipi_template_id;
ALTER TABLE product RENAME COLUMN ipi_template_uid TO ipi_template_id;


ALTER TABLE product ADD manufacturer_uid uuid
    REFERENCES product_manufacturer(uid);
UPDATE product SET manufacturer_uid = product_manufacturer.uid
    FROM product_manufacturer
    WHERE product.manufacturer_id = product_manufacturer.id;

ALTER TABLE product DROP COLUMN manufacturer_id;
ALTER TABLE product RENAME COLUMN manufacturer_uid TO manufacturer_id;


ALTER TABLE product ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE product SET sellable_uid = sellable.uid
    FROM sellable
    WHERE product.sellable_id = sellable.id;

ALTER TABLE product DROP COLUMN sellable_id;
ALTER TABLE product RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE product_component ADD product_uid uuid
    REFERENCES product(uid);
UPDATE product_component SET product_uid = product.uid
    FROM product
    WHERE product_component.product_id = product.id;

ALTER TABLE product_component DROP COLUMN product_id;
ALTER TABLE product_component RENAME COLUMN product_uid TO product_id;


ALTER TABLE product_component ADD component_uid uuid
    REFERENCES product(uid);
UPDATE product_component SET component_uid = product.uid
    FROM product
    WHERE product_component.component_id = product.id;

ALTER TABLE product_component DROP COLUMN component_id;
ALTER TABLE product_component RENAME COLUMN component_uid TO component_id;


ALTER TABLE storable ADD product_uid uuid
    REFERENCES product(uid);
UPDATE storable SET product_uid = product.uid
    FROM product
    WHERE storable.product_id = product.id;

ALTER TABLE storable DROP COLUMN product_id;
ALTER TABLE storable RENAME COLUMN product_uid TO product_id;


ALTER TABLE product_supplier_info ADD supplier_uid uuid
    REFERENCES supplier(uid);
UPDATE product_supplier_info SET supplier_uid = supplier.uid
    FROM supplier
    WHERE product_supplier_info.supplier_id = supplier.id;

ALTER TABLE product_supplier_info DROP COLUMN supplier_id;
ALTER TABLE product_supplier_info RENAME COLUMN supplier_uid TO supplier_id;


ALTER TABLE product_supplier_info ADD product_uid uuid
    REFERENCES product(uid);
UPDATE product_supplier_info SET product_uid = product.uid
    FROM product
    WHERE product_supplier_info.product_id = product.id;

ALTER TABLE product_supplier_info DROP COLUMN product_id;
ALTER TABLE product_supplier_info RENAME COLUMN product_uid TO product_id;


ALTER TABLE quotation ADD purchase_uid uuid
    REFERENCES purchase_order(uid);
UPDATE quotation SET purchase_uid = purchase_order.uid
    FROM purchase_order
    WHERE quotation.purchase_id = purchase_order.id;

ALTER TABLE quotation DROP COLUMN purchase_id;
ALTER TABLE quotation RENAME COLUMN purchase_uid TO purchase_id;


ALTER TABLE product_history ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE product_history SET branch_uid = branch.uid
    FROM branch
    WHERE product_history.branch_id = branch.id;

ALTER TABLE product_history DROP COLUMN branch_id;
ALTER TABLE product_history RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE product_history ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE product_history SET sellable_uid = sellable.uid
    FROM sellable
    WHERE product_history.sellable_id = sellable.id;

ALTER TABLE product_history DROP COLUMN sellable_id;
ALTER TABLE product_history RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE service ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE service SET sellable_uid = sellable.uid
    FROM sellable
    WHERE service.sellable_id = sellable.id;

ALTER TABLE service DROP COLUMN sellable_id;
ALTER TABLE service RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE payment_renegotiation ADD client_uid uuid
    REFERENCES client(uid);
UPDATE payment_renegotiation SET client_uid = client.uid
    FROM client
    WHERE payment_renegotiation.client_id = client.id;

ALTER TABLE payment_renegotiation DROP COLUMN client_id;
ALTER TABLE payment_renegotiation RENAME COLUMN client_uid TO client_id;


ALTER TABLE payment_renegotiation ADD responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE payment_renegotiation SET responsible_uid = login_user.uid
    FROM login_user
    WHERE payment_renegotiation.responsible_id = login_user.id;

ALTER TABLE payment_renegotiation DROP COLUMN responsible_id;
ALTER TABLE payment_renegotiation RENAME COLUMN responsible_uid TO responsible_id;


ALTER TABLE payment_renegotiation ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE payment_renegotiation SET branch_uid = branch.uid
    FROM branch
    WHERE payment_renegotiation.branch_id = branch.id;

ALTER TABLE payment_renegotiation DROP COLUMN branch_id;
ALTER TABLE payment_renegotiation RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE payment_group ADD payer_uid uuid
    REFERENCES person(uid);
UPDATE payment_group SET payer_uid = person.uid
    FROM person
    WHERE payment_group.payer_id = person.id;

ALTER TABLE payment_group DROP COLUMN payer_id;
ALTER TABLE payment_group RENAME COLUMN payer_uid TO payer_id;


ALTER TABLE payment_group ADD renegotiation_uid uuid
    REFERENCES payment_renegotiation(uid);
UPDATE payment_group SET renegotiation_uid = payment_renegotiation.uid
    FROM payment_renegotiation
    WHERE payment_group.renegotiation_id = payment_renegotiation.id;

ALTER TABLE payment_group DROP COLUMN renegotiation_id;
ALTER TABLE payment_group RENAME COLUMN renegotiation_uid TO renegotiation_id;


ALTER TABLE payment_group ADD recipient_uid uuid
    REFERENCES person(uid);
UPDATE payment_group SET recipient_uid = person.uid
    FROM person
    WHERE payment_group.recipient_id = person.id;

ALTER TABLE payment_group DROP COLUMN recipient_id;
ALTER TABLE payment_group RENAME COLUMN recipient_uid TO recipient_id;


ALTER TABLE payment_renegotiation ADD group_uid uuid
    REFERENCES payment_group(uid);
UPDATE payment_renegotiation SET group_uid = payment_group.uid
    FROM payment_group
    WHERE payment_renegotiation.group_id = payment_group.id;

ALTER TABLE payment_renegotiation DROP COLUMN group_id;
ALTER TABLE payment_renegotiation RENAME COLUMN group_uid TO group_id;


ALTER TABLE quotation ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE quotation SET branch_uid = branch.uid
    FROM branch
    WHERE quotation.branch_id = branch.id;

ALTER TABLE quotation DROP COLUMN branch_id;
ALTER TABLE quotation RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE purchase_order ADD supplier_uid uuid
    REFERENCES supplier(uid);
UPDATE purchase_order SET supplier_uid = supplier.uid
    FROM supplier
    WHERE purchase_order.supplier_id = supplier.id;

ALTER TABLE purchase_order DROP COLUMN supplier_id;
ALTER TABLE purchase_order RENAME COLUMN supplier_uid TO supplier_id;


ALTER TABLE purchase_order ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE purchase_order SET branch_uid = branch.uid
    FROM branch
    WHERE purchase_order.branch_id = branch.id;

ALTER TABLE purchase_order DROP COLUMN branch_id;
ALTER TABLE purchase_order RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE purchase_order ADD transporter_uid uuid
    REFERENCES transporter(uid);
UPDATE purchase_order SET transporter_uid = transporter.uid
    FROM transporter
    WHERE purchase_order.transporter_id = transporter.id;

ALTER TABLE purchase_order DROP COLUMN transporter_id;
ALTER TABLE purchase_order RENAME COLUMN transporter_uid TO transporter_id;


ALTER TABLE purchase_order ADD responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE purchase_order SET responsible_uid = login_user.uid
    FROM login_user
    WHERE purchase_order.responsible_id = login_user.id;

ALTER TABLE purchase_order DROP COLUMN responsible_id;
ALTER TABLE purchase_order RENAME COLUMN responsible_uid TO responsible_id;


ALTER TABLE purchase_order ADD group_uid uuid
    REFERENCES payment_group(uid);
UPDATE purchase_order SET group_uid = payment_group.uid
    FROM payment_group
    WHERE purchase_order.group_id = payment_group.id;

ALTER TABLE purchase_order DROP COLUMN group_id;
ALTER TABLE purchase_order RENAME COLUMN group_uid TO group_id;


ALTER TABLE purchase_item ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE purchase_item SET sellable_uid = sellable.uid
    FROM sellable
    WHERE purchase_item.sellable_id = sellable.id;

ALTER TABLE purchase_item DROP COLUMN sellable_id;
ALTER TABLE purchase_item RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE purchase_item ADD order_uid uuid
    REFERENCES purchase_order(uid);
UPDATE purchase_item SET order_uid = purchase_order.uid
    FROM purchase_order
    WHERE purchase_item.order_id = purchase_order.id;

ALTER TABLE purchase_item DROP COLUMN order_id;
ALTER TABLE purchase_item RENAME COLUMN order_uid TO order_id;


ALTER TABLE quote_group ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE quote_group SET branch_uid = branch.uid
    FROM branch
    WHERE quote_group.branch_id = branch.id;

ALTER TABLE quote_group DROP COLUMN branch_id;
ALTER TABLE quote_group RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE quotation ADD group_uid uuid
    REFERENCES quote_group(uid);
UPDATE quotation SET group_uid = quote_group.uid
    FROM quote_group
    WHERE quotation.group_id = quote_group.id;

ALTER TABLE quotation DROP COLUMN group_id;
ALTER TABLE quotation RENAME COLUMN group_uid TO group_id;


ALTER TABLE branch_station ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE branch_station SET branch_uid = branch.uid
    FROM branch
    WHERE branch_station.branch_id = branch.id;

ALTER TABLE branch_station DROP COLUMN branch_id;
ALTER TABLE branch_station RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE till ADD station_uid uuid
    REFERENCES branch_station(uid);
UPDATE till SET station_uid = branch_station.uid
    FROM branch_station
    WHERE till.station_id = branch_station.id;

ALTER TABLE till DROP COLUMN station_id;
ALTER TABLE till RENAME COLUMN station_uid TO station_id;


ALTER TABLE client_category_price ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE client_category_price SET sellable_uid = sellable.uid
    FROM sellable
    WHERE client_category_price.sellable_id = sellable.id;

ALTER TABLE client_category_price DROP COLUMN sellable_id;
ALTER TABLE client_category_price RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE client_category_price ADD category_uid uuid
    REFERENCES client_category(uid);
UPDATE client_category_price SET category_uid = client_category.uid
    FROM client_category
    WHERE client_category_price.category_id = client_category.id;

ALTER TABLE client_category_price DROP COLUMN category_id;
ALTER TABLE client_category_price RENAME COLUMN category_uid TO category_id;


ALTER TABLE sale ADD client_uid uuid
    REFERENCES client(uid);
UPDATE sale SET client_uid = client.uid
    FROM client
    WHERE sale.client_id = client.id;

ALTER TABLE sale DROP COLUMN client_id;
ALTER TABLE sale RENAME COLUMN client_uid TO client_id;


ALTER TABLE sale ADD client_category_uid uuid
    REFERENCES client_category(uid);
UPDATE sale SET client_category_uid = client_category.uid
    FROM client_category
    WHERE sale.client_category_id = client_category.id;

ALTER TABLE sale DROP COLUMN client_category_id;
ALTER TABLE sale RENAME COLUMN client_category_uid TO client_category_id;


ALTER TABLE sale ADD cfop_uid uuid
    REFERENCES cfop_data(uid);
UPDATE sale SET cfop_uid = cfop_data.uid
    FROM cfop_data
    WHERE sale.cfop_id = cfop_data.id;

ALTER TABLE sale DROP COLUMN cfop_id;
ALTER TABLE sale RENAME COLUMN cfop_uid TO cfop_id;


ALTER TABLE sale ADD salesperson_uid uuid
    REFERENCES sales_person(uid);
UPDATE sale SET salesperson_uid = sales_person.uid
    FROM sales_person
    WHERE sale.salesperson_id = sales_person.id;

ALTER TABLE sale DROP COLUMN salesperson_id;
ALTER TABLE sale RENAME COLUMN salesperson_uid TO salesperson_id;


ALTER TABLE sale ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE sale SET branch_uid = branch.uid
    FROM branch
    WHERE sale.branch_id = branch.id;

ALTER TABLE sale DROP COLUMN branch_id;
ALTER TABLE sale RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE sale ADD group_uid uuid
    REFERENCES payment_group(uid);
UPDATE sale SET group_uid = payment_group.uid
    FROM payment_group
    WHERE sale.group_id = payment_group.id;

ALTER TABLE sale DROP COLUMN group_id;
ALTER TABLE sale RENAME COLUMN group_uid TO group_id;


ALTER TABLE sale ADD transporter_uid uuid
    REFERENCES transporter(uid);
UPDATE sale SET transporter_uid = transporter.uid
    FROM transporter
    WHERE sale.transporter_id = transporter.id;

ALTER TABLE sale DROP COLUMN transporter_id;
ALTER TABLE sale RENAME COLUMN transporter_uid TO transporter_id;


ALTER TABLE sale_item ADD sale_uid uuid
    REFERENCES sale(uid);
UPDATE sale_item SET sale_uid = sale.uid
    FROM sale
    WHERE sale_item.sale_id = sale.id;

ALTER TABLE sale_item DROP COLUMN sale_id;
ALTER TABLE sale_item RENAME COLUMN sale_uid TO sale_id;


ALTER TABLE sale_item ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE sale_item SET sellable_uid = sellable.uid
    FROM sellable
    WHERE sale_item.sellable_id = sellable.id;

ALTER TABLE sale_item DROP COLUMN sellable_id;
ALTER TABLE sale_item RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE sale_item ADD icms_info_uid uuid
    REFERENCES sale_item_icms(uid);
UPDATE sale_item SET icms_info_uid = sale_item_icms.uid
    FROM sale_item_icms
    WHERE sale_item.icms_info_id = sale_item_icms.id;

ALTER TABLE sale_item DROP COLUMN icms_info_id;
ALTER TABLE sale_item RENAME COLUMN icms_info_uid TO icms_info_id;


ALTER TABLE sale_item ADD ipi_info_uid uuid
    REFERENCES sale_item_ipi(uid);
UPDATE sale_item SET ipi_info_uid = sale_item_ipi.uid
    FROM sale_item_ipi
    WHERE sale_item.ipi_info_id = sale_item_ipi.id;

ALTER TABLE sale_item DROP COLUMN ipi_info_id;
ALTER TABLE sale_item RENAME COLUMN ipi_info_uid TO ipi_info_id;


ALTER TABLE sale_item ADD cfop_uid uuid
    REFERENCES cfop_data(uid);
UPDATE sale_item SET cfop_uid = cfop_data.uid
    FROM cfop_data
    WHERE sale_item.cfop_id = cfop_data.id;

ALTER TABLE sale_item DROP COLUMN cfop_id;
ALTER TABLE sale_item RENAME COLUMN cfop_uid TO cfop_id;


ALTER TABLE returned_sale ADD responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE returned_sale SET responsible_uid = login_user.uid
    FROM login_user
    WHERE returned_sale.responsible_id = login_user.id;

ALTER TABLE returned_sale DROP COLUMN responsible_id;
ALTER TABLE returned_sale RENAME COLUMN responsible_uid TO responsible_id;


ALTER TABLE returned_sale ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE returned_sale SET branch_uid = branch.uid
    FROM branch
    WHERE returned_sale.branch_id = branch.id;

ALTER TABLE returned_sale DROP COLUMN branch_id;
ALTER TABLE returned_sale RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE returned_sale ADD sale_uid uuid
    REFERENCES sale(uid);
UPDATE returned_sale SET sale_uid = sale.uid
    FROM sale
    WHERE returned_sale.sale_id = sale.id;

ALTER TABLE returned_sale DROP COLUMN sale_id;
ALTER TABLE returned_sale RENAME COLUMN sale_uid TO sale_id;


ALTER TABLE returned_sale ADD new_sale_uid uuid
    REFERENCES sale(uid);
UPDATE returned_sale SET new_sale_uid = sale.uid
    FROM sale
    WHERE returned_sale.new_sale_id = sale.id;

ALTER TABLE returned_sale DROP COLUMN new_sale_id;
ALTER TABLE returned_sale RENAME COLUMN new_sale_uid TO new_sale_id;


ALTER TABLE returned_sale_item ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE returned_sale_item SET sellable_uid = sellable.uid
    FROM sellable
    WHERE returned_sale_item.sellable_id = sellable.id;

ALTER TABLE returned_sale_item DROP COLUMN sellable_id;
ALTER TABLE returned_sale_item RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE returned_sale_item ADD sale_item_uid uuid
    REFERENCES sale_item(uid);
UPDATE returned_sale_item SET sale_item_uid = sale_item.uid
    FROM sale_item
    WHERE returned_sale_item.sale_item_id = sale_item.id;

ALTER TABLE returned_sale_item DROP COLUMN sale_item_id;
ALTER TABLE returned_sale_item RENAME COLUMN sale_item_uid TO sale_item_id;


ALTER TABLE returned_sale_item ADD returned_sale_uid uuid
    REFERENCES returned_sale(uid);
UPDATE returned_sale_item SET returned_sale_uid = returned_sale.uid
    FROM returned_sale
    WHERE returned_sale_item.returned_sale_id = returned_sale.id;

ALTER TABLE returned_sale_item DROP COLUMN returned_sale_id;
ALTER TABLE returned_sale_item RENAME COLUMN returned_sale_uid TO returned_sale_id;


ALTER TABLE product_stock_item ADD storable_uid uuid
    REFERENCES storable(uid);
UPDATE product_stock_item SET storable_uid = storable.uid
    FROM storable
    WHERE product_stock_item.storable_id = storable.id;

ALTER TABLE product_stock_item DROP COLUMN storable_id;
ALTER TABLE product_stock_item RENAME COLUMN storable_uid TO storable_id;


ALTER TABLE product_stock_item ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE product_stock_item SET branch_uid = branch.uid
    FROM branch
    WHERE product_stock_item.branch_id = branch.id;

ALTER TABLE product_stock_item DROP COLUMN branch_id;
ALTER TABLE product_stock_item RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE address ADD person_uid uuid
    REFERENCES person(uid);
UPDATE address SET person_uid = person.uid
    FROM person
    WHERE address.person_id = person.id;

ALTER TABLE address DROP COLUMN person_id;
ALTER TABLE address RENAME COLUMN person_uid TO person_id;


ALTER TABLE delivery ADD address_uid uuid
    REFERENCES address(uid);
UPDATE delivery SET address_uid = address.uid
    FROM address
    WHERE delivery.address_id = address.id;

ALTER TABLE delivery DROP COLUMN address_id;
ALTER TABLE delivery RENAME COLUMN address_uid TO address_id;


ALTER TABLE delivery ADD transporter_uid uuid
    REFERENCES transporter(uid);
UPDATE delivery SET transporter_uid = transporter.uid
    FROM transporter
    WHERE delivery.transporter_id = transporter.id;

ALTER TABLE delivery DROP COLUMN transporter_id;
ALTER TABLE delivery RENAME COLUMN transporter_uid TO transporter_id;


ALTER TABLE delivery ADD service_item_uid uuid
    REFERENCES sale_item(uid);
UPDATE delivery SET service_item_uid = sale_item.uid
    FROM sale_item
    WHERE delivery.service_item_id = sale_item.id;

ALTER TABLE delivery DROP COLUMN service_item_id;
ALTER TABLE delivery RENAME COLUMN service_item_uid TO service_item_id;


ALTER TABLE sale_item ADD delivery_uid uuid
    REFERENCES delivery(uid);
UPDATE sale_item SET delivery_uid = delivery.uid
    FROM delivery
    WHERE sale_item.delivery_id = delivery.id;

ALTER TABLE sale_item DROP COLUMN delivery_id;
ALTER TABLE sale_item RENAME COLUMN delivery_uid TO delivery_id;


ALTER TABLE branch_synchronization ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE branch_synchronization SET branch_uid = branch.uid
    FROM branch
    WHERE branch_synchronization.branch_id = branch.id;

ALTER TABLE branch_synchronization DROP COLUMN branch_id;
ALTER TABLE branch_synchronization RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE calls ADD person_uid uuid
    REFERENCES person(uid);
UPDATE calls SET person_uid = person.uid
    FROM person
    WHERE calls.person_id = person.id;

ALTER TABLE calls DROP COLUMN person_id;
ALTER TABLE calls RENAME COLUMN person_uid TO person_id;


ALTER TABLE calls ADD attendant_uid uuid
    REFERENCES login_user(uid);
UPDATE calls SET attendant_uid = login_user.uid
    FROM login_user
    WHERE calls.attendant_id = login_user.id;

ALTER TABLE calls DROP COLUMN attendant_id;
ALTER TABLE calls RENAME COLUMN attendant_uid TO attendant_id;


ALTER TABLE card_installments_provider_details ADD installment_settings_uid uuid
    REFERENCES card_installment_settings(uid);
UPDATE card_installments_provider_details SET installment_settings_uid = card_installment_settings.uid
    FROM card_installment_settings
    WHERE card_installments_provider_details.installment_settings_id = card_installment_settings.id;

ALTER TABLE card_installments_provider_details DROP COLUMN installment_settings_id;
ALTER TABLE card_installments_provider_details RENAME COLUMN installment_settings_uid TO installment_settings_id;


ALTER TABLE card_installments_store_details ADD installment_settings_uid uuid
    REFERENCES card_installment_settings(uid);
UPDATE card_installments_store_details SET installment_settings_uid = card_installment_settings.uid
    FROM card_installment_settings
    WHERE card_installments_store_details.installment_settings_id = card_installment_settings.id;

ALTER TABLE card_installments_store_details DROP COLUMN installment_settings_id;
ALTER TABLE card_installments_store_details RENAME COLUMN installment_settings_uid TO installment_settings_id;


ALTER TABLE account ADD parent_uid uuid
    REFERENCES account(uid);
UPDATE account SET parent_uid = account.uid
    WHERE account.parent_id = account.id;

ALTER TABLE account DROP COLUMN parent_id;
ALTER TABLE account RENAME COLUMN parent_uid TO parent_id;


ALTER TABLE account ADD station_uid uuid
    REFERENCES branch_station(uid);
UPDATE account SET station_uid = branch_station.uid
    FROM branch_station
    WHERE account.station_id = branch_station.id;

ALTER TABLE account DROP COLUMN station_id;
ALTER TABLE account RENAME COLUMN station_uid TO station_id;


ALTER TABLE bank_account ADD account_uid uuid
    REFERENCES account(uid);
UPDATE bank_account SET account_uid = account.uid
    FROM account
    WHERE bank_account.account_id = account.id;

ALTER TABLE bank_account DROP COLUMN account_id;
ALTER TABLE bank_account RENAME COLUMN account_uid TO account_id;


ALTER TABLE payment_method ADD destination_account_uid uuid
    REFERENCES account(uid);
UPDATE payment_method SET destination_account_uid = account.uid
    FROM account
    WHERE payment_method.destination_account_id = account.id;

ALTER TABLE payment_method DROP COLUMN destination_account_id;
ALTER TABLE payment_method RENAME COLUMN destination_account_uid TO destination_account_id;


ALTER TABLE device_settings ADD station_uid uuid
    REFERENCES branch_station(uid);
UPDATE device_settings SET station_uid = branch_station.uid
    FROM branch_station
    WHERE device_settings.station_id = branch_station.id;

ALTER TABLE device_settings DROP COLUMN station_id;
ALTER TABLE device_settings RENAME COLUMN station_uid TO station_id;


ALTER TABLE payment ADD method_uid uuid
    REFERENCES payment_method(uid);
UPDATE payment SET method_uid = payment_method.uid
    FROM payment_method
    WHERE payment.method_id = payment_method.id;

ALTER TABLE payment DROP COLUMN method_id;
ALTER TABLE payment RENAME COLUMN method_uid TO method_id;


ALTER TABLE payment ADD group_uid uuid
    REFERENCES payment_group(uid);
UPDATE payment SET group_uid = payment_group.uid
    FROM payment_group
    WHERE payment.group_id = payment_group.id;

ALTER TABLE payment DROP COLUMN group_id;
ALTER TABLE payment RENAME COLUMN group_uid TO group_id;


ALTER TABLE payment ADD till_uid uuid
    REFERENCES till(uid);
UPDATE payment SET till_uid = till.uid
    FROM till
    WHERE payment.till_id = till.id;

ALTER TABLE payment DROP COLUMN till_id;
ALTER TABLE payment RENAME COLUMN till_uid TO till_id;


ALTER TABLE payment ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE payment SET branch_uid = branch.uid
    FROM branch
    WHERE payment.branch_id = branch.id;

ALTER TABLE payment DROP COLUMN branch_id;
ALTER TABLE payment RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE payment ADD category_uid uuid
    REFERENCES payment_category(uid);
UPDATE payment SET category_uid = payment_category.uid
    FROM payment_category
    WHERE payment.category_id = payment_category.id;

ALTER TABLE payment DROP COLUMN category_id;
ALTER TABLE payment RENAME COLUMN category_uid TO category_id;


ALTER TABLE payment_comment ADD payment_uid uuid
    REFERENCES payment(uid);
UPDATE payment_comment SET payment_uid = payment.uid
    FROM payment
    WHERE payment_comment.payment_id = payment.id;

ALTER TABLE payment_comment DROP COLUMN payment_id;
ALTER TABLE payment_comment RENAME COLUMN payment_uid TO payment_id;


ALTER TABLE payment_comment ADD author_uid uuid
    REFERENCES login_user(uid);
UPDATE payment_comment SET author_uid = login_user.uid
    FROM login_user
    WHERE payment_comment.author_id = login_user.id;

ALTER TABLE payment_comment DROP COLUMN author_id;
ALTER TABLE payment_comment RENAME COLUMN author_uid TO author_id;


ALTER TABLE check_data ADD payment_uid uuid
    REFERENCES payment(uid);
UPDATE check_data SET payment_uid = payment.uid
    FROM payment
    WHERE check_data.payment_id = payment.id;

ALTER TABLE check_data DROP COLUMN payment_id;
ALTER TABLE check_data RENAME COLUMN payment_uid TO payment_id;


ALTER TABLE check_data ADD bank_account_uid uuid
    REFERENCES bank_account(uid);
UPDATE check_data SET bank_account_uid = bank_account.uid
    FROM bank_account
    WHERE check_data.bank_account_id = bank_account.id;

ALTER TABLE check_data DROP COLUMN bank_account_id;
ALTER TABLE check_data RENAME COLUMN bank_account_uid TO bank_account_id;


ALTER TABLE credit_card_details ADD installment_settings_uid uuid
    REFERENCES card_installment_settings(uid);
UPDATE credit_card_details SET installment_settings_uid = card_installment_settings.uid
    FROM card_installment_settings
    WHERE credit_card_details.installment_settings_id = card_installment_settings.id;

ALTER TABLE credit_card_details DROP COLUMN installment_settings_id;
ALTER TABLE credit_card_details RENAME COLUMN installment_settings_uid TO installment_settings_id;


ALTER TABLE credit_card_data ADD payment_uid uuid
    REFERENCES payment(uid);
UPDATE credit_card_data SET payment_uid = payment.uid
    FROM payment
    WHERE credit_card_data.payment_id = payment.id;

ALTER TABLE credit_card_data DROP COLUMN payment_id;
ALTER TABLE credit_card_data RENAME COLUMN payment_uid TO payment_id;


ALTER TABLE credit_card_data ADD provider_uid uuid
    REFERENCES credit_provider(uid);
UPDATE credit_card_data SET provider_uid = credit_provider.uid
    FROM credit_provider
    WHERE credit_card_data.provider_id = credit_provider.id;

ALTER TABLE credit_card_data DROP COLUMN provider_id;
ALTER TABLE credit_card_data RENAME COLUMN provider_uid TO provider_id;


ALTER TABLE payment_change_history ADD payment_uid uuid
    REFERENCES payment(uid);
UPDATE payment_change_history SET payment_uid = payment.uid
    FROM payment
    WHERE payment_change_history.payment_id = payment.id;

ALTER TABLE payment_change_history DROP COLUMN payment_id;
ALTER TABLE payment_change_history RENAME COLUMN payment_uid TO payment_id;


ALTER TABLE fiscal_sale_history ADD sale_uid uuid
    REFERENCES sale(uid);
UPDATE fiscal_sale_history SET sale_uid = sale.uid
    FROM sale
    WHERE fiscal_sale_history.sale_id = sale.id;

ALTER TABLE fiscal_sale_history DROP COLUMN sale_id;
ALTER TABLE fiscal_sale_history RENAME COLUMN sale_uid TO sale_id;


ALTER TABLE device_constant ADD device_settings_uid uuid
    REFERENCES device_settings(uid);
UPDATE device_constant SET device_settings_uid = device_settings.uid
    FROM device_settings
    WHERE device_constant.device_settings_id = device_settings.id;

ALTER TABLE device_constant DROP COLUMN device_settings_id;
ALTER TABLE device_constant RENAME COLUMN device_settings_uid TO device_settings_id;


ALTER TABLE employee_role_history ADD role_uid uuid
    REFERENCES employee_role(uid);
UPDATE employee_role_history SET role_uid = employee_role.uid
    FROM employee_role
    WHERE employee_role_history.role_id = employee_role.id;

ALTER TABLE employee_role_history DROP COLUMN role_id;
ALTER TABLE employee_role_history RENAME COLUMN role_uid TO role_id;


ALTER TABLE employee_role_history ADD employee_uid uuid
    REFERENCES employee(uid);
UPDATE employee_role_history SET employee_uid = employee.uid
    FROM employee
    WHERE employee_role_history.employee_id = employee.id;

ALTER TABLE employee_role_history DROP COLUMN employee_id;
ALTER TABLE employee_role_history RENAME COLUMN employee_uid TO employee_id;


ALTER TABLE contact_info ADD person_uid uuid
    REFERENCES person(uid);
UPDATE contact_info SET person_uid = person.uid
    FROM person
    WHERE contact_info.person_id = person.id;

ALTER TABLE contact_info DROP COLUMN person_id;
ALTER TABLE contact_info RENAME COLUMN person_uid TO person_id;


ALTER TABLE profile_settings ADD user_profile_uid uuid
    REFERENCES user_profile(uid);
UPDATE profile_settings SET user_profile_uid = user_profile.uid
    FROM user_profile
    WHERE profile_settings.user_profile_id = user_profile.id;

ALTER TABLE profile_settings DROP COLUMN user_profile_id;
ALTER TABLE profile_settings RENAME COLUMN user_profile_uid TO user_profile_id;


ALTER TABLE receiving_order ADD cfop_uid uuid
    REFERENCES cfop_data(uid);
UPDATE receiving_order SET cfop_uid = cfop_data.uid
    FROM cfop_data
    WHERE receiving_order.cfop_id = cfop_data.id;

ALTER TABLE receiving_order DROP COLUMN cfop_id;
ALTER TABLE receiving_order RENAME COLUMN cfop_uid TO cfop_id;


ALTER TABLE receiving_order ADD responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE receiving_order SET responsible_uid = login_user.uid
    FROM login_user
    WHERE receiving_order.responsible_id = login_user.id;

ALTER TABLE receiving_order DROP COLUMN responsible_id;
ALTER TABLE receiving_order RENAME COLUMN responsible_uid TO responsible_id;


ALTER TABLE receiving_order ADD supplier_uid uuid
    REFERENCES supplier(uid);
UPDATE receiving_order SET supplier_uid = supplier.uid
    FROM supplier
    WHERE receiving_order.supplier_id = supplier.id;

ALTER TABLE receiving_order DROP COLUMN supplier_id;
ALTER TABLE receiving_order RENAME COLUMN supplier_uid TO supplier_id;


ALTER TABLE receiving_order ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE receiving_order SET branch_uid = branch.uid
    FROM branch
    WHERE receiving_order.branch_id = branch.id;

ALTER TABLE receiving_order DROP COLUMN branch_id;
ALTER TABLE receiving_order RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE receiving_order ADD purchase_uid uuid
    REFERENCES purchase_order(uid);
UPDATE receiving_order SET purchase_uid = purchase_order.uid
    FROM purchase_order
    WHERE receiving_order.purchase_id = purchase_order.id;

ALTER TABLE receiving_order DROP COLUMN purchase_id;
ALTER TABLE receiving_order RENAME COLUMN purchase_uid TO purchase_id;


ALTER TABLE receiving_order ADD transporter_uid uuid
    REFERENCES transporter(uid);
UPDATE receiving_order SET transporter_uid = transporter.uid
    FROM transporter
    WHERE receiving_order.transporter_id = transporter.id;

ALTER TABLE receiving_order DROP COLUMN transporter_id;
ALTER TABLE receiving_order RENAME COLUMN transporter_uid TO transporter_id;


ALTER TABLE receiving_order_item ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE receiving_order_item SET sellable_uid = sellable.uid
    FROM sellable
    WHERE receiving_order_item.sellable_id = sellable.id;

ALTER TABLE receiving_order_item DROP COLUMN sellable_id;
ALTER TABLE receiving_order_item RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE receiving_order_item ADD receiving_order_uid uuid
    REFERENCES receiving_order(uid);
UPDATE receiving_order_item SET receiving_order_uid = receiving_order.uid
    FROM receiving_order
    WHERE receiving_order_item.receiving_order_id = receiving_order.id;

ALTER TABLE receiving_order_item DROP COLUMN receiving_order_id;
ALTER TABLE receiving_order_item RENAME COLUMN receiving_order_uid TO receiving_order_id;


ALTER TABLE receiving_order_item ADD purchase_item_uid uuid
    REFERENCES purchase_item(uid);
UPDATE receiving_order_item SET purchase_item_uid = purchase_item.uid
    FROM purchase_item
    WHERE receiving_order_item.purchase_item_id = purchase_item.id;

ALTER TABLE receiving_order_item DROP COLUMN purchase_item_id;
ALTER TABLE receiving_order_item RENAME COLUMN purchase_item_uid TO purchase_item_id;


ALTER TABLE till_entry ADD till_uid uuid
    REFERENCES till(uid);
UPDATE till_entry SET till_uid = till.uid
    FROM till
    WHERE till_entry.till_id = till.id;

ALTER TABLE till_entry DROP COLUMN till_id;
ALTER TABLE till_entry RENAME COLUMN till_uid TO till_id;


ALTER TABLE till_entry ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE till_entry SET branch_uid = branch.uid
    FROM branch
    WHERE till_entry.branch_id = branch.id;

ALTER TABLE till_entry DROP COLUMN branch_id;
ALTER TABLE till_entry RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE till_entry ADD payment_uid uuid
    REFERENCES payment(uid);
UPDATE till_entry SET payment_uid = payment.uid
    FROM payment
    WHERE till_entry.payment_id = payment.id;

ALTER TABLE till_entry DROP COLUMN payment_id;
ALTER TABLE till_entry RENAME COLUMN payment_uid TO payment_id;


ALTER TABLE fiscal_book_entry ADD cfop_uid uuid
    REFERENCES cfop_data(uid);
UPDATE fiscal_book_entry SET cfop_uid = cfop_data.uid
    FROM cfop_data
    WHERE fiscal_book_entry.cfop_id = cfop_data.id;

ALTER TABLE fiscal_book_entry DROP COLUMN cfop_id;
ALTER TABLE fiscal_book_entry RENAME COLUMN cfop_uid TO cfop_id;


ALTER TABLE fiscal_book_entry ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE fiscal_book_entry SET branch_uid = branch.uid
    FROM branch
    WHERE fiscal_book_entry.branch_id = branch.id;

ALTER TABLE fiscal_book_entry DROP COLUMN branch_id;
ALTER TABLE fiscal_book_entry RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE fiscal_book_entry ADD drawee_uid uuid
    REFERENCES person(uid);
UPDATE fiscal_book_entry SET drawee_uid = person.uid
    FROM person
    WHERE fiscal_book_entry.drawee_id = person.id;

ALTER TABLE fiscal_book_entry DROP COLUMN drawee_id;
ALTER TABLE fiscal_book_entry RENAME COLUMN drawee_uid TO drawee_id;


ALTER TABLE fiscal_book_entry ADD payment_group_uid uuid
    REFERENCES payment_group(uid);
UPDATE fiscal_book_entry SET payment_group_uid = payment_group.uid
    FROM payment_group
    WHERE fiscal_book_entry.payment_group_id = payment_group.id;

ALTER TABLE fiscal_book_entry DROP COLUMN payment_group_id;
ALTER TABLE fiscal_book_entry RENAME COLUMN payment_group_uid TO payment_group_id;


ALTER TABLE fiscal_day_history ADD station_uid uuid
    REFERENCES branch_station(uid);
UPDATE fiscal_day_history SET station_uid = branch_station.uid
    FROM branch_station
    WHERE fiscal_day_history.station_id = branch_station.id;

ALTER TABLE fiscal_day_history DROP COLUMN station_id;
ALTER TABLE fiscal_day_history RENAME COLUMN station_uid TO station_id;


ALTER TABLE fiscal_day_tax ADD fiscal_day_history_uid uuid
    REFERENCES fiscal_day_history(uid);
UPDATE fiscal_day_tax SET fiscal_day_history_uid = fiscal_day_history.uid
    FROM fiscal_day_history
    WHERE fiscal_day_tax.fiscal_day_history_id = fiscal_day_history.id;

ALTER TABLE fiscal_day_tax DROP COLUMN fiscal_day_history_id;
ALTER TABLE fiscal_day_tax RENAME COLUMN fiscal_day_history_uid TO fiscal_day_history_id;


ALTER TABLE commission_source ADD category_uid uuid
    REFERENCES sellable_category(uid);
UPDATE commission_source SET category_uid = sellable_category.uid
    FROM sellable_category
    WHERE commission_source.category_id = sellable_category.id;

ALTER TABLE commission_source DROP COLUMN category_id;
ALTER TABLE commission_source RENAME COLUMN category_uid TO category_id;


ALTER TABLE commission_source ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE commission_source SET sellable_uid = sellable.uid
    FROM sellable
    WHERE commission_source.sellable_id = sellable.id;

ALTER TABLE commission_source DROP COLUMN sellable_id;
ALTER TABLE commission_source RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE commission ADD salesperson_uid uuid
    REFERENCES sales_person(uid);
UPDATE commission SET salesperson_uid = sales_person.uid
    FROM sales_person
    WHERE commission.salesperson_id = sales_person.id;

ALTER TABLE commission DROP COLUMN salesperson_id;
ALTER TABLE commission RENAME COLUMN salesperson_uid TO salesperson_id;


ALTER TABLE commission ADD sale_uid uuid
    REFERENCES sale(uid);
UPDATE commission SET sale_uid = sale.uid
    FROM sale
    WHERE commission.sale_id = sale.id;

ALTER TABLE commission DROP COLUMN sale_id;
ALTER TABLE commission RENAME COLUMN sale_uid TO sale_id;


ALTER TABLE commission ADD payment_uid uuid
    REFERENCES payment(uid);
UPDATE commission SET payment_uid = payment.uid
    FROM payment
    WHERE commission.payment_id = payment.id;

ALTER TABLE commission DROP COLUMN payment_id;
ALTER TABLE commission RENAME COLUMN payment_uid TO payment_id;


ALTER TABLE transfer_order ADD source_branch_uid uuid
    REFERENCES branch(uid);
UPDATE transfer_order SET source_branch_uid = branch.uid
    FROM branch
    WHERE transfer_order.source_branch_id = branch.id;

ALTER TABLE transfer_order DROP COLUMN source_branch_id;
ALTER TABLE transfer_order RENAME COLUMN source_branch_uid TO source_branch_id;


ALTER TABLE transfer_order ADD destination_branch_uid uuid
    REFERENCES branch(uid);
UPDATE transfer_order SET destination_branch_uid = branch.uid
    FROM branch
    WHERE transfer_order.destination_branch_id = branch.id;

ALTER TABLE transfer_order DROP COLUMN destination_branch_id;
ALTER TABLE transfer_order RENAME COLUMN destination_branch_uid TO destination_branch_id;


ALTER TABLE transfer_order ADD source_responsible_uid uuid
    REFERENCES employee(uid);
UPDATE transfer_order SET source_responsible_uid = employee.uid
    FROM employee
    WHERE transfer_order.source_responsible_id = employee.id;

ALTER TABLE transfer_order DROP COLUMN source_responsible_id;
ALTER TABLE transfer_order RENAME COLUMN source_responsible_uid TO source_responsible_id;


ALTER TABLE transfer_order ADD destination_responsible_uid uuid
    REFERENCES employee(uid);
UPDATE transfer_order SET destination_responsible_uid = employee.uid
    FROM employee
    WHERE transfer_order.destination_responsible_id = employee.id;

ALTER TABLE transfer_order DROP COLUMN destination_responsible_id;
ALTER TABLE transfer_order RENAME COLUMN destination_responsible_uid TO destination_responsible_id;


ALTER TABLE transfer_order_item ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE transfer_order_item SET sellable_uid = sellable.uid
    FROM sellable
    WHERE transfer_order_item.sellable_id = sellable.id;

ALTER TABLE transfer_order_item DROP COLUMN sellable_id;
ALTER TABLE transfer_order_item RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE transfer_order_item ADD transfer_order_uid uuid
    REFERENCES transfer_order(uid);
UPDATE transfer_order_item SET transfer_order_uid = transfer_order.uid
    FROM transfer_order
    WHERE transfer_order_item.transfer_order_id = transfer_order.id;

ALTER TABLE transfer_order_item DROP COLUMN transfer_order_id;
ALTER TABLE transfer_order_item RENAME COLUMN transfer_order_uid TO transfer_order_id;


ALTER TABLE invoice_field ADD layout_uid uuid
    REFERENCES invoice_layout(uid);
UPDATE invoice_field SET layout_uid = invoice_layout.uid
    FROM invoice_layout
    WHERE invoice_field.layout_id = invoice_layout.id;

ALTER TABLE invoice_field DROP COLUMN layout_id;
ALTER TABLE invoice_field RENAME COLUMN layout_uid TO layout_id;


ALTER TABLE invoice_printer ADD station_uid uuid
    REFERENCES branch_station(uid);
UPDATE invoice_printer SET station_uid = branch_station.uid
    FROM branch_station
    WHERE invoice_printer.station_id = branch_station.id;

ALTER TABLE invoice_printer DROP COLUMN station_id;
ALTER TABLE invoice_printer RENAME COLUMN station_uid TO station_id;


ALTER TABLE invoice_printer ADD layout_uid uuid
    REFERENCES invoice_layout(uid);
UPDATE invoice_printer SET layout_uid = invoice_layout.uid
    FROM invoice_layout
    WHERE invoice_printer.layout_id = invoice_layout.id;

ALTER TABLE invoice_printer DROP COLUMN layout_id;
ALTER TABLE invoice_printer RENAME COLUMN layout_uid TO layout_id;


ALTER TABLE inventory ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE inventory SET branch_uid = branch.uid
    FROM branch
    WHERE inventory.branch_id = branch.id;

ALTER TABLE inventory DROP COLUMN branch_id;
ALTER TABLE inventory RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE inventory_item ADD product_uid uuid
    REFERENCES product(uid);
UPDATE inventory_item SET product_uid = product.uid
    FROM product
    WHERE inventory_item.product_id = product.id;

ALTER TABLE inventory_item DROP COLUMN product_id;
ALTER TABLE inventory_item RENAME COLUMN product_uid TO product_id;


ALTER TABLE inventory_item ADD inventory_uid uuid
    REFERENCES inventory(uid);
UPDATE inventory_item SET inventory_uid = inventory.uid
    FROM inventory
    WHERE inventory_item.inventory_id = inventory.id;

ALTER TABLE inventory_item DROP COLUMN inventory_id;
ALTER TABLE inventory_item RENAME COLUMN inventory_uid TO inventory_id;


ALTER TABLE inventory_item ADD cfop_data_uid uuid
    REFERENCES cfop_data(uid);
UPDATE inventory_item SET cfop_data_uid = cfop_data.uid
    FROM cfop_data
    WHERE inventory_item.cfop_data_id = cfop_data.id;

ALTER TABLE inventory_item DROP COLUMN cfop_data_id;
ALTER TABLE inventory_item RENAME COLUMN cfop_data_uid TO cfop_data_id;


ALTER TABLE production_order ADD responsible_uid uuid
    REFERENCES employee(uid);
UPDATE production_order SET responsible_uid = employee.uid
    FROM employee
    WHERE production_order.responsible_id = employee.id;

ALTER TABLE production_order DROP COLUMN responsible_id;
ALTER TABLE production_order RENAME COLUMN responsible_uid TO responsible_id;


ALTER TABLE production_order ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE production_order SET branch_uid = branch.uid
    FROM branch
    WHERE production_order.branch_id = branch.id;

ALTER TABLE production_order DROP COLUMN branch_id;
ALTER TABLE production_order RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE production_item ADD product_uid uuid
    REFERENCES product(uid);
UPDATE production_item SET product_uid = product.uid
    FROM product
    WHERE production_item.product_id = product.id;

ALTER TABLE production_item DROP COLUMN product_id;
ALTER TABLE production_item RENAME COLUMN product_uid TO product_id;


ALTER TABLE production_item ADD order_uid uuid
    REFERENCES production_order(uid);
UPDATE production_item SET order_uid = production_order.uid
    FROM production_order
    WHERE production_item.order_id = production_order.id;

ALTER TABLE production_item DROP COLUMN order_id;
ALTER TABLE production_item RENAME COLUMN order_uid TO order_id;


ALTER TABLE production_material ADD order_uid uuid
    REFERENCES production_order(uid);
UPDATE production_material SET order_uid = production_order.uid
    FROM production_order
    WHERE production_material.order_id = production_order.id;

ALTER TABLE production_material DROP COLUMN order_id;
ALTER TABLE production_material RENAME COLUMN order_uid TO order_id;


ALTER TABLE production_material ADD product_uid uuid
    REFERENCES product(uid);
UPDATE production_material SET product_uid = product.uid
    FROM product
    WHERE production_material.product_id = product.id;

ALTER TABLE production_material DROP COLUMN product_id;
ALTER TABLE production_material RENAME COLUMN product_uid TO product_id;


ALTER TABLE production_service ADD service_uid uuid
    REFERENCES service(uid);
UPDATE production_service SET service_uid = service.uid
    FROM service
    WHERE production_service.service_id = service.id;

ALTER TABLE production_service DROP COLUMN service_id;
ALTER TABLE production_service RENAME COLUMN service_uid TO service_id;


ALTER TABLE production_service ADD order_uid uuid
    REFERENCES production_order(uid);
UPDATE production_service SET order_uid = production_order.uid
    FROM production_order
    WHERE production_service.order_id = production_order.id;

ALTER TABLE production_service DROP COLUMN order_id;
ALTER TABLE production_service RENAME COLUMN order_uid TO order_id;


ALTER TABLE loan ADD client_uid uuid
    REFERENCES client(uid);
UPDATE loan SET client_uid = client.uid
    FROM client
    WHERE loan.client_id = client.id;

ALTER TABLE loan DROP COLUMN client_id;
ALTER TABLE loan RENAME COLUMN client_uid TO client_id;


ALTER TABLE loan ADD responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE loan SET responsible_uid = login_user.uid
    FROM login_user
    WHERE loan.responsible_id = login_user.id;

ALTER TABLE loan DROP COLUMN responsible_id;
ALTER TABLE loan RENAME COLUMN responsible_uid TO responsible_id;


ALTER TABLE loan ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE loan SET branch_uid = branch.uid
    FROM branch
    WHERE loan.branch_id = branch.id;

ALTER TABLE loan DROP COLUMN branch_id;
ALTER TABLE loan RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE loan_item ADD loan_uid uuid
    REFERENCES loan(uid);
UPDATE loan_item SET loan_uid = loan.uid
    FROM loan
    WHERE loan_item.loan_id = loan.id;

ALTER TABLE loan_item DROP COLUMN loan_id;
ALTER TABLE loan_item RENAME COLUMN loan_uid TO loan_id;


ALTER TABLE loan_item ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE loan_item SET sellable_uid = sellable.uid
    FROM sellable
    WHERE loan_item.sellable_id = sellable.id;

ALTER TABLE loan_item DROP COLUMN sellable_id;
ALTER TABLE loan_item RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE stock_decrease ADD responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE stock_decrease SET responsible_uid = login_user.uid
    FROM login_user
    WHERE stock_decrease.responsible_id = login_user.id;

ALTER TABLE stock_decrease DROP COLUMN responsible_id;
ALTER TABLE stock_decrease RENAME COLUMN responsible_uid TO responsible_id;


ALTER TABLE stock_decrease ADD removed_by_uid uuid
    REFERENCES employee(uid);
UPDATE stock_decrease SET removed_by_uid = employee.uid
    FROM employee
    WHERE stock_decrease.removed_by_id = employee.id;

ALTER TABLE stock_decrease DROP COLUMN removed_by_id;
ALTER TABLE stock_decrease RENAME COLUMN removed_by_uid TO removed_by_id;


ALTER TABLE stock_decrease ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE stock_decrease SET branch_uid = branch.uid
    FROM branch
    WHERE stock_decrease.branch_id = branch.id;

ALTER TABLE stock_decrease DROP COLUMN branch_id;
ALTER TABLE stock_decrease RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE stock_decrease ADD cfop_uid uuid
    REFERENCES cfop_data(uid);
UPDATE stock_decrease SET cfop_uid = cfop_data.uid
    FROM cfop_data
    WHERE stock_decrease.cfop_id = cfop_data.id;

ALTER TABLE stock_decrease DROP COLUMN cfop_id;
ALTER TABLE stock_decrease RENAME COLUMN cfop_uid TO cfop_id;


ALTER TABLE stock_decrease_item ADD stock_decrease_uid uuid
    REFERENCES stock_decrease(uid);
UPDATE stock_decrease_item SET stock_decrease_uid = stock_decrease.uid
    FROM stock_decrease
    WHERE stock_decrease_item.stock_decrease_id = stock_decrease.id;

ALTER TABLE stock_decrease_item DROP COLUMN stock_decrease_id;
ALTER TABLE stock_decrease_item RENAME COLUMN stock_decrease_uid TO stock_decrease_id;


ALTER TABLE stock_decrease_item ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE stock_decrease_item SET sellable_uid = sellable.uid
    FROM sellable
    WHERE stock_decrease_item.sellable_id = sellable.id;

ALTER TABLE stock_decrease_item DROP COLUMN sellable_id;
ALTER TABLE stock_decrease_item RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE account_transaction ADD source_account_uid uuid
    REFERENCES account(uid);
UPDATE account_transaction SET source_account_uid = account.uid
    FROM account
    WHERE account_transaction.source_account_id = account.id;

ALTER TABLE account_transaction DROP COLUMN source_account_id;
ALTER TABLE account_transaction RENAME COLUMN source_account_uid TO source_account_id;


ALTER TABLE account_transaction ADD account_uid uuid
    REFERENCES account(uid);
UPDATE account_transaction SET account_uid = account.uid
    FROM account
    WHERE account_transaction.account_id = account.id;

ALTER TABLE account_transaction DROP COLUMN account_id;
ALTER TABLE account_transaction RENAME COLUMN account_uid TO account_id;


ALTER TABLE account_transaction ADD payment_uid uuid
    REFERENCES payment(uid);
UPDATE account_transaction SET payment_uid = payment.uid
    FROM payment
    WHERE account_transaction.payment_id = payment.id;

ALTER TABLE account_transaction DROP COLUMN payment_id;
ALTER TABLE account_transaction RENAME COLUMN payment_uid TO payment_id;


ALTER TABLE ui_field ADD ui_form_uid uuid
    REFERENCES ui_form(uid);
UPDATE ui_field SET ui_form_uid = ui_form.uid
    FROM ui_form
    WHERE ui_field.ui_form_id = ui_form.id;

ALTER TABLE ui_field DROP COLUMN ui_form_id;
ALTER TABLE ui_field RENAME COLUMN ui_form_uid TO ui_form_id;


ALTER TABLE product_quality_test ADD product_uid uuid
    REFERENCES product(uid);
UPDATE product_quality_test SET product_uid = product.uid
    FROM product
    WHERE product_quality_test.product_id = product.id;

ALTER TABLE product_quality_test DROP COLUMN product_id;
ALTER TABLE product_quality_test RENAME COLUMN product_uid TO product_id;


ALTER TABLE production_produced_item ADD order_uid uuid
    REFERENCES production_order(uid);
UPDATE production_produced_item SET order_uid = production_order.uid
    FROM production_order
    WHERE production_produced_item.order_id = production_order.id;

ALTER TABLE production_produced_item DROP COLUMN order_id;
ALTER TABLE production_produced_item RENAME COLUMN order_uid TO order_id;


ALTER TABLE production_produced_item ADD product_uid uuid
    REFERENCES product(uid);
UPDATE production_produced_item SET product_uid = product.uid
    FROM product
    WHERE production_produced_item.product_id = product.id;

ALTER TABLE production_produced_item DROP COLUMN product_id;
ALTER TABLE production_produced_item RENAME COLUMN product_uid TO product_id;


ALTER TABLE production_produced_item ADD produced_by_uid uuid
    REFERENCES login_user(uid);
UPDATE production_produced_item SET produced_by_uid = login_user.uid
    FROM login_user
    WHERE production_produced_item.produced_by_id = login_user.id;

ALTER TABLE production_produced_item DROP COLUMN produced_by_id;
ALTER TABLE production_produced_item RENAME COLUMN produced_by_uid TO produced_by_id;


ALTER TABLE production_item_quality_result ADD produced_item_uid uuid
    REFERENCES production_produced_item(uid);
UPDATE production_item_quality_result SET produced_item_uid = production_produced_item.uid
    FROM production_produced_item
    WHERE production_item_quality_result.produced_item_id = production_produced_item.id;

ALTER TABLE production_item_quality_result DROP COLUMN produced_item_id;
ALTER TABLE production_item_quality_result RENAME COLUMN produced_item_uid TO produced_item_id;


ALTER TABLE production_item_quality_result ADD quality_test_uid uuid
    REFERENCES product_quality_test(uid);
UPDATE production_item_quality_result SET quality_test_uid = product_quality_test.uid
    FROM product_quality_test
    WHERE production_item_quality_result.quality_test_id = product_quality_test.id;

ALTER TABLE production_item_quality_result DROP COLUMN quality_test_id;
ALTER TABLE production_item_quality_result RENAME COLUMN quality_test_uid TO quality_test_id;


ALTER TABLE production_item_quality_result ADD tested_by_uid uuid
    REFERENCES login_user(uid);
UPDATE production_item_quality_result SET tested_by_uid = login_user.uid
    FROM login_user
    WHERE production_item_quality_result.tested_by_id = login_user.id;

ALTER TABLE production_item_quality_result DROP COLUMN tested_by_id;
ALTER TABLE production_item_quality_result RENAME COLUMN tested_by_uid TO tested_by_id;


ALTER TABLE credit_check_history ADD client_uid uuid
    REFERENCES client(uid);
UPDATE credit_check_history SET client_uid = client.uid
    FROM client
    WHERE credit_check_history.client_id = client.id;

ALTER TABLE credit_check_history DROP COLUMN client_id;
ALTER TABLE credit_check_history RENAME COLUMN client_uid TO client_id;


ALTER TABLE credit_check_history ADD user_uid uuid
    REFERENCES login_user(uid);
UPDATE credit_check_history SET user_uid = login_user.uid
    FROM login_user
    WHERE credit_check_history.user_id = login_user.id;

ALTER TABLE credit_check_history DROP COLUMN user_id;
ALTER TABLE credit_check_history RENAME COLUMN user_uid TO user_id;


ALTER TABLE transaction_entry ADD user_uid uuid
    REFERENCES login_user(uid);
UPDATE transaction_entry SET user_uid = login_user.uid
    FROM login_user
    WHERE transaction_entry.user_id = login_user.id;

ALTER TABLE transaction_entry DROP COLUMN user_id;
ALTER TABLE transaction_entry RENAME COLUMN user_uid TO user_id;


ALTER TABLE transaction_entry ADD station_uid uuid
    REFERENCES branch_station(uid);
UPDATE transaction_entry SET station_uid = branch_station.uid
    FROM branch_station
    WHERE transaction_entry.station_id = branch_station.id;

ALTER TABLE transaction_entry DROP COLUMN station_id;
ALTER TABLE transaction_entry RENAME COLUMN station_uid TO station_id;


ALTER TABLE card_operation_cost ADD device_uid uuid
    REFERENCES card_payment_device(uid);
UPDATE card_operation_cost SET device_uid = card_payment_device.uid
    FROM card_payment_device
    WHERE card_operation_cost.device_id = card_payment_device.id;

ALTER TABLE card_operation_cost DROP COLUMN device_id;
ALTER TABLE card_operation_cost RENAME COLUMN device_uid TO device_id;


ALTER TABLE card_operation_cost ADD provider_uid uuid
    REFERENCES credit_provider(uid);
UPDATE card_operation_cost SET provider_uid = credit_provider.uid
    FROM credit_provider
    WHERE card_operation_cost.provider_id = credit_provider.id;

ALTER TABLE card_operation_cost DROP COLUMN provider_id;
ALTER TABLE card_operation_cost RENAME COLUMN provider_uid TO provider_id;


ALTER TABLE stock_decrease ADD group_uid uuid
    REFERENCES payment_group(uid);
UPDATE stock_decrease SET group_uid = payment_group.uid
    FROM payment_group
    WHERE stock_decrease.group_id = payment_group.id;

ALTER TABLE stock_decrease DROP COLUMN group_id;
ALTER TABLE stock_decrease RENAME COLUMN group_uid TO group_id;


ALTER TABLE credit_card_data ADD device_uid uuid
    REFERENCES card_payment_device(uid);
UPDATE credit_card_data SET device_uid = card_payment_device.uid
    FROM card_payment_device
    WHERE credit_card_data.device_id = card_payment_device.id;

ALTER TABLE credit_card_data DROP COLUMN device_id;
ALTER TABLE credit_card_data RENAME COLUMN device_uid TO device_id;


ALTER TABLE payment ADD attachment_uid uuid
    REFERENCES attachment(uid);
UPDATE payment SET attachment_uid = attachment.uid
    FROM attachment
    WHERE payment.attachment_id = attachment.id;

ALTER TABLE payment DROP COLUMN attachment_id;
ALTER TABLE payment RENAME COLUMN attachment_uid TO attachment_id;


ALTER TABLE stock_transaction_history ADD responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE stock_transaction_history SET responsible_uid = login_user.uid
    FROM login_user
    WHERE stock_transaction_history.responsible_id = login_user.id;

ALTER TABLE stock_transaction_history DROP COLUMN responsible_id;
ALTER TABLE stock_transaction_history RENAME COLUMN responsible_uid TO responsible_id;


ALTER TABLE stock_transaction_history ADD product_stock_item_uid uuid
    REFERENCES product_stock_item(uid);
UPDATE stock_transaction_history SET product_stock_item_uid = product_stock_item.uid
    FROM product_stock_item
    WHERE stock_transaction_history.product_stock_item_id = product_stock_item.id;

ALTER TABLE stock_transaction_history DROP COLUMN product_stock_item_id;
ALTER TABLE stock_transaction_history RENAME COLUMN product_stock_item_uid TO product_stock_item_id;

ALTER TABLE work_order ADD category_uid uuid
    REFERENCES work_order_category(uid);
UPDATE work_order SET category_uid = work_order_category.uid
    FROM work_order_category
    WHERE work_order.category_id = work_order_category.id;

ALTER TABLE work_order DROP COLUMN category_id;
ALTER TABLE work_order RENAME COLUMN category_uid TO category_id;


ALTER TABLE work_order ADD client_uid uuid
    REFERENCES client(uid);
UPDATE work_order SET client_uid = client.uid
    FROM client
    WHERE work_order.client_id = client.id;

ALTER TABLE work_order DROP COLUMN client_id;
ALTER TABLE work_order RENAME COLUMN client_uid TO client_id;


ALTER TABLE cost_center_entry ADD cost_center_uid uuid
    REFERENCES cost_center(uid);
UPDATE cost_center_entry SET cost_center_uid = cost_center.uid
    FROM cost_center
    WHERE cost_center_entry.cost_center_id = cost_center.id;

ALTER TABLE cost_center_entry DROP COLUMN cost_center_id;
ALTER TABLE cost_center_entry RENAME COLUMN cost_center_uid TO cost_center_id;


ALTER TABLE cost_center_entry ADD payment_uid uuid
    REFERENCES payment(uid);
UPDATE cost_center_entry SET payment_uid = payment.uid
    FROM payment
    WHERE cost_center_entry.payment_id = payment.id;

ALTER TABLE cost_center_entry DROP COLUMN payment_id;
ALTER TABLE cost_center_entry RENAME COLUMN payment_uid TO payment_id;


ALTER TABLE cost_center_entry ADD stock_transaction_uid uuid
    REFERENCES stock_transaction_history(uid);
UPDATE cost_center_entry SET stock_transaction_uid = stock_transaction_history.uid
    FROM stock_transaction_history
    WHERE cost_center_entry.stock_transaction_id = stock_transaction_history.id;

ALTER TABLE cost_center_entry DROP COLUMN stock_transaction_id;
ALTER TABLE cost_center_entry RENAME COLUMN stock_transaction_uid TO stock_transaction_id;


ALTER TABLE sale ADD cost_center_uid uuid
    REFERENCES cost_center(uid);
UPDATE sale SET cost_center_uid = cost_center.uid
    FROM cost_center
    WHERE sale.cost_center_id = cost_center.id;

ALTER TABLE sale DROP COLUMN cost_center_id;
ALTER TABLE sale RENAME COLUMN cost_center_uid TO cost_center_id;


ALTER TABLE stock_decrease ADD cost_center_uid uuid
    REFERENCES cost_center(uid);
UPDATE stock_decrease SET cost_center_uid = cost_center.uid
    FROM cost_center
    WHERE stock_decrease.cost_center_id = cost_center.id;

ALTER TABLE stock_decrease DROP COLUMN cost_center_id;
ALTER TABLE stock_decrease RENAME COLUMN cost_center_uid TO cost_center_id;


ALTER TABLE work_order ADD branch_uid uuid
    REFERENCES branch(uid);
UPDATE work_order SET branch_uid = branch.uid
    FROM branch
    WHERE work_order.branch_id = branch.id;

ALTER TABLE work_order DROP COLUMN branch_id;
ALTER TABLE work_order RENAME COLUMN branch_uid TO branch_id;


ALTER TABLE work_order ADD quote_responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE work_order SET quote_responsible_uid = login_user.uid
    FROM login_user
    WHERE work_order.quote_responsible_id = login_user.id;

ALTER TABLE work_order DROP COLUMN quote_responsible_id;
ALTER TABLE work_order RENAME COLUMN quote_responsible_uid TO quote_responsible_id;


ALTER TABLE work_order ADD execution_responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE work_order SET execution_responsible_uid = login_user.uid
    FROM login_user
    WHERE work_order.execution_responsible_id = login_user.id;

ALTER TABLE work_order DROP COLUMN execution_responsible_id;
ALTER TABLE work_order RENAME COLUMN execution_responsible_uid TO execution_responsible_id;


ALTER TABLE work_order ADD sale_uid uuid
    REFERENCES sale(uid);
UPDATE work_order SET sale_uid = sale.uid
    FROM sale
    WHERE work_order.sale_id = sale.id;

ALTER TABLE work_order DROP COLUMN sale_id;
ALTER TABLE work_order RENAME COLUMN sale_uid TO sale_id;


ALTER TABLE work_order_item ADD sellable_uid uuid
    REFERENCES sellable(uid);
UPDATE work_order_item SET sellable_uid = sellable.uid
    FROM sellable
    WHERE work_order_item.sellable_id = sellable.id;

ALTER TABLE work_order_item DROP COLUMN sellable_id;
ALTER TABLE work_order_item RENAME COLUMN sellable_uid TO sellable_id;


ALTER TABLE work_order_item ADD order_uid uuid
    REFERENCES work_order(uid);
UPDATE work_order_item SET order_uid = work_order.uid
    FROM work_order
    WHERE work_order_item.order_id = work_order.id;

ALTER TABLE work_order_item DROP COLUMN order_id;
ALTER TABLE work_order_item RENAME COLUMN order_uid TO order_id;


ALTER TABLE work_order_package ADD send_responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE work_order_package SET send_responsible_uid = login_user.uid
    FROM login_user
    WHERE work_order_package.send_responsible_id = login_user.id;

ALTER TABLE work_order_package DROP COLUMN send_responsible_id;
ALTER TABLE work_order_package RENAME COLUMN send_responsible_uid TO send_responsible_id;


ALTER TABLE work_order_package ADD receive_responsible_uid uuid
    REFERENCES login_user(uid);
UPDATE work_order_package SET receive_responsible_uid = login_user.uid
    FROM login_user
    WHERE work_order_package.receive_responsible_id = login_user.id;

ALTER TABLE work_order_package DROP COLUMN receive_responsible_id;
ALTER TABLE work_order_package RENAME COLUMN receive_responsible_uid TO receive_responsible_id;


ALTER TABLE work_order_package ADD destination_branch_uid uuid
    REFERENCES branch(uid);
UPDATE work_order_package SET destination_branch_uid = branch.uid
    FROM branch
    WHERE work_order_package.destination_branch_id = branch.id;

ALTER TABLE work_order_package DROP COLUMN destination_branch_id;
ALTER TABLE work_order_package RENAME COLUMN destination_branch_uid TO destination_branch_id;


ALTER TABLE work_order_package ADD source_branch_uid uuid
    REFERENCES branch(uid);
UPDATE work_order_package SET source_branch_uid = branch.uid
    FROM branch
    WHERE work_order_package.source_branch_id = branch.id;

ALTER TABLE work_order_package DROP COLUMN source_branch_id;
ALTER TABLE work_order_package RENAME COLUMN source_branch_uid TO source_branch_id;


ALTER TABLE work_order_package_item ADD order_uid uuid
    REFERENCES work_order(uid);
UPDATE work_order_package_item SET order_uid = work_order.uid
    FROM work_order
    WHERE work_order_package_item.order_id = work_order.id;

ALTER TABLE work_order_package_item DROP COLUMN order_id;
ALTER TABLE work_order_package_item RENAME COLUMN order_uid TO order_id;


ALTER TABLE work_order_package_item ADD package_uid uuid
    REFERENCES work_order_package(uid);
UPDATE work_order_package_item SET package_uid = work_order_package.uid
    FROM work_order_package
    WHERE work_order_package_item.package_id = work_order_package.id;

ALTER TABLE work_order_package_item DROP COLUMN package_id;
ALTER TABLE work_order_package_item RENAME COLUMN package_uid TO package_id;


ALTER TABLE work_order ADD current_branch_uid uuid
    REFERENCES branch(uid);
UPDATE work_order SET current_branch_uid = branch.uid
    FROM branch
    WHERE work_order.current_branch_id = branch.id;

ALTER TABLE work_order DROP COLUMN current_branch_id;
ALTER TABLE work_order RENAME COLUMN current_branch_uid TO current_branch_id;


ALTER TABLE storable_batch ADD storable_uid uuid
    REFERENCES storable(uid);
UPDATE storable_batch SET storable_uid = storable.uid
    FROM storable
    WHERE storable_batch.storable_id = storable.id;

ALTER TABLE storable_batch DROP COLUMN storable_id;
ALTER TABLE storable_batch RENAME COLUMN storable_uid TO storable_id;


ALTER TABLE sale_item ADD batch_uid uuid
    REFERENCES storable_batch(uid);
UPDATE sale_item SET batch_uid = storable_batch.uid
    FROM storable_batch
    WHERE sale_item.batch_id = storable_batch.id;

ALTER TABLE sale_item DROP COLUMN batch_id;
ALTER TABLE sale_item RENAME COLUMN batch_uid TO batch_id;


ALTER TABLE loan_item ADD batch_uid uuid
    REFERENCES storable_batch(uid);
UPDATE loan_item SET batch_uid = storable_batch.uid
    FROM storable_batch
    WHERE loan_item.batch_id = storable_batch.id;

ALTER TABLE loan_item DROP COLUMN batch_id;
ALTER TABLE loan_item RENAME COLUMN batch_uid TO batch_id;


ALTER TABLE receiving_order_item ADD batch_uid uuid
    REFERENCES storable_batch(uid);
UPDATE receiving_order_item SET batch_uid = storable_batch.uid
    FROM storable_batch
    WHERE receiving_order_item.batch_id = storable_batch.id;

ALTER TABLE receiving_order_item DROP COLUMN batch_id;
ALTER TABLE receiving_order_item RENAME COLUMN batch_uid TO batch_id;


ALTER TABLE returned_sale_item ADD batch_uid uuid
    REFERENCES storable_batch(uid);
UPDATE returned_sale_item SET batch_uid = storable_batch.uid
    FROM storable_batch
    WHERE returned_sale_item.batch_id = storable_batch.id;

ALTER TABLE returned_sale_item DROP COLUMN batch_id;
ALTER TABLE returned_sale_item RENAME COLUMN batch_uid TO batch_id;


ALTER TABLE stock_decrease_item ADD batch_uid uuid
    REFERENCES storable_batch(uid);
UPDATE stock_decrease_item SET batch_uid = storable_batch.uid
    FROM storable_batch
    WHERE stock_decrease_item.batch_id = storable_batch.id;

ALTER TABLE stock_decrease_item DROP COLUMN batch_id;
ALTER TABLE stock_decrease_item RENAME COLUMN batch_uid TO batch_id;


ALTER TABLE transfer_order_item ADD batch_uid uuid
    REFERENCES storable_batch(uid);
UPDATE transfer_order_item SET batch_uid = storable_batch.uid
    FROM storable_batch
    WHERE transfer_order_item.batch_id = storable_batch.id;

ALTER TABLE transfer_order_item DROP COLUMN batch_id;
ALTER TABLE transfer_order_item RENAME COLUMN batch_uid TO batch_id;


ALTER TABLE work_order_item ADD batch_uid uuid
    REFERENCES storable_batch(uid);
UPDATE work_order_item SET batch_uid = storable_batch.uid
    FROM storable_batch
    WHERE work_order_item.batch_id = storable_batch.id;

ALTER TABLE work_order_item DROP COLUMN batch_id;
ALTER TABLE work_order_item RENAME COLUMN batch_uid TO batch_id;


ALTER TABLE inventory_item ADD batch_uid uuid
    REFERENCES storable_batch(uid);
UPDATE inventory_item SET batch_uid = storable_batch.uid
    FROM storable_batch
    WHERE inventory_item.batch_id = storable_batch.id;

ALTER TABLE inventory_item DROP COLUMN batch_id;
ALTER TABLE inventory_item RENAME COLUMN batch_uid TO batch_id;


ALTER TABLE product_stock_item ADD batch_uid uuid
    REFERENCES storable_batch(uid);
UPDATE product_stock_item SET batch_uid = storable_batch.uid
    FROM storable_batch
    WHERE product_stock_item.batch_id = storable_batch.id;

ALTER TABLE product_stock_item DROP COLUMN batch_id;
ALTER TABLE product_stock_item RENAME COLUMN batch_uid TO batch_id;

-- Pass 3.5: Fixup object_id

ALTER TABLE stock_transaction_history ADD object_uid uuid;
UPDATE stock_transaction_history SET object_uid = null;

ALTER TABLE stock_transaction_history DROP COLUMN object_id;
ALTER TABLE stock_transaction_history RENAME COLUMN object_uid TO object_id;


-- Pass 4: Remove old ID columns

ALTER TABLE account DROP COLUMN id;
ALTER TABLE account_transaction DROP COLUMN id;
ALTER TABLE address DROP COLUMN id;
ALTER TABLE attachment DROP COLUMN id;
ALTER TABLE bank_account DROP COLUMN id;
ALTER TABLE bill_option DROP COLUMN id;
ALTER TABLE branch DROP COLUMN id;
ALTER TABLE branch_station DROP COLUMN id;
ALTER TABLE branch_synchronization DROP COLUMN id;
ALTER TABLE calls DROP COLUMN id;
ALTER TABLE card_installment_settings DROP COLUMN id;
ALTER TABLE card_installments_provider_details DROP COLUMN id;
ALTER TABLE card_installments_store_details DROP COLUMN id;
ALTER TABLE card_operation_cost DROP COLUMN id;
ALTER TABLE card_payment_device DROP COLUMN id;
ALTER TABLE cfop_data DROP COLUMN id;
ALTER TABLE check_data DROP COLUMN id;
ALTER TABLE client DROP COLUMN id;
ALTER TABLE client_category DROP COLUMN id;
ALTER TABLE client_category_price DROP COLUMN id;
ALTER TABLE client_salary_history DROP COLUMN id;
ALTER TABLE commission DROP COLUMN id;
ALTER TABLE commission_source DROP COLUMN id;
ALTER TABLE company DROP COLUMN id;
ALTER TABLE contact_info DROP COLUMN id;
ALTER TABLE cost_center DROP COLUMN id;
ALTER TABLE cost_center_entry DROP COLUMN id;
ALTER TABLE credit_card_data DROP COLUMN id;
ALTER TABLE credit_card_details DROP COLUMN id;
ALTER TABLE credit_check_history DROP COLUMN id;
ALTER TABLE credit_provider DROP COLUMN id;
ALTER TABLE delivery DROP COLUMN id;
ALTER TABLE device_constant DROP COLUMN id;
ALTER TABLE device_settings DROP COLUMN id;
ALTER TABLE employee DROP COLUMN id;
ALTER TABLE employee_role DROP COLUMN id;
ALTER TABLE employee_role_history DROP COLUMN id;
ALTER TABLE fiscal_book_entry DROP COLUMN id;
ALTER TABLE fiscal_day_history DROP COLUMN id;
ALTER TABLE fiscal_day_tax DROP COLUMN id;
ALTER TABLE fiscal_sale_history DROP COLUMN id;
ALTER TABLE image DROP COLUMN id;
ALTER TABLE individual DROP COLUMN id;
ALTER TABLE installed_plugin DROP COLUMN id;
ALTER TABLE inventory DROP COLUMN id;
ALTER TABLE inventory_item DROP COLUMN id;
ALTER TABLE invoice_field DROP COLUMN id;
ALTER TABLE invoice_layout DROP COLUMN id;
ALTER TABLE invoice_printer DROP COLUMN id;
ALTER TABLE loan DROP COLUMN id;
ALTER TABLE loan_item DROP COLUMN id;
ALTER TABLE login_user DROP COLUMN id;
ALTER TABLE military_data DROP COLUMN id;
ALTER TABLE parameter_data DROP COLUMN id;
ALTER TABLE payment DROP COLUMN id;
ALTER TABLE payment_category DROP COLUMN id;
ALTER TABLE payment_change_history DROP COLUMN id;
ALTER TABLE payment_comment DROP COLUMN id;
ALTER TABLE payment_flow_history DROP COLUMN id;
ALTER TABLE payment_group DROP COLUMN id;
ALTER TABLE payment_method DROP COLUMN id;
ALTER TABLE payment_renegotiation DROP COLUMN id;
ALTER TABLE person DROP COLUMN id;
ALTER TABLE product DROP COLUMN id;
ALTER TABLE product_component DROP COLUMN id;
ALTER TABLE product_history DROP COLUMN id;
ALTER TABLE product_icms_template DROP COLUMN id;
ALTER TABLE production_item DROP COLUMN id;
ALTER TABLE production_item_quality_result DROP COLUMN id;
ALTER TABLE production_material DROP COLUMN id;
ALTER TABLE production_order DROP COLUMN id;
ALTER TABLE production_produced_item DROP COLUMN id;
ALTER TABLE production_service DROP COLUMN id;
ALTER TABLE product_ipi_template DROP COLUMN id;
ALTER TABLE product_manufacturer DROP COLUMN id;
ALTER TABLE product_quality_test DROP COLUMN id;
ALTER TABLE product_stock_item DROP COLUMN id;
ALTER TABLE product_supplier_info DROP COLUMN id;
ALTER TABLE product_tax_template DROP COLUMN id;
ALTER TABLE profile_settings DROP COLUMN id;
ALTER TABLE purchase_item DROP COLUMN id;
ALTER TABLE purchase_order DROP COLUMN id;
ALTER TABLE quotation DROP COLUMN id;
ALTER TABLE quote_group DROP COLUMN id;
ALTER TABLE receiving_order DROP COLUMN id;
ALTER TABLE receiving_order_item DROP COLUMN id;
ALTER TABLE returned_sale DROP COLUMN id;
ALTER TABLE returned_sale_item DROP COLUMN id;
ALTER TABLE sale DROP COLUMN id;
ALTER TABLE sale_item DROP COLUMN id;
ALTER TABLE sale_item_icms DROP COLUMN id;
ALTER TABLE sale_item_ipi DROP COLUMN id;
ALTER TABLE sales_person DROP COLUMN id;
ALTER TABLE sellable DROP COLUMN id;
ALTER TABLE sellable_category DROP COLUMN id;
ALTER TABLE sellable_tax_constant DROP COLUMN id;
ALTER TABLE sellable_unit DROP COLUMN id;
ALTER TABLE service DROP COLUMN id;
ALTER TABLE stock_decrease DROP COLUMN id;
ALTER TABLE stock_decrease_item DROP COLUMN id;
ALTER TABLE stock_transaction_history DROP COLUMN id;
ALTER TABLE storable DROP COLUMN id;
ALTER TABLE storable_batch DROP COLUMN id;
ALTER TABLE supplier DROP COLUMN id;
ALTER TABLE till DROP COLUMN id;
ALTER TABLE till_entry DROP COLUMN id;
ALTER TABLE transfer_order DROP COLUMN id;
ALTER TABLE transfer_order_item DROP COLUMN id;
ALTER TABLE transporter DROP COLUMN id;
ALTER TABLE ui_field DROP COLUMN id;
ALTER TABLE ui_form DROP COLUMN id;
ALTER TABLE user_branch_access DROP COLUMN id;
ALTER TABLE user_profile DROP COLUMN id;
ALTER TABLE voter_data DROP COLUMN id;
ALTER TABLE work_order DROP COLUMN id;
ALTER TABLE work_order_category DROP COLUMN id;
ALTER TABLE work_order_item DROP COLUMN id;
ALTER TABLE work_order_package DROP COLUMN id;
ALTER TABLE work_order_package_item DROP COLUMN id;
ALTER TABLE work_permit_data DROP COLUMN id;

-- Pass 5: Rename to back to id

ALTER TABLE account RENAME COLUMN uid TO id;
ALTER TABLE account_transaction RENAME COLUMN uid TO id;
ALTER TABLE address RENAME COLUMN uid TO id;
ALTER TABLE attachment RENAME COLUMN uid TO id;
ALTER TABLE bank_account RENAME COLUMN uid TO id;
ALTER TABLE bill_option RENAME COLUMN uid TO id;
ALTER TABLE branch RENAME COLUMN uid TO id;
ALTER TABLE branch_station RENAME COLUMN uid TO id;
ALTER TABLE branch_synchronization RENAME COLUMN uid TO id;
ALTER TABLE calls RENAME COLUMN uid TO id;
ALTER TABLE card_installment_settings RENAME COLUMN uid TO id;
ALTER TABLE card_installments_provider_details RENAME COLUMN uid TO id;
ALTER TABLE card_installments_store_details RENAME COLUMN uid TO id;
ALTER TABLE card_operation_cost RENAME COLUMN uid TO id;
ALTER TABLE card_payment_device RENAME COLUMN uid TO id;
ALTER TABLE cfop_data RENAME COLUMN uid TO id;
ALTER TABLE check_data RENAME COLUMN uid TO id;
ALTER TABLE client RENAME COLUMN uid TO id;
ALTER TABLE client_category RENAME COLUMN uid TO id;
ALTER TABLE client_category_price RENAME COLUMN uid TO id;
ALTER TABLE client_salary_history RENAME COLUMN uid TO id;
ALTER TABLE commission RENAME COLUMN uid TO id;
ALTER TABLE commission_source RENAME COLUMN uid TO id;
ALTER TABLE company RENAME COLUMN uid TO id;
ALTER TABLE contact_info RENAME COLUMN uid TO id;
ALTER TABLE cost_center RENAME COLUMN uid TO id;
ALTER TABLE cost_center_entry RENAME COLUMN uid TO id;
ALTER TABLE credit_card_data RENAME COLUMN uid TO id;
ALTER TABLE credit_card_details RENAME COLUMN uid TO id;
ALTER TABLE credit_check_history RENAME COLUMN uid TO id;
ALTER TABLE credit_provider RENAME COLUMN uid TO id;
ALTER TABLE delivery RENAME COLUMN uid TO id;
ALTER TABLE device_constant RENAME COLUMN uid TO id;
ALTER TABLE device_settings RENAME COLUMN uid TO id;
ALTER TABLE employee RENAME COLUMN uid TO id;
ALTER TABLE employee_role RENAME COLUMN uid TO id;
ALTER TABLE employee_role_history RENAME COLUMN uid TO id;
ALTER TABLE fiscal_book_entry RENAME COLUMN uid TO id;
ALTER TABLE fiscal_day_history RENAME COLUMN uid TO id;
ALTER TABLE fiscal_day_tax RENAME COLUMN uid TO id;
ALTER TABLE fiscal_sale_history RENAME COLUMN uid TO id;
ALTER TABLE image RENAME COLUMN uid TO id;
ALTER TABLE individual RENAME COLUMN uid TO id;
ALTER TABLE installed_plugin RENAME COLUMN uid TO id;
ALTER TABLE inventory RENAME COLUMN uid TO id;
ALTER TABLE inventory_item RENAME COLUMN uid TO id;
ALTER TABLE invoice_field RENAME COLUMN uid TO id;
ALTER TABLE invoice_layout RENAME COLUMN uid TO id;
ALTER TABLE invoice_printer RENAME COLUMN uid TO id;
ALTER TABLE loan RENAME COLUMN uid TO id;
ALTER TABLE loan_item RENAME COLUMN uid TO id;
ALTER TABLE login_user RENAME COLUMN uid TO id;
ALTER TABLE military_data RENAME COLUMN uid TO id;
ALTER TABLE parameter_data RENAME COLUMN uid TO id;
ALTER TABLE payment RENAME COLUMN uid TO id;
ALTER TABLE payment_category RENAME COLUMN uid TO id;
ALTER TABLE payment_change_history RENAME COLUMN uid TO id;
ALTER TABLE payment_comment RENAME COLUMN uid TO id;
ALTER TABLE payment_flow_history RENAME COLUMN uid TO id;
ALTER TABLE payment_group RENAME COLUMN uid TO id;
ALTER TABLE payment_method RENAME COLUMN uid TO id;
ALTER TABLE payment_renegotiation RENAME COLUMN uid TO id;
ALTER TABLE person RENAME COLUMN uid TO id;
ALTER TABLE product RENAME COLUMN uid TO id;
ALTER TABLE product_component RENAME COLUMN uid TO id;
ALTER TABLE product_history RENAME COLUMN uid TO id;
ALTER TABLE product_icms_template RENAME COLUMN uid TO id;
ALTER TABLE production_item RENAME COLUMN uid TO id;
ALTER TABLE production_item_quality_result RENAME COLUMN uid TO id;
ALTER TABLE production_material RENAME COLUMN uid TO id;
ALTER TABLE production_order RENAME COLUMN uid TO id;
ALTER TABLE production_produced_item RENAME COLUMN uid TO id;
ALTER TABLE production_service RENAME COLUMN uid TO id;
ALTER TABLE product_ipi_template RENAME COLUMN uid TO id;
ALTER TABLE product_manufacturer RENAME COLUMN uid TO id;
ALTER TABLE product_quality_test RENAME COLUMN uid TO id;
ALTER TABLE product_stock_item RENAME COLUMN uid TO id;
ALTER TABLE product_supplier_info RENAME COLUMN uid TO id;
ALTER TABLE product_tax_template RENAME COLUMN uid TO id;
ALTER TABLE profile_settings RENAME COLUMN uid TO id;
ALTER TABLE purchase_item RENAME COLUMN uid TO id;
ALTER TABLE purchase_order RENAME COLUMN uid TO id;
ALTER TABLE quotation RENAME COLUMN uid TO id;
ALTER TABLE quote_group RENAME COLUMN uid TO id;
ALTER TABLE receiving_order RENAME COLUMN uid TO id;
ALTER TABLE receiving_order_item RENAME COLUMN uid TO id;
ALTER TABLE returned_sale RENAME COLUMN uid TO id;
ALTER TABLE returned_sale_item RENAME COLUMN uid TO id;
ALTER TABLE sale RENAME COLUMN uid TO id;
ALTER TABLE sale_item RENAME COLUMN uid TO id;
ALTER TABLE sale_item_icms RENAME COLUMN uid TO id;
ALTER TABLE sale_item_ipi RENAME COLUMN uid TO id;
ALTER TABLE sales_person RENAME COLUMN uid TO id;
ALTER TABLE sellable RENAME COLUMN uid TO id;
ALTER TABLE sellable_category RENAME COLUMN uid TO id;
ALTER TABLE sellable_tax_constant RENAME COLUMN uid TO id;
ALTER TABLE sellable_unit RENAME COLUMN uid TO id;
ALTER TABLE service RENAME COLUMN uid TO id;
ALTER TABLE stock_decrease RENAME COLUMN uid TO id;
ALTER TABLE stock_decrease_item RENAME COLUMN uid TO id;
ALTER TABLE stock_transaction_history RENAME COLUMN uid TO id;
ALTER TABLE storable RENAME COLUMN uid TO id;
ALTER TABLE storable_batch RENAME COLUMN uid TO id;
ALTER TABLE supplier RENAME COLUMN uid TO id;
ALTER TABLE till RENAME COLUMN uid TO id;
ALTER TABLE till_entry RENAME COLUMN uid TO id;
ALTER TABLE transfer_order RENAME COLUMN uid TO id;
ALTER TABLE transfer_order_item RENAME COLUMN uid TO id;
ALTER TABLE transporter RENAME COLUMN uid TO id;
ALTER TABLE ui_field RENAME COLUMN uid TO id;
ALTER TABLE ui_form RENAME COLUMN uid TO id;
ALTER TABLE user_branch_access RENAME COLUMN uid TO id;
ALTER TABLE user_profile RENAME COLUMN uid TO id;
ALTER TABLE voter_data RENAME COLUMN uid TO id;
ALTER TABLE work_order RENAME COLUMN uid TO id;
ALTER TABLE work_order_category RENAME COLUMN uid TO id;
ALTER TABLE work_order_item RENAME COLUMN uid TO id;
ALTER TABLE work_order_package RENAME COLUMN uid TO id;
ALTER TABLE work_order_package_item RENAME COLUMN uid TO id;
ALTER TABLE work_permit_data RENAME COLUMN uid TO id;

-- Pass 6: Set a default value

ALTER TABLE account ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE account_transaction ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE address ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE attachment ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE bank_account ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE bill_option ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE branch ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE branch_station ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE branch_synchronization ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE calls ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE card_installment_settings ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE card_installments_provider_details ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE card_installments_store_details ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE card_operation_cost ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE card_payment_device ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE cfop_data ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE check_data ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE client ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE client_category ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE client_category_price ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE client_salary_history ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE commission ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE commission_source ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE company ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE contact_info ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE cost_center ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE cost_center_entry ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE credit_card_data ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE credit_card_details ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE credit_check_history ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE credit_provider ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE delivery ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE device_constant ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE device_settings ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE employee ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE employee_role ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE employee_role_history ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE fiscal_book_entry ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE fiscal_day_history ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE fiscal_day_tax ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE fiscal_sale_history ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE image ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE individual ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE installed_plugin ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE inventory ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE inventory_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE invoice_field ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE invoice_layout ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE invoice_printer ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE loan ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE loan_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE login_user ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE military_data ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE parameter_data ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE payment ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE payment_category ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE payment_change_history ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE payment_comment ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE payment_flow_history ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE payment_group ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE payment_method ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE payment_renegotiation ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE person ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product_component ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product_history ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product_icms_template ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE production_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE production_item_quality_result ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE production_material ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE production_order ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE production_produced_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE production_service ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product_ipi_template ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product_manufacturer ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product_quality_test ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product_stock_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product_supplier_info ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE product_tax_template ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE profile_settings ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE purchase_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE purchase_order ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE quotation ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE quote_group ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE receiving_order ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE receiving_order_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE returned_sale ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE returned_sale_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE sale ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE sale_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE sale_item_icms ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE sale_item_ipi ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE sales_person ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE sellable ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE sellable_category ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE sellable_tax_constant ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE sellable_unit ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE service ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE stock_decrease ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE stock_decrease_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE stock_transaction_history ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE storable ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE storable_batch ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE supplier ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE till ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE till_entry ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE transfer_order ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE transfer_order_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE transporter ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE ui_field ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE ui_form ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE user_branch_access ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE user_profile ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE voter_data ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE work_order ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE work_order_category ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE work_order_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE work_order_package ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE work_order_package_item ALTER COLUMN id SET DEFAULT uuid_generate_v4();
ALTER TABLE work_permit_data ALTER COLUMN id SET DEFAULT uuid_generate_v4();
