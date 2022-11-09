*** Settings ***
Library     AppiumLibrary
Library     Selenium2Library
*** Variables ***
#Defined variables                             Value
${Support_Deeplink}                            //android.widget.TextView[@text = 'CLICK HERE!']
${chromedriverExecutable}                      C:\Users\John Robert\PycharmProjects\P11_earnest\chromedriver.exe
${Get_started}                                 Get started
${Get_started_Button}                          ph.mbtc.platform11.earnest.debug:id/getStartedButton
${Get_OK_Button}                               //android.widget.TextView[@text = 'Close app']
${Cancel_Button_SignUp_Page1}                  ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Signup_Label_Signup_Page1}                   //android.widget.TextView[@text = 'Sign Up']
${Terms&Condition_Label_Signup_Page1}          //android.widget.TextView[@text = 'Terms & Conditions of Use and Privacy Policy']
${Here_is_summary_of_the_terms}                //android.widget.TextView[@text = 'Here is a summary of the Terms & Conditions of Use and Privacy Policy of Earnest to help you understand what you are agreeing to.']
${T&C_Number1}                                 //android.widget.TextView[@text = '1']
${T&C_Number1_Label}                           //android.widget.TextView[@text = concat('Earnest is owned and operated by Metrobank, so all the bank', "'", 's rules apply to it. This also means Earnest is covered by Philippine laws.')]
${T&C_Number2}                                 //android.widget.TextView[@text = '2']
${T&C_Number2_Label}                           //android.widget.TextView[@text = 'Your privacy is protected by the DATA PRIVACY ACT and Metrobank’s data security policies.']
${Click_T&C_Number2}                           ph.mbtc.platform11.earnest.debug:id/txt_data_privacy_act
${T&C_Number3}                                 //android.widget.TextView[@text = '3']
${T&C_Number3_Label}                           //android.widget.TextView[@text = 'We will let you know what information and data we need, which also means you are responsible for the accuracy of what you provide.']
${T&C_Number4}                                 //android.widget.TextView[@text = '4']
${T&C_Number4_Label}                           //android.widget.TextView[@text = 'You are responsible for keeping access to your account safe.']
${T&C_Number5}                                 //android.widget.TextView[@text = '5']
${T&C_Number5_Label}                           //android.widget.TextView[@text = 'There may be times that Earnest will not be available because of maintenance or things out of anyone’s control.']
${Read_Full_Terms&Condition}                   //android.widget.TextView[@text = 'READ FULL TERMS AND CONDITIONS']
${Read_Full_Privacy&Data}                      //android.widget.TextView[@text = 'READ FULL PRIVACY POLICY']
${I_Have_Read_&Understand}                     //android.widget.CheckBox[@text = 'I have read and understand all of the above']
${I_Have_Read_&Understand_Checkbox}            ph.mbtc.platform11.earnest.debug:id/cbox_agree
${Continue_Button}                             ph.mbtc.platform11.earnest.debug:id/btn_tnc_continue

${Cancel_Button_SignUp_Page2}                  ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Signup_Label_Signup_Page2}                   //android.widget.TextView[@text = 'Sign Up']
${Earnest_Profile_Label}                       //android.widget.TextView[@text = 'Earnest Profile']
${Please_enter_the_email}                      //android.widget.TextView[@text = 'Please enter the email you want to use for logging in to Earnest.']
${Email_address_Label}                         //android.widget.TextView[@text = 'Email address']
${Email_address_Textfield}                     ph.mbtc.platform11.earnest.debug:id/input
${Retype_Email_address_Label}                  //android.widget.TextView[@text = 'Retype email address']
${Retype_Email_address_Textfield}              //android.widget.RelativeLayout[2]//android.widget.EditText
${Back_Button_Signup_Page2}                    ph.mbtc.platform11.earnest.debug:id/btn_back_sign_up
${Next_Button_Signup_Page2}                    ph.mbtc.platform11.earnest.debug:id/btn_continue_sign_up

