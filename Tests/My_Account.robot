*** Settings ***
#Library     XML
Library     AppiumLibrary
Library     Collections
#Library     Selenium2Library
Resource    ../Resources/Page_Repository/MyAccount_Repository.robot

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
    AppiumLibrary.wait until page contains element              ${My_Accounts_Button_MoreTab}

View and Navigate to My Account(With no link Account)
    AppiumLibrary.Page should contain element                   ${My_Accounts_Label_MoreTab}
    AppiumLibrary.Click element                                 ${My_Accounts_Button_MoreTab}
    AppiumLibrary.wait until page contains element              ${My_Accounts_Header}
    sleep                                                       3s
    AppiumLibrary.Page should contain text                      ${Back_Btn_My_Accounts}                                 Back
    AppiumLibrary.Page should contain element                   ${My_Accounts_Header}
    AppiumLibrary.Page should contain element                   ${Link_Account_banner}
    AppiumLibrary.Click element                                 ${Link_Account_banner_tooltip}
    AppiumLibrary.wait until page contains element              ${Tooltip_title}
    ${Get_Tooltip_title}                                        AppiumLibrary.Get Text                                  ${Tooltip_title}
    AppiumLibrary.Page should contain text                      ${Get_Tooltip_title}
    ${Get_Tooltip_Message}                                      AppiumLibrary.Get Text                                 ${Tooltip_Message}
    AppiumLibrary.Page should contain text                      ${Get_Tooltip_Message}
    AppiumLibrary.element should be visible                     ${Tooltip_Close_Button}
    AppiumLibrary.Click element                                 ${Tooltip_Close_Button}
    AppiumLibrary.wait until page contains element              ${My_Accounts_Header}
    AppiumLibrary.element should be visible                     ${Link_Account_Img_Illustration}
    AppiumLibrary.Page should contain element                   ${Do_you_have_Metrobanl_Acc}
    AppiumLibrary.Page should contain element                   ${Link_it_so_you_start_label}
    ${Get_Risk_Assessment_Message}                              AppiumLibrary.get text                                  ${Take_risk_assessment_id}
    AppiumLibrary.Page should contain text                      ${Get_Risk_Assessment_Message}
    AppiumLibrary.Page should contain text                      ${Link_Account_Button}                                  Link your account now
    AppiumLibrary.element should be visible                     ${Link_Account_Button}
    AppiumLibrary.swipe                                         0     1800     100     100
    AppiumLibrary.Page should contain element                   ${Ekyc_Header_label}
    AppiumLibrary.element should be visible                     ${EKyc_Img_Illustration}
    AppiumLibrary.Page should contain element                   ${You_need_a_Metrobank_Label}
    AppiumLibrary.Page should contain element                   ${Ekyc_Content_Subtitle}
    AppiumLibrary.Page should contain text                      ${Open_Metrobank_SA_Button}                             Open a Metrobank Savings Account
    AppiumLibrary.element should be visible                     ${Open_Metrobank_SA_Button}

#Link A Metrobank Account Happy Path

