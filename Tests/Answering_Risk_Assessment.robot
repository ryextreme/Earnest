*** Settings ***
Library     AppiumLibrary

*** Variables ***
${chromedriverExecutable}                       C:\Users\John Robert\PycharmProjects\P11_earnest\chromedriver.exe
${Close_AppBtn}                                 ph.mbtc.platform11.earnest.debug:id/btn_close
#Variables for Login
#${LoginLink_LoginPage}                          //android.widget.TextView[@text = 'Login']
${Btn_Option_LoginPage}                         ph.mbtc.platform11.earnest.debug:id/optionsButton
${ChangeAcount_Button}                          ph.mbtc.platform11.earnest.debug:id/changeAccountButton
${EmailField_LoginPage}                         ph.mbtc.platform11.earnest.debug:id/emailField
${PassField_LoginPage}                          ph.mbtc.platform11.earnest.debug:id/passwordField
${LoginBtn_LoginPage}                           ph.mbtc.platform11.earnest.debug:id/loginButton
${Valid_UserEmailAddress}                       ryry00020@getnada.com
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

${Click_ShowProfile_btn}                        ph.mbtc.platform11.earnest.debug:id/profileButton
${Personal_Info_Edit_Button}                    ph.mbtc.platform11.earnest.debug:id/personal_info_edit
${Risk_Profile_Label}                           //android.widget.TextView[@text = 'Risk Profile']
${Take_Risk_Assessment_ID}                      ph.mbtc.platform11.earnest.debug:id/profile_take_risk_assessment

${CancelBtn_RA_Page1}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${RiskAssessment_Header_Page1}                  //android.widget.TextView[@text = 'Risk Assessment']
${Help_Tooltip_Page1}                           ph.mbtc.platform11.earnest.debug:id/question_tooltip
${Why_Are_You_Investing_tooltip}                //android.widget.TextView[@text = 'Why are you investing?']
${Why_Are_You_Investing_Content}                //android.widget.TextView[@text = 'Why are you investing in the first place? Are you investing for something in particular? Or are you in for the long haul?']
${Help_tooltip_x_Icon}                          ph.mbtc.platform11.earnest.debug:id/btnClose
${Why_Are_You_Investing}                        //android.widget.TextView[@text = 'Why are you investing?']
${Choose_only_one_Label}                        //android.widget.TextView[@text = 'Choose only one.']
${Option_one_RA_Page1}                          //android.widget.RadioButton[@text = 'Use it as a source of money for my day-to-day needs']
${Option_one_RAExplanation_Page1}               //android.widget.TextView[@text = "I don't have an emergency fund and will be using my investments in case something unexpected happens."]
${Option_two_RA_Page1}                          //android.widget.RadioButton[@text = 'Using any gains I get for small purchases that I want']
${Option_two_RAExplanation_Page1}               //android.widget.TextView[@text = 'I will treat the earnings from my investments as money that I can take out for my daily expenses.']
${Option_three_RA_Page1}                        //android.widget.RadioButton[@text = 'Saving for future expense (car, vacation, etc.)']
${Option_three_RAExplanation_Page1}              //android.widget.TextView[@text = "I'm saving for something big in the future."]
${Option_four_RA_Page1}                         //android.widget.RadioButton[@text = 'Make my money grow in the long term']
${Option_four_RAExplanation_Page1}              //android.widget.TextView[@text = "I’m in it for the long haul and just want my money to grow as much as possible."]
${NextBtn_Page1}                                ph.mbtc.platform11.earnest.debug:id/btn_next_main