${Cancel_Button_SignUp_Page3}                  ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Signup_Label_Signup_Page3}                   //android.widget.TextView[@text = 'Sign Up']
${Create_Password_Signup_Page3}                //android.widget.TextView[@text = 'Create Password']
${Set_a_Password_Label}                        //android.widget.TextView[@text = 'Set a password for your account.']
${Password_label_Signup_Page3}                 //android.widget.TextView[@text = 'Password']
${Password_Field_Signup_Page3}                 ph.mbtc.platform11.earnest.debug:id/input
${Password_Showbtn_Signup_Page3}               //android.widget.TextView[@text = 'SHOW']
${Click_Showbtn_ID}                            ph.mbtc.platform11.earnest.debug:id/button_right
${Password_Criteria_one}                       //android.widget.TextView[@text = '8+']
${Password_Criteria_one_Text}                  //android.widget.TextView[@text = 'Characters']
${Password_Criteria_two}                       //android.widget.TextView[@text = 'A']
${Password_Criteria_two_Text}                  //android.widget.TextView[@text = 'Uppercase']
#${Password_Criteria_three}                     //android.widget.TextView[@text = '']
${Password_Criteria_three_Text}                //android.widget.TextView[@text = 'Lowercase']
${Password_Criteria_four}                      //android.widget.TextView[@text = '1']
${Password_Criteria_four_Text}                 //android.widget.TextView[@text = 'Numbers']
${Password_Criteria_five}                      //android.widget.TextView[@text = '@']
${Password_Criteria_five_Text}                 //android.widget.TextView[@text = 'Special Character']
${Back_Button_Signup_Page3}                    //android.widget.TextView[@text = 'Back']
${Next_Button_Signup_Page3}                    ph.mbtc.platform11.earnest.debug:id/btn_continue_sign_up

${Cancel_Button_SignUp_Page4}                  ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Signup_Label_Signup_Page4}                   //android.widget.TextView[@text = 'Sign Up']
${Confirm_Password_Signup_Page4}               //android.widget.TextView[@text = 'Confirm Password']
${Retype_Password_Label_Page4}                 //android.widget.TextView[@text = 'Retype your password.']
${Password_Label_Page4}                        //android.widget.TextView[@text = 'Password']
${Retype_Password_field_Page4}                 ph.mbtc.platform11.earnest.debug:id/input
${Password_Showbtn_Signup_Page4}               //android.widget.TextView[@text = 'SHOW']
${Click_Showbtn_ID_Page4}                      ph.mbtc.platform11.earnest.debug:id/button_right
${Back_Button_Signup_Page4}                    ph.mbtc.platform11.earnest.debug:id/btn_back_sign_up
${Next_Button_Signup_Page4}                    ph.mbtc.platform11.earnest.debug:id/btn_continue_sign_up

${Cancel_Button_SignUp_Page5}                  ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Signup_Label_Signup_Page5}                   //android.widget.TextView[@text = 'Sign Up']
${Personal_Info_Label_Signup_Page5}            //android.widget.TextView[@text = 'Personal Information']
${We_Need_Some_Personal_Signup_Page5}          //android.widget.TextView[@text = 'We need some personal details to create your Earnest profile.']
${First_Name_Label_Signup_Page5}               //android.widget.TextView[@text = 'First name']
${First_Name_TxtField_Signup_Page5}            //android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.EditText
${Middle_Name_Label_Signup_Page5}              //android.widget.TextView[@text = 'Middle name']
${Middle_Name_TxtField_Signup_Page5}           //android.widget.RelativeLayout[2]//android.widget.EditText
${Middle_Name_Checkbox_Signup_Page5}           //android.widget.TextView[@text = 'I do not have a middle name.']
${Last_Name_Label_Signup_Page5}                //android.widget.TextView[@text = 'Last name']
${Last_Name_TxtField_Signup_Page5}             //android.widget.RelativeLayout[3]//android.widget.EditText
${Birthday_Label_Signup_Page5}                 //android.widget.TextView[@text = 'Birthday']
${Birthday_TxtField_Signup_Page5}              ph.mbtc.platform11.earnest.debug:id/txt_bdate
${Back_Button_Signup_Page5}                    ph.mbtc.platform11.earnest.debug:id/btn_back_sign_up
${Next_Button_Signup_Page5}                    ph.mbtc.platform11.earnest.debug:id/btn_continue_sign_up

${Cancel_Button_SignUp_Otp}                    ph.mbtc.platform11.earnest.debug:id/btn_cancel
${Signup_Label_Signup_Otp}                     //android.widget.TextView[@text = 'Sign Up']
${Signup_Label_CheckYourEmail}                 //android.widget.TextView[@text = 'Check Your Email']
${Signup_label_Enter6DigitCode}                //android.widget.TextView[@text = 'Enter the 6-digit code we sent to']
${Signup_label_Emailaddress**}                 ph.mbtc.platform11.earnest.debug:id/txt_email_address
${Signup_Otp_Container}                        ph.mbtc.platform11.earnest.debug:id/otp_container
${Signup_Otp_Timer}                            ph.mbtc.platform11.earnest.debug:id/otp_timer
${Next_Button_OtpPage}                         ph.mbtc.platform11.earnest.debug:id/btn_continue_sign_up

${Money_Goal_Onboarding}                       //android.widget.TextView[@text = 'Money Goal']
${Set_your_Target_Label}                       //android.widget.TextView[@text = 'Set your target so you can keep track of your progress.']
${Contine_Button_Onboarding}                   ph.mbtc.platform11.earnest.debug:id/btn_continue

