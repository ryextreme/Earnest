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

${Reminders_and_Alerts_Label}                   //android.widget.TextView[@text = 'Reminders & Alerts']
${Reminders_and_Alerts_Button}                  ph.mbtc.platform11.earnest.debug:id/remindersButton
${Reminders_and_Alerts_BackBtn}                 ph.mbtc.platform11.earnest.debug:id/btn_back
${Reminders_and_Alerts_Header}                  //android.widget.TextView[@text = 'Reminders & Alerts']
${Remind_me_ToInvest_Label}                     //android.widget.TextView[@text = 'Remind me to invest']
${Remind_me_ToInvest_Toggle}                    //android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.Switch
${Get_Automatic_Reminders_Label}                //android.widget.TextView[@text = 'Get automatic reminders on the days you choose.']
${Send_me_Reminders_Label}                      //android.widget.TextView[@text = 'Send me reminders']
${Send_me_Reminders_Subcopy}                    //android.widget.TextView[@text = 'I want notifications about investing and learning.']
${Send_me_Reminder_Toggle}                      //android.view.ViewGroup[2]//android.widget.Switch
${Send_me_Updates_Label}                        //android.widget.TextView[@text = 'Send me updates']
${Send_me_Updates_Subcopy}                      //android.widget.TextView[@text = 'I want notifications about my portfolio, investment products, and new articles.']
${Send_me_Update_Toggle}                        //android.view.ViewGroup[3]//android.widget.Switch

${Remindme_Label2}                              //android.widget.TextView[@text = 'Remind me']
${PayDay_Radio_Button}                          ph.mbtc.platform11.earnest.debug:id/radio_button_payday
${PayDay_Label}                                 //android.widget.TextView[@text = 'on paydays']
${PayDay_Label_Subcopy}                         //android.widget.TextView[@text = 'every 15th and 30th of the month']
${EveryWeek_Radio_Button}                       ph.mbtc.platform11.earnest.debug:id/radio_button_weekly
${EveryWeek_Label}                              //android.widget.TextView[@text = 'every start of the week']
${EveryWeek_Label_Subcopy}                      //android.widget.TextView[@text = 'every Monday']
${Monthly_Radio_Button}                         ph.mbtc.platform11.earnest.debug:id/radio_button_monthly
${Monthly_Label}                                //android.widget.TextView[@text = 'monthly']
${Monthly_Label_Subcopy}                        //android.widget.TextView[@text = 'every 1st of the month']
${Quarterly_Radio_Button}                       ph.mbtc.platform11.earnest.debug:id/radio_button_quarterly
${Quarterly_Label}                               //android.widget.TextView[@text = 'quarterly']
${Quarterly_Label_Subcopy}                       //android.widget.TextView[@text = 'every start of the quarter']
${To_Invest_Label}                               //android.widget.TextView[@text = 'to invest']
${Txt_Currency_Label}                            //android.widget.TextView[@text = '₱']
${Amount_TextField}                              ph.mbtc.platform11.earnest.debug:id/amountEditText
${Tap_Edit_To_Set_Amount}                        //android.widget.TextView[@text = 'Tap edit to set an amount.']
${Txt_Edit_Title}                                //android.widget.TextView[@text = 'Edit']
${Txt_Edit_Icon}                                 ph.mbtc.platform11.earnest.debug:id/editIcon
${RemnindMe_Edit_Textfield}                     ph.mbtc.platform11.earnest.debug:id/amountEditText
${Remind_me_FrameLayout}                        ph.mbtc.platform11.earnest.debug:id/scrollView
${RemnindMe_Done_Button}                        ph.mbtc.platform11.earnest.debug:id/btnDone
${Minimum_Amount_Error}                         //android.widget.TextView[@text = 'The minimum amount to invest is ₱1,000.']
${Clear_Amount_Button}                          ph.mbtc.platform11.earnest.debug:id/editTitle

*** Test Cases ***
Open_Application                                AppiumLibrary.Open Application                              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                       10s

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

    AppiumLibrary.wait until page contains element              ${Reminders_and_Alerts_Label}
    AppiumLibrary.Page should contain element                   ${Reminders_and_Alerts_Label}
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_Button}
    AppiumLibrary.wait until page contains element              ${Reminders_and_Alerts_Header}
    AppiumLibrary.Page should contain text                      ${Reminders_and_Alerts_BackBtn}                         Back
    AppiumLibrary.Page should contain element                   ${Reminders_and_Alerts_Header}
    AppiumLibrary.Page should contain element                   ${Remind_me_ToInvest_Label}
    AppiumLibrary.Page should contain element                   ${Get_Automatic_Reminders_Label}
    AppiumLibrary.element should be visible                     ${Remind_me_ToInvest_Toggle}
    AppiumLibrary.Page should contain element                   ${Send_me_Reminders_Label}
    AppiumLibrary.Page should contain element                   ${Send_me_Reminders_Subcopy}
    AppiumLibrary.element should be visible                     ${Send_me_Reminder_Toggle}
    AppiumLibrary.Page should contain element                   ${Send_me_Updates_Label}
    AppiumLibrary.Page should contain element                   ${Send_me_Updates_Subcopy}
    AppiumLibrary.element should be visible                     ${Send_me_Update_Toggle}

    AppiumLibrary.Click element                                 ${Remind_me_ToInvest_Toggle}
    AppiumLibrary.Click element                                 ${Remind_me_ToInvest_Toggle}
    AppiumLibrary.Click element                                 ${Send_me_Reminder_Toggle}
    AppiumLibrary.Click element                                 ${Send_me_Update_Toggle}
    AppiumLibrary.Click element                                 ${Remind_me_ToInvest_Toggle}

    AppiumLibrary.wait until page contains element              ${Remindme_Label2}
    AppiumLibrary.Page should contain element                   ${Remindme_Label2}
    AppiumLibrary.element should be visible                     ${PayDay_Radio_Button}
    AppiumLibrary.Page should contain element                   ${PayDay_Label}
    AppiumLibrary.Page should contain element                   ${PayDay_Label_Subcopy}
    AppiumLibrary.element should be visible                     ${EveryWeek_Radio_Button}
    AppiumLibrary.Page should contain element                   ${EveryWeek_Label}
    AppiumLibrary.Page should contain element                   ${EveryWeek_Label_Subcopy}
    AppiumLibrary.element should be visible                     ${Monthly_Radio_Button}
    AppiumLibrary.Page should contain element                   ${Monthly_Label}
    AppiumLibrary.Page should contain element                   ${Monthly_Label_Subcopy}
    AppiumLibrary.element should be visible                     ${Quarterly_Radio_Button}
    AppiumLibrary.Page should contain element                   ${Quarterly_Label}
    AppiumLibrary.Page should contain element                   ${Quarterly_Label_Subcopy}
    AppiumLibrary.Page should contain element                   ${To_Invest_Label}
    AppiumLibrary.Page should contain element                   ${Txt_Currency_Label}
    AppiumLibrary.element should be visible                     ${Amount_TextField}
