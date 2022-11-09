
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
${Valid_UserEmailAddress}                       aut_sit003@getnada.com
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

${My_Accounts_Button_MoreTab}                   ph.mbtc.platform11.earnest.debug:id/myAccountsButton
${My_Accounts_Label_MoreTab}                    //android.widget.TextView[@text = 'My Accounts']
${Back_Btn_My_Accounts}                         ph.mbtc.platform11.earnest.debug:id/btn_back
${My_Accounts_Header}                           //android.widget.TextView[@text = 'My Accounts']
${Link_Account_Img_Illustration}                //android.widget.ImageView
${Do_you_have_Metrobanl_Acc}                    //android.widget.TextView[@text = 'Do you have a Metrobank account?']
${Link_it_so_you_start_label}                   //android.widget.TextView[@text = 'Link it so you can start investing on Earnest.']
${Take_risk_assessment_id}                      ph.mbtc.platform11.earnest.debug:id/txtTakeRiskAssessment
${Link_Account_Button}                          ph.mbtc.platform11.earnest.debug:id/btnLinkAccountNow
${Link_Account_banner}                          //android.widget.TextView[@text = 'Link your account or open a Metrobank Savings Account to complete the task.']
${Link_Account_banner_tooltip}                  ph.mbtc.platform11.earnest.debug:id/milestone_tooltip
${Tooltip_title}                                ph.mbtc.platform11.earnest.debug:id/txt_tooltip_title
${Tooltip_Message}                              ph.mbtc.platform11.earnest.debug:id/txt_tooltip_message
${Tooltip_Close_Button}                         ph.mbtc.platform11.earnest.debug:id/btnClose

${Ekyc_Header_label}                            //android.widget.TextView[@text = 'Open a Metrobank account for investing']
${EKyc_Img_Illustration}                        //android.widget.ImageView
${You_need_a_Metrobank_Label}                   //android.widget.TextView[@text = 'You need a Metrobank account to invest through Earnest.']
${Ekyc_Content_Subtitle}                        //android.widget.TextView[@text = "If you don’t have one, you can open a Metrobank Savings Account in just a few minutes through this app."]
${Open_Metrobank_SA_Button}                     ph.mbtc.platform11.earnest.debug:id/btnOpenDigitalAccount

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

${Link_Account_Header}                        //android.widget.TextView[@text = 'Link Account']

#Invalid Account number
${Account_Number_Input_Box}                  ph.mbtc.platform11.earnest.debug:id/input
${Invalid_Account_Number}                    0001118886545
${Incorrect_Account_Number}                  7263726
${Btn_Next_Linke_Acc}                        ph.mbtc.platform11.earnest.debug:id/btn_link_account
${Close_btn_Error_Page}                      ph.mbtc.platform11.earnest.debug:id/btn_back
${Invalid_Acc_Img_Illustration}              //android.widget.ImageView
${Something_Went_Wrong_Error_id}             ph.mbtc.platform11.earnest.debug:id/account_error_title
${You_May_Have_try_Label}                    //android.widget.TextView[@text = 'You may have tried to link an account that Earnest can't service yet. These are the account types that can’t be used on Earnest:']
${Joint_Accounts}                            //android.widget.TextView[@text = 'Joint accounts']
${ITF_Accounts}                             //android.widget.TextView[@text = 'ITF accounts']
${Dollar_Accounts}                          //android.widget.TextView[@text = 'Dollar accounts']
${Frozen_Accounts}                          //android.widget.TextView[@text = 'Frozen accounts']
${Inactive_Dormant_Acc}                     //android.widget.TextView[@text = 'Inactive/dormant account']
${Link_Another_Acc_Btn}                     ph.mbtc.platform11.earnest.debug:id/btn_link_another

${Incorrect_Account_Number_Error}           //android.widget.TextView[@text = 'Please provide your 13-digit Metrobank account number.']

${Cancel_Account_linking}                   ph.mbtc.platform11.earnest.debug:id/connect_account_cancel
${Do_you_want_to_Cancel?}                   //android.widget.TextView[@text = 'Do you want to cancel?']
${All_Information_That_you}                 //android.widget.TextView[@text = 'All the information that you entered and/or selected will be discarded.']
${Cancel_Yes_Button}                        ph.mbtc.platform11.earnest.debug:id/cancel_yes
${Cancel_No_Button}                         ph.mbtc.platform11.earnest.debug:id/cancel_no




