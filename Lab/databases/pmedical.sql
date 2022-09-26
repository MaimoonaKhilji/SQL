#Q no.1 what is max min avg cost of surgeries?
select max(surgeryCost) from surgery;
select min(surgeryCost) from surgery;
select avg(surgeryCost) from surgery;

#order by last name, please get the first, last and phone number of all doctors?
select doctorFN, doctorLN, doctorPhone from doctor order by doctorLN;

#what is the count of number of patients?
select count(patientID) from patientpatientID;

#what were the dates, description and costs of Heart and Back surgeries?
SELECT surgeryDate, surgeryDesc, surgeryCost FROM surgery  WHERE surgeryDesc IN ('Heart', 'Back');

#what are the description and total costs for each surgery ? ( sum and groupby)
SELECT surgeryDesc, sum(surgeryCost)  FROM surgery GROUP BY surgeryDesc;

#what is the last name of the patient (alias Patient), date of surgery (alias Date), 
#surgery description (alias Surgery) and doctor last name( alias Doctor) for surgery's 
#that cost more than$10,000? order by surgery date.


SELECT patient.patientLN AS Patient, surgery.surgeryDate AS Date , surgery.surgeryDesc as surgery, doctor.doctorLN as Doctor 
FROM ((surgery
INNER JOIN patient ON surgery.patientID = patient.patientID)
INNER JOIN doctor ON surgery.doctorID = doctor.doctorID)
where surgery.surgeryCost > 10000
order by surgeryDate;