#    AppiumLibrary.Page should contain element                  ${Tap_Edit_To_Set_Amount}
    AppiumLibrary.Page should contain element                   ${Txt_Edit_Title}
    AppiumLibrary.element should be visible                     ${Txt_Edit_Icon}

    AppiumLibrary.Click element                                 ${PayDay_Radio_Button}
    AppiumLibrary.wait until page contains element              ${Reminders_and_Alerts_Label}
    AppiumLibrary.Page should contain element                   ${Reminders_and_Alerts_Label}
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_BackBtn}
    AppiumLibrary.wait until page contains element             ${Reminders_and_Alerts_Button}
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_Button}
    AppiumLibrary.wait until page contains element              ${Reminders_and_Alerts_Header}

    #Update remind me to invest with amount using tap outside
    AppiumLibrary.Click element                                 ${Quarterly_Radio_Button}
    AppiumLibrary.Input text                                    ${RemnindMe_Edit_Textfield}                             1000
    AppiumLibrary.Click element                                 ${Remind_me_FrameLayout}
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_BackBtn}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_Button}
    AppiumLibrary.wait until page contains element              ${Reminders_and_Alerts_Header}

    #Update remind me to invest with no amount using Done button
    AppiumLibrary.Click element                                 ${Monthly_Radio_Button}
    AppiumLibrary.Click element                                 ${RemnindMe_Edit_Textfield}
    AppiumLibrary.Input text                                    ${RemnindMe_Edit_Textfield}                             0
    AppiumLibrary.Click element                                 ${RemnindMe_Done_Button}
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_BackBtn}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_Button}
    AppiumLibrary.wait until page contains element              ${Reminders_and_Alerts_Header}

    #Amount is less than 1000
    AppiumLibrary.Click element                                 ${Quarterly_Radio_Button}
    AppiumLibrary.Click element                                 ${RemnindMe_Edit_Textfield}
    AppiumLibrary.Input text                                    ${RemnindMe_Edit_Textfield}                             999
    AppiumLibrary.swipe by percent                              50     50     50      70     2000
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Click element                                 ${Remind_me_FrameLayout}
    AppiumLibrary.wait until page contains element              ${Minimum_Amount_Error}
    AppiumLibrary.Page should contain element                   ${Minimum_Amount_Error}
    AppiumLibrary.Element should be disabled                    ${RemnindMe_Done_Button}
    AppiumLibrary.clear text                                    ${RemnindMe_Edit_Textfield}
    AppiumLibrary.Click element                                 ${RemnindMe_Edit_Textfield}
    AppiumLibrary.Input text                                    ${RemnindMe_Edit_Textfield}                             500
    AppiumLibrary.swipe by percent                              50     50     50      70     2000
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Click element                                 ${Remind_me_FrameLayout}
    AppiumLibrary.wait until page contains element              ${Minimum_Amount_Error}
    AppiumLibrary.Page should contain element                   ${Minimum_Amount_Error}
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_BackBtn}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_Button}
    AppiumLibrary.wait until page contains element              ${Reminders_and_Alerts_Header}

    #Click CLear Amount button
    AppiumLibrary.Click element                                 ${RemnindMe_Edit_Textfield}
    AppiumLibrary.Input text                                    ${RemnindMe_Edit_Textfield}                             5000
    AppiumLibrary.swipe by percent                              50     50     50      70     2000
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Click element                                 ${Remind_me_FrameLayout}
    AppiumLibrary.Click element                                 ${Clear_Amount_Button}
    AppiumLibrary.Click element                                 ${RemnindMe_Edit_Textfield}
    AppiumLibrary.Input text                                    ${RemnindMe_Edit_Textfield}                             1500
    AppiumLibrary.swipe by percent                              50     50     50      70     2000
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Click element                                 ${Remind_me_FrameLayout}
    AppiumLibrary.Click element                                 ${Clear_Amount_Button}

Back Button Validation
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_BackBtn}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${Reminders_and_Alerts_Button}
    AppiumLibrary.wait until page contains element              ${Reminders_and_Alerts_Header}