${CancelBtn_RA_Page2}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${RiskAssessment_Header_Page2}                  //android.widget.TextView[@text = 'Risk Assessment']
${Help_Tooltip_Page2}                           ph.mbtc.platform11.earnest.debug:id/question_tooltip
${tooltip2_title}                               //android.widget.TextView[@text = 'When will you need your money?']
${tooltip2_Content}                             //android.widget.TextView[@text = 'How often will you need to take out your money? Do you have any circumstances that force you to take out the money you invest?']
${Help_tooltip_x_Icon2}                         ph.mbtc.platform11.earnest.debug:id/btnClose
${When_will_you_need_Money}                     //android.widget.TextView[@text = 'When will you need your money?']
${Choose_only_one_Label2}                       //android.widget.TextView[@text = 'Choose only one.']
${Option_one_RA_Page2}                          //android.widget.RadioButton[@text = 'I might need to withdraw anytime']
${Option_two_RA_Page2}                          //android.widget.RadioButton[@text = 'I might need to withdraw within 1 year']
${Option_three_RA_Page2}                        //android.widget.RadioButton[@text = "I might need to withdraw within 1-5 years"]
${Option_four_RA_Page2}                         //android.widget.RadioButton[@text = "I won't need to withdraw until 5 years after investment"]
${Btn_Back_RA_page2}                            ph.mbtc.platform11.earnest.debug:id/btn_back
${Btn_next_RA_Page2}                             ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page3}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${RiskAssessment_Header_Page3}                  //android.widget.TextView[@text = 'Risk Assessment']
${Help_Tooltip_Page3}                           ph.mbtc.platform11.earnest.debug:id/question_tooltip
${tooltip3_title}                               //android.widget.TextView[@text = 'How much risk can you stand?']
${tooltip3_Content}                             //android.widget.TextView[@text = 'How much risk do you think you can take? As the saying goes, "high risk, high return"']
${Help_tooltip_x_Icon3}                         ph.mbtc.platform11.earnest.debug:id/btnClose
${How_mucn_risk_can_you_Stand}                  //android.widget.TextView[@text = 'How much risk can you stand?']
${Choose_only_one_Label3}                       //android.widget.TextView[@text = 'Choose only one.']
${Option_one_RA_Page3}                          //android.widget.RadioButton[@text = "I'm not willing to risk a single centavo of the money I'm investing"]
${Option_one_RAExplanation_Page3}               //android.widget.TextView[@text = 'I want to play it safe - my P100 stays P100. No losses, but probably not much potential gains either. (Note: this option means that you cannot invest; after all, there are no rewards without risks.)']
${Option_two_RA_Page3}                          //android.widget.RadioButton[@text = 'I can take a small amount of loss in exchange for slightly higher returns']
${Option_two_RAExplanation_Page3}               //android.widget.TextView[@text = "I'm willing to take a little bit of risk in exchange for a little bit of potential reward."]
${Option_three_RA_Page3}                        //android.widget.RadioButton[@text = 'I can take a medium amount of loss in exchange for moderate returns']
${Option_three_RAExplanation_Page3}             //android.widget.TextView[@text = "I'm willing to take a moderate amount of risk in exchange for moderate amount of potential reward."]
${Option_four_RA_Page3}                         //android.widget.RadioButton[@text = 'I can take a large amount of loss in the short term in exchange for large returns in the long term']
${Option_four_RAExplanation_Page3}              //android.widget.TextView[@text = "I'm willing to take a large amount of risk in exchange for large amount of potential reward."]
${Btn_Back_RA_page3}                            ph.mbtc.platform11.earnest.debug:id/btn_back
${Btn_next_RA_Page3}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page4}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${RiskAssessment_Header_Page4}                  //android.widget.TextView[@text = 'Risk Assessment']
${Help_Tooltip_Page4}                           ph.mbtc.platform11.earnest.debug:id/question_tooltip
${tooltip4_title}                               //android.widget.TextView[@text = 'How long are you planning on investing for without touching your invested money?']
${tooltip4_Content}                             //android.widget.TextView[@text = 'How long are you planning on leaving your investment alone for? Try to give your best estimate.']
${Help_tooltip_x_Icon4}                         ph.mbtc.platform11.earnest.debug:id/btnClose
${How_Long_Are_You_Planning}                    //android.widget.TextView[@text = 'How long are you planning on investing for without touching your invested money?']
${Choose_only_one_Label4}                       //android.widget.TextView[@text = 'Choose only one.']
${Option_one_RA_Page4}                          //android.widget.RadioButton[@text = 'Less than 30 days']
${Option_two_RA_Page4}                          //android.widget.RadioButton[@text = '30 days to 1 year']
${Option_three_RA_Page4}                        //android.widget.RadioButton[@text = '1- 5 years']
${Option_four_RA_Page4}                         //android.widget.RadioButton[@text = 'Above 5 years']
${Btn_Back_RA_page4}                            ph.mbtc.platform11.earnest.debug:id/btn_back
${Btn_next_RA_Page4}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page5}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${RiskAssessment_Header_Page5}                  //android.widget.TextView[@text = 'Risk Assessment']
${Help_Tooltip_Page5}                           ph.mbtc.platform11.earnest.debug:id/question_tooltip
${tooltip5_title}                               //android.widget.TextView[@text = 'Which of these investment options do you understand?']
${tooltip5_Content}                             //android.widget.TextView[@text = 'Are you familiar with these products? Just choose whichever level you think suits you best.']
${Help_tooltip_x_Icon5}                         ph.mbtc.platform11.earnest.debug:id/btnClose
${Which_of_these_Investment}                    //android.widget.TextView[@text = 'Which of these investment options do you understand?']
${Choose_all_that_apply_Label5}                 //android.widget.TextView[@text = 'Please choose all that apply.']
${Option_one_RA_Page5}                          //android.widget.CheckBox[@text = 'Savings account']
${Option_two_RA_Page5}                          //android.widget.CheckBox[@text = 'Time Deposits, Government Securities, and/or Money Market Funds']
${Option_three_RA_Page5}                        //android.widget.CheckBox[@text = 'Corporate Bonds/Notes and/or Bond Funds']
${Option_four_RA_Page5}                         //android.widget.CheckBox[@text = 'Tier 2 Capital Equities, Balanced/Equity Funds, Buy/Sell Real Estate, and/or Derivatives']
${Btn_Back_RA_page5}                            ph.mbtc.platform11.earnest.debug:id/btn_back
${Btn_next_RA_Page5}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page6}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${RiskAssessment_Header_Page6}                  //android.widget.TextView[@text = 'Risk Assessment']
${Help_Tooltip_Page6}                           ph.mbtc.platform11.earnest.debug:id/question_tooltip
${tooltip6_title}                               //android.widget.TextView[@text = 'Which of these have you tried?']
${tooltip6_Content}                             //android.widget.TextView[@text = "Have you actually invested in any of these? Choose multiple if they apply and please let us know the official institution you got your investment from. If it’s not official, there’s no need to mention it."]
${Help_tooltip_x_Icon6}                         ph.mbtc.platform11.earnest.debug:id/btnClose
${Which_of_these_Have_You_Tried}                //android.widget.TextView[@text = 'Which of these have you tried?']
${Choose_all_that_apply_Label6}                 //android.widget.TextView[@text = 'Please choose all that apply.']
${Option_one_RA_Page6}                          //android.widget.CheckBox[@text = 'Savings account']
${Option_two_RA_Page6}                          //android.widget.CheckBox[@text = 'Time Deposits, Government Securities, and/or Money Market Funds']
${Option_three_RA_Page6}                        //android.widget.CheckBox[@text = 'Corporate Bonds/Notes and/or Bond Funds']
${Option_four_RA_Page6}                         //android.widget.CheckBox[@text = 'Tier 2 Capital Equities, Balanced/Equity Funds, Buy/Sell Real Estate, and/or Derivatives']
${Btn_Back_RA_page6}                            ph.mbtc.platform11.earnest.debug:id/btn_back
${Btn_next_RA_Page6}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page7}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${RiskAssessment_Header_Page7}                  //android.widget.TextView[@text = 'Risk Assessment']
${Help_Tooltip_Page7}                           ph.mbtc.platform11.earnest.debug:id/question_tooltip
${tooltip7_title}                               //android.widget.TextView[@text = 'What types of investments are you interested in?']
${tooltip7_Content}                             //android.widget.TextView[@text = "Whether you’ve already decided to invest or are still considering, just choose whichever level you think you want to know more about the most."]
${Help_tooltip_x_Icon7}                         ph.mbtc.platform11.earnest.debug:id/btnClose
${What_Types_of_Investment_Interested}          //android.widget.TextView[@text = 'What types of investments are you interested in?']
${Choose_all_that_apply_Label7}                 //android.widget.TextView[@text = 'Please choose all that apply.']
${Option_one_RA_Page7}                          //android.widget.CheckBox[@text = 'Savings account']
${Option_two_RA_Page7}                          //android.widget.CheckBox[@text = 'Time Deposits, Government Securities, and/or Money Market Funds']
${Option_three_RA_Page7}                        //android.widget.CheckBox[@text = 'Corporate Bonds/Notes and/or Bond Funds']
${Option_four_RA_Page7}                         //android.widget.CheckBox[@text = 'Tier 2 Capital Equities, Balanced/Equity Funds, Buy/Sell Real Estate, and/or Derivatives']
${Btn_Back_RA_page7}                            ph.mbtc.platform11.earnest.debug:id/btn_back
${Btn_next_RA_Page7}                            ph.mbtc.platform11.earnest.debug:id/btn_next

