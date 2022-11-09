*** Settings ***
#Library     XML
Library     AppiumLibrary
Library     Collections
#Library     Selenium2Library
Resource     ../Resources/Page_Repository/Login_Repository.robot

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
    AppiumLibrary.Page should contain element                   ${Learn_Label}
    AppiumLibrary.Page should contain element                   ${Lessons_Tab}
    AppiumLibrary.Page should contain element                   ${Article_tab}
    ${Get_Hello_And_Name}                                       AppiumLibrary.Get Text                                  ${Hello_textAnd_Name}
    AppiumLibrary.Page should contain text                      ${Get_Hello_And_Name}
    AppiumLibrary.element should be visible                     ${Learn_Icon}
    AppiumLibrary.Page should contain element                   ${Learn_Description}
    AppiumLibrary.element should be visible                     ${Chapter_container}
    ${Get_Module_Chapter}                                       AppiumLibrary.Get text                                  ${Module_Chapter}
    AppiumLibrary.Page should contain text                      ${Get_Module_Chapter}
    AppiumLibrary.Page should contain element                   ${View_Lesson_Label}
    ${Get_Module_Chapter_Name}                                  AppiumLibrary.Get text                                  ${Module_Chapter_name}
    AppiumLibrary.Page should contain text                      ${Get_Module_Chapter_Name}
    AppiumLibrary.element should be visible                     ${Chapter_Progress_Label}
    AppiumLibrary.element should be visible                     ${Image_Chapter}

Take a Lesson Validation
    AppiumLibrary.Click element                              ${Click_Module_1}
    AppiumLibrary.wait until page contains element           ${Learn_Back_button}
    AppiumLibrary.Page should contain text                   ${Learn_Back_button}                                       Back
    ${Get_MOdule_NameandNumber}                              AppiumLibrary.Get Text                                     ${Module_Title_Id}
    AppiumLibrary.Page should contain text                   ${Get_MOdule_NameandNumber}
    AppiumLibrary.element should be visible                  ${Module_Image}
    AppiumLibrary.element should be visible                  ${Progress_Label_Number}
    ${Get_LearnCard_Title}                                   AppiumLibrary.Get Text                                     ${Learn_Card_Title}
    AppiumLibrary.Page should contain text                  ${Learn_Card_Title}
    ${Get_LearnCard_SubTitle}                               AppiumLibrary.Get Text                                      ${Learn_Card_Subtitle}
#    should be equal                                         ${Get_LearnCard_SubTitle}                                   ${Test_var}
    ${Get_Lesson_Title}                                     AppiumLibrary.Get Text                                      ${Lessons_Chapter_Title}
    AppiumLibrary.Page should contain text                  ${Get_Lesson_Title}
    AppiumLibrary.swipe                                     0     2000     100     100
    ${Get_Module_Number_Learn}                              AppiumLibrary.Get Text                                      ${Module_Number}
    AppiumLibrary.Page should contain text                  ${Get_Module_Number_Learn}
    ${Get_Lesson_Number_Learn}                              AppiumLibrary.Get Text                                      ${Lesson_Number}
    AppiumLibrary.element should be visible                 ${Lesson_Image_Preview}
    ${Get_LEsson_Name_Card}                                 AppiumLibrary.Get Text                                      ${Lesson_name_ID}
    AppiumLibrary.Page should contain text                  ${Get_LEsson_Name_Card}
    AppiumLibrary.element should be visible                 ${Start_Lesson_Icon}
    ${Get_Activities_Name}                                  AppiumLibrary.Get Text                                      ${Activities_Label}
    AppiumLibrary.Page should contain text                  ${Get_Activities_Name}
    ${Get_Module_Number_Learn}                              AppiumLibrary.Get Text                                      ${Module_Number}
    AppiumLibrary.Page should contain text                  ${Get_Module_Number_Learn}
    AppiumLibrary.Page should contain element               ${Recap_Label}
    AppiumLibrary.element should be visible                 ${Recap_Image}
    AppiumLibrary.Page should contain element               ${Module_Recap_Label}
    AppiumLibrary.element should be visible                 ${Recap_Start_Icon}
    ${Get_Module_Number_Learn}                              AppiumLibrary.Get Text                                      ${Module_Number}
    AppiumLibrary.Page should contain text                  ${Get_Module_Number_Learn}
    AppiumLibrary.Page should contain element               ${Qiuz_Label}
    AppiumLibrary.Page should contain element               ${Module_Quiz_Label}
    AppiumLibrary.element should be visible                 ${Quiz_STart_Icon}
    AppiumLibrary.Click element                             ${CLick_Lesson_1_Card}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Page should contain text                  ${Learn_exit_Btn}                                           Exit
    AppiumLibrary.element should be visible                 ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Learn_Image_Illustration}
    AppiumLibrary.element should be visible                 ${Learn_Bg_Image}
    ${Get_Learn_Title_Lesson1}                              AppiumLibrary.Get Text                                      ${Learn_Card_Title}