${Get_Money_goal}                              Money Goal
${Money_Goal_Onboarding_header}               //android.widget.TextView[@text = 'Money Goal']
${What_is_Your_Main_Label}                    //android.widget.TextView[@text = 'What is your main money goal?']
${As_you_start_investing_label}               //android.widget.TextView[@text = 'As you start your investing journey, it would be good for you to keep a goal in mind. You can change this in the future.']
${Please_choose_just_once}                    //android.widget.TextView[@text = 'Please choose just one.']
${Pay_for_kids_tuition}                       //android.widget.RadioButton[@text = "Pay for kids' tuition"]
${Save_for_retirement}                        //android.widget.RadioButton[@text = 'Save for retirement']
${Buy_a_house}                                //android.widget.RadioButton[@text = 'Buy a house']
${Buy_a_car}                                  //android.widget.RadioButton[@text = 'Buy a car']
${Make_money_grow}                            //android.widget.RadioButton[@text = 'Make money grow']
${Start_a_business}                           //android.widget.RadioButton[@text = 'Start a business']
${Cant_find_your_goal}                        //android.widget.TextView[@text = "Can't find your goal in the choices?"]
${Custom_goal_TextInput}                      ph.mbtc.platform11.earnest.debug:id/textInput
${Button_continue_money_goal}                 ph.mbtc.platform11.earnest.debug:id/btn_continue
${Your_Money_Goal_Label}                      //android.widget.TextView[@text = 'Your money goal']
${Selected_Money_Goal_Label}                  ph.mbtc.platform11.earnest.debug:id/txt_goal
${Ok_button}                                  ph.mbtc.platform11.earnest.debug:id/update_money_goal_button

${Home_Page}                                 Begin your investing journey!
${More_Kebab_menu}                           ph.mbtc.platform11.earnest.debug:id/moreButton
${Logout_Button}                             ph.mbtc.platform11.earnest.debug:id/logoutButton
${Yes_Button}                                ph.mbtc.platform11.earnest.debug:id/yesButton
${More_Frame}                                /hierarchy/android.widget.FrameLayout

#Define Variables for Username & Password
${Valid_Email_Address}                         automation80@getnada.com
${Valid_Retype_Email_Address}                  automation80@getnada.com
${Valid_User_Password}                         Test*123
${Retype_Valid_User_Password}                  Test*123

#Define Variables for Personal Information
${User_First_Name}                             Lee
${User_Middle_Name}                            Min
${User_Last_Name}                              Ho
${User_Birthday}                               06141990

#Define Variables for Email error validation
${Login_Option_Button}                        ph.mbtc.platform11.earnest.debug:id/optionsButton
${Option_Signup_Button}                       ph.mbtc.platform11.earnest.debug:id/signUpButton
${Empty_Email_Field}                         //android.widget.TextView[@text = 'Please enter an active email address you own.']
${Empty_Retype_Email_Field}                  //android.widget.TextView[@text = 'The email addresses don’t match.']
${Email_Already_Exists}                      //android.widget.TextView[@text = 'This email address has already been registered.']
${Email_is_not_valid}                        //android.widget.TextView[@text = 'Your email address should have one “@”.']
${Email_is_invalid_format}                   //android.widget.TextView[@text = 'The format of your email address isn’t valid.']
${Email_Is_Already_registered}               automation13@getnada.com
${Email_Is_Not_Valid_Value}                  automation21getnada.com
${Email_Is_Invalid_Format_value}             automation22@getnadacom
${Correct_email_Address}                     automation0001@getnada.com

#Define Variables for Password error validation
${Password_with_no_Char&Uppercase}          test5612
${Password_with_no_Numb&SpecChars}          Testingtesting
${Correct&Valid_Password}                   Testing*123
${You_need_to_type_ErrorMessage}            //android.widget.TextView[@text = 'You need to type your password.']
${Password_not_match}                       Test*123456
${Password_dont_match_ErrorMessage}         //android.widget.TextView[@text = "The passwords don't match."]

#Define Variables for Personal Information Error Message Validation
${Firstname_Error_Message}                  //android.widget.TextView[@text = 'We need to know your first name.']
${Middlename_Error_Message}                 //android.widget.TextView[@text = 'Information is required.']
${Lastname_Error_Message}                   //android.widget.TextView[@text = 'We need to know your last name.']
${Birthday_Error_Message}                   //android.widget.TextView[@text = 'We need to know your birthday.']
${Birthdate_less_than_18yrsold}              06142018
${Invalid_Birthday_Format}                   0805
${The_date_Doesntexists_Error}               //android.widget.TextView[@text ="The date you entered doesn’t exist."]
${Atleast_18yrsold_ErrorMsg}                 //android.widget.TextView[@text ='You must be at least 18 years old to sign up for Earnest.']

