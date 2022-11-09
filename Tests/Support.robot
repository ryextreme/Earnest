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

${Support_Button_MoreTab}                       ph.mbtc.platform11.earnest.debug:id/supportButton
${Support_Label_MoreTab}                        //android.widget.TextView[@text = 'Support']
${Back_Button_SupportPage}                      ph.mbtc.platform11.earnest.debug:id/backButton
${Support_Label_SupportPage}                    //android.widget.TextView[@text = 'Support']
${Get_Help_Title}                               //android.widget.TextView[@text = 'Get Help Here']
${Our_SupportTeam_Title}                        ph.mbtc.platform11.earnest.debug:id/supportMessage
${View_Faqs_Link}                               ph.mbtc.platform11.earnest.debug:id/fragmentSupportFaqLink
${My_Conversation_Label}                        //android.widget.TextView[@text = 'My conversations']
${My_Conversation_ToolTip_Icon}                 ph.mbtc.platform11.earnest.debug:id/tooltipIcon
${Your_Current_List_Label}                      //android.widget.TextView[@text = 'Your list is currently empty.']
${Need_Help_WithEarnest_Label}                  //android.widget.TextView[@text = 'Need help with Earnest? Start a conversation with us now.']
${Version_Name}                                 ph.mbtc.platform11.earnest.debug:id/versionName
${SendUsAMessage_Button}                        ph.mbtc.platform11.earnest.debug:id/newTicketButton
${FAQs_BackButton}                              ph.mbtc.platform11.earnest.debug:id/btn_back
${My_Message_Overlay_Title}                     ph.mbtc.platform11.earnest.debug:id/title
${My_Message_Overlay_XButton}                   //android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageView
${My_Message_Overlay_Content}                   //android.view.ViewGroup/android.widget.TextView[2]

${SendUs_a_Message_Header}                      //android.widget.TextView[@text = 'Send us a message']
${BackBtn_SendUsAMessage_Page}                  ph.mbtc.platform11.earnest.debug:id/backButton
${How_Can_WeHelp_Label}                         //android.widget.TextView[@text = 'How can we help you?']
${Please_GiveUSAllDetails_Label}                //android.widget.TextView[@text = 'Please give us all the details so we can help you even better.']
${Category_Label}                               //android.widget.TextView[@text = 'Category']
${Select_One_Label}                             ph.mbtc.platform11.earnest.debug:id/selectOneHint
${Category_button}                              ph.mbtc.platform11.earnest.debug:id/categoryButton
${Category_Back_Button}                         ph.mbtc.platform11.earnest.debug:id/backButton
${Category_Header}                              //android.widget.TextView[@text = 'Category']
${Learn_Option}                                 //androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.TextView
${Invest_Option}                                //android.widget.FrameLayout[2]/android.widget.TextView
${Digital_Account_Option}                       //android.widget.FrameLayout[3]/android.widget.TextView
${App_TechnicalError_Option}                    //android.widget.FrameLayout[4]/android.widget.TextView
${Subject_Label}                                //android.widget.TextView[@text = 'Subject']
${Subject_TextField}                            ph.mbtc.platform11.earnest.debug:id/subjectText
${Your_Message_Label}                           //android.widget.TextView[@text = 'Your message']
${Your_Message_Textfield}                       ph.mbtc.platform11.earnest.debug:id/messageField
${File_Attachment_Label}                        //android.widget.TextView[@text = 'File attachment (optional)']
${Select_File_Label}                            //android.widget.TextView[@text = 'Select file']
${Select_file_Button}                           ph.mbtc.platform11.earnest.debug:id/attachFileButton
${Support_SubmitBtn}                            ph.mbtc.platform11.earnest.debug:id/submitButton
${File_Attachment_Icon}                         //android.widget.ImageView
${File_Attachment_Overlay_Label}                //android.widget.TextView[@text = 'Attach a file']
${File_Attachment_Overlay_limitsize}            //android.widget.TextView[@text = 'You can upload 1 file (up to 25MB) per message.']
${Open_File_Button}                             ph.mbtc.platform11.earnest.debug:id/openButton
${Faqs_header}                                  //android.widget.TextView[@text = 'FAQs']
${img_id}                                       com.google.android.documentsui:id/icon_thumb

