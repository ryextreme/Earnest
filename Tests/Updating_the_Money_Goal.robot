*** Settings ***
Library     AppiumLibrary

*** Variables ***
${chromedriverExecutable}                       C:\Users\John Robert\PycharmProjects\P11_earnest\chromedriver.exe
${Close_AppBtn}                                 ph.mbtc.platform11.earnest.debug:id/btn_close
#Variables for Login
#${LoginLink_LoginPage}                         ph.mbtc.platform11.earnest.debug:id/alreadyHaveAnAccountLabel
${ChangeAcount_Button}                          ph.mbtc.platform11.earnest.debug:id/changeAccountButton
${EmailField_LoginPage}                         ph.mbtc.platform11.earnest.debug:id/emailField
${PassField_LoginPage}                          ph.mbtc.platform11.earnest.debug:id/passwordField
${LoginBtn_LoginPage}                           ph.mbtc.platform11.earnest.debug:id/loginButton
${Valid_UserEmailAddress}                       ryextreme0022@getnada.com
${Valid_UserPassword}                           Test*123
${BtnSubmit_OtpPage}                            ph.mbtc.platform11.earnest.debug:id/btn_submit
${btn_Home_SkipBtn}                            ph.mbtc.platform11.earnest.debug:id/btnSkip

${More_kebab_menuBtn}                           ph.mbtc.platform11.earnest.debug:id/moreButton
${Click_ShowProfie_btn}                         ph.mbtc.platform11.earnest.debug:id/profileButton
${Money_Goal_Label}                            //android.widget.TextView[@text = 'Money Goal']
${Money_goal_UpdateBtn}                        ph.mbtc.platform11.earnest.debug:id/mg_update
${Profile_Money_Goal}                          ph.mbtc.platform11.earnest.debug:id/profile_money_goal
${BackBtn_MoneyGoal_Page1}                     ph.mbtc.platform11.earnest.debug:id/btn_back
${Current_MoneyGoal_Label}                     //android.widget.TextView[@text = 'Your current money goal']
${CurrentSelected_MoneyGoal}                   ph.mbtc.platform11.earnest.debug:id/txt_goal
${Update_Moneygoal_Btn}                        ph.mbtc.platform11.earnest.debug:id/update_money_goal_button

${Cancelbtn_MoneyGoal_Page2}                   ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Money_Goal_Header}                          //android.widget.TextView[@text = 'Money Goal']
${What_isYour_MoneyGoal}                      //android.widget.TextView[@text = 'What is your main money goal?']
${As_You_StartYour_label}                     //android.widget.TextView[@text = 'As you start your investing journey, it would be good for you to keep a goal in mind. You can change this in the future.']
${Please_Choose_Just_once}                    //android.widget.TextView[@text = 'Please choose just one.']
${Pay_for_kids_tuition}                       //android.widget.RadioButton[@text = "Pay for kids' tuition"]
${Save_for_retirement}                        //android.widget.RadioButton[@text = 'Save for retirement']
${Buy_a_house}                                //android.widget.RadioButton[@text = 'Buy a house']
${Buy_a_car}                                  //android.widget.RadioButton[@text = 'Buy a car']
${Make_money_grow}                            //android.widget.RadioButton[@text = 'Make money grow']
${Start_a_business}                           //android.widget.RadioButton[@text = 'Start a business']
${Cant_find_your_goal}                        //android.widget.TextView[@text = "Can't find your goal in the choices?"]
${Custom_goal_TextInput}                      ph.mbtc.platform11.earnest.debug:id/textInput
${ContinueBtn_MoneyGoal_Page2}                ph.mbtc.platform11.earnest.debug:id/btn_continue

${BackBtn_MoneyGoal_Page3}                    ph.mbtc.platform11.earnest.debug:id/btn_back
${Your_New_MoneyGoal_Label}                  //android.widget.TextView[@text = "Your new money goal"]
${Updated_MoneyGoal_Label}                   ph.mbtc.platform11.earnest.debug:id/txt_goal
${OK_buttn_Update_MoneyGoal}                 ph.mbtc.platform11.earnest.debug:id/update_money_goal_button

