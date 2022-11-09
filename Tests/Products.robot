*** Settings ***
#Library     XML
Library     AppiumLibrary
Library     Collections
#Library     Selenium2Library
Resource    ../Resources/Page_Repository/Products_Repository.robot

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

View and Navigate to Products with no Risk Assessment
    AppiumLibrary.Click element                                 ${Invest_Button_Home_Tab}
    AppiumLibrary.Page should contain element                   ${Invest_Label_Home_Tab}
    AppiumLibrary.Click element                                 ${Invest_Button_Home_Tab}
    AppiumLibrary.wait until page contains element              ${Invest_Title_header}
    AppiumLibrary.Click element                                 ${Products_Tab}
    AppiumLibrary.wait until page contains element               ${Product_filter_All}
    AppiumLibrary.element should be visible                     ${Risk_Message_ID}
    AppiumLibrary.Page should contain element                   ${Risk_Message_Label}
    AppiumLibrary.element should be visible                     ${Dont_Know_what_to_Choose}
    AppiumLibrary.Page should contain text                      ${Product_filter_All}                   All
    AppiumLibrary.Page should contain text                      ${Product_filter_Conservative}          Conservative
    AppiumLibrary.Page should contain text                      ${Product_filter_Moderate}              Moderate
    AppiumLibrary.Page should contain text                      ${Product_filter_Aggressive}            Aggressive
    AppiumLibrary.Click element                                 ${Product_filter_Conservative}
    AppiumLibrary.Click element                                 ${Product_filter_Moderate}
    AppiumLibrary.Click element                                 ${Product_filter_Aggressive}
    AppiumLibrary.Click element                                 ${Product_filter_All}
    AppiumLibrary.element should be visible                     ${Product_card_ID}
    ${Get_ProductCard_Risk_Label}                               AppiumLibrary.get text                  ${Product_Risk_Label}
    AppiumLibrary.Page should contain text                      ${Get_ProductCard_Risk_Label}
    ${Get_ProductCard_NAVPU_Label}                              AppiumLibrary.get text                  ${Product_NAVPU_LAbel}
    AppiumLibrary.Page should contain text                      ${Get_ProductCard_NAVPU_Label}
    ${Get_ProductCard_NAVPU_Value}                              AppiumLibrary.get text                  ${Product_NAVPU_Value}
    AppiumLibrary.Page should contain text                      ${Get_ProductCard_NAVPU_Value}
    ${Get_ProductCard_FundName}                                 AppiumLibrary.get text                  ${Product_Name_Label}
    AppiumLibrary.Page should contain text                      ${Get_ProductCard_FundName}
    ${Get_ProductCard_FundDesc}                                 AppiumLibrary.get text                  ${Product_Desc_Label}
    AppiumLibrary.Page should contain text                      ${Get_ProductCard_FundDesc}
    ${Get_ProductCard_MinAmount_Label}                          AppiumLibrary.get text                  ${Product_Min_Amount_label}
    AppiumLibrary.Page should contain text                      ${Get_ProductCard_MinAmount_Label}
    ${Get_ProductCard_MinAmount_Value}                          AppiumLibrary.get text                  ${Product_Min_Amount_Value}
    AppiumLibrary.Page should contain text                      ${Get_ProductCard_MinAmount_Value}
    ${Get_ProductCard_3yrPerf_Label}                            AppiumLibrary.get text                  ${Product_3yr_performance_Label}
    AppiumLibrary.Page should contain text                      ${Get_ProductCard_3yrPerf_Label}
    ${Get_ProductCard_3yrPerf_Value}                            AppiumLibrary.get text                  ${Product_3yr_performance_Value}
    AppiumLibrary.Page should contain text                      ${Get_ProductCard_3yrPerf_Value}
    AppiumLibrary.Page should contain text                      ${Home_button_Footer}                   Home
    AppiumLibrary.Page should contain text                      ${Learn_Button_Footer}                  Learn
    AppiumLibrary.Page should contain text                      ${Invest_Button_Footer}                 Invest
    AppiumLibrary.Page should contain text                      ${More_Button_Footer}                   More

Take Risk Assessment Via Products Tab
    AppiumLibrary.Click element                                 ${Dont_Know_what_to_Choose}
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
    Sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${Product_filter_All}
    ${Get_User_Risk_Profile}                                    AppiumLibrary.get text                      ${User_Risk_Account_Profile}
    AppiumLibrary.page should contain text                      ${Get_User_Risk_Profile}
    AppiumLibrary.Page should contain element                   ${Link_Account_Banner_ID}