${BackBtn_SendUsAMessage_Page}                  ph.mbtc.platform11.earnest.debug:id/backButton
${Toolbar_title_header}                         ph.mbtc.platform11.earnest.debug:id/toolbarTitle
${Ticket_Reference_Id}                          ph.mbtc.platform11.earnest.debug:id/ticketIdtext
${Status_Label}                                 ph.mbtc.platform11.earnest.debug:id/statusText
${Message_body}                                 ph.mbtc.platform11.earnest.debug:id/message_body
${Attachment_Layout}                            ph.mbtc.platform11.earnest.debug:id/attachmentLayout
${Sent_Label_DateTime}                          ph.mbtc.platform11.earnest.debug:id/sent_label
${SUpport_Avatar}                               ph.mbtc.platform11.earnest.debug:id/listItemMessageSupportUserAvatar
${Message_areA}                                 ph.mbtc.platform11.earnest.debug:id/messageArea
${receiveDate_label}                            ph.mbtc.platform11.earnest.debug:id/receive_date
${InputTextfield_ChatArea}                      ph.mbtc.platform11.earnest.debug:id/newMessageField
${Add_Attachment_button}                        ph.mbtc.platform11.earnest.debug:id/addAttachmentButton
${Send_Button_ChatArea}                         ph.mbtc.platform11.earnest.debug:id/sendButton

${Category_Error_Message}                       //android.widget.TextView[@text = 'Please select a category.']
${Subject_Error_Message}                        //android.widget.TextView[@text = 'Please include a subject for your message.']
${YourMEssage_Error_Message}                    //android.widget.TextView[@text = 'Please include a message to continue.']
${Frame_layout_SupportPage}                     //android.widget.FrameLayout
${Empty_Message_Error}                          //android.widget.TextView[@text = 'Please enter a message to continue.']


*** Test Cases ***
Open_Application                                AppiumLibrary.Open Application                              http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                       10s

Support Happy Path
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
#Navigate to support page
    AppiumLibrary.wait until page contains element              ${Support_Button_MoreTab}
    AppiumLibrary.Page should contain element                   ${Support_Label_MoreTab}
    AppiumLibrary.Click element                                 ${Support_Button_MoreTab}
    sleep                                                       3s
    AppiumLibrary.wait until page contains element              ${Support_Label_SupportPage}
    AppiumLibrary.Page should contain text                      ${Back_Button_SupportPage}                              Back
    AppiumLibrary.Page should contain element                   ${Support_Label_SupportPage}
    AppiumLibrary.Page should contain element                   ${Get_Help_Title}
    ${Get_Our_Support_Team}                                     AppiumLibrary.Get text                                 ${Our_SupportTeam_Title}
    AppiumLibrary.Page should contain text                      ${Get_Our_Support_Team}
    AppiumLibrary.Page should contain element                   ${Our_SupportTeam_Title}
    AppiumLibrary.Page should contain text                      ${View_Faqs_Link}                                       View FAQs here
    AppiumLibrary.Click element                                 ${View_Faqs_Link}
    AppiumLibrary.wait until page contains element              ${Faqs_header}
    AppiumLibrary.Click element                                 ${FAQs_BackButton}
    AppiumLibrary.Page should contain element                   ${My_Conversation_Label}
    AppiumLibrary.Page should contain element                   ${My_Conversation_Label}
    AppiumLibrary.element should be visible                     ${My_Conversation_ToolTip_Icon}
    AppiumLibrary.Click element                                 ${My_Conversation_ToolTip_Icon}
    AppiumLibrary.wait until page contains element              ${My_Message_Overlay_Title}
    AppiumLibrary.Page should contain text                      ${My_Message_Overlay_Title}                             My Messages
    AppiumLibrary.element should be visible                     ${My_Message_Overlay_XButton}
#    ${Get_Text_From_MyMessage}                                  AppiumLibrary.Get text                                  ${My_Message_Overlay_Content}
#    AppiumLibrary.Page should contain text                      ${Get_Text_From_MyMessage}
    AppiumLibrary.Click element                                 ${My_Message_Overlay_XButton}
    AppiumLibrary.Page should contain element                   ${Your_Current_List_Label}
    AppiumLibrary.Page should contain element                   ${Need_Help_WithEarnest_Label}
    ${Get_Version_Name}                                         AppiumLibrary.Get text                                  ${Version_Name}
    AppiumLibrary.Page should contain text                      ${Get_Version_Name}
    AppiumLibrary.Page should contain text                      ${SendUsAMessage_Button}                                Send us a message
    AppiumLibrary.Click element                                 ${SendUsAMessage_Button}

