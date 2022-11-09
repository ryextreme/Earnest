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
${Valid_UserEmailAddress}                       ryextreme0026@getnada.com
${Valid_UserPassword}                           Testing*123
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

${Security_Button}                              ph.mbtc.platform11.earnest.debug:id/securityButton
${Security_Label}                               //android.widget.TextView[@text = 'Security']
${BackBtn_Security_page}                        ph.mbtc.platform11.earnest.debug:id/btn_back
${Security_Header_Security_page}                //android.widget.TextView[@text = 'Security']
${Security_Icon}                                ph.mbtc.platform11.earnest.debug:id/icon
${Change_Password_Label}                        //android.widget.TextView[@text = 'Change Password']
${Txt_lastUpdate_Password}                      ph.mbtc.platform11.earnest.debug:id/txtLastPasswordUpdate
${Button_Change_password}                       ph.mbtc.platform11.earnest.debug:id/btn_change_pw
${CancelBtn_Security_page}                      ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Change_Password_Header}                       //android.widget.TextView[@text = 'Change Password']
${Check_Your_Email_Label}                       //android.widget.TextView[@text = 'Check Your Email']
${Change_password_Icon}                         //android.widget.ImageView
${Enter_The_6Digit_Code}                        //android.widget.TextView[@text = 'Enter the 6-digit code we sent to']
${Email_address_Placeholder}                    ph.mbtc.platform11.earnest.debug:id/txt_email_address
${OTP_Container_ChangePassword}                 ph.mbtc.platform11.earnest.debug:id/otp_container
${OTP_Timer_ChangePassword}                     ph.mbtc.platform11.earnest.debug:id/otp_timer
${BtnBack_ChangePassword_Page}                  ph.mbtc.platform11.earnest.debug:id/btn_back
${BtnSubmit_ChangePassword_Page}                ph.mbtc.platform11.earnest.debug:id/btn_submit

${Cancel_btn_ChangePassword_page2}              ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Change_Password_Header_Page2}                 //android.widget.TextView[@text = 'Change Password']
${Update_Your_Password_Label}                   //android.widget.TextView[@text = 'Update Your Password']
${Enter_Your_Current_Password}                  //android.widget.TextView[@text = 'Enter your current password to continue.']
${Current_password_Label}                       //android.widget.TextView[@text = 'Current Password']
${Current_Password_TextField}                   //android.widget.LinearLayout[1]/android.widget.RelativeLayout//android.widget.EditText
${Current_Password_ShowBtn}                     //android.widget.LinearLayout[1]/android.widget.RelativeLayout//android.widget.TextView[2]
${New_password_Label}                           //android.widget.TextView[@text = 'New Password']
${New_Password_TextField}                       //android.widget.LinearLayout[2]//android.widget.EditText
${New_Password_ShowBtn}                         //android.widget.LinearLayout[2]//android.widget.TextView[2]
${8+_Label}                                     //android.widget.TextView[@text = '8+']
${Characters_Label}                             //android.widget.TextView[@text = 'Characters']
${Password_Criteria_A}                          //android.widget.TextView[@text = 'A']
${Password_Criteria_Uppercase}                  //android.widget.TextView[@text = 'Uppercase']
${Password_Criteria_a}                          //android.widget.TextView[@text = 'a']
${Password_Criteria_Lowercase}                  //android.widget.TextView[@text = 'Lowercase']
${Password_Criteria_1}                          //android.widget.TextView[@text = '1']
${Password_Criteria_Numbers}                    //android.widget.TextView[@text = 'Numbers']
${Password_Criteria_@}                          //android.widget.TextView[@text = '@']
${Password_Criteria_SpecialCharacter}           //android.widget.TextView[@text = 'Special Character']
${Btn_Continue_ChangePasswordPage}              ph.mbtc.platform11.earnest.debug:id/btn_continue