*** Test Cases ***
Open_Application
    AppiumLibrary.Open Application                            http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                       10s

Sign up and App Onboarding Scripts (Happy Path)
    sleep                                       10s
    AppiumLibrary.Click Element                               ${Get_started_Button}                                                              #Tap Get Started Button
    AppiumLibrary.Page should contain text                    ${Cancel_Button_SignUp_Page1}           Cancel                                     #Cancel button is displayed.
    AppiumLibrary.Page should contain element                 ${Signup_Label_Signup_Page1}                                                       #Sign Up label is displayed.
    AppiumLibrary.Page should contain element                 ${Terms&Condition_Label_Signup_Page1}                                              #Terms & Conditions of Use and Privacy Policy is displayed.
    AppiumLibrary.Page should contain element                 ${Here_is_summary_of_the_terms}                                                    #Here is a summary of the Terms & Conditions of Use and Privacy Policy of Earnest to help you understand what you are agreeing to.
    AppiumLibrary.Page should contain element                 ${T&C_Number1}                                                                     #Number 1 is displayed.
    AppiumLibrary.Page should contain element                 ${T&C_Number1_Label}                                                               #Earnest is owned and operated by Metrobank, so all the bank's rules apply to it. This also means Earnest is covered by Philippine laws.
    AppiumLibrary.Page should contain element                 ${T&C_Number2}                                                                     #Number 2 is displayed.
    AppiumLibrary.Page should contain element                 ${T&C_Number2_Label}                                                               #Your privacy is protected by the DATA PRIVACY ACT and Metrobank’s data security policies. label is displayed.
    #Click Element                                            ${Click_T&C_Number2}                                                               #Tap DATA PRIVACY ACT
    AppiumLibrary.Page should contain element                 ${T&C_Number3}                                                                     #Number 3 is displayed.
    AppiumLibrary.Page should contain element                 ${T&C_Number3_Label}                                                               #We will let you know what information and data we need, which also means you are responsible for the accuracy of what you provide. Label is displayed.
    AppiumLibrary.swipe                                       0     1000     100     100
    AppiumLibrary.Page should contain element                 ${T&C_Number4}                                                                     #Number 4 is displayed.
    AppiumLibrary.Page should contain element                 ${T&C_Number4_Label}                                                               #You are responsible for keeping access to your account safe. label is displayed.*** Variables ***
    AppiumLibrary.Page should contain element                 ${T&C_Number5}                                                                     #Number 5 is displayed.
    AppiumLibrary.Page should contain element                 ${T&C_Number5_Label}                                                               #There may be times that Earnest will not be available because of maintenance or things out of anyone’s control. label is displayed.*** Variables ***
    AppiumLibrary.Page should contain element                 ${Read_Full_Terms&Condition}                                                       #READ FULL TERMS AND CONDITIONS label is displayed.
    AppiumLibrary.Page should contain element                 ${Read_Full_Privacy&Data}                                                          #READ FULL PRIVACY POLICY label is displayed.
    AppiumLibrary.Page should contain element                 ${I_Have_Read_&Understand}                                                         #I have read and understand all of the above
    AppiumLibrary.Click Element                               ${I_Have_Read_&Understand_Checkbox}                                                #Tap I have read and understand all of the above in inactive state
    AppiumLibrary.Click Element                               ${I_Have_Read_&Understand_Checkbox}                                                #Tap I have read and understand all of the above in Active state
    AppiumLibrary.Element should be disabled                  ${Continue_Button}                                                                 #Continue button is disabled.
    AppiumLibrary.Click Element                               ${I_Have_Read_&Understand_Checkbox}                                                #Tap I have read and understand all of the above in inactive state
    AppiumLibrary.Click Element                               ${continue_button}                                                                 #Tap Continue button
    AppiumLibrary.Page should contain text                    ${Cancel_Button_SignUp_Page1}           Cancel                                     #Cancel button is displayed in Sign up page 2.
    AppiumLibrary.Page should contain element                 ${Signup_Label_Signup_Page2}                                                       #Sign Up label is displayed in page 2.
    AppiumLibrary.Page should contain element                 ${Please_enter_the_email}                                                          #Please enter the email you want to use for logging in to Earnest.
    AppiumLibrary.Page should contain element                 ${Email_address_Label}                                                             #Email address label is displayed.
    AppiumLibrary.Page should contain element                 ${Retype_Email_address_Label}                                                      #Retype Email address label is displayed.
    AppiumLibrary.Page should contain text                    ${Back_Button_Signup_Page2}             Back                                       #< Back button is displayed
    #Element should be disabled                               ${Next_Button_Signup_Page2}                                                        #Next button is disabled.
    AppiumLibrary.Input text                                  ${Email_address_Textfield}              ${Valid_Email_Address}                     #User enter valid email address
    AppiumLibrary.Input text                                  ${Retype_Email_address_Textfield}       ${Valid_Retype_Email_Address}              #User retype valid email address
    AppiumLibrary.Element should be enabled                   ${Next_Button_Signup_Page2}                                                        #Next button is enabled.
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page2}                                                        #Tap Next Button
    AppiumLibrary.Page should contain text                    ${Cancel_Button_SignUp_Page3}           Cancel                                     #Cancel button is displayed.
    AppiumLibrary.Page should contain element                 ${Signup_Label_Signup_Page3}                                                       #Sign up label is displayed.
    AppiumLibrary.Page should contain element                 ${Create_Password_Signup_Page3}                                                    #Create Password label is displayed.
    AppiumLibrary.Page should contain element                 ${Set_a_Password_Label}                                                            #Set a password for your account label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_label_Signup_Page3}                                                     #Password Label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Field_Signup_Page3}                                                     #Password input field is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Showbtn_Signup_Page3}                                                   #Show button is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Criteria_one}                                                           #8+ label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Criteria_one_Text}                                                      #Characters label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Criteria_two}                                                           #A label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Criteria_two_Text}                                                      #Uppercase label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Criteria_three_Text}                                                    #Lowercase label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Criteria_four}                                                          #1 label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Criteria_four_Text}                                                     #Numbers label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Criteria_five}                                                          #@ label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Criteria_five_Text}                                                     #Special Character label is displayed.
    AppiumLibrary.Input text                                  ${Password_Field_Signup_Page3}           ${Valid_User_Password}                    #User enter valid email.
    AppiumLibrary.Click element                               ${Click_Showbtn_ID}                                                                #Click Show password button
    AppiumLibrary.Click element                               ${Click_Showbtn_ID}                                                                #Click Hide password button
    AppiumLibrary.Element should be enabled                   ${Next_Button_Signup_Page3}                                                        #Next button is enabled
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page3}                                                        #Click Next button
    AppiumLibrary.Page should contain element                 ${Cancel_Button_SignUp_Page4}           Cancel                                     #Cancel button is displayed in Sign up page 4.
    AppiumLibrary.Page should contain element                 ${Signup_Label_Signup_Page4}                                                       #Sign up label is displayed in Sign up page 4.
    AppiumLibrary.Page should contain element                 ${Confirm_Password_Signup_Page4}                                                   #Confirm password label is displayed
    AppiumLibrary.Page should contain element                 ${Retype_Password_Label_Page4}                                                     #Retype your password. label is displayed.
    AppiumLibrary.Page should contain element                 ${Password_Label_Page4}                                                            #Password label is displayed.
    AppiumLibrary.Page should contain element                 ${Retype_Password_field_Page4}                                                     #Password input field is displayed.
    AppiumLibrary.Input text                                  ${Retype_Password_field_Page4}           ${Retype_Valid_User_Password}             #User re-enter valid password.
    AppiumLibrary.Page should contain element                 ${Password_Showbtn_Signup_Page4}                                                   #Show Button is displayed.
    AppiumLibrary.Click element                               ${Click_Showbtn_ID_Page4}                                                          #Click Show button
    AppiumLibrary.Click element                               ${Click_Showbtn_ID_Page4}                                                          #Click Hide button
    AppiumLibrary.Page should contain text                    ${Back_Button_Signup_Page4}             Back                                       #Back button is displayed
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page4}                                                        #Click Next button
    Sleep                                                     5s
    AppiumLibrary.Page should contain text                    ${Cancel_Button_SignUp_Page5}           Cancel                                     #Cancel button is displayed in sign up page 5.
    AppiumLibrary.Page should contain element                 ${Signup_Label_Signup_Page5}                                                       #Signup Label is displayed in sign up page 5.
    AppiumLibrary.Page should contain element                 ${Personal_Info_Label_Signup_Page5}                                                #Personal Information Label is displayed.
    AppiumLibrary.Page should contain element                 ${We_Need_Some_Personal_Signup_Page5}                                              #We need some personal details to create your Earnest profile. Label is displayed.
    AppiumLibrary.Page should contain element                 ${First_Name_Label_Signup_Page5}                                                   #Firstname Label is displayed.
    AppiumLibrary.Input text                                  ${First_Name_TxtField_Signup_Page5}          ${User_First_Name}                    #Type in valid Firstname
    AppiumLibrary.Page should contain element                 ${Middle_Name_Label_Signup_Page5}                                                  #Middle name Label is displayed.
    AppiumLibrary.Input text                                  ${Middle_Name_TxtField_Signup_Page5}         ${User_Middle_Name}                   #User type in valid middle name.
    AppiumLibrary.Page should contain element                 ${Last_Name_Label_Signup_Page5}                                                    #Last name Label is displayed.
    AppiumLibrary.Input text                                  ${Last_Name_TxtField_Signup_Page5}           ${User_Last_Name}                     #User type in valid middle name.
    AppiumLibrary.swipe                                       0     600     100     100
    AppiumLibrary.Page should contain element                 ${Birthday_Label_Signup_Page5}                                                     #Birthday Label is displayed.
    AppiumLibrary.Input text                                  ${Birthday_TxtField_Signup_Page5}            ${User_Birthday}                      #User type in valid Birthdate
    AppiumLibrary.Page should contain element                 ${Back_Button_Signup_Page5}                  Back                                  #Back Button is displayed.
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page5}                                                        #Click Next Button
    Sleep                                                     5s
    AppiumLibrary.Page should contain text                    ${Cancel_Button_SignUp_Otp}                  Cancel                                #Cancel button is displayed.
    AppiumLibrary.Page should contain element                 ${Signup_Label_Signup_Otp}                                                         #Sign Up header is displayed.
    AppiumLibrary.Page should contain element                 ${Signup_Label_CheckYourEmail}                                                     #Check your email label is displayed
    AppiumLibrary.page should contain element                 ${Signup_label_Enter6DigitCode}                                                    #Enter the 6-digit code we sent to label is displayed.
    AppiumLibrary.Element should be visible                   ${Signup_label_Emailaddress**}
    AppiumLibrary.Element should be visible                   ${Signup_Otp_Container}                                                            #Otp input field is displayed.
    AppiumLibrary.Element should be visible                   ${Signup_Otp_Timer}                                                                #Otp timer is displayed.
    AppiumLibrary.Page should contain element                 ${Next_Button_OtpPage}                      Next                                   #Next Button is displayed.
    Sleep                                                     20s
    AppiumLibrary.Click element                               ${Next_Button_OtpPage}                                                             #Click next button.
    sleep                                                     5s
    AppiumLibrary.Page should contain element                 ${Money_Goal_Onboarding}                                                           #Money Goal header is displayed.
    AppiumLibrary.Page should contain element                 ${Set_your_Target_Label}                                                           #Set your target so you can keep track of your progress. label is displayed.
    AppiumLibrary.Page should contain element                 ${Contine_Button_Onboarding}               Continue                                #Continue button is displayed.
    AppiumLibrary.Click element                               ${Contine_Button_Onboarding}                                                       #Click continue button.
    AppiumLibrary.Wait until page contains                    ${Get_Money_goal}
    AppiumLibrary.Page should contain element                 ${Money_Goal_Onboarding_header}                                                    #Money Goal Header is displayed
    AppiumLibrary.Page should contain element                 ${What_is_Your_Main_Label}                                                         #What is your main money goal? label is displayed.
    AppiumLibrary.Page should contain element                 ${As_you_start_investing_label}                                                    #As you start your investing journey, it would be good for you to keep a goal in mind. You can change this in the future. Label is displayed.
    AppiumLibrary.Page should contain element                 ${Please_choose_just_once}                                                         #Please choose just one. Label is displayed
    AppiumLibrary.Page should contain element                 ${Pay_for_kids_tuition}                                                            #Pay for kids' tuition Label & Radio Button is displayed.
    AppiumLibrary.Page should contain element                 ${Save_for_retirement}                                                             #Save for retirement Label and Radio Button is displayed.
    AppiumLibrary.Page should contain element                 ${Buy_a_house}                                                                     #Buy a house Label and Radio Button is displayed.
    AppiumLibrary.swipe                                       0     2000     100     100
    AppiumLibrary.Page should contain element                 ${Buy_a_car}                                                                       #Buy a car Label and Radio Button is displayed.
    AppiumLibrary.Page should contain element                 ${Make_money_grow}                                                                 #Make money grow Label and Radio Button is displayed.
    AppiumLibrary.Page should contain element                 ${Start_a_business}                                                                #Start a business Label and Radio Button is displayed.
    AppiumLibrary.Page should contain element                 ${Cant_find_your_goal}                                                             #Can't find your goal in the choices? Label is displayed.
    AppiumLibrary.Page should contain element                 ${Custom_goal_TextInput}                                                           #Custom goal input Field is displayed.
    AppiumLibrary.click element                               ${Make_money_grow}                                                                 #User Select Money Grow from option.
    AppiumLibrary.Page should contain text                    ${Button_continue_money_goal}               Submit                                 #Submit button is displayed.
    AppiumLibrary.click element                               ${Button_continue_money_goal}                                                      #User click continue button
    Sleep                                                     3s
    AppiumLibrary.Page should contain element                 ${Your_Money_Goal_Label}                                                           #Your Money goal label is displayed.
    ${Your_selected_Money_goal}                               AppiumLibrary.Get text            ${Selected_Money_Goal_Label}
    AppiumLibrary.Page should contain text                    ${Your_selected_Money_goal}                                                        #Selected money goal is displayed.
    AppiumLibrary.Click element                               ${Ok_button}                                                                       #Click OK Button
    Sleep                                                     5s
    AppiumLibrary.Wait until page contains                    ${Home_Page}                                                                       #Home page is displayed.
    AppiumLibrary.CLick element                               ${More_Kebab_menu}                                                                 #Click More Kebab Menu
    Sleep                                                     3s
    AppiumLibrary.swipe by percent                            50     50     50      70     2000
    AppiumLibrary.swipe                                       0     2000     100     100
    AppiumLibrary.Click element                               ${Logout_Button}                                                                   #Click Logout Button
    Sleep                                                     2s
    AppiumLibrary.Click element                               ${Yes_Button}                                                                      #Click Yes Button