#Send Message Area
    AppiumLibrary.wait until page contains element              ${SendUs_a_Message_Header}
    AppiumLibrary.Page should contain element                   ${SendUs_a_Message_Header}
    AppiumLibrary.Page should contain text                      ${BackBtn_SendUsAMessage_Page}                          Back
    AppiumLibrary.Page should contain element                   ${How_Can_WeHelp_Label}
    AppiumLibrary.Page should contain element                   ${Please_GiveUSAllDetails_Label}
    AppiumLibrary.Page should contain element                   ${Category_Label}
    AppiumLibrary.Page should contain text                      ${Select_One_Label}                                     Select one
    AppiumLibrary.element should be visible                     ${Category_button}
    AppiumLibrary.Click element                                 ${Category_button}
    AppiumLibrary.wait until page contains element              ${Category_Header}
    AppiumLibrary.Page should contain text                      ${Category_Back_Button}                                 Back
    AppiumLibrary.Page should contain element                   ${Category_Label}
    ${Get_Learn_Text}                                           AppiumLibrary.Get text                                  ${Learn_Option}
    AppiumLibrary.Page should contain text                      ${Get_Learn_Text}
    ${Get_Learn_Invest}                                         AppiumLibrary.Get text                                  ${Invest_Option}
    AppiumLibrary.Page should contain text                      ${Get_Learn_Invest}
    ${Get_DigitalAccount_Text}                                  AppiumLibrary.Get text                                  ${Digital_Account_Option}
    AppiumLibrary.Page should contain text                      ${Get_DigitalAccount_Text}
    ${Get_AppTechnicalError_Text}                               AppiumLibrary.Get text                                  ${App_TechnicalError_Option}
    AppiumLibrary.Page should contain text                      ${Get_AppTechnicalError_Text}
    AppiumLibrary.Click element                                 ${Digital_Account_Option}
    AppiumLibrary.wait until page contains element              ${How_Can_WeHelp_Label}
    AppiumLibrary.Page should contain element                   ${Subject_Label}
    AppiumLibrary.element should be visible                     ${Subject_TextField}
    AppiumLibrary.Input text                                    ${Subject_TextField}                                    Hello World
    AppiumLibrary.Page should contain element                   ${Your_Message_Label}
    AppiumLibrary.element should be visible                     ${Your_Message_Textfield}
    AppiumLibrary.Input text                                    ${Your_Message_Textfield}                               Hello Testing Automation
    AppiumLibrary.swipe by percent                              50     50     50      70     2000
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Page should contain element                   ${File_Attachment_Label}
    AppiumLibrary.Page should contain element                   ${Select_File_Label}
    AppiumLibrary.element should be visible                     ${Select_file_Button}
    AppiumLibrary.Page should contain text                      ${Support_SubmitBtn}                                    Submit
    AppiumLibrary.Click element                                 ${Select_file_Button}
    AppiumLibrary.wait until page contains element              ${File_Attachment_Overlay_Label}
    AppiumLibrary.element should be visible                     ${File_Attachment_Icon}
    AppiumLibrary.Page should contain element                   ${File_Attachment_Overlay_Label}
    AppiumLibrary.Page should contain element                   ${File_Attachment_Overlay_limitsize}
    AppiumLibrary.Page should contain text                      ${Open_File_Button}                                     Open file viewer
    AppiumLibrary.Click element                                 ${Open_File_Button}
    Sleep                                                       2s
    AppiumLibrary.Click element                                 ${img_id}
    AppiumLibrary.wait until page contains element              ${Support_SubmitBtn}
    AppiumLibrary.Click element                                 ${Support_SubmitBtn}
    Sleep                                                       5s