${Retype_New_Password_Label}                    //android.widget.TextView[@text = 'Retype New Password']
${Retype_New_Password_TextField}                //android.widget.LinearLayout[3]//android.widget.EditText
${Retype_New_Password_ShowBtn}                  //android.widget.LinearLayout[3]//android.widget.TextView[2]

${CurrentPass_User_Input}                       Testing*123
${NewPass_User_Input}                           Testing*1234
${RetypeNewPass_User_Input}                     Testing*1234

${Success_Image}                                //android.widget.ImageView
${Success_label}                                //android.widget.TextView[@text = 'Success!']
${Your_password_was_updated}                    //android.widget.TextView[@text = 'Your password was updated.']
${Well_Logout_You_out_label}                    //android.widget.TextView[@text = "We'll log you out now. Please log in again with your new password."]
${BtnOk_ChangePassword}                         ph.mbtc.platform11.earnest.debug:id/btn_ok

${Otp_Incorrect}                                4545445
${Otp_Incorrect2}                               488787
${Otp_Error_Message}                            //android.widget.TextView[@text = 'The code you entered is incorrect.']
${Current_Password_ErrorMessage}                //android.widget.TextView[@text = 'Your password is incorrect.']
${Password_NotMatch_ErrorMessage}               //android.widget.TextView[@text = "The passwords don't match."]
${Uppercase_Error_Message}                      test*12345
${Lowercase_Error_Message}                      TEST*12345
${SpecialChar_Error_Message}                    Test123455
${Number_Error_Message}                         Test&&$$jasd

${Password_Not_Allowed_Img}                     //android.widget.ImageView
${Password_Not_Allowed_Label}                   //android.widget.TextView[@text = 'Password not allowed']
${You_Cant_Use_Label}                           //android.widget.TextView[@text = "You can’t use any of your past 6 passwords."]
${Spaces_Not_Allowed_Label}                     //android.widget.TextView[@text = 'Please remove any spaces in your password.']
${Password_Not_Allowed_OKBtn}                   ph.mbtc.platform11.earnest.debug:id/okButton

${Cancel_Overlay_Icon}                          //android.widget.ImageView
${Cancel_Overlay_Do_YouwantToCancel}            //android.widget.TextView[@text = 'Do you want to cancel?']
${Cancel_Overlay_Do_AllTheInformation}          //android.widget.TextView[@text = 'All the information that you entered and/or selected will be discarded.']
${Cancel_Yes_Button}                            ph.mbtc.platform11.earnest.debug:id/cancel_yes
${Cancel_No_Button}                             ph.mbtc.platform11.earnest.debug:id/cancel_no

*** Test Cases ***
Open_Application                                AppiumLibrary.Open Application                              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                       10s

Change Password Happy Path
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
#Navigate to Security Page
#    AppiumLibrary.element should be visible                     ${Security_Button}
    AppiumLibrary.Page should contain element                   ${Security_Label}
    AppiumLibrary.Click element                                 ${Security_Button}
    AppiumLibrary.wait until page contains element              ${Security_Header_Security_page}
    AppiumLibrary.Page should contain text                      ${BackBtn_Security_page}                                Back
    AppiumLibrary.Page should contain element                   ${Security_Header_Security_page}
    AppiumLibrary.element should be visible                     ${Security_Icon}
    AppiumLibrary.Page should contain element                   ${Change_Password_Label}
    ${Get_Password_Last_Updated}                                AppiumLibrary.Get text                                  ${Txt_lastUpdate_Password}
    AppiumLibrary.Page should contain text                      ${Get_Password_Last_Updated}
    AppiumLibrary.Click element                                 ${Button_Change_password}
    AppiumLibrary.wait until page contains element              ${Change_Password_Header}
    AppiumLibrary.Page should contain text                      ${CancelBtn_Security_page}                               Cancel
    AppiumLibrary.Page should contain element                   ${Change_Password_Header}
    AppiumLibrary.Page should contain element                   ${Check_Your_Email_Label}
    AppiumLibrary.element should be visible                     ${Change_password_Icon}
    AppiumLibrary.Page should contain element                   ${Enter_The_6Digit_Code}
    ${Get_User_InputEmailAddress}                               AppiumLibrary.Get text                                  ${Email_address_Placeholder}
    AppiumLibrary.Page should contain text                      ${Get_User_InputEmailAddress}
    AppiumLibrary.element should be visible                     ${OTP_Container_ChangePassword}
    AppiumLibrary.element should be visible                     ${OTP_Timer_ChangePassword}