Link A Metrobank Account with no RA
    AppiumLibrary.Click element                                 ${Link_Account_Button}
    AppiumLibrary.wait until page contains element              ${No_RA_TItle_ID}
    AppiumLibrary.element should be visible                     ${No_RA_Image_illustaryion}
    AppiumLibrary.element should be visible                     ${No_RA_TItle_ID}
    AppiumLibrary.Page should contain element                   ${No_RA_TItle}
    AppiumLibrary.element should be visible                     ${No_RA_Dialog_ID}
    AppiumLibrary.Page should contain element                   ${No_RA_Dialog}
    AppiumLibrary.Page should contain text                      ${Go_Back_Btn}                                          Go back
    AppiumLibrary.Page should contain text                      ${Proceed_Btn}                                          Proceed
    AppiumLibrary.Click element                                 ${Proceed_Btn}

    AppiumLibrary.wait until page contains element              ${CancelBtn_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_two_RA_Page1}
    AppiumLibrary.Click element                                 ${NextBtn_Page1}

    AppiumLibrary.wait until page contains element              ${CancelBtn_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_two_RA_Page2}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page2}

    AppiumLibrary.wait until page contains element              ${CancelBtn_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_two_RA_Page3}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page3}

    AppiumLibrary.wait until page contains element              ${CancelBtn_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_two_RA_Page4}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page4}


    AppiumLibrary.wait until page contains element              ${CancelBtn_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_two_RA_Page5}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page5}

    AppiumLibrary.wait until page contains element              ${CancelBtn_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_two_RA_Page6}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page6}

    AppiumLibrary.wait until page contains element              ${CancelBtn_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_two_RA_Page7}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page7}

    AppiumLibrary.wait until page contains element              ${Btn_next_RA_Page8}
    AppiumLibrary.Click element                                 ${Btn_Accept_Acknowledgement}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page8}

    AppiumLibrary.wait until page contains element              ${Review_Label}
    AppiumLibrary.Click element                                 ${Btn_Submit_ReviewPage}

    AppiumLibrary.wait until page contains element              ${Your_Risk_Profile_Header}
    AppiumLibrary.Click element                                 ${Btn_okay_lastPage}
    Sleep                                                       2s
    AppiumLibrary.wait until page contains element              ${My_Accounts_Button_MoreTab}
    AppiumLibrary.Click element                                 ${My_Accounts_Button_MoreTab}
    AppiumLibrary.wait until page contains element              ${My_Accounts_Header}
    AppiumLibrary.Click element                                 ${Link_Account_Button}
    AppiumLibrary.page should contain element                   ${Link_Account_Header}

Link Account with Invalid Account Number
    AppiumLibrary.Click element                                 ${Link_Account_Button}
    AppiumLibrary.page should contain element                   ${Link_Account_Header}
    AppiumLibrary.input text                                    ${Account_Number_Input_Box}                             ${Invalid_Account_Number}
    AppiumLibrary.Click element                                 ${Btn_Next_Linke_Acc}
    AppiumLibrary.wait until page contains element              ${Close_btn_Error_Page}
    AppiumLibrary.Page should contain text                      ${Close_btn_Error_Page}                                 Close
    AppiumLibrary.element should be visible                     ${Invalid_Acc_Img_Illustration}
    ${Get_Something_went_wrong_error}                           AppiumLibrary.get text                                  ${Something_Went_Wrong_Error_id}
    AppiumLibrary.page should contain element                   ${Joint_Accounts}
    AppiumLibrary.page should contain element                   ${ITF_Accounts}
    AppiumLibrary.page should contain element                   ${Dollar_Accounts}
    AppiumLibrary.page should contain element                   ${Frozen_Accounts}
    AppiumLibrary.swipe                                         0     1000     100     100
    AppiumLibrary.page should contain element                   ${Inactive_Dormant_Acc}
    AppiumLibrary.Click element                                 ${Link_Another_Acc_Btn}
    AppiumLibrary.wait until page contains element              ${Account_Number_Input_Box}

Link Account Error Validation
    AppiumLibrary.input text                                    ${Account_Number_Input_Box}                             ${Incorrect_Account_Number}
    AppiumLibrary.Click element                                 ${Btn_Next_Linke_Acc}
    AppiumLibrary.page should contain element                   ${Incorrect_Account_Number_Error}

Cancel Validation
    AppiumLibrary.Click element                                 ${Cancel_Account_linking}
    AppiumLibrary.wait until page contains element              ${Do_you_want_to_Cancel?}
    AppiumLibrary.page should contain element                   ${Do_you_want_to_Cancel?}
    AppiumLibrary.page should contain element                   ${All_Information_That_you}
    AppiumLibrary.Page should contain text                      ${Cancel_Yes_Button}                                    Yes
    AppiumLibrary.Page should contain text                      ${Cancel_No_Button}                                     No
    AppiumLibrary.Click element                                 ${Cancel_No_Button}
    AppiumLibrary.wait until page contains element              ${Account_Number_Input_Box}
    AppiumLibrary.Click element                                 ${Cancel_Account_linking}
    AppiumLibrary.wait until page contains element              ${Do_you_want_to_Cancel?}
    AppiumLibrary.Click element                                 ${Cancel_Yes_Button}
    AppiumLibrary.wait until page contains element              ${Do_you_have_Metrobanl_Acc}



#Validation for happy path
#Validation for unlink acc happy path
#Validation for unlink acc with existing investment
#validation for with linked account