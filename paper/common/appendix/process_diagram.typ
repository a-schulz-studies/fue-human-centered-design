#set text(size:9pt)
```text
flowchart TD
    doc_Proofofsecuredlivelihood["Document: Proof of secured livelihood"]
    doc_ResumeCV["Document: Resume/CV"]
    doc_Residencepermitapplication["Document: Residence permit application"]
    doc_Confirmationofpaymentoftheadministrativechargeattheimmigrationoffice["Document: Confirmation of payment of the administrative charge at the immigration office"]
    doc_EnrolmentcertificatefromHTWDresden["Document: Enrolment certificate from HTW Dresden"]
    doc_SignedrequestforHTWlogin["Document: Signed request for HTW login"]
    doc_LetterofAdmission["Document: Letter of Admission"]
    doc_Residencepermitforstudypurposes["Document: Residence permit for study purposes"]
    doc_RentalAgreement["Document: Rental Agreement"]
    doc_Visaforstudypurposes["Document: Visa for study purposes"]
    doc_TranscriptofRecordsofyourhomeuniversity["Document: Transcript of Records of your home university"]
    doc_ProofofHealthInsuranceRecognizedinGermany["Document: Proof of Health Insurance Recognized in Germany"]
    doc_TranscriptofRecordsofHTWDresden["Document: Transcript of Records of HTW Dresden"]
    doc_RegistrationCertificateCitizensOfficeDresden["Document: Registration Certificate: Citizens' Office Dresden"]
    doc_Residencypermitforacademicpurposes["Document: Residency permit for academic purposes"]
    doc_OnlineLearningAgreement["Document: (Online) Learning Agreement"]
    doc_Proofofavalidstudyvisa["Document: Proof of a valid study visa"]
    doc_PersonalHTWDLogin["Document: Personal HTWD Login"]
    doc_ConfirmationofpaymentoftheSemesterContribution["Document: Confirmation of payment of the Semester Contribution"]
    doc_Proofoflanguageproficiency["Document: Proof of language proficiency"]
    doc_Germantaxidentificationnumber["Document: German tax identification number"]
    doc_Currentbiometricphoto["Document: Current biometric photo"]
    doc_Confirmationofpaymentoftheadministrativechargeforvisa["Document: Confirmation of payment of the administrative charge for visa"]
    doc_Applicationforadmissiontostudies["Document: Application for admission to studies"]
    doc_CopyofpassportorID["Document: Copy of passport or ID"]
    step_ApplicationSubmission["Application Submission"]
    step_WaitforapplicationReview["Wait for application Review"]
    step_ResearchEnglishtaughtcourses["Research English taught courses"]
    step_Selectcourses["Select courses"]
    step_CreateLearningAgreement["Create Learning Agreement"]
    step_SubmitLearningAgreementforapproval["Submit Learning Agreement for approval"]
    step_Receiveapprovalconfirmation["Receive approval confirmation"]
    step_CheckAcademicCalendar["Check Academic Calendar"]
    step_AttendInformationSessions["Attend Information Sessions"]
    step_EnrollinLanguageCourse["Enroll in Language Course"]
    step_ObtainHealthInsurance["Obtain Health Insurance"]
    step_Applyforresidencepermit["Apply for residence permit"]
    step_Waitforresidencepermitapproval["Wait for residence permit approval"]
    step_Checkimmigrationformalities["Check immigration formalities"]
    step_Obtainpassport["Obtain passport"]
    step_Arrangeinsuranceandpermits["Arrange insurance and permits"]
    step_Applyforvisa["Apply for visa"]
    step_Waitforvisaapproval["Wait for visa approval"]
    step_Applyforresidencepermit["Apply for residence permit"]
    step_Registerforstudentresidence["Register for student residence"]
    step_Receiveadmissionletter["Receive admission letter"]
    step_PaySemesterContribution["Pay Semester Contribution"]
    step_EnrollatHTWDresden["Enroll at HTW Dresden"]
    step_Informationsessionontheorganisationofyourstudiesandtheselectionofyourcourses["Information session on the organisation of your studies and the selection of your courses"]
    step_Makeanonlineappointment["Make an online appointment"]
    step_VisittheCitizensOffice["Visit the Citizens' Office"]
    step_Submitrequireddocuments["Submit required documents"]
    step_Makeanappointment["Make an appointment"]
    step_Submitapplicationanddocuments["Submit application and documents"]
    step_WaitforprocessingofImmigrationOffice["Wait for processing of Immigration Office"]
    step_OpenaGermanbankaccount["Open a German bank account"]
    step_CheckTimetable["Check Timetable"]
    step_PlanLectures["Plan Lectures"]
    step_EnterCourseCode["Enter Course Code"]
    step_GetIndividualTimetable["Get Individual Timetable"]
    step_RegisterforExams["Register for Exams"]
    step_GetExamDates["Get Exam Dates"]
    step_DeregisterfromExam["Deregister from Exam"]
    step_TakeExam["Take Exam"]
    step_Waitforgradestobereported["Wait for grades to be reported"]
    step_RequestTranscriptofRecords["Request Transcript of Records"]
    step_ConferwithhomeuniversityandAcademicCoordinator["Confer with home university and Academic Coordinator"]
    step_Obtaintheformforprolongationofmatriculation["Obtain the form for prolongation of matriculation"]
    step_Signtheform["Sign the form"]
    step_CompleteanewLearningAgreement["Complete a new Learning Agreement"]
    step_Handinthesignedprolongationofmatriculation["Hand in the signed prolongation of matriculation"]
    step_Scheduleanappointmentforprolongationofstudyvisa["Schedule an appointment for prolongation of study visa"]
    step_Extendstudyvisa["Extend study visa"]
    step_Reregisterforthenextsemester["Re-register for the next semester"]
    step_Nothing["Nothing"]
    step_CloseGermanbankaccount["Close German bank account"]
    step_Returnborrowedbooks["Return borrowed books"]
    step_DeregisterfromGermanHealthInsurance["Deregister from German Health Insurance"]
    step_DeregisterfromCitizensOfficeDresden["Deregister from Citizens' Office Dresden"]
    doc_Applicationforadmissiontostudies -- required --> step_ApplicationSubmission
    doc_OnlineLearningAgreement -- required --> step_ApplicationSubmission
    doc_ResumeCV -- required --> step_ApplicationSubmission
    doc_TranscriptofRecordsofyourhomeuniversity -- required --> step_ApplicationSubmission
    doc_Proofoflanguageproficiency -- required --> step_ApplicationSubmission
    doc_SignedrequestforHTWlogin -- required --> step_ApplicationSubmission
    doc_Currentbiometricphoto -- required --> step_ApplicationSubmission
    doc_CopyofpassportorID -- required --> step_ApplicationSubmission
    doc_Proofofavalidstudyvisa -- required --> step_ApplicationSubmission
    step_ApplicationSubmission --> step_WaitforapplicationReview
    step_WaitforapplicationReview -- received --> doc_LetterofAdmission
    step_ResearchEnglishtaughtcourses --> step_Selectcourses
    step_Selectcourses --> step_CreateLearningAgreement
    step_CreateLearningAgreement --> step_SubmitLearningAgreementforapproval
    step_SubmitLearningAgreementforapproval --> step_Receiveapprovalconfirmation
    step_Receiveapprovalconfirmation -- received --> doc_OnlineLearningAgreement
    step_AttendInformationSessions --> step_EnrollinLanguageCourse
    step_LetterofAdmission --> step_ObtainHealthInsurance
    doc_CopyofpassportorID -- required --> step_ObtainHealthInsurance
    doc_LetterofAdmission -- required --> step_ObtainHealthInsurance
    step_ObtainHealthInsurance -- received --> doc_ProofofHealthInsuranceRecognizedinGermany
    step_Applyforresidencepermit --> step_Waitforresidencepermitapproval
    step_Waitforresidencepermitapproval -- received --> doc_Residencepermitforstudypurposes
    step_Checkimmigrationformalities --> step_Obtainpassport
    step_Obtainpassport -- received --> doc_CopyofpassportorID
    doc_LetterofAdmission -- required --> step_Arrangeinsuranceandpermits
    doc_CopyofpassportorID -- required --> step_Arrangeinsuranceandpermits
    step_Arrangeinsuranceandpermits --> step_Applyforvisa
    step_Applyforvisa --> step_Waitforvisaapproval
    doc_Residencepermitforstudypurposes -- required --> step_Waitforvisaapproval
    doc_Confirmationofpaymentoftheadministrativechargeforvisa -- required --> step_Waitforvisaapproval
    doc_RentalAgreement -- required --> step_Waitforvisaapproval
    doc_ProofofHealthInsuranceRecognizedinGermany -- required --> step_Waitforvisaapproval
    doc_Proofofsecuredlivelihood -- required --> step_Waitforvisaapproval
    doc_LetterofAdmission -- required --> step_Waitforvisaapproval
    doc_Currentbiometricphoto -- required --> step_Waitforvisaapproval
    doc_CopyofpassportorID -- required --> step_Waitforvisaapproval
    step_Waitforvisaapproval -- received --> doc_Visaforstudypurposes
    doc_LetterofAdmission -- required --> step_Registerforstudentresidence
    step_Registerforstudentresidence --> step_Receiveadmissionletter
    step_Receiveadmissionletter -- received --> doc_RentalAgreement
    step_ObtainHealthInsurance --> step_EnrollatHTWDresden
    step_Waitforvisaapproval --> step_EnrollatHTWDresden
    doc_CopyofpassportorID -- required --> step_EnrollatHTWDresden
    doc_Visaforstudypurposes -- required --> step_EnrollatHTWDresden
    doc_ProofofHealthInsuranceRecognizedinGermany -- required --> step_EnrollatHTWDresden
    doc_ConfirmationofpaymentoftheSemesterContribution -- required --> step_EnrollatHTWDresden
    step_EnrollatHTWDresden -- received --> doc_PersonalHTWDLogin
    step_EnrollatHTWDresden -- received --> doc_Proofofavalidstudyvisa
    step_EnrollatHTWDresden -- received --> doc_EnrolmentcertificatefromHTWDresden
    step_EnrollatHTWDresden --> step_Informationsessionontheorganisationofyourstudiesandtheselectionofyourcourses
    step_Makeanonlineappointment --> step_VisittheCitizensOffice
    step_VisittheCitizensOffice --> step_Submitrequireddocuments
    step_Submitrequireddocuments -- received --> doc_RegistrationCertificateCitizensOfficeDresden
    step_Makeanappointment --> step_Submitapplicationanddocuments
    doc_Residencepermitapplication -- required --> step_Submitapplicationanddocuments
    doc_Confirmationofpaymentoftheadministrativechargeattheimmigrationoffice -- required --> step_Submitapplicationanddocuments
    doc_RentalAgreement -- required --> step_Submitapplicationanddocuments
    doc_ProofofHealthInsuranceRecognizedinGermany -- required --> step_Submitapplicationanddocuments
    doc_Proofofsecuredlivelihood -- required --> step_Submitapplicationanddocuments
    doc_LetterofAdmission -- required --> step_Submitapplicationanddocuments
    doc_Currentbiometricphoto -- required --> step_Submitapplicationanddocuments
    doc_CopyofpassportorID -- required --> step_Submitapplicationanddocuments
    doc_Visaforstudypurposes -- required --> step_Submitapplicationanddocuments
    step_Submitapplicationanddocuments --> step_WaitforprocessingofImmigrationOffice
    step_WaitforprocessingofImmigrationOffice -- received --> doc_Residencypermitforacademicpurposes
    doc_CopyofpassportorID -- required --> step_OpenaGermanbankaccount
    doc_RegistrationCertificateCitizensOfficeDresden -- required --> step_OpenaGermanbankaccount
    doc_Germantaxidentificationnumber -- required --> step_OpenaGermanbankaccount
    doc_EnrolmentcertificatefromHTWDresden -- required --> step_OpenaGermanbankaccount
    step_CheckTimetable --> step_PlanLectures
    step_PlanLectures --> step_EnterCourseCode
    step_EnterCourseCode --> step_GetIndividualTimetable
    step_RegisterforExams --> step_GetExamDates
    step_GetExamDates --> step_DeregisterfromExam
    step_DeregisterfromExam --> step_TakeExam
    step_TakeExam --> step_Waitforgradestobereported
    step_Waitforgradestobereported --> step_RequestTranscriptofRecords
    step_RequestTranscriptofRecords -- received --> doc_TranscriptofRecordsofHTWDresden
    step_ConferwithhomeuniversityandAcademicCoordinator --> step_Obtaintheformforprolongationofmatriculation
    step_Obtaintheformforprolongationofmatriculation --> step_Signtheform
    step_Signtheform --> step_CompleteanewLearningAgreement
    step_CompleteanewLearningAgreement --> step_Handinthesignedprolongationofmatriculation
    step_Handinthesignedprolongationofmatriculation --> step_Scheduleanappointmentforprolongationofstudyvisa
    step_Scheduleanappointmentforprolongationofstudyvisa --> step_Extendstudyvisa
    step_Extendstudyvisa --> step_Reregisterforthenextsemester
    step_CloseGermanbankaccount --> step_Returnborrowedbooks
    step_Returnborrowedbooks --> step_DeregisterfromGermanHealthInsurance
    step_DeregisterfromGermanHealthInsurance --> step_DeregisterfromCitizensOfficeDresden
    %% Styling
    classDef document fill:#006680,stroke:#333,stroke-width:1px
    class doc_Proofofsecuredlivelihood,doc_ResumeCV,doc_Residencepermitapplication,doc_Confirmationofpaymentoftheadministrativechargeattheimmigrationoffice,doc_EnrolmentcertificatefromHTWDresden,doc_SignedrequestforHTWlogin,doc_LetterofAdmission,doc_Residencepermitforstudypurposes,doc_RentalAgreement,doc_Visaforstudypurposes,doc_TranscriptofRecordsofyourhomeuniversity,doc_ProofofHealthInsuranceRecognizedinGermany,doc_TranscriptofRecordsofHTWDresden,doc_RegistrationCertificateCitizensOfficeDresden,doc_Residencypermitforacademicpurposes,doc_OnlineLearningAgreement,doc_Proofofavalidstudyvisa,doc_PersonalHTWDLogin,doc_ConfirmationofpaymentoftheSemesterContribution,doc_Proofoflanguageproficiency,doc_Germantaxidentificationnumber,doc_Currentbiometricphoto,doc_Confirmationofpaymentoftheadministrativechargeforvisa,doc_Applicationforadmissiontostudies,doc_CopyofpassportorID document
```
#set text(size:12pt)