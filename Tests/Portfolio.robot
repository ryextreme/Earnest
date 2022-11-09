*** Settings ***
#Library     XML
Library     AppiumLibrary
Library     Collections
Resource    ../Resources/Page_Repository/Portfolio_Repository.robot
#Library     Selenium2Library


#ph.mbtc.platform11.earnest.debug:id/txt_tooltip_message

*** Test Cases ***
Open_Application                         AppiumLibrary.Open Application             http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                10s

Login to Earnest App
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
    AppiumLibrary.wait until page contains element              ${Invest_Button_Home_Tab}

View and Navigate to Portfolio with no Active Investment
    AppiumLibrary.Click element                                 ${Invest_Button_Home_Tab}
    AppiumLibrary.Page should contain element                   ${Invest_Label_Home_Tab}
    AppiumLibrary.Click element                                 ${Invest_Button_Home_Tab}
    AppiumLibrary.wait until page contains element              ${Invest_Title_header}
    AppiumLibrary.Page should contain element                   ${Portfolio_Tab}
    AppiumLibrary.Page should contain element                   ${Products_Tab}
    AppiumLibrary.Page should contain text                      ${Overview_Label_ID}                                    Overview
    ${Get_as_of_date}                                           AppiumLibrary.Get text                                  ${As_Of_Date}
    AppiumLibrary.Page should contain text                      ${Get_as_of_date}
    AppiumLibrary.Page should contain text                      ${Total_portfolio_value}                                Total Portfolio Value
    AppiumLibrary.element should be visible                     ${Total_portfolio_tooltip}
    AppiumLibrary.Click element                                 ${Total_portfolio_tooltip}
    AppiumLibrary.wait until page contains element              ${Txt_tooltip_title}
    AppiumLibrary.Page should contain element                   ${Txt_tooltip_title}
    AppiumLibrary.Page should contain element                   ${Txt_Tooltip_Message}
    AppiumLibrary.element should be visible                     ${Btn_Close_Tooltip}
    AppiumLibrary.Click element                                 ${Btn_Close_Tooltip}
    AppiumLibrary.wait until page contains element              ${Overview_Label_ID}
    ${Get_Total_Amount}                                         AppiumLibrary.Get text                                  ${Total_Amount_ID}
    AppiumLibrary.Page should contain text                      ${Get_Total_Amount}
    AppiumLibrary.element should be visible                     ${Total_Performance_Img}
    AppiumLibrary.Page should contain element                   ${Total_Performance_Label}
    AppiumLibrary.element should be visible                     ${Total_Performance_tooltip}
    AppiumLibrary.Click element                                 ${Total_Performance_tooltip}
    AppiumLibrary.wait until page contains element              ${Txt_Total_performance}
    AppiumLibrary.Page should contain element                   ${Txt_Total_performance}
    AppiumLibrary.Page should contain element                   ${Txt_Total_performance_Message}
    AppiumLibrary.element should be visible                     ${Total_performance_BtnClose}
    AppiumLibrary.Click element                                 ${Total_performance_BtnClose}
    AppiumLibrary.wait until page contains element              ${Overview_Label_ID}
    AppiumLibrary.Page should contain text                      ${Growth_Percent_ID}                                    N/A
    AppiumLibrary.element should be visible                     ${Total_Invested_Img}
    AppiumLibrary.Page should contain element                   ${Total_Invested_Label}
    AppiumLibrary.element should be visible                     ${Total_Invested_Tooltip}
    AppiumLibrary.Click element                                 ${Total_Invested_Tooltip}
    AppiumLibrary.wait until page contains element              ${Txt_Total_Invested}
    AppiumLibrary.Page should contain element                   ${Txt_Total_Invested}
    AppiumLibrary.Page should contain element                   ${Txt_Total_Invested_Message}
    AppiumLibrary.element should be visible                     ${Total_Invested_Closebtn}
    AppiumLibrary.Click element                                 ${Total_Invested_Closebtn}
    AppiumLibrary.wait until page contains element              ${Overview_Label_ID}
    AppiumLibrary.Page should contain element                   ${My_Active_Investment_Label}
    AppiumLibrary.Page should contain text                      ${Go_to_my_accounts_Btn}                                Go to My Accounts
    AppiumLibrary.Page should contain element                   ${See_all_Options_Label}

Click Go to My Accounts Button
     AppiumLibrary.Click element                                ${Go_to_my_accounts_Btn}
     AppiumLibrary.wait until page contains element             ${My_Accounts_Header}
     AppiumLibrary.page should contain element                  ${My_Accounts_Header}