${CancelBtn_RA_Page8}                           ph.mbtc.platform11.earnest.debug:id/btn_cancel
${RiskAssessment_Header_Page8}                  //android.widget.TextView[@text = 'Risk Assessment']
${Progress_Bar_Page8}                           ph.mbtc.platform11.earnest.debug:id/review_progressbar_layout
#${Trustor_Principal_title}                      //android.widget.TextView[@text = "Trustor / Principal "]
#${Trustor_Principal_title1}                      //android.widget.TextView[@text = "Acknowledgement"]
${Trustor_Principal_Content}                    //android.widget.TextView[@text = "Validity of electronic transactions: Investments that I make through Earnest will be valid, enforceable and binding to me without requiring my actual signature and can be used as a written document under existing laws."]
${Acknowledgement_Validity_ID}                  ph.mbtc.platform11.earnest.debug:id/risk_acknowledgement_validity
${Acknowledgement_Validity_Label}               //android.widget.TextView[@text = 'By choosing “I’ve read and understood,” I acknowledge that my answers to the questionnaire are true, accurate and complete. I understand the Suitability Assessment Form (SAF) is used as a guide for Metropolitan Bank and Trust company to present and/or recommend UITF products and I allow the Bank to share my answers to this questionnaire with its subsidiaries, agents and other persons or entities who will keep this information confidential, for suitability assessment.']
${I_Have_read_And_understand}                   //android.widget.CheckBox[@text = 'I have read and understood the Trustor / Principal Acknowledgement']
${Btn_Back_RA_page8}                            ph.mbtc.platform11.earnest.debug:id/btn_back
${Btn_next_RA_Page8}                            ph.mbtc.platform11.earnest.debug:id/btn_next
${Btn_Accept_Acknowledgement}                   ph.mbtc.platform11.earnest.debug:id/accept_risk_acknowledgement

${RiskAssessment_Header_ReviewPage}            //android.widget.TextView[@text = 'Risk Assessment']
${Review_Label}                                //android.widget.TextView[@text = 'Review']
${Please_Make_Sure_That_Label}                 //android.widget.TextView[@text = 'Please make sure that all the information below is correct.']
${Question1_Label}                             //android.widget.TextView[@text = 'Question 1']
${Question1_EditBtn}                           ph.mbtc.platform11.earnest.debug:id/answer_edit
${Btn_Submit_ReviewPage}                       ph.mbtc.platform11.earnest.debug:id/btn_submit

${Your_Risk_Profile_Header}                   //android.widget.TextView[@text = 'Your Risk Profile']
${Your_Risk_Profile_Img}                      //android.widget.ImageView
${Your_Risk_Profile_Result}                   ph.mbtc.platform11.earnest.debug:id/result_classification
${Youre_the_type_of_person_who}               //android.widget.TextView[@text = "You're the type of person who:"]
${Type_one}                                   ph.mbtc.platform11.earnest.debug:id/res_desc_1
${Type_two}                                   ph.mbtc.platform11.earnest.debug:id/res_desc_2
${Type_three}                                 ph.mbtc.platform11.earnest.debug:id/res_desc_3
${Type_four}                                  ph.mbtc.platform11.earnest.debug:id/res_desc_4
${In_Earnest_Label}                           //android.widget.TextView[@text = 'In Earnest, we would call you']
${Finance_Call}                               ph.mbtc.platform11.earnest.debug:id/finance_call
${Btn_okay_lastPage}                          ph.mbtc.platform11.earnest.debug:id/btn_ok