#    ${Get_Otp_timer}                                           AppiumLibrary.Get text                                  ${OTP_Timer_ChangePassword}
#    AppiumLibrary.Page should contain text                     ${Get_Otp_timer}
    AppiumLibrary.Page should contain text                      ${BtnBack_ChangePassword_Page}                          Back
    AppiumLibrary.element should be disabled                    ${BtnSubmit_ChangePassword_Page}
    AppiumLibrary.Page should contain text                      ${BtnSubmit_ChangePassword_Page}                        Submit
    Sleep                                                       30s
    AppiumLibrary.Click element                                 ${BtnSubmit_ChangePassword_Page}
    AppiumLibrary.wait until page contains element              ${Change_Password_Header_Page2}
    AppiumLibrary.Page should contain text                      ${Cancel_btn_ChangePassword_page2}                      Cancel
    AppiumLibrary.Page should contain element                   ${Change_Password_Header_Page2}
    AppiumLibrary.Page should contain element                   ${Update_Your_Password_Label}
    AppiumLibrary.Page should contain element                   ${Enter_Your_Current_Password}
    AppiumLibrary.Page should contain element                   ${Current_password_Label}
    AppiumLibrary.element should be visible                     ${Current_Password_TextField}
    AppiumLibrary.element should be visible                     ${Current_Password_ShowBtn}
    AppiumLibrary.Page should contain element                   ${New_password_Label}
    AppiumLibrary.element should be visible                     ${New_Password_TextField}
    AppiumLibrary.element should be visible                     ${New_Password_ShowBtn}
    AppiumLibrary.Page should contain element                   ${8+_Label}
    AppiumLibrary.Page should contain element                   ${Characters_Label}
    AppiumLibrary.Page should contain element                   ${Password_Criteria_A}
    AppiumLibrary.Page should contain element                   ${Password_Criteria_Uppercase}
    AppiumLibrary.Page should contain element                   ${Password_Criteria_a}
    AppiumLibrary.Page should contain element                   ${Password_Criteria_Lowercase}
    AppiumLibrary.Page should contain element                   ${Password_Criteria_1}
    AppiumLibrary.Page should contain element                   ${Password_Criteria_Numbers}
    AppiumLibrary.Page should contain element                   ${Password_Criteria_@}
    AppiumLibrary.Page should contain element                   ${Password_Criteria_SpecialCharacter}
    AppiumLibrary.Page should contain element                   ${Retype_New_Password_Label}
    AppiumLibrary.element should be visible                     ${Retype_New_Password_TextField}
    AppiumLibrary.element should be visible                     ${Retype_New_Password_ShowBtn}
    AppiumLibrary.element should be disabled                    ${Btn_Continue_ChangePasswordPage}
    AppiumLibrary.Page should contain text                      ${Btn_Continue_ChangePasswordPage}                      Continue
    AppiumLibrary.Input text                                    ${Current_Password_TextField}                           ${CurrentPass_User_Input}
    AppiumLibrary.Click element                                 ${Current_Password_ShowBtn}
    AppiumLibrary.Input text                                    ${New_Password_TextField}                               ${NewPass_User_Input}
    AppiumLibrary.Click element                                 ${New_Password_ShowBtn}
    AppiumLibrary.Input text                                    ${Retype_New_Password_TextField}                        ${RetypeNewPass_User_Input}
    AppiumLibrary.Click element                                 ${Retype_New_Password_ShowBtn}
    AppiumLibrary.Click element                                 ${Btn_Continue_ChangePasswordPage}
    AppiumLibrary.wait until page contains element              ${Success_label}
    AppiumLibrary.element should be visible                     ${Success_Image}
    AppiumLibrary.Page should contain element                   ${Success_label}
    AppiumLibrary.Page should contain element                   ${Your_password_was_updated}
    AppiumLibrary.Page should contain element                   ${Well_Logout_You_out_label}
    AppiumLibrary.Page should contain text                      ${BtnOk_ChangePassword}                                 OK
    AppiumLibrary.Click element                                 ${BtnOk_ChangePassword}
    AppiumLibrary.wait until page contains element              ${EmailField_LoginPage}
    Sleep                                                       5s
    AppiumLibrary.Input text                                    ${PassField_LoginPage}                                  ${NewPass_User_Input}
    AppiumLibrary.Click element                                 ${LoginBtn_LoginPage}
    Sleep                                                       5s
    AppiumLibrary.wait until page contains element              ${Mbtc_welcome_layout}
    AppiumLibrary.Click element                                 ${Mbtc_welcome_layout}
    AppiumLibrary.CLick element                                 ${More_kebab_menuBtn}                                                                #Click More Kebab Menu
    AppiumLibrary.wait until page contains element              ${Security_Label}
    AppiumLibrary.Click element                                 ${Security_Button}
    AppiumLibrary.Click element                                 ${Button_Change_password}
    AppiumLibrary.Click element                                 ${BackBtn_Security_page}
    AppiumLibrary.Page should contain element                   ${Security_Label}
    AppiumLibrary.swipe by percent                              50     50     50      70     2000
    AppiumLibrary.swipe                                         0     2000     100     100
    AppiumLibrary.Click element                                 ${Logout_Button}                                                                   #Click Logout Button
    AppiumLibrary.wait until page contains element              ${Yes_Button}
    AppiumLibrary.Click element                                 ${Yes_Button}