#    AppiumLibrary.Page should contain text                  ${Get_Learn_Title_Lesson1}
    ${Get_Card_quantity}                                    AppiumLibrary.Get Text                                      ${Lesson_quantity}
    AppiumLibrary.Page should contain text                  ${Get_Card_quantity}
    ${Get_Lesson_Time_Consume}                              AppiumLibrary.Get Text                                      ${Lesson_Time}
    AppiumLibrary.Page should contain text                  ${Get_Lesson_Time_Consume}
    AppiumLibrary.Page should contain text                  ${Lesson_Start_Button}                                      Start
    AppiumLibrary.Click element                             ${Lesson_Start_Button}
    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.Page should contain text                  ${Learn_exit_Btn}                                           Exit
    AppiumLibrary.element should be visible                 ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.element should be visible                 ${Image_Illustration_ID}
    AppiumLibrary.element should be visible                 ${Zoomed_Button}
    ${Get_LearnCard_Title_Lesson1}                          AppiumLibrary.Get Text                                      ${Learn_content}
    AppiumLibrary.Page should contain text                  ${Previous_Button}                                          Back
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Congratulations_Text_Label}
    AppiumLibrary.element should be visible                 ${Congratulation_BG_Image}
    AppiumLibrary.element should be visible                 ${Done_Image_Illustration}
    ${Get_Congratulations_Label}                            AppiumLibrary.Get Text                                      ${Congratulations_Text_Label}
    AppiumLibrary.Page should contain text                  ${Get_Congratulations_Label}
    ${Get_USerFinished_Module}                              AppiumLibrary.Get Text                                      ${Finished_Module_Label}
    ${Get_Rating_LEsson_Label}                              AppiumLibrary.Get Text                                      ${Rate_Label1}
    AppiumLibrary.Page should contain text                  ${Get_Rating_LEsson_Label}
    AppiumLibrary.element should be visible                 ${Image_Star1}
    AppiumLibrary.element should be visible                 ${Image_Star2}
    AppiumLibrary.element should be visible                 ${Image_Star3}
    AppiumLibrary.element should be visible                 ${Image_Star4}
    AppiumLibrary.element should be visible                 ${Image_Star5}
    AppiumLibrary.element should be visible                 ${Text_Lesson_Rating}
    AppiumLibrary.element should be visible                 ${Skip_Rating_Button}
    AppiumLibrary.element should be visible                 ${Submit_Button_Congratulations}
    AppiumLibrary.Click element                             ${Skip_Rating_Button}

    AppiumLibrary.wait until page contains element          ${Feedback_Title_Label}
    AppiumLibrary.element should be visible                 ${Feedback_Image_illustration}
    AppiumLibrary.Page should contain element               ${Feedback_Title_Label}
    AppiumLibrary.Page should contain element               ${You_may_now_Proceed}
    AppiumLibrary.Page should contain text                  ${Back_To_Learn_Btn}                                        Back to learn
    AppiumLibrary.Page should contain text                  ${Next_Lesson_Btn}                                          Next Lesson
    AppiumLibrary.Click element                             ${Back_To_Learn_Btn}
    AppiumLibrary.wait until page contains element          ${Article_tab}
    Sleep                                                   5s

