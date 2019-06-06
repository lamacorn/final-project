class RoutinesController < ApplicationController
  def list
    @routines = Routine.all

    render("routine_templates/list.html.erb")
  end

  def details
    @routine = Routine.where({ :id => params.fetch("id_to_display") }).first

    render("routine_templates/details.html.erb")
  end

  def blank_form
    @routine = Routine.new

    render("routine_templates/blank_form.html.erb")
  end

  def save_new_info
    @routine = Routine.new

    @routine.customer_id = params.fetch("customer_id")
    @routine.active = params.fetch("active", false)
    @routine.createdby_id = params.fetch("createdby_id")

    if @routine.valid?
      @routine.save

      redirect_to("/routines", { :notice => "Routine created successfully." })
    else
      render("routine_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @routine = Routine.where({ :id => params.fetch("id_to_prefill") }).first

    render("routine_templates/prefilled_form.html.erb")
  end

  def save_edits
    @routine = Routine.where({ :id => params.fetch("id_to_modify") }).first

    @routine.customer_id = params.fetch("customer_id")
    @routine.active = params.fetch("active", false)
    @routine.createdby_id = params.fetch("createdby_id")

    if @routine.valid?
      @routine.save

      redirect_to("/routines/" + @routine.id.to_s, { :notice => "Routine updated successfully." })
    else
      render("routine_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @routine = Routine.where({ :id => params.fetch("id_to_remove") }).first

    @routine.destroy

    redirect_to("/routines", { :notice => "Routine deleted successfully." })
  end
end
