*** Settings ***
#Library     XML
Library     AppiumLibrary
Library     Collections
#Library     Selenium2Library
Resource    ../Resources/Page_Repository/Article_Repository.robot

*** Test Cases ***
Open_Application                         AppiumLibrary.Open Application             http://localhost:4723/wd/hub        platformName=Android        deviceName=CPH2113       appPackage=ph.mbtc.platform11.earnest.debug        appActivity=ph.mbtc.platform11.earnest.ui.MainActivity      automationName=Uiautomator2     autoGrantPermissions=true       newCommandTimeout=10000     chromedriverExecutable=${chromedriverExecutable}
    Sleep                                10s

View and Navigate to Learn Module
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

    AppiumLibrary.wait until page contains element              ${Learn_Button}
    AppiumLibrary.Click element                                 ${Learn_Button}
    AppiumLibrary.wait until page contains element              ${Learn_Label}
    AppiumLibrary.Click element                                 ${Article_tab}

    AppiumLibrary.wait until page contains element              ${Image_Article_Id}
    AppiumLibrary.element should be visible                     ${Image_Article_Id}
    AppiumLibrary.Page should contain element                   ${Stories_Text_Label}
    ${Get_Stories_title}                                        AppiumLibrary.Get Text                                  ${Stories_Title_Id}
    AppiumLibrary.Page should contain text                      ${Get_Stories_title}
    ${Get_Stories_Short_desc}                                   AppiumLibrary.Get Text                                  ${Stories_Short_desc_id}
    AppiumLibrary.Page should contain text                      ${Get_Stories_Short_desc}
    ${Get_Last_Date_posted}                                     AppiumLibrary.Get Text                                  ${Date_Posted_id}
    AppiumLibrary.element should be visible                     ${Next_Btn_icon}
    AppiumLibrary.swipe                                         0     1250     100     100
    ${Get_More_reads_label}                                     AppiumLibrary.Get Text                                  ${More_Reads_label_id}
    AppiumLibrary.Page should contain text                      ${Get_More_reads_label}
    AppiumLibrary.Page should contain element                   ${Learn_More_things_That_label}
    AppiumLibrary.element should be visible                     ${Search_Button_Article}
    AppiumLibrary.element should be visible                     ${Article_card_Img}
    ${Get_Article_card_category}                                AppiumLibrary.Get Text                                  ${Article_text_category}
    AppiumLibrary.Page should contain text                      ${Get_Article_card_category}
    ${Get_Article_card_title}                                   AppiumLibrary.Get Text                                 ${Article_Text_title}
    AppiumLibrary.Page should contain text                      ${Get_Article_card_title}
    ${Get_Article_Date_Posted}                                  AppiumLibrary.Get Text                                  ${Article_Date_posted}
    AppiumLibrary.Page should contain text                      ${Article_Date_posted}
    AppiumLibrary.Click element                                 ${Click_Article_1}

    AppiumLibrary.wait until page contains element              ${Back_btn_article_page}
    AppiumLibrary.Page should contain text                      ${Back_btn_article_page}                                Back
    AppiumLibrary.element should be visible                     ${Share_Button_article}
    AppiumLibrary.Page should contain element                   ${Article_Name_Header}
    AppiumLibrary.Page should contain element                   ${Article_name_Subtitle}
    AppiumLibrary.Page should contain element                   ${Article_date_posted_title}
    AppiumLibrary.element should be visible                     ${Article_Image_illustration}
    AppiumLibrary.Page should contain element                   ${Article_Body_Text}
    AppiumLibrary.swipe                                         0     1300     100     100
    Sleep                                                       2s
    AppiumLibrary.Click element                                 ${Back_btn_article_page}
    AppiumLibrary.wait until page contains element              ${Lessons_Tab}
    AppiumLibrary.Click element                                 ${Lessons_Tab}
    AppiumLibrary.wait until page contains element              ${Lessons_Tab}
    AppiumLibrary.Click element                                 ${article_tab}
    AppiumLibrary.wait until page contains element              ${Image_Article_Id}
    AppiumLibrary.swipe                                         0     1250     100     100

Validate Module Count
    ${Create_List_Variable}     create list
    ${Count}=    Get matching xpath count       //*[@resource-id='ph.mbtc.platform11.earnest.debug:id/textCategory']
    append to list      ${Create_List_Variable}       ${Count}
    log  ${Create_List_Variable}

#
#${More_Reads_label_id}                          ph.mbtc.platform11.earnest.debug:id/label1
#${Learn_More_things_That_label}                 //android.widget.TextView[@text = 'Learn more things that may help guide you through your investing journey.']
#