Take a Recap Validation
    AppiumLibrary.Click element                              ${Module_1_Xpath}
    AppiumLibrary.wait until page contains element           ${Learn_Back_button}
    Sleep                                                    3s
    AppiumLibrary.swipe                                      0     2000     100     100
    AppiumLibrary.Click element                              ${Module_Recap_Label}

    AppiumLibrary.wait until page contains element          ${Exit_BTn_Recap}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Recap_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Page should contain text                  ${Recap_Back_Button}                                        Back
    AppiumLibrary.Click element                            ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Recap_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Page should contain text                  ${Recap_Back_Button}                                        Back
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Recap_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Page should contain text                  ${Recap_Back_Button}                                        Back
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Recap_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Page should contain text                  ${Recap_Back_Button}                                        Back
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Recap_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Page should contain text                  ${Recap_Back_Button}                                        Back
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Recap_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Page should contain text                  ${Recap_Back_Button}                                        Back
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Recap_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Page should contain text                  ${Recap_Back_Button}                                        Back
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Recap_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Next_Button}                                              Next
    AppiumLibrary.Page should contain text                  ${Recap_Back_Button}                                        Back
    AppiumLibrary.Click element                             ${Next_Button}

    AppiumLibrary.wait until page contains element          ${Recap_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Exit_BTn_Recap}                                           Exit
    AppiumLibrary.element should be visible                 ${Recap_Progress_Bar}
    ${Get_Recap_Content}                                    AppiumLibrary.Get Text                                      ${Learn_Content_title}
    AppiumLibrary.Page should contain text                  ${Recap_Done_Button}                                        Done
    AppiumLibrary.Page should contain text                  ${Recap_Back_Button}                                        Back
    AppiumLibrary.Click element                             ${Recap_Done_Button}

    AppiumLibrary.wait until page contains element          ${Youve_Finished_a_Recap}
    AppiumLibrary.element should be visible                 ${Finished_Recap_Image}
    AppiumLibrary.Page should contain element               ${Youve_Finished_a_Recap}
    AppiumLibrary.Page should contain element               ${lets_Review_What_You_Learned}
    AppiumLibrary.Page should contain text                  ${Back_To_Learn_Recap}                                      Back to Learn
    AppiumLibrary.Page should contain text                  ${Take_a_Quiz_btn}                                          Take quiz

Take a quiz Validation
    AppiumLibrary.Click element                             ${Take_a_Quiz_btn}
    AppiumLibrary.wait until page contains element          ${Module_Quiz_Label}
    sleep                                                   2s
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.Page should contain element               ${Module_Quiz_Label}
    ${Get_Quiz_Intro_Desc}                                  AppiumLibrary.Get Text                                      ${Quiz_Intro_Content}
    AppiumLibrary.Page should contain text                  ${Quiz_Start_btn}                                           Start
    AppiumLibrary.Click element                             ${Quiz_Start_btn}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Next
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Next
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Next
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Next
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Next
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Next
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Next
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Next
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Next
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Quiz_Progress_Bar}
    AppiumLibrary.Page should contain text                  ${Quiz_exit_Button}                                         Exit
    AppiumLibrary.element should be visible                 ${Quiz_Progress_Bar}
    ${Question_Quiz_Desc}                                   AppiumLibrary.Get Text                                      ${Question_Description}
    AppiumLibrary.Page should contain element               ${True_Option}
    AppiumLibrary.Page should contain element               ${False_Option}
    AppiumLibrary.Page should contain text                  ${Quiz_next_Button}                                         Done
    AppiumLibrary.Click element                             ${True_Option}
    AppiumLibrary.Click element                             ${Quiz_next_Button}

    AppiumLibrary.wait until page contains element          ${Success_Title}
    AppiumLibrary.element should be visible                 ${Success_Image}
    AppiumLibrary.Page should contain element               ${Success_Title}
    ${Get_Success_Title}                                    AppiumLibrary.Get Text                                      ${Success_Title}
    AppiumLibrary.Page should contain text                  ${Success_Btn_OK}                                           Done
    AppiumLibrary.Click element                             ${Success_Btn_OK}
    AppiumLibrary.wait until page contains element          ${Learn_Label}
    Sleep                                                   3s