${RA_UpdateBtn}                             ph.mbtc.platform11.earnest.debug:id/ra_update
${Update_RiskProfile_Btn}                   ph.mbtc.platform11.earnest.debug:id/update_ra_button
${Update_RiskProfile_Label}                 //android.widget.TextView[@text = 'Update your Risk Profile']
${Update_RiskProfile_ContinueBtn}           ph.mbtc.platform11.earnest.debug:id/btn_continue

${Risk_Averse_Result}                       //android.widget.TextView[@text = 'Risk Averse']
${Being_Risk_Averse_Label}                  //android.widget.TextView[@text = "Being risk-averse means you're not willing to take any risks with your money. Unfortunately, this means that you can't invest. After all, you can't get rewards without some risk."]
${Retake_RiskAssessment_Btn}                ph.mbtc.platform11.earnest.debug:id/retake_assessment_button
${Learn_img}                                //android.widget.ImageView
${Not_Ready_To_Begin_Label}                //android.widget.TextView[@text = 'Not ready to begin your investing journey yet?']
${You_Can_Learn_Label}                     //android.widget.TextView[@text = 'You can learn the basics and more now so you have a good start later on.']
${Try_Lesson_Card_Btn}                     ph.mbtc.platform11.earnest.debug:id/btnTryLessonCard

${Do_you_want_to_Cancel?}                   //android.widget.TextView[@text = 'Do you want to cancel?']
${All_Information_That_you}                 //android.widget.TextView[@text = 'All the information that you entered and/or selected will be discarded.']
${Cancel_Yes_Button}                        ph.mbtc.platform11.earnest.debug:id/cancel_yes
${Cancel_No_Button}                         ph.mbtc.platform11.earnest.debug:id/cancel_no

#powershell.exe
#ph.mbtc.platform11.earnest.debug:id/btn_next_main
#//android.widget.RadioButton[@text = '']
*** Test Cases ***
Open_Application                         AppiumLibrary.Open Application             http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                10s

Answering Risk Assessment Happy Path
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
    AppiumLibrary.wait until page contains element              ${Click_ShowProfie_btn}
    AppiumLibrary.Click element                                 ${Click_ShowProfie_btn}
    AppiumLibrary.wait until page contains element              ${Personal_Info_Edit_Button}
#    AppiumLibrary.swipe by percent                             50     50     50      70
    AppiumLibrary.swipe                                         0     1300     100     100

