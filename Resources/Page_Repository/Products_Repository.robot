*** Variables ***
${chromedriverExecutable}                       C:\Users\RyanChristopherLoroc\PycharmProjects\P11_earnest\chromedriver.exe
${Close_AppBtn}                                 ph.mbtc.platform11.earnest.debug:id/btn_close
#Variables for Login
#${LoginLink_LoginPage}                          //android.widget.TextView[@text = 'Login']
${Btn_Option_LoginPage}                         ph.mbtc.platform11.earnest.debug:id/optionsButton
${ChangeAcount_Button}                          ph.mbtc.platform11.earnest.debug:id/changeAccountButton
${EmailField_LoginPage}                         ph.mbtc.platform11.earnest.debug:id/emailField
${PassField_LoginPage}                          ph.mbtc.platform11.earnest.debug:id/passwordField
${LoginBtn_LoginPage}                           ph.mbtc.platform11.earnest.debug:id/loginButton
${Valid_UserEmailAddress}                       aut_sit009@getnada.com
${Valid_UserPassword}                           Test*123
${BtnSubmit_OtpPage}                            ph.mbtc.platform11.earnest.debug:id/btn_submit
${btn_Home_SkipBtn}                             ph.mbtc.platform11.earnest.debug:id/btnSkip
${More_kebab_menuBtn}                           ph.mbtc.platform11.earnest.debug:id/moreButton
${Click_ShowProfie_btn}                         ph.mbtc.platform11.earnest.debug:id/profileButton
${Primary_Btn_Login}                            ph.mbtc.platform11.earnest.debug:id/primary_button
${banner_deep_link}                             ph.mbtc.platform11.earnest.debug:id/banner_content_root
${Mbtc_welcome_layout}                          ph.mbtc.platform11.earnest.debug:id/welcomeLayout
${Collapse_Btn}                                 ph.mbtc.platform11.earnest.debug:id/collapse_button
${Already_haveAccount_label}                    //android.widget.TextView[@text = 'Already have an account? Login']
${Logout_Button}                                ph.mbtc.platform11.earnest.debug:id/logoutButton
${Yes_Button}                                   ph.mbtc.platform11.earnest.debug:id/yesButton


${Invest_Button_Home_Tab}                       ph.mbtc.platform11.earnest.debug:id/investButton
${Invest_Label_Home_Tab}                        //android.widget.TextView[@text = 'Invest']
${Invest_Title_header}                          //android.widget.TextView[@text = 'Invest']
${Portfolio_Tab}                                //android.widget.TextView[@text = 'Portfolio']
${Products_Tab}                                 //android.widget.TextView[@text = 'Products']

${Risk_Message_ID}                              ph.mbtc.platform11.earnest.debug:id/riskMessage
${Risk_Message_Label}                           //android.widget.TextView[@text = 'Take the risk assessment so you can make your first subscription.']
${Dont_Know_what_to_Choose}                     ph.mbtc.platform11.earnest.debug:id/investmentsBodyLayout

${Product_filter_All}                           ph.mbtc.platform11.earnest.debug:id/button_filter_all
${Product_filter_Conservative}                  ph.mbtc.platform11.earnest.debug:id/button_filter_conservative
${Product_filter_Moderate}                      ph.mbtc.platform11.earnest.debug:id/button_filter_moderate
${Product_filter_Aggressive}                    ph.mbtc.platform11.earnest.debug:id/button_filter_aggressive

${Product_card_ID}                              ph.mbtc.platform11.earnest.debug:id/fund_detail_card
${Product_Risk_Label}                           ph.mbtc.platform11.earnest.debug:id/fund_risk_label
${Product_NAVPU_LAbel}                          ph.mbtc.platform11.earnest.debug:id/fund_navpu_label
${Product_NAVPU_Value}                          ph.mbtc.platform11.earnest.debug:id/fund_navpu_value
${Product_Name_Label}                           ph.mbtc.platform11.earnest.debug:id/fund_name
${Product_Desc_Label}                           ph.mbtc.platform11.earnest.debug:id/fund_description
${Product_Min_Amount_label}                     ph.mbtc.platform11.earnest.debug:id/fund_min_amount_label
${Product_Min_Amount_Value}                     ph.mbtc.platform11.earnest.debug:id/fund_min_amount_value
${Product_3yr_performance_Label}                ph.mbtc.platform11.earnest.debug:id/fund_3_year_perf_label
${Product_3yr_performance_Value}                ph.mbtc.platform11.earnest.debug:id/fund_3_year_perf_value


