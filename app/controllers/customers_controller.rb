class CustomersController < ApplicationController
  def list
    @customers = Customer.all

    render("customer_templates/list.html.erb")
  end

  def details
    @customer = Customer.where({ :id => params.fetch("id_to_display") }).first

    render("customer_templates/details.html.erb")
  end

  def blank_form
    @customer = Customer.new

    render("customer_templates/blank_form.html.erb")
  end

  def save_new_info
    @customer = Customer.new

    @customer.email = params.fetch("email")
    @customer.firstname = params.fetch("firstname")
    @customer.lastname = params.fetch("lastname")
    @customer.photo = params.fetch("photo")
    @customer.birthday = params.fetch("birthday")
    @customer.address_street = params.fetch("address_street")
    @customer.address_city = params.fetch("address_city")
    @customer.address_state = params.fetch("address_state")
    @customer.address_zipcode = params.fetch("address_zipcode")
    @customer.notes = params.fetch("notes")
    @customer.optin_email = params.fetch("optin_email", false)
    @customer.optin_texts = params.fetch("optin_texts", false)
    @customer.phone = params.fetch("phone")

    if @customer.valid?
      @customer.save

      redirect_to("/customers", { :notice => "Customer created successfully." })
    else
      render("customer_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @customer = Customer.where({ :id => params.fetch("id_to_prefill") }).first

    render("customer_templates/prefilled_form.html.erb")
  end

  def save_edits
    @customer = Customer.where({ :id => params.fetch("id_to_modify") }).first

    @customer.email = params.fetch("email")
    @customer.firstname = params.fetch("firstname")
    @customer.lastname = params.fetch("lastname")
    @customer.photo = params.fetch("photo")
    @customer.birthday = params.fetch("birthday")
    @customer.address_street = params.fetch("address_street")
    @customer.address_city = params.fetch("address_city")
    @customer.address_state = params.fetch("address_state")
    @customer.address_zipcode = params.fetch("address_zipcode")
    @customer.notes = params.fetch("notes")
    @customer.optin_email = params.fetch("optin_email", false)
    @customer.optin_texts = params.fetch("optin_texts", false)
    @customer.phone = params.fetch("phone")

    if @customer.valid?
      @customer.save

      redirect_to("/customers/" + @customer.id.to_s, { :notice => "Customer updated successfully." })
    else
      render("customer_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @customer = Customer.where({ :id => params.fetch("id_to_remove") }).first

    @customer.destroy

    redirect_to("/customers", { :notice => "Customer deleted successfully." })
  end
end