Accessing Product Profile
    AppiumLibrary.Click element                                 ${Product_filter_Moderate}
    AppiumLibrary.Click element                                 ${Metro_Max_3_name}
    AppiumLibrary.wait until page contains element              ${Product_Profile_CloseBtn}
    AppiumLibrary.element should be visible                     ${Product_Profile_CloseBtn}
    AppiumLibrary.element should be visible                     ${Product_Profile_ShareBtn}
    ${Get_Product_name_risk_Label}                              AppiumLibrary.get text                      ${Product_profile_RA}
    AppiumLibrary.page should contain text                      ${Get_Product_name_risk_Label}
    AppiumLibrary.element should be visible                     ${Product_profile_RA_tooltip}
    AppiumLibrary.Click element                                 ${Product_profile_RA_tooltip}
    AppiumLibrary.wait until page contains element              ${Product_profile_Tooltip_title}
    AppiumLibrary.Page should contain element                   ${Product_profile_Tooltip_title}
    AppiumLibrary.Page should contain element                   ${Product_profile_Tooltip_Desc}
    AppiumLibrary.element should be visible                     ${Product_profile_Tooltip_Xicon}
    AppiumLibrary.Click element                                 ${Product_profile_Tooltip_Xicon}
    AppiumLibrary.wait until page contains element              ${Product_profile_NAVPU_Chart}
    ${Get_Product_name_ProductProfile}                          AppiumLibrary.get text                      ${Product_profile_FundName}
    AppiumLibrary.page should contain text                      ${Get_Product_name_ProductProfile}
    AppiumLibrary.page should contain text                      ${Product_profile_Chart_Name}               Fund Historical Performance
    AppiumLibrary.page should contain text                      ${Product_profile_NAVPU_Label}              NAVPU
    AppiumLibrary.element should be visible                     ${Product_profile_NAVPU_Chart}
    AppiumLibrary.page should contain text                      ${Product_profile_1YrBtn}                   1Y
    AppiumLibrary.page should contain text                      ${Product_profile_3YrBtn}                   3Y
    AppiumLibrary.page should contain text                      ${Product_profile_5YrBtn}                   5Y
    AppiumLibrary.Click element                                 ${Product_profile_1YrBtn}
    AppiumLibrary.Click element                                 ${Product_profile_5YrBtn}

#NAVPU CARD
    AppiumLibrary.element should be visible                     ${Product_profile_NavpuCard}
    AppiumLibrary.Page should contain element                   ${Product_profile_NavpuLabel}
    AppiumLibrary.element should be visible                     ${Product_profile_NavpuCard_tooltip}
    ${Get_product_navpu_value}                                  AppiumLibrary.get text                      ${Product_profile_NavpuValue}
    AppiumLibrary.page should contain text                      ${Get_product_navpu_value}
    ${Get_product_navpu_AsofDate}                               AppiumLibrary.get text                      ${Product_profile_AsOfDate}
    AppiumLibrary.page should contain text                      ${Get_product_navpu_AsofDate}
    AppiumLibrary.Click element                                 ${Tool_tip_Xpath_NavpuVard}
    AppiumLibrary.wait until page contains element              ${Navpu_Tooltip_Content}
    ${Get_Tooltip_Navpu_Desc}                                   AppiumLibrary.get text                      ${Navpu_Tooltip_Content}
#    AppiumLibrary.page should contain text                      ${Get_Tooltip_Navpu_Desc}
    AppiumLibrary.element should be visible                     ${Navpu_Tooltip_Content_XBtn}
    AppiumLibrary.Click element                                 ${Navpu_Tooltip_Content_XBtn}
    AppiumLibrary.wait until page contains element              ${Product_profile_Chart_Name}

#Min Amount Card
    AppiumLibrary.element should be visible                     ${Product_profile_MinAmount_Card}
    AppiumLibrary.Page should contain element                   ${Min_Investment_Card_Label}
    ${Get_Min_Invesment_amount}                                 AppiumLibrary.get text                      ${Product_profile_MinAmount_Value}
    AppiumLibrary.page should contain text                      ${Get_Min_Invesment_amount}
    AppiumLibrary.Click element                                 ${Tool_tip_Xpath_MinAmountCard}
    AppiumLibrary.wait until page contains element              ${MinAmount_Card_tooltip_title}
    AppiumLibrary.Page should contain element                   ${MinAmount_Card_tooltip_title}
    AppiumLibrary.Page should contain element                   ${MinAmount_Card_tooltip_Desc}
    AppiumLibrary.element should be visible                     ${Navpu_Tooltip_Content_XBtn}
    AppiumLibrary.Click element                                 ${Navpu_Tooltip_Content_XBtn}
    AppiumLibrary.wait until page contains element              ${Product_profile_Chart_Name}
    AppiumLibrary.swipe                                         0     1700     100     100