${CancelModal_Icon}                         /hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ImageView
${Do_You_want_ToCancel_Label}               //android.widget.TextView[@text = 'Do you want to cancel?']
${Cancel_Label_Discarded}                   //android.widget.TextView[@text = 'All the information that you entered and/or selected will be discarded.']
${Cancel_NOBtn}                             ph.mbtc.platform11.earnest.debug:id/cancel_no
${Cancel_YesBtn}                            ph.mbtc.platform11.earnest.debug:id/cancel_yes
${Custom_Goal_User_Input}                   Buy planet and Mars


*** Test Cases ***
Open_Application
    AppiumLibrary.Open Application                              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                                       10s

Login to earnest app
    AppiumLibrary.Click element                                 ${Close_AppBtn}
    Sleep                                                       3s
    AppiumLibrary.Input text                                    ${EmailField_LoginPage}                    ${Valid_UserEmailAddress}
    AppiumLibrary.Input text                                    ${PassField_LoginPage}                     ${Valid_UserPassword}
    AppiumLibrary.Click element                                 ${LoginBtn_LoginPage}
    Sleep                                                       20s
    AppiumLibrary.Click element                                 ${BtnSubmit_OtpPage}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${btn_Home_SkipBtn}
    Sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${More_kebab_menuBtn}
    AppiumLibrary.Click element                                 ${More_kebab_menuBtn}
    sleep                                                       5s
    AppiumLibrary.wait until page contains element              ${Click_ShowProfie_btn}
    AppiumLibrary.Click element                                 ${Click_ShowProfie_btn}
    AppiumLibrary.swipe by percent                              50     50     50      70     2000
    AppiumLibrary.swipe                                         0     2000     100     100
    AppiumLibrary.Page should contain element                   ${Money_Goal_Label}
    AppiumLibrary.Page should contain text                      ${Money_goal_UpdateBtn}                      Update
    ${YourSelected_money_goal}                                  AppiumLibrary.Get text                       ${Profile_Money_Goal}
    AppiumLibrary.Page should contain text                      ${YourSelected_money_goal}
    AppiumLibrary.Click element                                 ${Money_goal_UpdateBtn}
    AppiumLibrary.Page should contain text                      ${BackBtn_MoneyGoal_Page1}                   Back
    AppiumLibrary.Page should contain element                   ${Current_MoneyGoal_Label}
    ${CurrentSelected_MoneyGoal_Txt}                            AppiumLibrary.Get text                       ${CurrentSelected_MoneyGoal}
    AppiumLibrary.Page should contain text                      ${CurrentSelected_MoneyGoal_Txt}
    AppiumLibrary.Page should contain text                      ${Update_Moneygoal_Btn}                      Update Money Goal
    AppiumLibrary.Click element                                 ${Update_Moneygoal_Btn}
    Sleep                                                       5s
    AppiumLibrary.wait until page contains element              ${Cancelbtn_MoneyGoal_Page2}
    AppiumLibrary.Page should contain text                      ${Cancelbtn_MoneyGoal_Page2}                 Cancel
    AppiumLibrary.Page should contain element                   ${Money_Goal_Header}
    AppiumLibrary.Page should contain element                   ${What_isYour_MoneyGoal}
    AppiumLibrary.Page should contain element                   ${As_You_StartYour_label}
    AppiumLibrary.Page should contain element                   ${Please_Choose_Just_once}
    AppiumLibrary.Page should contain element                   ${Pay_for_kids_tuition}
    AppiumLibrary.Page should contain element                   ${Save_for_retirement}
    AppiumLibrary.Page should contain element                   ${Buy_a_house}
    AppiumLibrary.swipe                                         0     2000     100     100
    AppiumLibrary.Page should contain element                   ${Buy_a_car}                                                                       #Buy a car Label and Radio Button is displayed.
    AppiumLibrary.Page should contain element                   ${Make_money_grow}                                                                 #Make money grow Label and Radio Button is displayed.
    AppiumLibrary.Page should contain element                   ${Start_a_business}                                                                #Start a business Label and Radio Button is displayed.
    AppiumLibrary.Page should contain element                   ${Cant_find_your_goal}                                                             #Can't find your goal in the choices? Label is displayed.
    AppiumLibrary.Page should contain element                   ${Custom_goal_TextInput}
    AppiumLibrary.click element                                 ${Start_a_business}
    AppiumLibrary.click element                                 ${ContinueBtn_MoneyGoal_Page2}
    Sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${Your_New_MoneyGoal_Label}
    AppiumLibrary.Page should contain text                      ${BackBtn_MoneyGoal_Page3}                      Back
    AppiumLibrary.Page should contain element                   ${Your_New_MoneyGoal_Label}
    ${NewUpdate_MoneyGoal_Selected}                             AppiumLibrary.Get text                         ${Updated_MoneyGoal_Label}
    AppiumLibrary.Page should contain text                      ${NewUpdate_MoneyGoal_Selected}
    AppiumLibrary.Page should contain text                      ${OK_buttn_Update_MoneyGoal}                    OK
    AppiumLibrary.click element                                 ${OK_buttn_Update_MoneyGoal}
    AppiumLibrary.wait until page contains element              ${Money_Goal_Label}