Email Error Validation
    AppiumLibrary.Click element                               ${Login_Option_Button}                                                             #Click Option button from Login Page
    AppiumLibrary.Click element                               ${Option_Signup_Button}                                                            #Click Sign Up Button
    sleep                                                     3s
    AppiumLibrary.swipe                                       0     1000     100     100
    AppiumLibrary.Click Element                               ${I_Have_Read_&Understand_Checkbox}                                                #Tap I have read and understand all of the above in inactive state
    AppiumLibrary.Click Element                               ${continue_button}                                                                 #Tap continue button
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page2}                                                        #Tap Next Button
    AppiumLibrary.Page should contain element                 ${Empty_Email_Field}                                                               #Please enter an active email address you own. Error message is displayed.
    AppiumLibrary.Page should contain element                 ${Empty_Retype_Email_Field}                                                        #Please enter an active email address you own. Error message is displayed.
    Sleep                                                     3s
    AppiumLibrary.Input text                                  ${Email_address_Textfield}              ${Email_Is_Already_registered}             #User enter existing email address
    AppiumLibrary.Input text                                  ${Retype_Email_address_Textfield}       ${Email_Is_Already_registered}             #User enter existing email address
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page2}                                                        #Tap Sign up Button
    AppiumLibrary.Page should contain element                 ${Email_Already_Exists}                                                            #This email address has already been registered. Error Message is displayed.
    Sleep                                                     3s
    AppiumLibrary.clear text                                  ${Email_address_Textfield}                                                         #Clear Text Field
    AppiumLibrary.clear text                                  ${Retype_Email_address_Textfield}                                                  #Clear Text Field
    AppiumLibrary.Input text                                  ${Email_address_Textfield}              ${Email_Is_Not_Valid_Value}                #User enter invalid email address
    AppiumLibrary.Input text                                  ${Retype_Email_address_Textfield}       ${Email_Is_Not_Valid_Value}                #User enter invalid email address
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page2}                                                        #Tap Sign up Button
    AppiumLibrary.Page should contain element                 ${Email_is_not_valid}                                                              #Your email address should have one “@”. Error message is displayed.
    Sleep                                                     3s
    AppiumLibrary.clear text                                  ${Email_address_Textfield}                                                         #Clear Text Field
    AppiumLibrary.clear text                                  ${Retype_Email_address_Textfield}                                                  #Clear Text Field
    AppiumLibrary.Input text                                  ${Email_address_Textfield}              ${Email_Is_Invalid_Format_value}           #User enter incorrect format of email address
    AppiumLibrary.Input text                                  ${Retype_Email_address_Textfield}       ${Email_Is_Invalid_Format_value}           #User enter incorrect format of email address
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page2}                                                        #Tap Sign up Button
    AppiumLibrary.Page should contain element                 ${Email_is_invalid_format}                                                         #The format of your email address isn’t valid. Error message is displayed.
    Sleep                                                     3s
    AppiumLibrary.clear text                                  ${Email_address_Textfield}                                                         #Clear Text Field
    AppiumLibrary.clear text                                  ${Retype_Email_address_Textfield}                                                  #Clear Text Field
    AppiumLibrary.Input text                                  ${Email_address_Textfield}              ${Correct_email_Address}                   #User enter Correct Email address
    AppiumLibrary.Input text                                  ${Retype_Email_address_Textfield}       ${Correct_email_Address}                   #User enter Correct Email address
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page2}                                                        #Tap Sign up Button
    Sleep                                                     3s