Exit and Back Button Validation
    AppiumLibrary.Click element                              ${Module_1_Xpath}
    AppiumLibrary.wait until page contains element           ${Learn_Back_button}
    Sleep                                                    3s
    AppiumLibrary.swipe                                      0     2000     100     100
    AppiumLibrary.Click element                             ${CLick_Lesson_1_Card}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Lesson_Start_Button}
    AppiumLibrary.wait until page contains element          ${Learn_Progress_bar}
    AppiumLibrary.Click element                             ${Next_Button}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Next_Button}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Next_Button}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Next_Button}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Next_Button}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Previous_Button}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Previous_Button}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Previous_Button}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Previous_Button}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Learn_Back_button}
    AppiumLibrary.wait until page contains element          ${Warning_Content_label}
    AppiumLibrary.element should be visible                 ${Warning_Image}
    ${Get_warning_title_label}                              AppiumLibrary.Get Text                                      ${Warning_title_Label}
    AppiumLibrary.Page should contain element               ${Warning_Content_label}
    AppiumLibrary.Page should contain text                  ${Warning_yes_btn}                                          Yes
    AppiumLibrary.Page should contain text                  ${Warning_no_btn}                                           No
    AppiumLibrary.Click element                             ${Warning_no_btn}
    AppiumLibrary.wait until page contains element          ${Learn_exit_Btn}
    AppiumLibrary.Click element                             ${Learn_Back_button}
    AppiumLibrary.wait until page contains element          ${Warning_Content_label}
    AppiumLibrary.Click element                             ${Warning_yes_btn}
    AppiumLibrary.wait until page contains element          ${Module_Title_Id}
    AppiumLibrary.Click element                             ${Learn_Back_button}
    AppiumLibrary.wait until page contains element          ${Learn_Label}

Validate the Continue Learning
    sleep                                                   2s
    AppiumLibrary.Page should contain element               ${Continue_learning_label}
    ${Get_Continue_Module_Number}                           AppiumLibrary.Get Text                                      ${Continue_module_number}
    AppiumLibrary.Page should contain text                  ${Get_Continue_Module_Number}
    ${Get_Continue_Lesson_number}                           AppiumLibrary.Get Text                                      ${Continue_Lesson_number}
    AppiumLibrary.Page should contain text                  ${Get_Continue_Lesson_number}
    ${Get_Continue_lesson_title}                            AppiumLibrary.Get Text                                      ${Continue_lesson_Title}
    AppiumLibrary.Page should contain text                  ${Get_Continue_lesson_title}

Validate Module Count
    ${Create_List_Variable}     create list
    ${Count}=    Get matching xpath count       //*[@resource-id='ph.mbtc.platform11.earnest.debug:id/containerChapter']
    append to list      ${Create_List_Variable}       ${Count}
    AppiumLibrary.swipe                                         0     1450     100     100
    ${Count2}=    Get matching xpath count       //*[@resource-id='ph.mbtc.platform11.earnest.debug:id/containerChapter']
    append to list      ${Create_List_Variable}       ${Count2}
    AppiumLibrary.swipe                                         0     1500     100     100
    log  ${Create_List_Variable}

#    Run Keyword If  ${Count} > 0  Module found as 12
#    ...  ELSE  Module found not 12
#*** keywords ***
#
#Module found as 12
#    log to console      Executed Module found as 12 = Found as expected
#
#Module found not 12
#    log to console      Executed Module found not 12 = Found as not expected