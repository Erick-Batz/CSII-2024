﻿using Galileo.Space;

//ShiftWorker sw = new ShiftWorker
//{
//    FirstName = "trabajador",
//    LastName = "uno",
//    StartDate = new DateOnly(2014, 2, 17),
//    ShiftStartTime = new TimeOnly(8, 30)
//};


//Console.WriteLine("=============Turnos =============");
//bool payrollProcessed = sw.ProcessPayroll();
//sw.Terminate(DateTime.Now);
//bool active = sw.IsActive();
//Console.WriteLine();


Manager mgr = new Manager
{
    FirstName = "supervisor",
    LastName = "dos",
    NumberOfDirectReports = 7
};

Console.WriteLine("=============manager=============");
bool mgrpayrollprocessed = mgr.ProcessPayroll();
mgr.Terminate(DateTime.Now);
bool mgractive = mgr.IsActive();