Password Error Validation
    AppiumLibrary.Input text                                  ${Password_Field_Signup_Page3}          ${Password_with_no_Char&Uppercase}         #User input password with no Special Characters and Uppercase
    Sleep                                                     2s
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page3}                                                        #Tap Next Button
    AppiumLibrary.clear text                                  ${Password_Field_Signup_Page3}                                                     #Clear Password Field
    AppiumLibrary.Input text                                  ${Password_Field_Signup_Page3}          ${Password_with_no_Numb&SpecChars}         #User input password with no Numbers and Special Characters
    Sleep                                                     2s
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page3}                                                        #Tap Next Button
    AppiumLibrary.clear text                                  ${Password_Field_Signup_Page3}                                                     #Clear Password Field
    Sleep                                                     2s
    AppiumLibrary.Input text                                  ${Password_Field_Signup_Page3}          ${Correct&Valid_Password}                 #User enter Valid and Correct Password
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page3}                                                       #Tap Next Button
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page4}                                                       #Tap Next Button
    AppiumLibrary.Page should contain element                 ${You_need_to_type_ErrorMessage}                                                  #You need to type your password. error message is displayed.
    Sleep                                                     2s
    AppiumLibrary.Input text                                  ${Retype_Password_field_Page4}          ${Password_not_match}                     #Enter password not match
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page4}                                                       #Tap Next Button
    AppiumLibrary.Page should contain element                 ${Password_dont_match_ErrorMessage}                                               #The password don't match error message is displayed
    AppiumLibrary.clear text                                  ${Retype_Password_field_Page4}                                                    #Clear Password Field
    Sleep                                                     2s
    AppiumLibrary.Input text                                  ${Password_Field_Signup_Page3}          ${Correct&Valid_Password}                 #User enter Valid and Correct Password
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page4}                                                       #Tap Next Button