OTP Error Validation
    AppiumLibrary.wait until page contains element              ${Btn_Option_LoginPage}
    AppiumLibrary.Click element                                 ${Btn_Option_LoginPage}
    AppiumLibrary.Click element                                 ${ChangeAcount_Button}
    AppiumLibrary.Input text                                    ${EmailField_LoginPage}                                 ryextreme0022@getnada.com
    AppiumLibrary.Input text                                    ${PassField_LoginPage}                                  Test*123
    AppiumLibrary.Click element                                 ${LoginBtn_LoginPage}
    Sleep                                                       30s
    AppiumLibrary.Click element                                 ${BtnSubmit_OtpPage}
    Sleep                                                       10s
    AppiumLibrary.wait until page contains element              ${More_kebab_menuBtn}
    AppiumLibrary.Click element                                 ${More_kebab_menuBtn}
    Sleep                                                       5s
    AppiumLibrary.Page should contain element                   ${Security_Label}
    AppiumLibrary.Click element                                 ${Security_Button}
    AppiumLibrary.wait until page contains element              ${Security_Header_Security_page}
    AppiumLibrary.Click element                                 ${Button_Change_password}
    AppiumLibrary.wait until page contains element              ${Enter_The_6Digit_Code}
    AppiumLibrary.Input text                                    ${OTP_Container_ChangePassword}                         ${Otp_Incorrect}
    AppiumLibrary.Click element                                 ${BtnSubmit_ChangePassword_Page}
    AppiumLibrary.wait until page contains element              ${Otp_Error_Message}
    AppiumLibrary.Page should contain element                   ${Otp_Error_Message}
    AppiumLibrary.clear text                                    ${OTP_Container_ChangePassword}
    AppiumLibrary.Input text                                    ${OTP_Container_ChangePassword}                         ${Otp_Incorrect2}
    AppiumLibrary.Click element                                 ${BtnSubmit_ChangePassword_Page}
    AppiumLibrary.wait until page contains element              ${Otp_Error_Message}
    AppiumLibrary.Page should contain element                   ${Otp_Error_Message}
    AppiumLibrary.clear text                                    ${OTP_Container_ChangePassword}
    Sleep                                                       20s
    AppiumLibrary.Click element                                 ${BtnSubmit_ChangePassword_Page}

