

*** Variables ***
${chromedriverExecutable}                       C:\Users\John Robert\PycharmProjects\P11_earnest\chromedriver.exe
${Close_AppBtn}                                 ph.mbtc.platform11.earnest.debug:id/btn_close
#Variables for Login
#${LoginLink_LoginPage}                         ph.mbtc.platform11.earnest.debug:id/alreadyHaveAnAccountLabel
${Btn_Option_LoginPage}                         ph.mbtc.platform11.earnest.debug:id/optionsButton
${ChangeAcount_Button}                          ph.mbtc.platform11.earnest.debug:id/changeAccountButton
${EmailField_LoginPage}                         ph.mbtc.platform11.earnest.debug:id/emailField
${PassField_LoginPage}                          ph.mbtc.platform11.earnest.debug:id/passwordField
${LoginBtn_LoginPage}                           ph.mbtc.platform11.earnest.debug:id/loginButton
${Valid_UserEmailAddress}                       ryerye11@getnada.com
${Valid_UserPassword}                           Test*123
${BtnSubmit_OtpPage}                            ph.mbtc.platform11.earnest.debug:id/btn_submit
${btn_Home_SkipBtn}                             ph.mbtc.platform11.earnest.debug:id/btnSkip
${More_kebab_menuBtn}                           ph.mbtc.platform11.earnest.debug:id/moreButton
${Click_ShowProfie_btn}                         ph.mbtc.platform11.earnest.debug:id/profileButton
${Primary_Btn_Login}                            ph.mbtc.platform11.earnest.debug:id/primary_button
${banner_deep_link}                             ph.mbtc.platform11.earnest.debug:id/banner_content_root
${Mbtc_welcome_layout}                          ph.mbtc.platform11.earnest.debug:id/welcomeLayout
${Collapse_Btn}                                 ph.mbtc.platform11.earnest.debug:id/collapse_button

${Change_AccountEmail_Btn}                      ph.mbtc.platform11.earnest.debug:id/account_edit
${AccountTitle_ProfileLabel}                    //android.widget.TextView[@text = 'Profile Information']
${BtnBack_ChangeEmailAddress}                   ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Change_EmailAddress_Header}                  //android.widget.TextView[@text = 'Change Email Address']
${Enter_Password_Label}                        //android.widget.TextView[@text = 'Enter Password']
${Enter_CurrentPassword_Label}                 //android.widget.TextView[@text = 'Enter your current password to continue.']
${Password_Label_ChangeEmail}                  //android.widget.TextView[@text = 'Password']
${PasswordField_ChangeEmail}                   ph.mbtc.platform11.earnest.debug:id/input
${ShowBtn_PasswordField}                       ph.mbtc.platform11.earnest.debug:id/button_right

${Valid_current_Password}                      Test*123
${ContinueBtn_ChangeEmailAdddress}             ph.mbtc.platform11.earnest.debug:id/btn_next

${BtnCancel_ChangeEmail_page2}                 ph.mbtc.platform11.earnest.debug:id/btn_cancel
${New_EmailAddress_Label}                      //android.widget.TextView[@text = 'New Email Address']
${Enter_The_EmailAddress_label}                //android.widget.TextView[@text = 'Enter the email address you want to use for logging in and receiving notifications.']
${Email_Address_Label_Page2}                   //android.widget.TextView[@text = 'Email address']
${EmailAddress_InputField}                     ph.mbtc.platform11.earnest.debug:id/input
${Change_EmailAdrress_Clearbtn}                ph.mbtc.platform11.earnest.debug:id/button_right
${Please_Enter_An_Active_Email}                //android.widget.TextView[@text = 'Please enter an active email address you own.']

${User_New_emailAddress}                        ry004@getnada.com
${Btn_Submit_NewEMail}                          ph.mbtc.platform11.earnest.debug:id/btn_submit

${ChangeEmailAddress_Header}                    //android.widget.TextView[@text = 'Change Email Address']
${CheckYourEmail_Label}                         //android.widget.TextView[@text = 'Check Your Email']
${Enter6DigitCodeWeSent_Label}                  //android.widget.TextView[@text = 'Enter the 6-digit code we sent to']
${TxtUserInput_EmailAddress}                    ph.mbtc.platform11.earnest.debug:id/txt_email_address
${Otp_Container_InputBox}                       ph.mbtc.platform11.earnest.debug:id/otp_container
${DidntReceieveTheCode_Label}                   //android.widget.TextView[@text = "Didn’t receive the code?"]
${SendNewCode_Button}                           ph.mbtc.platform11.earnest.debug:id/otp_send_now
${ChangeEmailAdd_BackBtn}                       ph.mbtc.platform11.earnest.debug:id/btn_back
${ChangeEmailAdd_SubmitBtn}                     ph.mbtc.platform11.earnest.debug:id/btn_submit

#Success Page Variables
${SuccessImage_ChangeEmail}                     ph.mbtc.platform11.earnest.debug:id/img_success
${SuccessLabel_ChangeEmail}                    //android.widget.TextView[@text = 'Success!']
${Your_Email_Was_Updated}                      //android.widget.TextView[@text = 'Your email was updated.']
${WellLogYouOut_Label}                         //android.widget.TextView[@text = "We'll log you out now. Please log in again using your new email."]
${BtnOK_ChangeEmail}                            ph.mbtc.platform11.earnest.debug:id/btn_ok

${InValid_current_Password}                     Test*1263762
${PasswordError_Validation}                     //android.widget.TextView[@text = 'Your password is incorrect.']
${UserEmailAdd_Invalid}                         ryerye.getnada.com
${UserEmailAdd_Invalid2}                        ryerye@getnada
${UserEmailAdd_Invalid3}                        rye0010@getnada.com
${USerEmailAdd_Valid}                           ryerye_05@getnada.com

${YourEmail_ShouldHave_ErrorMsg}                //android.widget.TextView[@text = 'Your email address should have one “@”.']
${TheFormatOfEmail_ErrorMsg}                    //android.widget.TextView[@text = "The format of your email address isn’t valid."]
${EmailAlreadyExists_ErrorMsg}                  //android.widget.TextView[@text = 'Email address already exists']

${Invalid_OTP}                                  545155
${Re_Enter_Invalid_OTP}                         002255
${OTPError_Code_ErrorMsg}                       //android.widget.TextView[@text = 'The code you entered is incorrect.']

${Cancel_YesBtn}                                ph.mbtc.platform11.earnest.debug:id/cancel_yes
${Cancel_NoBtn}                                 ph.mbtc.platform11.earnest.debug:id/cancel_no
${Do_YouWantToCancel_Label}                    //android.widget.TextView[@text = 'Do you want to cancel?']
${AllInformationWill_Label}                    //android.widget.TextView[@text = 'Do you want to cancel?']