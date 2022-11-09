*** Settings ***
Library     AppiumLibrary
Library     Collections
#Library     Selenium2Library
Resource    ../Resources/Page_Repository/ChangeEmail_Repository.robot

*** Test Cases ***
Open_Application
    AppiumLibrary.Open Application                              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                                       10s

Change Email Address Happy Path
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
    Sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${More_kebab_menuBtn}
    AppiumLibrary.Click element                                 ${More_kebab_menuBtn}
    sleep                                                       5s
    AppiumLibrary.wait until page contains element              ${Click_ShowProfie_btn}
    AppiumLibrary.Click element                                 ${Click_ShowProfie_btn}
    AppiumLibrary.Click element                                 ${Change_AccountEmail_Btn}
    AppiumLibrary.wait until page contains element              ${Change_EmailAddress_Header}
    AppiumLibrary.Page should contain text                      ${BtnBack_ChangeEmailAddress}                           Back
    AppiumLibrary.Page should contain element                   ${Change_EmailAddress_Header}
    AppiumLibrary.Page should contain element                   ${Enter_Password_Label}
    AppiumLibrary.Page should contain element                   ${Enter_CurrentPassword_Label}
    AppiumLibrary.Page should contain element                   ${Password_Label_ChangeEmail}
    AppiumLibrary.Page should contain text                      ${ShowBtn_PasswordField}                                SHOW
    AppiumLibrary.Input text                                    ${PasswordField_ChangeEmail}                            ${Valid_current_Password}
    AppiumLibrary.Click element                                 ${ShowBtn_PasswordField}
    AppiumLibrary.Click element                                 ${ShowBtn_PasswordField}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${ContinueBtn_ChangeEmailAdddress}
    AppiumLibrary.wait until page contains element              ${New_EmailAddress_Label}
    AppiumLibrary.Page should contain text                      ${BtnCancel_ChangeEmail_page2}                          Cancel
    AppiumLibrary.Page should contain element                   ${New_EmailAddress_Label}
    AppiumLibrary.Page should contain element                   ${Enter_The_EmailAddress_label}
    AppiumLibrary.Page should contain element                   ${Email_Address_Label_Page2}
    AppiumLibrary.Page should contain element                   ${Please_Enter_An_Active_Email}
    AppiumLibrary.Input text                                    ${EmailAddress_InputField}                              ${User_New_emailAddress}
    AppiumLibrary.Click element                                 ${Change_EmailAdrress_Clearbtn}
    AppiumLibrary.Input text                                    ${EmailAddress_InputField}                              ${User_New_emailAddress}
    AppiumLibrary.element should be enabled                     ${Btn_Submit_NewEMail}
    AppiumLibrary.Click element                                 ${Btn_Submit_NewEMail}

#    OTP PAGE
    AppiumLibrary.wait until page contains element              ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.Page should contain element                   ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.Page should contain element                   ${ChangeEmailAddress_Header}
    AppiumLibrary.Page should contain element                   ${CheckYourEmail_Label}
    AppiumLibrary.Page should contain element                   ${Enter6DigitCodeWeSent_Label}
    ${UserEmailAddress_INputs}                                  AppiumLibrary.Get text                                  ${TxtUserInput_EmailAddress}
    AppiumLibrary.Page should contain text                      ${UserEmailAddress_INputs}
    AppiumLibrary.element should be visible                     ${Otp_Container_InputBox}
    AppiumLibrary.wait until page contains element              ${DidntReceieveTheCode_Label}
    AppiumLibrary.Page should contain element                   ${DidntReceieveTheCode_Label}
    AppiumLibrary.Page should contain text                      ${SendNewCode_Button}                                   Send a new code
    AppiumLibrary.Page should contain text                      ${ChangeEmailAdd_BackBtn}                               Back
    AppiumLibrary.Page should contain text                      ${ChangeEmailAdd_SubmitBtn}                             Submit
    Sleep                                                       20s
    AppiumLibrary.Click element                                 ${ChangeEmailAdd_SubmitBtn}