#Chat Area
    AppiumLibrary.wait until page contains element              ${Toolbar_title_header}
    AppiumLibrary.Page should contain text                      ${BackBtn_SendUsAMessage_Page}                          Back
    ${Get_User_MessageSubject}                                  AppiumLibrary.Get text                                  ${Toolbar_title_header}
    AppiumLibrary.Page should contain text                      ${Get_User_MessageSubject}
    ${Get_User_ReferenceNumber}                                 AppiumLibrary.Get text                                  ${Ticket_Reference_Id}
    AppiumLibrary.Page should contain text                      ${Get_User_ReferenceNumber}
    ${Get_User_MessageStatus}                                   AppiumLibrary.Get text                                  ${Status_Label}
    AppiumLibrary.Page should contain text                      ${Get_User_MessageStatus}
    ${Get_User_Message}                                         AppiumLibrary.Get text                                  ${Message_body}
    AppiumLibrary.Page should contain text                      ${Get_User_Message}
    AppiumLibrary.element should be visible                     ${Attachment_Layout}
    ${Get_User_Message_SentDateTime}                            AppiumLibrary.Get text                                  ${Sent_Label_DateTime}
    AppiumLibrary.Page should contain text                      ${Get_User_Message_SentDateTime}
#    AppiumLibrary.element should be visible                    ${SUpport_Avatar}
#    AppiumLibrary.element should be visible                    ${Message_areA}
#    ${Get_Recieve_Message_DateTime}                            AppiumLibrary.Get text                                  ${receiveDate_label}
#    AppiumLibrary.Page should contain text                     ${Get_Recieve_Message_DateTime}
    AppiumLibrary.element should be visible                     ${InputTextfield_ChatArea}
    AppiumLibrary.element should be visible                     ${Add_Attachment_button}
    AppiumLibrary.element should be visible                     ${Send_Button_ChatArea}
    AppiumLibrary.Click element                                 ${BackBtn_SendUsAMessage_Page}
    AppiumLibrary.wait until page contains element              ${Get_Help_Title}
    Sleep                                                       3s

Error Message Validation
    AppiumLibrary.Click element                                 ${SendUsAMessage_Button}
    AppiumLibrary.wait until page contains element              ${SendUs_a_Message_Header}
    AppiumLibrary.Click element                                 ${Support_SubmitBtn}
    AppiumLibrary.Page should contain element                   ${Category_Error_Message}
    AppiumLibrary.Page should contain element                   ${Subject_Error_Message}
    AppiumLibrary.Page should contain element                   ${YourMEssage_Error_Message}

    AppiumLibrary.Input text                                    ${Subject_TextField}                                    Test Automation
    AppiumLibrary.Input text                                    ${Your_Message_Textfield}                               Hello Testing Automation
    AppiumLibrary.Click element                                 ${Support_SubmitBtn}
    AppiumLibrary.Page should contain element                   ${Category_Error_Message}
    AppiumLibrary.clear text                                    ${Subject_TextField}
    AppiumLibrary.clear text                                    ${Your_Message_Textfield}

    AppiumLibrary.Click element                                 ${Category_button}
    AppiumLibrary.wait until page contains element              ${Learn_Option}
    AppiumLibrary.Click element                                 ${App_TechnicalError_Option}
    AppiumLibrary.wait until page contains element              ${Support_SubmitBtn}
    AppiumLibrary.Click element                                 ${Support_SubmitBtn}
    AppiumLibrary.Page should contain element                   ${Subject_Error_Message}
    AppiumLibrary.Page should contain element                   ${YourMEssage_Error_Message}

    AppiumLibrary.Input text                                    ${Subject_TextField}                                    Test Automation
    AppiumLibrary.Click element                                 ${Support_SubmitBtn}
    AppiumLibrary.Page should contain element                   ${YourMEssage_Error_Message}

    AppiumLibrary.Input text                                    ${Your_Message_Textfield}                               Hello Testing Automation
    AppiumLibrary.swipe by percent                              10     10     10      70     2000
    AppiumLibrary.swipe                                         0     500     100     100
    AppiumLibrary.Click element                                 ${Support_SubmitBtn}
    AppiumLibrary.wait until page contains element              ${Toolbar_title_header}
    AppiumLibrary.Click element                                  ${Add_Attachment_button}
    Sleep                                                       2s
    AppiumLibrary.Click element                                 ${img_id}
    AppiumLibrary.wait until page contains element              ${Send_Button_ChatArea}
    AppiumLibrary.Click element                                 ${Send_Button_ChatArea}
    AppiumLibrary.Page should contain element                   ${Empty_Message_Error}

Back Button Validation
    AppiumLibrary.Click element                                 ${BackBtn_SendUsAMessage_Page}
    AppiumLibrary.wait until page contains element              ${Support_Label_SupportPage}
    AppiumLibrary.Click element                                 ${Back_Button_SupportPage}
    AppiumLibrary.wait until page contains element              ${Support_Button_MoreTab}

