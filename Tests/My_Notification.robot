*** Settings ***
#Library     XML
Library     AppiumLibrary
Library     Collections
#Library     Selenium2Library
Resource    ../Resources/Page_Repository/My_Notification_Repository.robot

*** Test Cases ***
Open_Application                                AppiumLibrary.Open Application                              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                       10s

Login to Earnest
#Login
    AppiumLibrary.wait until page contains element              ${Primary_Btn_Login}
    AppiumLibrary.Click element                                 ${Primary_Btn_Login}
    AppiumLibrary.wait until page contains element              ${Close_AppBtn}
    AppiumLibrary.Click element                                 ${Close_AppBtn}
    Sleep                                                       3s
    AppiumLibrary.Input text                                    ${EmailField_LoginPage}                    ${Valid_UserEmailAddress}
    AppiumLibrary.Input text                                    ${PassField_LoginPage}                     ${Valid_UserPassword}
    AppiumLibrary.Click element                                 ${LoginBtn_LoginPage}
    Sleep                                                       20s
    AppiumLibrary.Click element                                 ${BtnSubmit_OtpPage}
    Sleep                                                       5s
    AppiumLibrary.Click element                                 ${btn_Home_SkipBtn}
    AppiumLibrary.wait until page contains element              ${Mbtc_welcome_layout}
    AppiumLibrary.Click element                                 ${Mbtc_welcome_layout}
    AppiumLibrary.wait until page contains element              ${More_kebab_menuBtn}
    AppiumLibrary.Click element                                 ${More_kebab_menuBtn}
    AppiumLibrary.wait until page contains element              ${MyNotification_label_Moretab}
    AppiumLibrary.Page should contain element                   ${MyNotification_label_Moretab}

View and Navigate to My Notifications with item list
    AppiumLibrary.Click element                                 ${MyNotification_btn_Moretab}
    AppiumLibrary.wait until page contains element              ${Title_Bar_MyNotification}
    AppiumLibrary.Page should contain text                      ${BackBtn_MyNotification}                    Back
    AppiumLibrary.Page should contain element                   ${Title_Bar_MyNotification}
    AppiumLibrary.element should be visible                     ${Btn_ClearAll}
    Sleep                                                       8s
    AppiumLibrary.element should be visible                     ${MyNotifications_ItemList}
    AppiumLibrary.element should be visible                     ${Announcement_Card_Icon}
    ${Get_notification_DateTime}                                AppiumLibrary.get text                      ${Announcement_Card_DateTime}
    AppiumLibrary.Page should contain text                      ${Get_notification_DateTime}
    ${Get_notification_Title}                                   AppiumLibrary.get text                      ${Announcement_Card_title}
    AppiumLibrary.Page should contain text                      ${Get_notification_Title}
    ${Get_notification_Message}                                 AppiumLibrary.get text                      ${Announcement_Card_Message}
    AppiumLibrary.Page should contain text                      ${Get_notification_Message}
    AppiumLibrary.Click element                                 ${MyNotifications_ItemList}
    Sleep                                                       10s
    AppiumLibrary.wait until page contains element              ${Announcement_Title}
    AppiumLibrary.Page should contain text                      ${Backbtn_Notification_area}                Back
    ${Get_Announcement_title}                                   AppiumLibrary.get text                      ${Announcement_Title}
    AppiumLibrary.Page should contain text                      ${Get_Announcement_title}
    ${Get_Announcement_Message}                                 AppiumLibrary.get text                      ${Announcement_Message}
    AppiumLibrary.element should be visible                     ${Announcement_Message}
    AppiumLibrary.Click element                                 ${Backbtn_Notification_area}
    AppiumLibrary.wait until page contains element              ${Title_Bar_MyNotification}

Validate Module Count
    ${Create_List_Variable}     create list
    ${Count}=    Get matching xpath count       //*[@resource-id='ph.mbtc.platform11.earnest.debug:id/notification_item_layout']
    append to list      ${Create_List_Variable}       ${Count}
    AppiumLibrary.swipe                                         0     1450     100     100
    ${Count2}=    Get matching xpath count       //*[@resource-id='ph.mbtc.platform11.earnest.debug:id/notification_item_layout']
    append to list      ${Create_List_Variable}       ${Count2}
    AppiumLibrary.swipe                                         0     1500     100     100
    log  ${Create_List_Variable}

Clear All validation
    AppiumLibrary.Click element                                 ${Btn_ClearAll}
    AppiumLibrary.wait until page contains element              ${Title_CLear_Notif}
    AppiumLibrary.element should be visible                     ${Bell_Icon}
    AppiumLibrary.Page should contain element                   ${Title_CLear_Notif}
    AppiumLibrary.Page should contain element                   ${Message_CLear_Notif}
    AppiumLibrary.Page should contain text                      ${Yes_btn_Clear_Notif}                      Yes
    AppiumLibrary.Page should contain text                      ${No_btn_Clear_Notif}                       No
    AppiumLibrary.Click element                                 ${No_btn_Clear_Notif}
    AppiumLibrary.wait until page contains element              ${Title_Bar_MyNotification}
    AppiumLibrary.Click element                                 ${Btn_ClearAll}
    AppiumLibrary.wait until page contains element              ${Title_CLear_Notif}
    AppiumLibrary.Click element                                 ${Yes_btn_Clear_Notif}
    AppiumLibrary.wait until page contains element              ${Title_Bar_MyNotification}

View and Navigate to My Notifications with no item list
    AppiumLibrary.wait until page contains element              ${Title_Bar_MyNotification}
    AppiumLibrary.Page should contain text                      ${BackBtn_MyNotification}                    Back
    AppiumLibrary.Page should contain element                   ${Title_Bar_MyNotification}
    AppiumLibrary.element should be visible                     ${Btn_ClearAll}
    Sleep                                                       10s
    AppiumLibrary.Page should contain element                   ${no_Notification_title}
    AppiumLibrary.Page should contain element                   ${well_let_you_know_Label}
