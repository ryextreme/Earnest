
*** Settings ***
Library     AppiumLibrary

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
${Valid_UserEmailAddress}                       ry004@getnada.com
${Valid_UserPassword}                           Test*123
${BtnSubmit_OtpPage}                            ph.mbtc.platform11.earnest.debug:id/btn_submit
${btn_Home_SkipBtn}                             ph.mbtc.platform11.earnest.debug:id/btnSkip
${More_kebab_menuBtn}                           ph.mbtc.platform11.earnest.debug:id/moreButton
${Click_ShowProfie_btn}                         ph.mbtc.platform11.earnest.debug:id/profileButton
${Primary_Btn_Login}                            ph.mbtc.platform11.earnest.debug:id/primary_button
${banner_deep_link}                             ph.mbtc.platform11.earnest.debug:id/banner_content_root
${Mbtc_welcome_layout}                          ph.mbtc.platform11.earnest.debug:id/welcomeLayout
${Collapse_Btn}                                 ph.mbtc.platform11.earnest.debug:id/collapse_button

${Personal_Info_Edit_Button}                    ph.mbtc.platform11.earnest.debug:id/personal_info_edit
${Personal_Info_Edit_Label}                     //android.widget.TextView[@text = 'Personal Information']
${Full_name_ShowProfile_Page}                   //android.widget.TextView[@text = 'Full Name']
${User_Fullname_ShowProfile_Page}               ph.mbtc.platform11.earnest.debug:id/profile_name
${Birthday_ShowProfile_Page}                    //android.widget.TextView[@text = 'Birthday']
${User_Birthday_ShowProfile_Page}               ph.mbtc.platform11.earnest.debug:id/birthday

${BackBtn_EditProfile_page}                    ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Edit_Profile_Header}                         //android.widget.TextView[@text = 'Edit Profile']
${Save_Button_EditProfile_page}                ph.mbtc.platform11.earnest.debug:id/btn_save
${Edit_Personal_Information_Label}             //android.widget.TextView[@text = 'Personal Information']
${We_Need_Some_Label}                          //android.widget.TextView[@text = 'We need some personal details to create your Earnest profile.']
${FirstName_EditProfile_Page}                  //android.widget.TextView[@text = 'First name']
${FN_TextField_EditProfile_Page}               ph.mbtc.platform11.earnest.debug:id/input
${FN_ShowBtn_EditProfile_Page}                 //android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.TextView[2]

${MiddleName_EditProfile_Page}                 //android.widget.TextView[@text = 'Middle name']
${MN_TextField_EditProfile_Page}               //android.widget.RelativeLayout[2]//android.widget.EditText
${MN_ShowBtn_EditProfile_Page}                //android.widget.RelativeLayout[2]//android.widget.TextView[2]
${I_DoNot_Have_MiddleName}                    //android.widget.CheckBox[@text = 'I do not have a middle name.']
${LastName_EditProfile_Page}                  //android.widget.TextView[@text = 'Last name']
${LN_TextField_EditProfile_Page}              //android.widget.RelativeLayout[3]//android.widget.EditText
${LN_ShowBtn_EditProfile_Page}                //android.widget.RelativeLayout[3]//android.widget.TextView[2]
${Birthdate_EditProfile_Page}                 //android.widget.TextView[@text = 'Birthday']
${Text_birthdate_EditProfile}                 ph.mbtc.platform11.earnest.debug:id/txt_bdate
${Birthday_TextField_EditProfile}             ph.mbtc.platform11.earnest.debug:id/txt_bdate_hint

${Update_User_FirstName}                     Auth
${Update_User_MiddleName}                    O
${Update_User_LastName}                      Tion
${Update_User_Birthdate}                     06201997

${FirstName_ErrorMEssage_Validation}        //android.widget.TextView[@text = 'We need to know your first name.']
${MiddleName_ErrorMEssage_Validation}       //android.widget.TextView[@text = 'Information is required.']
${LastName_ErrorMEssage_Validation}         //android.widget.TextView[@text = 'We need to know your last name.']
${Birthday_ErrorMEssage_Validation}         //android.widget.TextView[@text = 'We need to know your birthday.']

${Do_you_want_to_Cancel?}                   //android.widget.TextView[@text = 'Do you want to cancel?']
${All_Information_That_you}                 //android.widget.TextView[@text = 'All the information that you entered and/or selected will be discarded.']
${Cancel_Yes_Button}                        ph.mbtc.platform11.earnest.debug:id/cancel_yes
${Cancel_No_Button}                         ph.mbtc.platform11.earnest.debug:id/cancel_no