Updating the Money Goal (Custom goal)
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${Money_goal_UpdateBtn}
    AppiumLibrary.Click element                                 ${Update_Moneygoal_Btn}
    AppiumLibrary.swipe by percent                              50     50     50      70     2000
    AppiumLibrary.swipe                                         0     1500     100     100
    Sleep                                                       5s
    AppiumLibrary.wait until page contains element              ${Start_a_business}
    AppiumLibrary.Input text                                    ${Custom_goal_TextInput}                                ${Custom_Goal_User_Input}
    AppiumLibrary.click element                                 ${ContinueBtn_MoneyGoal_Page2}
    AppiumLibrary.click element                                 ${OK_buttn_Update_MoneyGoal}
    AppiumLibrary.wait until page contains element              ${Money_Goal_Label}

Cancelling Money Goal update
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${Money_goal_UpdateBtn}
    AppiumLibrary.Click element                                 ${Update_Moneygoal_Btn}
    sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${Save_for_retirement}
    AppiumLibrary.click element                                 ${Save_for_retirement}
    AppiumLibrary.click element                                 ${Cancelbtn_MoneyGoal_Page2}
    Sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${Do_You_want_ToCancel_Label}
#    AppiumLibrary.Page should contain element                   ${CancelModal_Icon}
    AppiumLibrary.Page should contain element                   ${Do_You_want_ToCancel_Label}
    AppiumLibrary.Page should contain element                   ${Cancel_Label_Discarded}
    AppiumLibrary.Page should contain text                      ${Cancel_NOBtn}                                         No
    AppiumLibrary.Page should contain text                      ${Cancel_YesBtn}                                        Yes
    AppiumLibrary.click element                                 ${Cancel_NOBtn}
    AppiumLibrary.click element                                 ${Cancelbtn_MoneyGoal_Page2}
    sleep                                                       2s
    AppiumLibrary.click element                                 ${Cancel_YesBtn}
    AppiumLibrary.wait until page contains element              ${Money_Goal_Label}

Back Button Validation
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${Money_goal_UpdateBtn}
    AppiumLibrary.Click element                                 ${Update_Moneygoal_Btn}
    Sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${Money_Goal_Label}
    AppiumLibrary.Click element                                 ${Cancelbtn_MoneyGoal_Page2}
    AppiumLibrary.Click element                                 ${BackBtn_MoneyGoal_Page1}






