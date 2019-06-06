class CustomerConcernsController < ApplicationController
  def list
    @customer_concerns = CustomerConcern.all

    render("customer_concern_templates/list.html.erb")
  end

  def details
    @customer_concern = CustomerConcern.where({ :id => params.fetch("id_to_display") }).first

    render("customer_concern_templates/details.html.erb")
  end

  def blank_form
    @customer_concern = CustomerConcern.new

    render("customer_concern_templates/blank_form.html.erb")
  end

  def save_new_info
    @customer_concern = CustomerConcern.new

    @customer_concern.concern_id = params.fetch("concern_id")
    @customer_concern.customer_id = params.fetch("customer_id")

    if @customer_concern.valid?
      @customer_concern.save

      redirect_to("/customer_concerns", { :notice => "Customer concern created successfully." })
    else
      render("customer_concern_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @customer_concern = CustomerConcern.where({ :id => params.fetch("id_to_prefill") }).first

    render("customer_concern_templates/prefilled_form.html.erb")
  end

  def save_edits
    @customer_concern = CustomerConcern.where({ :id => params.fetch("id_to_modify") }).first

    @customer_concern.concern_id = params.fetch("concern_id")
    @customer_concern.customer_id = params.fetch("customer_id")

    if @customer_concern.valid?
      @customer_concern.save

      redirect_to("/customer_concerns/" + @customer_concern.id.to_s, { :notice => "Customer concern updated successfully." })
    else
      render("customer_concern_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @customer_concern = CustomerConcern.where({ :id => params.fetch("id_to_remove") }).first

    @customer_concern.destroy

    redirect_to("/customer_concerns", { :notice => "Customer concern deleted successfully." })
  end
end