Password Error Message Validation
    AppiumLibrary.wait until page contains element              ${Update_Your_Password_Label}
    AppiumLibrary.Input text                                    ${Current_Password_TextField}                           Test*2637263
    AppiumLibrary.Input text                                    ${New_Password_TextField}                               P@ssw0rd!!
    AppiumLibrary.Input text                                    ${Retype_New_Password_TextField}                        P@ssw0rd!!
    AppiumLibrary.Click element                                 ${Btn_Continue_ChangePasswordPage}
    AppiumLibrary.Page should contain element                   ${Current_Password_ErrorMessage}
    AppiumLibrary.clear text                                    ${Current_Password_TextField}
    AppiumLibrary.Input text                                    ${Current_Password_TextField}                           P@ssw0rd!!
    AppiumLibrary.clear text                                    ${Retype_New_Password_TextField}
    AppiumLibrary.Input text                                    ${Retype_New_Password_TextField}                        P@ssw0rd!
    AppiumLibrary.Click element                                 ${Btn_Continue_ChangePasswordPage}
    AppiumLibrary.wait until page contains element              ${Password_NotMatch_ErrorMessage}
    AppiumLibrary.Page should contain element                   ${Password_NotMatch_ErrorMessage}
    AppiumLibrary.clear text                                    ${New_Password_TextField}
    AppiumLibrary.clear text                                    ${Retype_New_Password_TextField}
    AppiumLibrary.Input text                                    ${New_Password_TextField}                               ${Uppercase_Error_Message}
    AppiumLibrary.Input text                                    ${Retype_New_Password_TextField}                        P@ssw0rd!
    AppiumLibrary.Click element                                 ${New_Password_ShowBtn}

    AppiumLibrary.clear text                                    ${New_Password_TextField}
    AppiumLibrary.Input text                                    ${New_Password_TextField}                               ${Lowercase_Error_Message}
    AppiumLibrary.Click element                                 ${New_Password_ShowBtn}

    AppiumLibrary.clear text                                    ${New_Password_TextField}
    AppiumLibrary.Input text                                    ${New_Password_TextField}                               ${SpecialChar_Error_Message}
    AppiumLibrary.Click element                                 ${New_Password_ShowBtn}

    AppiumLibrary.clear text                                    ${New_Password_TextField}
    AppiumLibrary.Input text                                    ${New_Password_TextField}                               ${Number_Error_Message}
    AppiumLibrary.Click element                                 ${New_Password_ShowBtn}

    AppiumLibrary.clear text                                    ${Current_Password_TextField}
    AppiumLibrary.clear text                                    ${New_Password_TextField}
    AppiumLibrary.clear text                                    ${Retype_New_Password_TextField}
    AppiumLibrary.Input text                                    ${Current_Password_TextField}                           Test*123
    AppiumLibrary.Input text                                    ${New_Password_TextField}                               Test*123
    AppiumLibrary.Input text                                    ${Retype_New_Password_TextField}                        Test*123
    AppiumLibrary.Click element                                 ${Btn_Continue_ChangePasswordPage}
    AppiumLibrary.wait until page contains element              ${Password_Not_Allowed_Label}
    Sleep                                                       3s
    AppiumLibrary.element should be visible                     ${Password_Not_Allowed_Img}
    AppiumLibrary.Page should contain element                   ${Password_Not_Allowed_Label}
    AppiumLibrary.Page should contain element                   ${You_Cant_Use_Label}
    AppiumLibrary.Page should contain text                      ${Password_Not_Allowed_OKBtn}                           OK
    AppiumLibrary.Click element                                 ${Password_Not_Allowed_OKBtn}

    AppiumLibrary.wait until page contains element              ${Update_Your_Password_Label}
    AppiumLibrary.clear text                                    ${Current_Password_TextField}
    AppiumLibrary.clear text                                    ${New_Password_TextField}
    AppiumLibrary.clear text                                    ${Retype_New_Password_TextField}
    AppiumLibrary.Input text                                    ${Current_Password_TextField}                           Test*123
    AppiumLibrary.Input text                                    ${New_Password_TextField}                               Test* 123
    AppiumLibrary.Input text                                    ${Retype_New_Password_TextField}                        Test* 123
    AppiumLibrary.Click element                                 ${Btn_Continue_ChangePasswordPage}
    AppiumLibrary.wait until page contains element              ${Password_Not_Allowed_Label}
    Sleep                                                       3s
    AppiumLibrary.element should be visible                     ${Password_Not_Allowed_Img}
    AppiumLibrary.Page should contain element                   ${Password_Not_Allowed_Label}
    AppiumLibrary.Page should contain element                   ${Spaces_Not_Allowed_Label}
    AppiumLibrary.Page should contain text                      ${Password_Not_Allowed_OKBtn}                           OK
    AppiumLibrary.Click element                                 ${Password_Not_Allowed_OKBtn}
    AppiumLibrary.wait until page contains element              ${Update_Your_Password_Label}