Personal Information Error Message Validation
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page5}                                                        #Click Next Button
    AppiumLibrary.Page should contain element                 ${Firstname_Error_Message}                                                         #We need to know your first name. error message is displayed
    AppiumLibrary.Page should contain element                 ${Middlename_Error_Message}                                                        #Information is required. error message is displayed.
    AppiumLibrary.Page should contain element                 ${Lastname_Error_Message}                                                          #We need to know your last name. error message is displayed.
#    AppiumLibrary.Page should contain element                 ${Birthday_Error_Message}                                                          #We need to know your birthday. error message is displayed.

    AppiumLibrary.Input text                                  ${First_Name_TxtField_Signup_Page5}          ${User_First_Name}                    #Type in valid Firstname
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page5}
    AppiumLibrary.Page should contain element                 ${Middlename_Error_Message}                                                        #Information is required. error message is displayed.
    AppiumLibrary.Page should contain element                 ${Lastname_Error_Message}                                                          #We need to know your last name. error message is displayed.

    AppiumLibrary.Input text                                  ${Middle_Name_TxtField_Signup_Page5}         ${User_Middle_Name}                   #User type in valid middle name.
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page5}
    AppiumLibrary.Page should contain element                 ${Lastname_Error_Message}                                                          #We need to know your last name. error message is displayed.