${Home_button_Footer}                           ph.mbtc.platform11.earnest.debug:id/homeButton2
${Learn_Button_Footer}                          ph.mbtc.platform11.earnest.debug:id/learnButton
${Invest_Button_Footer}                         ph.mbtc.platform11.earnest.debug:id/investButton
${More_Button_Footer}                           ph.mbtc.platform11.earnest.debug:id/moreButton


#No Risk Assessment
${No_RA_Image_illustaryion}                     //android.widget.ImageView
${No_RA_TItle_ID}                               ph.mbtc.platform11.earnest.debug:id/cd_title
${No_RA_TItle}                                  //android.widget.TextView[@text = 'No Risk Assessment']
${No_RA_Dialog_ID}                              ph.mbtc.platform11.earnest.debug:id/aecar_dialog_message
${No_RA_Dialog}                                 //android.widget.TextView[@text = 'You must take the Risk Assessment before linking an account.']
${Go_Back_Btn}                                  ph.mbtc.platform11.earnest.debug:id/goBack
${Proceed_Btn}                                  ph.mbtc.platform11.earnest.debug:id/proceed


${CancelBtn_RA_Page1}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Option_two_RA_Page1}                          //android.widget.RadioButton[@text = 'Using any gains I get for small purchases that I want']
${NextBtn_Page1}                                ph.mbtc.platform11.earnest.debug:id/btn_next_main

${CancelBtn_RA_Page2}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Option_two_RA_Page2}                          //android.widget.RadioButton[@text = 'I might need to withdraw within 1 year']
${Btn_next_RA_Page2}                             ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page3}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Option_two_RA_Page3}                          //android.widget.RadioButton[@text = 'I can take a small amount of loss in exchange for slightly higher returns']
${Btn_next_RA_Page3}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page4}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Option_two_RA_Page4}                          //android.widget.RadioButton[@text = '30 days to 1 year']
${Btn_next_RA_Page4}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page5}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Option_two_RA_Page5}                          //android.widget.CheckBox[@text = 'Time Deposits, Government Securities, and/or Money Market Funds']
${Btn_next_RA_Page5}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page6}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Option_two_RA_Page6}                          //android.widget.CheckBox[@text = 'Time Deposits, Government Securities, and/or Money Market Funds']
${Btn_next_RA_Page6}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page7}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Option_two_RA_Page7}                          //android.widget.CheckBox[@text = 'Time Deposits, Government Securities, and/or Money Market Funds']
${Btn_next_RA_Page7}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${Btn_next_RA_Page8}                            ph.mbtc.platform11.earnest.debug:id/btn_next
${Btn_Accept_Acknowledgement}                   ph.mbtc.platform11.earnest.debug:id/accept_risk_acknowledgement

${Review_Label}                                //android.widget.TextView[@text = 'Review']
${Btn_Submit_ReviewPage}                       ph.mbtc.platform11.earnest.debug:id/btn_submit

${Your_Risk_Profile_Header}                   //android.widget.TextView[@text = 'Your Risk Profile']
${Btn_okay_lastPage}                          ph.mbtc.platform11.earnest.debug:id/btn_ok

${User_Risk_Account_Profile}                  ph.mbtc.platform11.earnest.debug:id/riskWithoutAccount
${Link_Account_Banner_ID}                     //android.widget.TextView[@text = "You haven’t linked a Metrobank Savings Account yet. Link now to make an investment."]

${Metro_Max_3_name}                          //android.widget.TextView[@text = 'Metro Max-3 Bond Fund']
${Product_Profile_CloseBtn}                  ph.mbtc.platform11.earnest.debug:id/closeButton
${Product_Profile_ShareBtn}                  ph.mbtc.platform11.earnest.debug:id/shareButton
${Product_profile_RA}                        ph.mbtc.platform11.earnest.debug:id/productRiskLabel
${Product_profile_RA_tooltip}                ph.mbtc.platform11.earnest.debug:id/icproduckRiskTooltip
${Product_profile_Tooltip_title}             //android.widget.TextView[@text = 'Moderate Fund']
${Product_profile_Tooltip_Desc}              //android.widget.TextView[@text = 'This fund is recommended for moderate investors. Medium risk, medium potential reward.']
${Product_profile_Tooltip_Xicon}             ph.mbtc.platform11.earnest.debug:id/btnClose
${Product_profile_FundName}                  ph.mbtc.platform11.earnest.debug:id/productName
${Product_profile_Chart_Name}                ph.mbtc.platform11.earnest.debug:id/chartLabel
${Product_profile_NAVPU_Label}               ph.mbtc.platform11.earnest.debug:id/navpuTitle
${Product_profile_NAVPU_Chart}               ph.mbtc.platform11.earnest.debug:id/navpu_chart