Cancel and Back Validation
    AppiumLibrary.Click element                                 ${Cancel_btn_ChangePassword_page2}
    AppiumLibrary.wait until page contains element              ${Cancel_Overlay_Do_YouwantToCancel}
    AppiumLibrary.element should be visible                     ${Cancel_Overlay_Icon}
    AppiumLibrary.Page should contain element                   ${Cancel_Overlay_Do_YouwantToCancel}
    AppiumLibrary.Page should contain element                   ${Cancel_Overlay_Do_AllTheInformation}
    AppiumLibrary.Page should contain text                      ${Cancel_Yes_Button}                                    Yes
    AppiumLibrary.Page should contain text                      ${Cancel_No_Button}                                     No
    AppiumLibrary.Click element                                 ${Cancel_No_Button}

    AppiumLibrary.wait until page contains element              ${Update_Your_Password_Label}
    Sleep                                                       2s
    AppiumLibrary.Click element                                 ${Cancel_btn_ChangePassword_page2}
    AppiumLibrary.wait until page contains element              ${Cancel_Overlay_Do_YouwantToCancel}
    AppiumLibrary.Click element                                 ${Cancel_Yes_Button}
    Sleep                                                       3S
    AppiumLibrary.Page should contain element                   ${Change_Password_Label}

    AppiumLibrary.Click element                                 ${Button_Change_password}
    AppiumLibrary.wait until page contains element              ${Enter_The_6Digit_Code}
    AppiumLibrary.Click element                                 ${BackBtn_Security_page}
    AppiumLibrary.wait until page contains element              ${Cancel_Overlay_Do_YouwantToCancel}
    AppiumLibrary.element should be visible                     ${Cancel_Overlay_Icon}
    AppiumLibrary.Page should contain element                   ${Cancel_Overlay_Do_YouwantToCancel}
    AppiumLibrary.Page should contain element                   ${Cancel_Overlay_Do_AllTheInformation}
    AppiumLibrary.Page should contain text                      ${Cancel_Yes_Button}                                    Yes
    AppiumLibrary.Page should contain text                      ${Cancel_No_Button}                                     No
    AppiumLibrary.Click element                                 ${Cancel_No_Button}

    AppiumLibrary.wait until page contains element              ${Enter_The_6Digit_Code}
    Sleep                                                       2s
    AppiumLibrary.Click element                                 ${Cancel_btn_ChangePassword_page2}
    AppiumLibrary.wait until page contains element              ${Cancel_Overlay_Do_YouwantToCancel}
    AppiumLibrary.Click element                                 ${Cancel_Yes_Button}
    Sleep                                                       2s
    AppiumLibrary.Page should contain element                   ${Change_Password_Label}
    AppiumLibrary.Click element                                 ${BackBtn_Security_page}
    AppiumLibrary.Page should contain element                   ${Security_Label}