*** Test Cases ***
Open_Application
    AppiumLibrary.Open Application                              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                                       10s

Edit Personal Information Happy Path
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
#    Sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${More_kebab_menuBtn}
    AppiumLibrary.Click element                                 ${More_kebab_menuBtn}
#    sleep                                                       5s
    AppiumLibrary.wait until page contains element              ${Click_ShowProfie_btn}
    AppiumLibrary.Click element                                 ${Click_ShowProfie_btn}
    AppiumLibrary.wait until page contains element              ${Personal_Info_Edit_Button}
    AppiumLibrary.Page should contain text                      ${Personal_Info_Edit_Button}                            Edit
    AppiumLibrary.Page should contain element                   ${Personal_Info_Edit_Label}
    ${Get_User_Fullname}                                        AppiumLibrary.Get text                                  ${User_Fullname_ShowProfile_Page}
    AppiumLibrary.Page should contain text                      ${Get_User_Fullname}
    AppiumLibrary.Page should contain element                   ${Birthday_ShowProfile_Page}
    ${Get_User_Birthday}                                        AppiumLibrary.Get text                                  ${User_Birthday_ShowProfile_Page}
    AppiumLibrary.Page should contain text                      ${Get_User_Birthday}

    #Navigate to Personal Information
    AppiumLibrary.Click element                                 ${Personal_Info_Edit_Button}
    AppiumLibrary.wait until page contains element              ${Personal_Info_Edit_Label}
    AppiumLibrary.Page should contain text                      ${BackBtn_EditProfile_page}                             Back
    AppiumLibrary.Page should contain element                   ${Edit_Profile_Header}
    AppiumLibrary.Page should contain text                      ${Save_Button_EditProfile_page}                         Save
    AppiumLibrary.Page should contain element                   ${Edit_Personal_Information_Label}
    AppiumLibrary.Page should contain element                   ${We_Need_Some_Label}
    AppiumLibrary.Page should contain element                   ${FirstName_EditProfile_Page}
    AppiumLibrary.element should be visible                     ${FN_TextField_EditProfile_Page}
    ${Get_User_Fullname_TextField}                              AppiumLibrary.Get text                                  ${FN_TextField_EditProfile_Page}
    AppiumLibrary.Page should contain text                      ${Get_User_Fullname_TextField}
    AppiumLibrary.element should be visible                     ${FN_ShowBtn_EditProfile_Page}
    AppiumLibrary.Page should contain element                   ${MiddleName_EditProfile_Page}
    AppiumLibrary.element should be visible                     ${MN_TextField_EditProfile_Page}
    ${Get_User_MiddleName_Textfield}                            AppiumLibrary.Get text                                  ${MN_TextField_EditProfile_Page}
    AppiumLibrary.element should be visible                     ${MN_ShowBtn_EditProfile_Page}
    AppiumLibrary.Page should contain element                   ${I_DoNot_Have_MiddleName}
    AppiumLibrary.Page should contain element                   ${LastName_EditProfile_Page}
    AppiumLibrary.element should be visible                     ${LN_TextField_EditProfile_Page}
    ${Get_User_LastName_Textfield}                              AppiumLibrary.Get text                                  ${LN_TextField_EditProfile_Page}
    AppiumLibrary.Page should contain text                       ${Get_User_LastName_Textfield}
    AppiumLibrary.element should be visible                     ${LN_ShowBtn_EditProfile_Page}
    AppiumLibrary.Page should contain element                   ${Birthdate_EditProfile_Page}
    ${Get_User_Birthday_Textfield}                              AppiumLibrary.Get text                                  ${Text_birthdate_EditProfile}
    AppiumLibrary.Page should contain text                      ${Get_User_Birthday_Textfield}
    AppiumLibrary.element should be visible                     ${Text_birthdate_EditProfile}
    AppiumLibrary.Click element                                 ${FN_ShowBtn_EditProfile_Page}
    AppiumLibrary.Input text                                    ${FN_TextField_EditProfile_Page}                        ${Update_User_FirstName}
    AppiumLibrary.Click element                                 ${MN_ShowBtn_EditProfile_Page}
    AppiumLibrary.Input text                                    ${MN_TextField_EditProfile_Page}                        ${Update_User_MiddleName}
    AppiumLibrary.Click element                                 ${LN_ShowBtn_EditProfile_Page}
    AppiumLibrary.Input text                                    ${LN_TextField_EditProfile_Page}                        ${Update_User_LastName}
    AppiumLibrary.clear text                                    ${Text_birthdate_EditProfile}
    AppiumLibrary.Input text                                    ${Text_birthdate_EditProfile}                           ${Update_User_Birthdate}
    AppiumLibrary.Click element                                 ${Save_Button_EditProfile_page}
    AppiumLibrary.wait until page contains element              ${Personal_Info_Edit_Button}
    ${Get_User_Fullname}                                        AppiumLibrary.Get text                                  ${User_Fullname_ShowProfile_Page}
    AppiumLibrary.Page should contain text                      ${Get_User_Fullname}
    AppiumLibrary.Page should contain element                   ${Birthday_ShowProfile_Page}
    ${Get_User_Birthday}                                        AppiumLibrary.Get text                                  ${User_Birthday_ShowProfile_Page}