#Success Page
    AppiumLibrary.element should be visible                     ${SuccessImage_ChangeEmail}
    AppiumLibrary.Page should contain element                   ${SuccessLabel_ChangeEmail}
    AppiumLibrary.Page should contain element                   ${Your_Email_Was_Updated}
    AppiumLibrary.Page should contain element                   ${WellLogYouOut_Label}
    AppiumLibrary.Page should contain text                      ${BtnOK_ChangeEmail}                                    OK
    AppiumLibrary.Click element                                 ${BtnOK_ChangeEmail}

#Login Using New Email
    sleep                                                       5s
    AppiumLibrary.wait until page contains element              ${Btn_Option_LoginPage}
    AppiumLibrary.Click element                                 ${Btn_Option_LoginPage}
    AppiumLibrary.Click element                                 ${ChangeAcount_Button}
    AppiumLibrary.Input text                                    ${EmailField_LoginPage}                                 ${User_New_emailAddress}
    AppiumLibrary.Input text                                    ${PassField_LoginPage}                                  ${Valid_current_Password}
    AppiumLibrary.Click element                                 ${LoginBtn_LoginPage}
    Sleep                                                       20s
    AppiumLibrary.Click element                                 ${BtnSubmit_OtpPage}
    Sleep                                                       10s
    AppiumLibrary.wait until page contains element              ${Mbtc_welcome_layout}

Password Error Validation
    Sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${More_kebab_menuBtn}
    AppiumLibrary.Click element                                 ${More_kebab_menuBtn}
    sleep                                                       5s
    AppiumLibrary.wait until page contains element              ${Click_ShowProfie_btn}
    AppiumLibrary.Click element                                 ${Click_ShowProfie_btn}
    AppiumLibrary.Click element                                 ${Change_AccountEmail_Btn}
    AppiumLibrary.wait until page contains element              ${Change_EmailAddress_Header}
    AppiumLibrary.Input text                                    ${PasswordField_ChangeEmail}                            ${InValid_current_Password}
    AppiumLibrary.Click element                                 ${ShowBtn_PasswordField}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${ContinueBtn_ChangeEmailAdddress}
    AppiumLibrary.wait until page contains element              ${PasswordError_Validation}
    AppiumLibrary.Page should contain element                   ${PasswordError_Validation}
    AppiumLibrary.clear text                                    ${PasswordField_ChangeEmail}
    AppiumLibrary.Input text                                    ${PasswordField_ChangeEmail}                            ${Valid_current_Password}
    AppiumLibrary.Click element                                 ${ShowBtn_PasswordField}
    AppiumLibrary.Click element                                 ${ContinueBtn_ChangeEmailAdddress}

Email Address Error Message Validation
    Sleep                                                       5s
    AppiumLibrary.wait until page contains element              ${New_EmailAddress_Label}
    AppiumLibrary.Input text                                    ${EmailAddress_InputField}                              ${UserEmailAdd_Invalid}
    AppiumLibrary.wait until page contains element              ${YourEmail_ShouldHave_ErrorMsg}
    AppiumLibrary.Page should contain element                   ${YourEmail_ShouldHave_ErrorMsg}
    AppiumLibrary.clear text                                    ${EmailAddress_InputField}

    AppiumLibrary.Input text                                    ${EmailAddress_InputField}                              ${UserEmailAdd_Invalid2}
    AppiumLibrary.wait until page contains element              ${TheFormatOfEmail_ErrorMsg}
    AppiumLibrary.Page should contain element                   ${TheFormatOfEmail_ErrorMsg}
    AppiumLibrary.clear text                                    ${EmailAddress_InputField}

    AppiumLibrary.Input text                                    ${EmailAddress_InputField}                              ${UserEmailAdd_Invalid3}
    AppiumLibrary.Click element                                 ${Btn_Submit_NewEMail}
    AppiumLibrary.wait until page contains element              ${EmailAlreadyExists_ErrorMsg}
    AppiumLibrary.Page should contain element                   ${EmailAlreadyExists_ErrorMsg}
    AppiumLibrary.clear text                                    ${EmailAddress_InputField}

    AppiumLibrary.Input text                                    ${EmailAddress_InputField}                              ${USerEmailAdd_Valid}
    AppiumLibrary.Click element                                 ${Btn_Submit_NewEMail}