#Historical Returns section
    AppiumLibrary.wait until page contains element              ${Historical_returns_label}
    AppiumLibrary.Page should contain element                   ${Historical_returns_label}
    AppiumLibrary.Page should contain element                   ${If_You_had_Invested}
    AppiumLibrary.Page should contain element                   ${Currency_Label}
    ${Get_Fund_Simulator_amount}                                AppiumLibrary.get text                      ${Fund_Simulator_amount_Id}
    AppiumLibrary.page should contain text                      ${Get_Fund_Simulator_amount}
    AppiumLibrary.page should contain text                      ${Once_Radio_Button}                        Once
    AppiumLibrary.page should contain text                      ${Monthly_Radio_Button}                     Every month
    AppiumLibrary.element should be visible                     ${Fund_simulator_SlideBtn}
    AppiumLibrary.element should be visible                     ${Fund_Simulator_Years_drpdown}
    AppiumLibrary.Click element                                 ${Fund_Simulator_Years_drpdown}
    AppiumLibrary.wait until page contains element              ${Fund_Simulator_drpdown_3yr}
    AppiumLibrary.Page should contain element                   ${Fund_Simulator_drpdown_1yr}
    AppiumLibrary.Page should contain element                   ${Fund_Simulator_drpdown_3yr}
    AppiumLibrary.Page should contain element                   ${Fund_Simulator_drpdown_5yr}
    AppiumLibrary.Click element                                 ${Fund_Simulator_drpdown_5yr}
    AppiumLibrary.Page should contain element                   ${Fund_Simulator_ago_Label}
    ${Get_Fund_Simulator_Fund_name}                             AppiumLibrary.get text                      ${Fund_Simulator_Fund_name}
    AppiumLibrary.page should contain text                      ${Get_Fund_Simulator_Fund_name}
    AppiumLibrary.Page should contain element                   ${Now_be_worth_label}
    ${Get_Fund_Simulator_Fund_Amount}                           AppiumLibrary.get text                      ${Fund_Simulator_Fund_Amount}
    AppiumLibrary.page should contain text                      ${Get_Fund_Simulator_Fund_Amount}
    ${Get_Fund_Simulator_Navpu_Value}                           AppiumLibrary.get text                      ${Fund_Simulator_Navpu_Value}
    AppiumLibrary.page should contain text                      ${Get_Fund_Simulator_Navpu_Value}
    AppiumLibrary.Click element                                 ${Fast_Scroll_Btn}
#About Tab
    AppiumLibrary.wait until page contains element              ${About_Tab_Label}
    AppiumLibrary.page should contain text                      ${Product_Profile_Back_Btn}                 Back
    ${Get_Product_Profile_heder}                                AppiumLibrary.get text                      ${Product_profile_Header_ID}
    AppiumLibrary.page should contain text                      ${Get_Product_Profile_heder}
    AppiumLibrary.Page should contain element                   ${About_Tab_Label}
    AppiumLibrary.Page should contain element                   ${What_It_is_Label}
    AppiumLibrary.Element Text Should Be                        ${What_it_is_Description_ID}                This fund aims to earn income for you and grow your money by investing in government and corporate bonds that mature in 3 years on the average.
#Min Inv Card
    AppiumLibrary.element should be visible                     ${Min_Inv_Image}
#    ${Get_Min_Inv_Card_Value}                                  AppiumLibrary.get text                      ${Min_Inv_Card_Value}
    AppiumLibrary.Element Text Should Be                        ${Min_Inv_Card_Value}                       ₱10,000
#    ${Get_Min_Inv_Card_Label}                                   AppiumLibrary.get text                     ${Min_Inv_Card_Label}
    AppiumLibrary.Element Text Should Be                        ${Min_Inv_Card_Label}                       Minimum Investment
    AppiumLibrary.Click element                                 ${Min_Inv_Card_tooltip}
    AppiumLibrary.Page should contain element                   ${MinAmount_Card_tooltip_title}
    AppiumLibrary.Page should contain element                   ${MinAmount_Card_tooltip_Desc}
    AppiumLibrary.element should be visible                     ${Navpu_Tooltip_Content_XBtn}
    AppiumLibrary.Click element                                 ${Navpu_Tooltip_Content_XBtn}
    AppiumLibrary.wait until page contains element              ${What_It_is_Label}