#    AppiumLibrary.Page should contain element                 ${Birthday_Error_Message}                                                          #We need to know your birthday. error message is displayed.
    AppiumLibrary.swipe                                       0    600     100     100

    AppiumLibrary.Input text                                  ${Last_Name_TxtField_Signup_Page5}           ${User_Last_Name}                     #User type in valid middle name.
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page5}
    AppiumLibrary.Page should contain element                 ${Birthday_Error_Message}                                                          #We need to know your birthday. error message is displayed.

    AppiumLibrary.Input text                                  ${Birthday_TxtField_Signup_Page5}           ${Birthdate_less_than_18yrsold}         #User type in Invalid Bithday
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page5}
    AppiumLibrary.Page should contain element                 ${Atleast_18yrsold_ErrorMsg}
    AppiumLibrary.clear text                                  ${Birthday_TxtField_Signup_Page5}

    AppiumLibrary.Input text                                  ${Birthday_TxtField_Signup_Page5}            ${Invalid_Birthday_Format}
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page5}
    AppiumLibrary.Page should contain element                 ${The_date_Doesntexists_Error}
    AppiumLibrary.clear text                                  ${Birthday_TxtField_Signup_Page5}

    AppiumLibrary.Input text                                  ${Birthday_TxtField_Signup_Page5}            ${User_Birthday}                      #User type in valid Birthdate
    AppiumLibrary.Click element                               ${Next_Button_Signup_Page5}


























