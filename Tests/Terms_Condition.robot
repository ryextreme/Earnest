*** Settings ***
Library     AppiumLibrary

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
${Valid_UserEmailAddress}                       ryextreme0036@getnada.com
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

${Terms&Condition_Label_MoreTab_}               //android.widget.TextView[@text = 'Terms & Conditions']
${Terms&Condition_Button_MoreTab_}              ph.mbtc.platform11.earnest.debug:id/tncButton
${Terms&Condition_BackBtn}                      ph.mbtc.platform11.earnest.debug:id/btn_back
${Terms&Condition_Label_Header}                 //android.widget.TextView[@text = 'Terms & Condition']
${Terms&Condition_TermsOfUSe}                   //android.widget.TextView[@text = 'Earnest Terms of Use']
${Terms&Condition_Content1}                     //android.widget.TextView[@text = 'Using Earnest means you agree to our Terms and Conditions of Use.']
${Terms&Condition_Content2}                     //android.widget.TextView[@index='2']
${Terms&Condition_Content3}                     //android.widget.TextView[@text = 'Earnest Terms of Use']
${Terms&Condition_Content3}                     //android.widget.TextView[@text = 'Last updated: May 17, 2019']
${Terms&Condition_Content4}                     //android.widget.TextView[@index='5']
${Terms&Condition_Content5}                     //android.widget.TextView[@index='6']

#${Terms&Condition_Content6}                     //android.widget.TextView[@text = 'By using Earnest, you represent that you are at least eighteen (18) years old and capable of managing your own affairs.']

*** Test Cases ***
Open_Application                                AppiumLibrary.Open Application              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                       10s

Terms & Condition Happy Path
#Login
#    AppiumLibrary.wait until page contains element              ${Primary_Btn_Login}
#    AppiumLibrary.Click element                                 ${Primary_Btn_Login}
    sleep                           10s
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
    AppiumLibrary.swipe by percent                              50     50     50      70
    AppiumLibrary.swipe                                         0     1300     100     100

    AppiumLibrary.wait until page contains element              ${Terms&Condition_Label_MoreTab_}
    AppiumLibrary.Page should contain element                   ${Terms&Condition_Label_MoreTab_}
    AppiumLibrary.element should be visible                     ${Terms&Condition_Button_MoreTab_}
    AppiumLibrary.Click element                                 ${Terms&Condition_Button_MoreTab_}
    AppiumLibrary.wait until page contains element              ${Terms&Condition_TermsOfUSe}
    AppiumLibrary.Page should contain text                      ${Terms&Condition_BackBtn}                              Back
    AppiumLibrary.Page should contain element                   ${Terms&Condition_Label_Header}
    AppiumLibrary.Page should contain element                   ${Terms&Condition_TermsOfUSe}
    AppiumLibrary.Page should contain element                   ${Terms&Condition_Content1}
    AppiumLibrary.Element Text Should Be                        ${Terms&Condition_Content2}                             This is why we hope you’ll read it so you know what you’re agreeing to. It should take around 10 minutes.
    AppiumLibrary.Page should contain element                   ${Terms&Condition_Content3}
    AppiumLibrary.Element Text Should Be                        ${Terms&Condition_Content4}                             Earnest is an online service by the Metropolitan Bank & Trust Company (or “Metrobank.”) When you see “we” “us” or “our” in this document, it means Metrobank.
    AppiumLibrary.Element Text Should Be                        ${Terms&Condition_Content5}                             When you see the word, “you,” it means you, the user or anyone who is legally authorized to represent you. By using Earnest, you represent that you are at least eighteen (18) years old and capable of managing your own affairs.