#Risk Profile Section
    AppiumLibrary.Page should contain element                   ${Risk_Profile_Label}
    AppiumLibrary.element should be visible                     ${Take_Risk_Assessment_ID}
    AppiumLibrary.Click element                                 ${Take_Risk_Assessment_ID}
    AppiumLibrary.wait until page contains element              ${RiskAssessment_Header_Page1}
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_Page1}
    AppiumLibrary.Page should contain text                      ${CancelBtn_RA_Page1}                               Cancel
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_Page1}
    AppiumLibrary.Page should contain text                      ${Help_Tooltip_Page1}                               Help
    AppiumLibrary.Click element                                 ${Help_Tooltip_Page1}
    AppiumLibrary.wait until page contains element              ${Why_Are_You_Investing_tooltip}
    AppiumLibrary.Page should contain element                   ${Why_Are_You_Investing_tooltip}
    AppiumLibrary.Page should contain element                   ${Why_Are_You_Investing_Content}
    AppiumLibrary.element should be visible                     ${Help_tooltip_x_Icon}
    AppiumLibrary.Click element                                 ${Help_tooltip_x_Icon}
    AppiumLibrary.wait until page contains element              ${Option_one_RA_Page1}
    AppiumLibrary.Page should contain element                   ${Why_Are_You_Investing}
    AppiumLibrary.Page should contain element                   ${Choose_only_one_Label}
    AppiumLibrary.Page should contain element                   ${Option_one_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_one_RA_Page1}
    AppiumLibrary.Page should contain element                   ${Option_one_RAExplanation_Page1}
    AppiumLibrary.Page should contain element                   ${Option_two_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_two_RA_Page1}
    AppiumLibrary.Page should contain element                   ${Option_two_RAExplanation_Page1}
    AppiumLibrary.Page should contain element                   ${Option_three_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_three_RA_Page1}
    AppiumLibrary.Page should contain element                   ${Option_three_RAExplanation_Page1}
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Page should contain element                   ${Option_four_RA_Page1}
    AppiumLibrary.Click element                                 ${Option_four_RA_Page1}
    AppiumLibrary.Page should contain element                   ${Option_four_RAExplanation_Page1}
    AppiumLibrary.Page should contain text                      ${NextBtn_Page1}                                        Next
    AppiumLibrary.Click element                                 ${Option_two_RA_Page1}
    AppiumLibrary.Click element                                 ${NextBtn_Page1}

    AppiumLibrary.wait until page contains element              ${When_will_you_need_Money}
    AppiumLibrary.Page should contain text                      ${CancelBtn_RA_Page2}                                   Cancel
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_Page2}
    AppiumLibrary.Page should contain text                      ${Help_Tooltip_Page2}                                   Help
    AppiumLibrary.Click element                                 ${Help_Tooltip_Page2}
    AppiumLibrary.wait until page contains element              ${tooltip2_title}
    AppiumLibrary.Page should contain element                   ${tooltip2_title}
    AppiumLibrary.Page should contain element                   ${tooltip2_Content}
    AppiumLibrary.element should be visible                     ${Help_tooltip_x_Icon2}
    AppiumLibrary.Click element                                 ${Help_tooltip_x_Icon2}
    AppiumLibrary.wait until page contains element              ${Option_one_RA_Page2}
    AppiumLibrary.Page should contain element                   ${When_will_you_need_Money}
    AppiumLibrary.Page should contain element                   ${Choose_only_one_Label2}
    AppiumLibrary.Page should contain element                   ${Option_one_RA_Page2}
    AppiumLibrary.Page should contain element                   ${Option_two_RA_Page2}
    AppiumLibrary.Page should contain element                   ${Option_three_RA_Page2}
    AppiumLibrary.Page should contain element                   ${Option_four_RA_Page2}
    AppiumLibrary.Page should contain text                      ${Btn_Back_RA_page2}                                    Back
    AppiumLibrary.Page should contain text                      ${Btn_next_RA_Page2}                                    Next
    AppiumLibrary.Click element                                 ${Option_two_RA_Page2}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page2}

    AppiumLibrary.wait until page contains element              ${tooltip3_title}
    AppiumLibrary.Page should contain text                      ${CancelBtn_RA_Page3}                                   Cancel
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_Page3}
    AppiumLibrary.Page should contain text                      ${Help_Tooltip_Page3}                                   Help
    AppiumLibrary.Click element                                 ${Help_Tooltip_Page3}
    AppiumLibrary.wait until page contains element              ${tooltip3_title}
    AppiumLibrary.Page should contain element                   ${tooltip3_title}
    AppiumLibrary.Page should contain element                   ${tooltip3_Content}
    AppiumLibrary.element should be visible                     ${Help_tooltip_x_Icon3}
    AppiumLibrary.Click element                                 ${Help_tooltip_x_Icon3}
    AppiumLibrary.wait until page contains element              ${Option_one_RA_Page3}
    AppiumLibrary.Page should contain element                   ${How_mucn_risk_can_you_Stand}
    AppiumLibrary.Page should contain element                   ${Choose_only_one_Label3}
    AppiumLibrary.Page should contain element                   ${Option_one_RA_Page3}
    AppiumLibrary.Click element                                 ${Option_one_RA_Page3}
    AppiumLibrary.Page should contain element                   ${Option_one_RAExplanation_Page3}
    AppiumLibrary.Page should contain element                   ${Option_two_RA_Page3}
    AppiumLibrary.Click element                                 ${Option_two_RA_Page3}
    AppiumLibrary.Page should contain element                   ${Option_two_RAExplanation_Page3}
    AppiumLibrary.swipe                                         0     1200     100     100
    AppiumLibrary.Page should contain element                   ${Option_three_RA_Page3}
    AppiumLibrary.Click element                                 ${Option_three_RA_Page3}
    AppiumLibrary.Page should contain element                   ${Option_three_RAExplanation_Page3}
    AppiumLibrary.Page should contain element                   ${Option_four_RA_Page3}
    AppiumLibrary.Click element                                 ${Option_four_RA_Page3}
    AppiumLibrary.Page should contain element                   ${Option_four_RAExplanation_Page3}
    AppiumLibrary.Page should contain text                      ${Btn_Back_RA_page3}                                    Back
    AppiumLibrary.Page should contain text                      ${Btn_next_RA_Page3}                                    Next
    AppiumLibrary.swipe                                         100    700     100     2000    20000
    AppiumLibrary.Click element                                 ${Option_two_RA_Page3}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page3}

    AppiumLibrary.wait until page contains element              ${How_Long_Are_You_Planning}
    AppiumLibrary.Page should contain text                      ${CancelBtn_RA_Page4}                                   Cancel
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_Page4}
    AppiumLibrary.Page should contain text                      ${Help_Tooltip_Page4}                                   Help
    AppiumLibrary.Click element                                 ${Help_Tooltip_Page4}
    AppiumLibrary.wait until page contains element              ${tooltip4_title}
    AppiumLibrary.Page should contain element                   ${tooltip4_title}
    AppiumLibrary.Page should contain element                   ${tooltip4_Content}
    AppiumLibrary.element should be visible                     ${Help_tooltip_x_Icon4}
    AppiumLibrary.Click element                                 ${Help_tooltip_x_Icon4}
    AppiumLibrary.wait until page contains element              ${Option_one_RA_Page4}
    AppiumLibrary.Page should contain element                   ${How_Long_Are_You_Planning}
    AppiumLibrary.Page should contain element                   ${Choose_only_one_Label4}
    AppiumLibrary.Page should contain element                   ${Option_one_RA_Page4}
    AppiumLibrary.Page should contain element                   ${Option_two_RA_Page4}
    AppiumLibrary.Page should contain element                   ${Option_three_RA_Page4}
    AppiumLibrary.Page should contain element                   ${Option_four_RA_Page4}
    AppiumLibrary.Page should contain text                      ${Btn_Back_RA_page4}                                    Back
    AppiumLibrary.Page should contain text                      ${Btn_next_RA_Page4}                                    Next
    AppiumLibrary.Click element                                 ${Option_three_RA_Page4}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page4}

    AppiumLibrary.wait until page contains element              ${Which_of_these_Investment}
    AppiumLibrary.Page should contain text                      ${CancelBtn_RA_Page5}                                   Cancel
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_Page5}
    AppiumLibrary.Page should contain text                      ${Help_Tooltip_Page5}                                   Help
    AppiumLibrary.Click element                                 ${Help_Tooltip_Page5}
    AppiumLibrary.wait until page contains element              ${tooltip5_title}
    AppiumLibrary.Page should contain element                   ${tooltip5_title}
    AppiumLibrary.Page should contain element                   ${tooltip5_Content}
    AppiumLibrary.element should be visible                     ${Help_tooltip_x_Icon5}
    AppiumLibrary.Click element                                 ${Help_tooltip_x_Icon5}
    AppiumLibrary.wait until page contains element              ${Option_one_RA_Page5}
    AppiumLibrary.Page should contain element                   ${Which_of_these_Investment}
    AppiumLibrary.Page should contain element                   ${Choose_all_that_apply_Label5}
    AppiumLibrary.Page should contain element                   ${Option_one_RA_Page5}
    AppiumLibrary.Page should contain element                   ${Option_two_RA_Page5}
    AppiumLibrary.Page should contain element                   ${Option_three_RA_Page5}
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Page should contain element                   ${Option_four_RA_Page5}
    AppiumLibrary.Page should contain text                      ${Btn_Back_RA_page5}                                    Back
    AppiumLibrary.Page should contain text                      ${Btn_next_RA_Page5}                                    Next
    AppiumLibrary.Click element                                 ${Option_one_RA_Page5}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page5}

    AppiumLibrary.wait until page contains element              ${Which_of_these_Have_You_Tried}
    AppiumLibrary.Page should contain text                      ${CancelBtn_RA_Page6}                                   Cancel
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_Page6}
    AppiumLibrary.Page should contain text                      ${Help_Tooltip_Page6}                                   Help
    AppiumLibrary.Click element                                 ${Help_Tooltip_Page6}
    AppiumLibrary.wait until page contains element              ${tooltip6_title}
    AppiumLibrary.Page should contain element                   ${tooltip6_title}
    AppiumLibrary.Page should contain element                   ${tooltip6_Content}
    AppiumLibrary.element should be visible                     ${Help_tooltip_x_Icon6}
    AppiumLibrary.Click element                                 ${Help_tooltip_x_Icon6}
    AppiumLibrary.wait until page contains element              ${Option_one_RA_Page6}
    AppiumLibrary.Page should contain element                   ${Which_of_these_Have_You_Tried}
    AppiumLibrary.Page should contain element                   ${Choose_all_that_apply_Label6}
    AppiumLibrary.Page should contain element                   ${Option_one_RA_Page6}
    AppiumLibrary.Page should contain element                   ${Option_two_RA_Page6}
    AppiumLibrary.Page should contain element                   ${Option_three_RA_Page6}
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Page should contain element                   ${Option_four_RA_Page6}
    AppiumLibrary.Page should contain text                      ${Btn_Back_RA_page6}                                    Back
    AppiumLibrary.Page should contain text                      ${Btn_next_RA_Page6}                                    Next
    AppiumLibrary.Click element                                 ${Option_one_RA_Page6}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page6}

    AppiumLibrary.wait until page contains element              ${What_Types_of_Investment_Interested}
    AppiumLibrary.Page should contain text                      ${CancelBtn_RA_Page7}                                   Cancel
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_Page7}
    AppiumLibrary.Page should contain text                      ${Help_Tooltip_Page7}                                   Help
    AppiumLibrary.Click element                                 ${Help_Tooltip_Page7}
    AppiumLibrary.wait until page contains element              ${tooltip7_title}
    AppiumLibrary.Page should contain element                   ${tooltip7_title}
    AppiumLibrary.Page should contain element                   ${tooltip7_Content}
    AppiumLibrary.element should be visible                     ${Help_tooltip_x_Icon7}
    AppiumLibrary.Click element                                 ${Help_tooltip_x_Icon7}
    AppiumLibrary.wait until page contains element              ${Option_one_RA_Page7}
    AppiumLibrary.Page should contain element                   ${What_Types_of_Investment_Interested}
    AppiumLibrary.Page should contain element                   ${Choose_all_that_apply_Label7}
    AppiumLibrary.Page should contain element                   ${Option_one_RA_Page7}
    AppiumLibrary.Page should contain element                   ${Option_two_RA_Page7}
    AppiumLibrary.Page should contain element                   ${Option_three_RA_Page7}
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Page should contain element                   ${Option_four_RA_Page7}
    AppiumLibrary.Page should contain text                      ${Btn_Back_RA_page7}                                    Back
    AppiumLibrary.Page should contain text                      ${Btn_next_RA_Page7}                                    Next
    AppiumLibrary.Click element                                 ${Option_one_RA_Page7}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page7}

    AppiumLibrary.wait until page contains element              ${Progress_Bar_Page8}
    AppiumLibrary.Page should contain text                      ${CancelBtn_RA_Page8}                                   Cancel
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_Page8}
    AppiumLibrary.element should be visible                     ${Progress_Bar_Page8}