${Product_profile_1YrBtn}                    ph.mbtc.platform11.earnest.debug:id/one_year
${Product_profile_3YrBtn}                    ph.mbtc.platform11.earnest.debug:id/three_year
${Product_profile_5YrBtn}                    ph.mbtc.platform11.earnest.debug:id/five_year

${Product_profile_NavpuCard}                 ph.mbtc.platform11.earnest.debug:id/productHeaderItem
${Product_profile_NavpuLabel}                //android.widget.TextView[@text = 'NAVPU']
${Tool_tip_Xpath_NavpuVard}                  //*[@bounds='[396,1668][462,1734]']
${Product_profile_NavpuValue}                //*[@bounds='[114,1749][345,1821]']
${Product_profile_NavpuCard_tooltip}         ph.mbtc.platform11.earnest.debug:id/fundHeaderIcTooltip
${Product_profile_AsOfDate}                  //*[@bounds='[114,1833][440,1890]']
${Navpu_Tooltip_Content}                     ph.mbtc.platform11.earnest.debug:id/txt_tooltip_message
${Navpu_Tooltip_Content_XBtn}                ph.mbtc.platform11.earnest.debug:id/btnClose

${Product_profile_MinAmount_Card}           ph.mbtc.platform11.earnest.debug:id/productHeaderItem
${Min_Investment_Card_Label}                //android.widget.TextView[@text = 'Min. Investment']
${Tool_tip_Xpath_MinAmountCard}             //*[@bounds='[900,1668][966,1734]']
${Product_profile_MinAmount_Tooltip}        ph.mbtc.platform11.earnest.debug:id/fundHeaderIcTooltip
${Product_profile_MinAmount_Value}          //*[@bounds='[618,1806][826,1878]']
${MinAmount_Card_tooltip_title}             //android.widget.TextView[@text = 'Minimum Investment']
${MinAmount_Card_tooltip_Desc}              //android.widget.TextView[@text = 'The minimum initial investment for this fund is P10,000. If you want to invest more, the minimum is just P1,000.']

${Historical_returns_label}                 //android.widget.TextView[@text = 'Historical Returns']
${If_You_had_Invested}                      //android.widget.TextView[@text = 'If you had invested']
${Currency_Label}                           //android.widget.TextView[@text = '₱']
${Fund_Simulator_amount_Id}                 ph.mbtc.platform11.earnest.debug:id/fundSimulatorAmount
${Once_Radio_Button}                        ph.mbtc.platform11.earnest.debug:id/onceRadioButton
${Monthly_Radio_Button}                     ph.mbtc.platform11.earnest.debug:id/monthlyRadioButton
${Fund_simulator_SlideBtn}                  ph.mbtc.platform11.earnest.debug:id/fundSlider
${Fund_Simulator_Years_drpdown}             ph.mbtc.platform11.earnest.debug:id/yearsDropdown
${Fund_Simulator_drpdown_1yr}               //android.widget.TextView[@text = '1 year']
${Fund_Simulator_drpdown_3yr}               //android.widget.TextView[@text = '3 years']
${Fund_Simulator_drpdown_5yr}               //android.widget.TextView[@text = '5 years']
${Fund_Simulator_ago_Label}                 //android.widget.TextView[@text = 'ago,']
${Fund_Simulator_Fund_name}                 ph.mbtc.platform11.earnest.debug:id/fundComputationTitle
${Now_be_worth_label}                       //android.widget.TextView[@text = 'would now be worth']
${Fund_Simulator_Fund_Amount}               ph.mbtc.platform11.earnest.debug:id/fundComputationAmount
${Fund_Simulator_Navpu_Value}               ph.mbtc.platform11.earnest.debug:id/fundComputationPercentage

