namespace Galileo.Space;

public interface IPerson
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
}
public abstract class Employee : IPerson
{
    //IPerson
    public string LastName { get; set; }
    public string FirstName { get; set; }


    public DateOnly StartDate { get; set; }

    //propiedad virtual
    public virtual DateTime EndDate { get; set; }

    //propiedad abstracta
    public abstract int EmployeeId { get; }

    //metodo abstracto
    public abstract bool ProcessPayroll();

    //metodo virtual
    public virtual void Terminate(DateTime terminationEffectiveDate)
    {
        Console.WriteLine("Contrato terminado");
        EndDate = terminationEffectiveDate;
    }

    //mostrar o esconder
    public bool IsActive()
    {
        Console.WriteLine("Activo de IsActive");
        DateOnly current = DateOnly.FromDateTime(DateTime.Now);
        return current > StartDate && DateTime.Now < EndDate;
    }
}

public class ShiftWorker : Employee
{
    public TimeOnly ShiftStartTime { get; set; }
    public override int EmployeeId { get => 1; }

    public override bool ProcessPayroll()
    {
        Console.WriteLine("rol de pago");
        return true;
    }
    public new bool IsActive()
    {
        Console.WriteLine("Activo de ShiftWorker");
        return false;
    }
}
public class Manager : Employee, IPerson
{
    public int NumberOfDirectReports { get; set; }
    public override int EmployeeId { get => new System.Random().Next(1, 100); }

    public override bool ProcessPayroll() //obligatorio por ser abstracto   
    {
        Console.WriteLine("rol de pago supervisor");
        return true;
    }

    public new void Terminate(DateTime terminationEffectiveDate)
    {
        //pasos para despedir
        Console.WriteLine("Manager despedido");

        //optional
        base.Terminate(terminationEffectiveDate);
    }
}