#    AppiumLibrary.Page should contain element                   ${Trustor_Principal_title}      FAILED
#    AppiumLibrary.Page should contain element                   ${Trustor_Principal_title1}     FAILED
    AppiumLibrary.Page should contain element                   ${Trustor_Principal_Content}
    AppiumLibrary.element should be visible                     ${Acknowledgement_Validity_ID}
    AppiumLibrary.Page should contain element                   ${Acknowledgement_Validity_Label}
    AppiumLibrary.Page should contain element                   ${I_Have_read_And_understand}
    AppiumLibrary.Page should contain text                      ${Btn_Back_RA_page8}                                    Back
    AppiumLibrary.Page should contain text                      ${Btn_next_RA_Page8}                                    Next
    AppiumLibrary.Click element                                 ${Btn_Accept_Acknowledgement}
    AppiumLibrary.Click element                                 ${Btn_Accept_Acknowledgement}
    AppiumLibrary.Click element                                 ${Btn_Accept_Acknowledgement}
    AppiumLibrary.Click element                                 ${Btn_next_RA_Page8}

    AppiumLibrary.wait until page contains element              ${Review_Label}
    AppiumLibrary.Page should contain element                   ${RiskAssessment_Header_ReviewPage}
    AppiumLibrary.Page should contain element                   ${Review_Label}
    AppiumLibrary.Page should contain element                   ${Please_Make_Sure_That_Label}
    AppiumLibrary.Page should contain element                   ${Question1_Label}
    AppiumLibrary.element should be visible                     ${Question1_EditBtn}
    AppiumLibrary.swipe by percent                              50     50     50      70     2000
    AppiumLibrary.swipe                                         0     2000     100     100
    AppiumLibrary.element should be visible                     ${Btn_Submit_ReviewPage}
    AppiumLibrary.Click element                                 ${Btn_Submit_ReviewPage}

    AppiumLibrary.wait until page contains element              ${Your_Risk_Profile_Header}
    AppiumLibrary.Page should contain element                   ${Your_Risk_Profile_Header}
    AppiumLibrary.element should be visible                     ${Your_Risk_Profile_Img}
    ${Get_Risk_Profile_Result}                                  AppiumLibrary.Get Text                                  ${Your_Risk_Profile_Result}
    AppiumLibrary.Page should contain text                      ${Get_Risk_Profile_Result}
    AppiumLibrary.Page should contain element                   ${Youre_the_type_of_person_who}
    ${Get_Text_TypeOne}                                         AppiumLibrary.Get Text                                  ${Type_one}
    AppiumLibrary.Page should contain text                      ${Get_Text_TypeOne}
    ${Get_Text_TypeTwo}                                         AppiumLibrary.Get Text                                  ${Type_two}
    AppiumLibrary.Page should contain text                      ${Get_Text_TypeTwo}
    AppiumLibrary.swipe                                         0     2000     100     100
    ${Get_Text_TypeThree}                                       AppiumLibrary.Get Text                                  ${Type_three}
    AppiumLibrary.Page should contain text                      ${Get_Text_TypeThree}
    ${Get_Text_Typefour}                                        AppiumLibrary.Get Text                                  ${Type_four}
    AppiumLibrary.Page should contain text                      ${Get_Text_Typefour}
    AppiumLibrary.Page should contain element                   ${In_Earnest_Label}
    ${Get_Finance_Call}                                         AppiumLibrary.Get Text                                  ${Finance_Call}
    AppiumLibrary.Page should contain text                      ${Get_Finance_Call}
    AppiumLibrary.element should be visible                     ${Btn_okay_lastPage}
    AppiumLibrary.Click element                                 ${Btn_okay_lastPage}
    AppiumLibrary.wait until page contains element              ${Click_ShowProfile_btn}

