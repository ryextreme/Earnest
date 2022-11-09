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

${ContactUs_Button_MoreTab}                     ph.mbtc.platform11.earnest.debug:id/contactButton
${ContactUs_Label_MoreTab}                      //android.widget.TextView[@text = 'Contact Us']
${Contact_Us_BackButton}                        ph.mbtc.platform11.earnest.debug:id/btn_back
${ContactUs_Header}                             //android.widget.TextView[@text = 'Contact Us']
${ContactUs_ImageView}                          ph.mbtc.platform11.earnest.debug:id/support_imageview
${Get_Help_From_OurSupport}                     //android.widget.TextView[@text = 'Get help from our Support team']
${SendUs_AMessage_Label}                        //android.widget.TextView[@text = 'Send us a message and we’ll be glad to help you.']
${SupportBtn_ContactPage}                       ph.mbtc.platform11.earnest.debug:id/support_button
${Get_Help_here_Label}                          ph.mbtc.platform11.earnest.debug:id/fragmentSupportFaqLink
${BackBtn_SupportPage}                          ph.mbtc.platform11.earnest.debug:id/backButton
${You_May_Also_Reach_Out}                       //android.widget.TextView[@text = 'You may also reach out through our']
${Customer_Hotline_Label}                       //android.widget.TextView[@text = '24/7 customer service hotline']
${Customer_Hotline_Number}                      //android.widget.TextView[@text = '(02) 88–700–700']
${Domestic_tollfree_Label}                      //android.widget.TextView[@text = '24/7 domestic toll-free']
${Domestic_tollfree_Number}                     //android.widget.TextView[@text = '1–800–1888–5775']
${Fraud_label}                                  //android.widget.TextView[@text = 'The hotlines above are recommended for concerns or clarifications on account security, suspicious or unknown transactions, or blocked credit/ATM cards']
${Fraud_label_id}                               ph.mbtc.platform11.earnest.debug:id/support_fraud_reminder
${ContactUs_Via}                                //android.widget.TextView[@text = 'You may also contact us via']
${ContactUs_Via_Email}                           //android.widget.TextView[@text = 'Email']
${ContactUs_Via_EmailAddress}                   //android.widget.TextView[@text = 'help@earnest.ph']

*** Test Cases ***
Open_Application                                AppiumLibrary.Open Application                              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                       10s

Contact Us Happy Path
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
    AppiumLibrary.swipe by percent                              50     50     50      70
    AppiumLibrary.swipe                                         0     500     100     100

#Navigate to Contact US Page
    AppiumLibrary.wait until page contains element               ${ContactUs_Button_MoreTab}
    AppiumLibrary.Page should contain element                    ${ContactUs_Label_MoreTab}
    AppiumLibrary.Click element                                  ${ContactUs_Button_MoreTab}
    AppiumLibrary.wait until page contains element               ${Contact_Us_BackButton}
    AppiumLibrary.Page should contain text                       ${Contact_Us_BackButton}                       Back
    AppiumLibrary.Page should contain element                    ${ContactUs_Header}
    AppiumLibrary.element should be visible                      ${ContactUs_ImageView}
    AppiumLibrary.Page should contain element                    ${Get_Help_From_OurSupport}
    AppiumLibrary.Page should contain element                    ${SendUs_AMessage_Label}
    AppiumLibrary.Page should contain text                       ${SupportBtn_ContactPage}                      Contact Support
    AppiumLibrary.Click element                                  ${SupportBtn_ContactPage}
    Sleep                                                        3s
    AppiumLibrary.wait until page contains element               ${Get_Help_here_Label}
    AppiumLibrary.Page should contain text                       ${BackBtn_SupportPage}                         Back
    AppiumLibrary.Click element                                  ${BackBtn_SupportPage}
     AppiumLibrary.wait until page contains element              ${Get_Help_From_OurSupport}
    AppiumLibrary.Page should contain element                    ${You_May_Also_Reach_Out}
    AppiumLibrary.Page should contain element                    ${Customer_Hotline_Label}
    AppiumLibrary.Page should contain element                    ${Customer_Hotline_Number}
    AppiumLibrary.Page should contain element                    ${Domestic_tollfree_Label}
    AppiumLibrary.Page should contain element                    ${Domestic_tollfree_Number}
#    AppiumLibrary.swipe by percent                              50     50     50      70
    AppiumLibrary.swipe                                         0     1000     100     100
    AppiumLibrary.Page should contain element                   ${Fraud_label}
    AppiumLibrary.Page should contain element                   ${ContactUs_Via}
    AppiumLibrary.Page should contain element                   ${ContactUs_Via_Email}
    AppiumLibrary.Page should contain element                   ${ContactUs_Via_EmailAddress}
    AppiumLibrary.swipe                                         0     -1000     100     100