${Fast_Scroll_Btn}                          ph.mbtc.platform11.earnest.debug:id/fastScrollButton
${Product_Profile_Back_Btn}                 ph.mbtc.platform11.earnest.debug:id/backButton
${Product_profile_Header_ID}                ph.mbtc.platform11.earnest.debug:id/toolbarTitle
${About_Tab_Label}                          //android.widget.TextView[@text = 'About']
${What_It_is_Label}                         //android.widget.TextView[@text = 'What it is']
${What_it_is_Description}                   //android.widget.TextView[@text = 'This fund aims to earn income for you and grow your money by investing in government and corporate bonds that mature in 3 years on the average.']
${What_it_is_Description_ID}                ph.mbtc.platform11.earnest.debug:id/txtProductDescription
#Min Inv Card
${Min_Inv_Image}                            //*[@bounds='[108,1000][252,1144]']
${Min_Inv_Card_Value}                       //*[@bounds='[108,1192][291,1257]']
${Min_Inv_Card_Label}                       //*[@bounds='[108,1269][462,1383]']
${Min_Inv_Card_tooltip}                     //*[@bounds='[396,1000][462,1066]']
${MinAmount_Card_tooltip_title}
${MinAmount_Card_tooltip_Desc}
${Navpu_Tooltip_Content_XBtn}
#Time Horizon Card
${Time_Horizon_Card_img}                    //*[@bounds='[618,1000][762,1144]']
${Time_Horizon_Card_Year}                   //*[@bounds='[618,1192][755,1257]']
${Time_Horizon_Card_Label}                  //*[@bounds='[618,1269][972,1326]']
${Time_Horizon_Tooltip}                     //*[@bounds='[906,1000][972,1066]']
${Time_Horizon_Tooltip_title}               //android.widget.TextView[@text = 'Time Horizon']
${Time_Horizon_Tooltip_Msg}                 //android.widget.TextView[@text = 'We recommend that you leave your money in the investment for at least this long to get the best results.']
${Navpu_Tooltip_Content_XBtn}
#Risk Profile Card
${Risk_Profile_Imge}                        //*[@bounds='[108,1534][252,1678]']
${Risk_Profile_Tooltip}                     //*[@bounds='[396,1534][462,1600]']
${Risk_Profile_Title}                       //*[@bounds='[108,1726][327,1791]']
${Risk_Profile_Label}                       //*[@bounds='[108,1803][462,1860]']
${Risk_profile_Tooltip_Title}               ph.mbtc.platform11.earnest.debug:id/txt_tooltip_title
${Risk_profile_Tooltip_Msg}                 ph.mbtc.platform11.earnest.debug:id/txt_tooltip_message
${Risk_profile_Tooltip_Xicon}               ph.mbtc.platform11.earnest.debug:id/btnClose
#Bonds
${Bonds_Image}                              //*[@bounds='[618,1534][762,1678]']
${Bonds_Label}                              //*[@bounds='[618,1726][759,1791]']
${Bonds_Assets}                             //*[@bounds='[618,1803][972,1860]']
${Bonds_Tooltip}                            //*[@bounds='[906,1534][972,1600]']
${Bonds_Tooltip_Title}                      ph.mbtc.platform11.earnest.debug:id/txt_tooltip_title
${Bonds_Tooltip_Msg}                        ph.mbtc.platform11.earnest.debug:id/txt_tooltip_message
${Bonds_Tooltip_Title_Xicon}                ph.mbtc.platform11.earnest.debug:id/btnClose
#Days to withrew
${Days_to_withrew_Img}                      //android.widget.LinearLayout[5]//android.widget.ImageView
${Days_to_withrew_1day}                     //android.widget.LinearLayout[5]//android.widget.TextView[1]
${Days_to_withrew_Label}                    //android.widget.LinearLayout[5]//android.widget.TextView[2]
${1day_label}                                //android.widget.TextView[@text = '1 day']
#Trust Fee
${Trust_fee_img}                            //android.widget.LinearLayout[6]//android.widget.ImageView[1]
${Trust_fee_per_annum}                      //android.widget.LinearLayout[6]//android.widget.TextView[1]
${Trust_fee_Label}                          //android.widget.LinearLayout[6]//android.widget.TextView[2]
${Trust_fee_tooltip}                        //android.widget.LinearLayout[6]//android.widget.ImageView[2]
${Trust_fee_tooltip_title}                  ph.mbtc.platform11.earnest.debug:id/txt_tooltip_title
${Trust_fee_tooltip_msg}                    ph.mbtc.platform11.earnest.debug:id/txt_tooltip_message
${Trust_fee_Xicon}                          ph.mbtc.platform11.earnest.debug:id/btnClose
#    //*[@bounds='']