#Time Horizon Card
    sleep                                                       2s
    AppiumLibrary.element should be visible                     ${Time_Horizon_Card_img}
    ${Get_Time_Horizon_Card_Year}                               AppiumLibrary.get text                      ${Time_Horizon_Card_Year}
    AppiumLibrary.Element Text Should Be                        ${Time_Horizon_Card_Year}                   1 year
    ${Get_Time_Horizon_Card_Label}                              AppiumLibrary.get text                      ${Time_Horizon_Card_Label}
    AppiumLibrary.Element Text Should Be                        ${Time_Horizon_Card_Label}                  Time Horizon
    AppiumLibrary.Click element                                 ${Time_Horizon_Tooltip}
    AppiumLibrary.wait until page contains element              ${Time_Horizon_Tooltip_title}
    AppiumLibrary.Page should contain element                   ${Time_Horizon_Tooltip_title}
    AppiumLibrary.Page should contain element                   ${Time_Horizon_Tooltip_Msg}
    AppiumLibrary.element should be visible                     ${Navpu_Tooltip_Content_XBtn}
    AppiumLibrary.Click element                                 ${Navpu_Tooltip_Content_XBtn}
    AppiumLibrary.wait until page contains element              ${What_It_is_Label}
#Risk Profile Card
    AppiumLibrary.element should be visible                     ${Risk_Profile_Imge}
    AppiumLibrary.element should be visible                     ${Risk_Profile_Tooltip}
    AppiumLibrary.Click element                                 ${Risk_Profile_Tooltip}
    AppiumLibrary.wait until page contains element              ${Risk_profile_Tooltip_Title}
    AppiumLibrary.Element Text Should Be                        ${Risk_profile_Tooltip_Title}               Risk Profile
    AppiumLibrary.Element Text Should Be                        ${Risk_profile_Tooltip_Msg}                 This fund is recommended for moderate investors. Medium risk, medium potential reward.
    AppiumLibrary.Click element                                 ${Risk_profile_Tooltip_Xicon}
    AppiumLibrary.wait until page contains element              ${Product_profile_Header_ID}
    AppiumLibrary.Element Text Should Be                        ${Risk_Profile_Title}                       Moderate
    AppiumLibrary.Element Text Should Be                        ${Risk_Profile_Label}                       Risk Profile
#Bonds
    AppiumLibrary.element should be visible                     ${Bonds_Image}
    AppiumLibrary.Element Text Should Be                        ${Bonds_Label}                              Bonds
    AppiumLibrary.Element Text Should Be                        ${Bonds_Assets}                             Assets
    AppiumLibrary.Click element                                 ${Bonds_Tooltip}
    AppiumLibrary.wait until page contains element              ${Bonds_Tooltip_Title}
    AppiumLibrary.Element Text Should Be                        ${Bonds_Tooltip_Title}                      Assets
    AppiumLibrary.Element Text Should Be                        ${Bonds_Tooltip_Msg}                        This fund contains bonds, which are greatly affected by interest rates. Don't forget that bonds and interest rates have an inverse relationship.
    AppiumLibrary.Click element                                 ${Bonds_Tooltip_Title_Xicon}
    AppiumLibrary.wait until page contains element              ${Product_profile_Header_ID}
    AppiumLibrary.swipe                                         0     600     100     100
    AppiumLibrary.wait until page contains element              ${1day_label}
#Days to withrew
    AppiumLibrary.element should be visible                     ${Days_to_withrew_Img}
    AppiumLibrary.Element Text Should Be                        ${Days_to_withrew_1day}                     1 day
    AppiumLibrary.Element Text Should Be                        ${Days_to_withrew_Label}                    Days to Withdraw
#Trust Fee
    AppiumLibrary.element should be visible                     ${Trust_fee_img}
    AppiumLibrary.Element Text Should Be                        ${Trust_fee_per_annum}                     0.75% per annum
    AppiumLibrary.Element Text Should Be                        ${Trust_fee_Label}                         Trust Fee
    AppiumLibrary.Click element                                 ${Trust_fee_tooltip}
    AppiumLibrary.wait until page contains element              ${Trust_fee_tooltip_title}
    AppiumLibrary.Element Text Should Be                        ${Trust_fee_tooltip_title}                 Trust Fee
    AppiumLibrary.Element Text Should Be                        ${Trust_fee_tooltip_msg}                   This is the fee for management of the fund. It is based on the fund’s Net Asset Value Per Unit (NAVPU).
    AppiumLibrary.Click element                                 ${Trust_fee_Xicon}
    AppiumLibrary.wait until page contains element              ${Product_profile_Header_ID}


