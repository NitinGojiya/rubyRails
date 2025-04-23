class EmployeesController < ApplicationController
def index
  @employees=Employee.all
end
def new
  @employees =Employee.new
end
def create
  @employees = Employee.new(employee_params)
  if @employees.save
    redirect_to @employees, notice: "Employee was successfully created."
  else
    render :new, status: :unprocessable_entity
  end
end
def destroy
  @employee = Employee.find(params[:id])
  @employee.destroy
  redirect_to employees_path, notice: "Employee was successfully deleted."
end
def edit
  @employees=Employee.find(params[:id])
end
def update
  @employees=Employee.find(params[:id])
  if @employees.update(employee_params)
    redirect_to employees_path, notice: "Employee was successfully updated."
  else
    render :edit
  end
end
def show
  @employee = Employee.find(params[:id])
end

private

def employee_params
  params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email, :city, :state, :country, :pincode, :address_line_1, :address_line_2)
end
end