Taking Risk Averse
     AppiumLibrary.Click element                                 ${Click_ShowProfie_btn}
     AppiumLibrary.wait until page contains element              ${Personal_Info_Edit_Button}
#    AppiumLibrary.swipe by percent                              50     50     50      70
     AppiumLibrary.swipe                                         0     1300     100     100
     AppiumLibrary.Click element                                 ${RA_UpdateBtn}
     AppiumLibrary.wait until page contains element              ${Your_Risk_Profile_Header}
     AppiumLibrary.Click element                                 ${Update_RiskProfile_Btn}
     AppiumLibrary.wait until page contains element              ${Update_RiskProfile_Label}
     AppiumLibrary.Click element                                 ${Update_RiskProfile_ContinueBtn}
     AppiumLibrary.wait until page contains element              ${Why_Are_You_Investing}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page1}
     AppiumLibrary.Click element                                 ${NextBtn_Page1}
     AppiumLibrary.wait until page contains element              ${When_will_you_need_Money}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page2}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page2}
     AppiumLibrary.wait until page contains element              ${How_mucn_risk_can_you_Stand}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page3}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page3}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page4}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page4}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page4}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page5}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page5}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page5}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page6}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page6}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page6}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page7}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page7}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page7}
     AppiumLibrary.wait until page contains element              ${Progress_Bar_Page8}
     AppiumLibrary.Click element                                 ${Btn_Accept_Acknowledgement}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page8}
     AppiumLibrary.wait until page contains element              ${Review_Label}
     AppiumLibrary.Click element                                 ${Btn_Submit_ReviewPage}
     AppiumLibrary.wait until page contains element              ${Your_Risk_Profile_Header}
