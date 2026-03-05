*** Settings ***
Library         Browser
Library         DebugLibrary
Library         String
Resource        ${CURDIR}/../keywords/common/common.robot
Variables       ${CURDIR}/../resources/test_data/${ENV}/data.yaml
Resource        ${CURDIR}/../keywords/pages/home_page.robot
Resource        ${CURDIR}/../keywords/pages/login_page.robot
Resource        ${CURDIR}/../keywords/pages/product_page.robot
Resource        ${CURDIR}/../keywords/pages/register_page.robot
Resource        ${CURDIR}/../keywords/pages/product_detail_page.robot
Resource        ${CURDIR}/../resources/locators/home_locator.robot
Resource        ${CURDIR}/../resources/locators/login_locator.robot
Resource        ${CURDIR}/../resources/locators/product_locator.robot
Resource        ${CURDIR}/../resources/locators/register_locator.robot
Resource        ${CURDIR}/../resources/locators/product_detail_locator.robot