OTP Error Validation
    Sleep                                                       2s
    AppiumLibrary.wait until page contains element              ${CheckYourEmail_Label}
    AppiumLibrary.Input text                                    ${Otp_Container_InputBox}                                 ${Invalid_OTP}
    AppiumLibrary.Click element                                 ${ChangeEmailAdd_SubmitBtn}
    AppiumLibrary.Page should contain element                   ${OTPError_Code_ErrorMsg}
    AppiumLibrary.clear text                                    ${Otp_Container_InputBox}

    AppiumLibrary.Click element                                 ${SendNewCode_Button}
    AppiumLibrary.Input text                                    ${Otp_Container_InputBox}                               ${Re_Enter_Invalid_OTP}
    AppiumLibrary.Click element                                 ${ChangeEmailAdd_SubmitBtn}
    AppiumLibrary.Page should contain element                   ${OTPError_Code_ErrorMsg}
    AppiumLibrary.clear text                                    ${Otp_Container_InputBox}
    AppiumLibrary.Click element                                 ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.wait until page contains element              ${Cancel_YesBtn}
    AppiumLibrary.Click element                                 ${Cancel_YesBtn}


Back and Cancel Validation
    #Cancel Validation OTP Page
    Sleep                                                       2s
    AppiumLibrary.wait until page contains element              ${AccountTitle_ProfileLabel}
    AppiumLibrary.Click element                                 ${Change_AccountEmail_Btn}
    AppiumLibrary.Input text                                    ${PasswordField_ChangeEmail}                            ${Valid_current_Password}
    AppiumLibrary.Click element                                 ${ShowBtn_PasswordField}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${ContinueBtn_ChangeEmailAdddress}
    AppiumLibrary.wait until page contains element              ${New_EmailAddress_Label}
    AppiumLibrary.Input text                                    ${EmailAddress_InputField}                              ${USerEmailAdd_Valid}
    AppiumLibrary.element should be enabled                     ${Btn_Submit_NewEMail}
    AppiumLibrary.Click element                                 ${Btn_Submit_NewEMail}

    AppiumLibrary.wait until page contains element              ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.Click element                                 ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.wait until page contains element              ${Do_YouWantToCancel_Label}
    AppiumLibrary.Page should contain element                   ${Do_YouWantToCancel_Label}
    AppiumLibrary.Page should contain element                   ${AllInformationWill_Label}
    AppiumLibrary.Page should contain text                      ${Cancel_NoBtn}                                         No
    AppiumLibrary.Page should contain text                      ${Cancel_YesBtn}                                        Yes
    AppiumLibrary.Click element                                 ${Cancel_NoBtn}
    AppiumLibrary.Click element                                 ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.wait until page contains element              ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.Click element                                 ${Cancel_YesBtn}

    Sleep                                                       2s
    AppiumLibrary.wait until page contains element              ${AccountTitle_ProfileLabel}
    AppiumLibrary.Click element                                 ${Change_AccountEmail_Btn}
    AppiumLibrary.Input text                                    ${PasswordField_ChangeEmail}                            ${Valid_current_Password}
    AppiumLibrary.Click element                                 ${ShowBtn_PasswordField}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${ContinueBtn_ChangeEmailAdddress}
    AppiumLibrary.wait until page contains element              ${New_EmailAddress_Label}

    AppiumLibrary.wait until page contains element              ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.Click element                                 ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.wait until page contains element              ${Do_YouWantToCancel_Label}
    AppiumLibrary.Page should contain element                   ${Do_YouWantToCancel_Label}
    AppiumLibrary.Page should contain element                   ${AllInformationWill_Label}
    AppiumLibrary.Page should contain text                      ${Cancel_NoBtn}                                         No
    AppiumLibrary.Page should contain text                      ${Cancel_YesBtn}                                        Yes
    AppiumLibrary.Click element                                 ${Cancel_NoBtn}
    AppiumLibrary.Click element                                 ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.wait until page contains element              ${BtnCancel_ChangeEmail_page2}
    AppiumLibrary.Click element                                 ${Cancel_YesBtn}

    Sleep                                                       2s
    AppiumLibrary.wait until page contains element              ${AccountTitle_ProfileLabel}
    AppiumLibrary.Click element                                 ${Change_AccountEmail_Btn}
    AppiumLibrary.Click element                                 ${BtnBack_ChangeEmailAddress}



