#     ${Get_Risk_Profile_Result}                                  AppiumLibrary.Get Text                                  ${Your_Risk_Profile_Result}
#     AppiumLibrary.Page should contain text                      ${Get_Risk_Profile_Result}
#     AppiumLibrary.Click element                                 ${Btn_okay_lastPage}
#     AppiumLibrary.wait until page contains element             ${Risk_Profile_Label}
     AppiumLibrary.wait until page contains element              ${Retake_RiskAssessment_Btn}
     AppiumLibrary.Page should contain element                   ${Risk_Averse_Result}
     AppiumLibrary.Page should contain element                   ${Being_Risk_Averse_Label}
     AppiumLibrary.element should be visible                     ${Retake_RiskAssessment_Btn}
     AppiumLibrary.swipe                                         0     1000     100     100
     AppiumLibrary.element should be visible                     ${Learn_img}
     AppiumLibrary.Page should contain element                   ${Not_Ready_To_Begin_Label}
     AppiumLibrary.Page should contain element                   ${You_Can_Learn_Label}
     AppiumLibrary.element should be visible                     ${Try_Lesson_Card_Btn}
     AppiumLibrary.Click element                                 ${Retake_RiskAssessment_Btn}
     AppiumLibrary.wait until page contains element              ${Why_Are_You_Investing}
     AppiumLibrary.Click element                                 ${Option_two_RA_Page1}
     AppiumLibrary.Click element                                 ${NextBtn_Page1}
     AppiumLibrary.wait until page contains element              ${When_will_you_need_Money}
     AppiumLibrary.Click element                                 ${Option_two_RA_Page2}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page2}
     AppiumLibrary.wait until page contains element              ${How_mucn_risk_can_you_Stand}
     AppiumLibrary.Click element                                 ${Option_two_RA_Page3}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page3}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page4}
     AppiumLibrary.Click element                                 ${Option_two_RA_Page4}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page4}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page5}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page5}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page5}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page6}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page6}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page6}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page7}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page7}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page7}
     AppiumLibrary.wait until page contains element              ${Progress_Bar_Page8}
     AppiumLibrary.Click element                                 ${Btn_Accept_Acknowledgement}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page8}
     AppiumLibrary.wait until page contains element              ${Review_Label}
     AppiumLibrary.Click element                                 ${Btn_Submit_ReviewPage}
     AppiumLibrary.wait until page contains element              ${Your_Risk_Profile_Header}
     ${Get_Risk_Profile_Result}                                  AppiumLibrary.Get Text                                  ${Your_Risk_Profile_Result}
     AppiumLibrary.Page should contain text                      ${Get_Risk_Profile_Result}
     AppiumLibrary.Click element                                 ${Btn_okay_lastPage}
     AppiumLibrary.wait until page contains element              ${Risk_Profile_Label}

Cancel and Back Button Validation
     AppiumLibrary.Click element                                 ${RA_UpdateBtn}
     AppiumLibrary.wait until page contains element              ${Your_Risk_Profile_Header}
     AppiumLibrary.Click element                                 ${Update_RiskProfile_Btn}
     AppiumLibrary.wait until page contains element              ${Update_RiskProfile_Label}
     AppiumLibrary.Click element                                 ${Update_RiskProfile_ContinueBtn}
     AppiumLibrary.wait until page contains element              ${Why_Are_You_Investing}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page1}
     AppiumLibrary.Click element                                 ${NextBtn_Page1}
     AppiumLibrary.wait until page contains element              ${When_will_you_need_Money}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page2}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page2}
     AppiumLibrary.wait until page contains element              ${How_mucn_risk_can_you_Stand}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page3}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page3}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page4}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page4}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page4}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page5}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page5}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page5}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page6}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page6}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page6}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page7}
     AppiumLibrary.Click element                                 ${Option_one_RA_Page7}
     AppiumLibrary.Click element                                 ${Btn_next_RA_Page7}
     AppiumLibrary.wait until page contains element              ${Progress_Bar_Page8}
     AppiumLibrary.Click element                                 ${Btn_Back_RA_page8}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page7}
     AppiumLibrary.Click element                                 ${Btn_Back_RA_page7}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page6}
     AppiumLibrary.Click element                                 ${Btn_Back_RA_page6}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page5}
     AppiumLibrary.Click element                                 ${Btn_Back_RA_page5}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page4}
     AppiumLibrary.Click element                                 ${Btn_Back_RA_page4}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page3}
     AppiumLibrary.Click element                                 ${Btn_Back_RA_page3}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page2}
     AppiumLibrary.Click element                                 ${Btn_Back_RA_page2}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page1}
     AppiumLibrary.Click element                                 ${CancelBtn_RA_Page1}
     AppiumLibrary.wait until page contains element              ${Do_you_want_to_Cancel?}
     AppiumLibrary.Page should contain element                   ${Do_you_want_to_Cancel?}
     AppiumLibrary.Page should contain element                   ${All_Information_That_you}
     AppiumLibrary.Page should contain text                      ${Cancel_Yes_Button}                                    Yes
     AppiumLibrary.Page should contain text                      ${Cancel_No_Button}                                     No
     AppiumLibrary.Click element                                 ${Cancel_No_Button}
     AppiumLibrary.wait until page contains element              ${Help_Tooltip_Page1}
     AppiumLibrary.Click element                                 ${CancelBtn_RA_Page1}
     AppiumLibrary.wait until page contains element              ${Do_you_want_to_Cancel?}
     AppiumLibrary.Click element                                 ${Cancel_Yes_Button}
     AppiumLibrary.wait until page contains element              ${Risk_Profile_Label}


