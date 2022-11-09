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
${Valid_UserPassword}                           Testing*1234
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

${FAQs_Label_More_Tab}                          //android.widget.TextView[@text = 'FAQs']
${FAQs_Button_More_Tab}                         ph.mbtc.platform11.earnest.debug:id/faqsButton
${FAQs_Back_Button}                             ph.mbtc.platform11.earnest.debug:id/btn_back
${FAQs_Header}                                  //android.widget.TextView[@text = 'FAQs']
${On_Using_Earnest_Title}                       //android.widget.TextView[@text = 'On using the Earnest app']
${What_Is_Earnest_Ttile}                        //android.widget.TextView[@text = "What is Earnest? "]
${What_Is_Earnest_CollapseBtn}                  //android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.ImageView
${What_Is_Earnest_Content}                      //android.widget.TextView[@text = "Earnest is a financial education and investing platform. It makes it easy for you to learn money basics and to start growing your funds, whenever and wherever it’s convenient for you. "]
${Create_Account_Title}                         //android.widget.TextView[@text = 'How do I create an account?']
${Create_Account_CollapseBtn}                   //android.widget.LinearLayout[2]//android.widget.ImageView
${Create_Account_Content}                       //android.widget.TextView[@text = "You can sign up on the Earnest website or on the Earnest app. All you need to provide is a valid email address. You can use an account created on the website to log into the app and vice versa. On the website, you can read through articles without creating an account. However, if you'd like to learn through the lesson cards, you'll need to create an account so that we can save your progress. To use the app, though, you need to create an account."]
${Download_EarnestApp_CollapseBtn}              //android.widget.LinearLayout[3]//android.widget.ImageView
${Forgot_Password_CollapseBtn}                  //android.widget.LinearLayout[4]//android.widget.ImageView
${Grow_MyMoney_CollapseBtn}                     //android.widget.LinearLayout[5]//android.widget.ImageView
${Kind_OfInvestment_CollapseBtn}                //android.widget.LinearLayout[6]//android.widget.ImageView

*** Test Cases ***
Open_Application                         AppiumLibrary.Open Application                              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                10s

Reminders & Alerts Happy Path
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

View and Navigate to FAQs
    AppiumLibrary.wait until page contains element              ${FAQs_Button_More_Tab}
    AppiumLibrary.Page should contain element                   ${FAQs_Label_More_Tab}
    AppiumLibrary.Click element                                 ${FAQs_Button_More_Tab}
    AppiumLibrary.wait until page contains element              ${FAQs_Header}
    AppiumLibrary.Page should contain text                      ${FAQs_Back_Button}                             Back
    AppiumLibrary.Page should contain element                   ${FAQs_Header}
    AppiumLibrary.Page should contain element                   ${On_Using_Earnest_Title}
    AppiumLibrary.Page should contain element                   ${What_Is_Earnest_Ttile}
    AppiumLibrary.Click element                                 ${What_Is_Earnest_CollapseBtn}
    AppiumLibrary.Page should contain element                   ${What_Is_Earnest_Content}
    AppiumLibrary.Click element                                 ${What_Is_Earnest_CollapseBtn}

    AppiumLibrary.Page should contain element                   ${Create_Account_Title}
    AppiumLibrary.Click element                                 ${Create_Account_CollapseBtn}
    AppiumLibrary.Page should contain element                   ${Create_Account_Content}