Error Message Validation
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${Personal_Info_Edit_Button}
    AppiumLibrary.wait until page contains element              ${Personal_Info_Edit_Label}
    AppiumLibrary.Click element                                 ${FN_ShowBtn_EditProfile_Page}
    AppiumLibrary.Input text                                    ${MN_TextField_EditProfile_Page}                        ${Update_User_MiddleName}
    AppiumLibrary.wait until page contains element              ${FirstName_ErrorMEssage_Validation}
    AppiumLibrary.Page should contain element                   ${FirstName_ErrorMEssage_Validation}
    AppiumLibrary.Click element                                 ${MN_ShowBtn_EditProfile_Page}
    AppiumLibrary.Input text                                    ${LN_TextField_EditProfile_Page}                        ${Update_User_LastName}
    AppiumLibrary.wait until page contains element              ${MiddleName_ErrorMEssage_Validation}
    AppiumLibrary.Page should contain element                   ${MiddleName_ErrorMEssage_Validation}
    AppiumLibrary.Click element                                 ${LN_ShowBtn_EditProfile_Page}
    AppiumLibrary.clear text                                    ${Text_birthdate_EditProfile}
    AppiumLibrary.Input text                                    ${Text_birthdate_EditProfile}                           ${Update_User_Birthdate}
    AppiumLibrary.wait until page contains element               ${LastName_ErrorMEssage_Validation}
    AppiumLibrary.Page should contain element                   ${LastName_ErrorMEssage_Validation}
    AppiumLibrary.clear text                                    ${Text_birthdate_EditProfile}
    AppiumLibrary.Input text                                    ${FN_TextField_EditProfile_Page}                        ${Update_User_FirstName}
    AppiumLibrary.wait until page contains element              ${Birthday_ErrorMEssage_Validation}
    AppiumLibrary.Page should contain element                   ${Birthday_ErrorMEssage_Validation}
    AppiumLibrary.element should be disabled                    ${Save_Button_EditProfile_page}
    AppiumLibrary.Input text                                    ${MN_TextField_EditProfile_Page}                        ${Update_User_MiddleName}
    AppiumLibrary.Input text                                    ${LN_TextField_EditProfile_Page}                        ${Update_User_LastName}
    AppiumLibrary.Input text                                    ${Text_birthdate_EditProfile}                           ${Update_User_Birthdate}

Cancel and Back Button Validation
    AppiumLibrary.Click element                                 ${BackBtn_EditProfile_page}
    AppiumLibrary.wait until page contains element              ${Do_you_want_to_Cancel?}
    AppiumLibrary.Page should contain element                   ${Do_you_want_to_Cancel?}
    AppiumLibrary.Page should contain element                   ${All_Information_That_you}
    AppiumLibrary.Page should contain text                      ${Cancel_Yes_Button}                                    Yes
    AppiumLibrary.Page should contain text                      ${Cancel_No_Button}                                     No
    AppiumLibrary.Click element                                 ${Cancel_No_Button}
    AppiumLibrary.Click element                                 ${BackBtn_EditProfile_page}
    AppiumLibrary.wait until page contains element              ${Do_you_want_to_Cancel?}
    AppiumLibrary.Click element                                 ${Cancel_Yes_Button}
    AppiumLibrary.wait until page contains element              ${Personal_Info_Edit_Label}
    AppiumLibrary.Page should contain element                   ${Personal_Info_Edit_Label}
    Sleep                                                       3s
    AppiumLibrary.Click element                                 ${Personal_Info_Edit_Button}
    AppiumLibrary.wait until page contains element              ${Personal_Info_Edit_Label}
    AppiumLibrary.Click element                                 ${BackBtn_EditProfile_page}
    AppiumLibrary.wait until page contains element              ${Personal_Info_Edit_Label}
    AppiumLibrary.Page should contain element                   ${Personal_Info_Edit_Label}







