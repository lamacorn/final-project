class UsefrequenciesController < ApplicationController
  def list
    @usefrequencies = Usefrequency.all

    render("usefrequency_templates/list.html.erb")
  end

  def details
    @usefrequency = Usefrequency.where({ :id => params.fetch("id_to_display") }).first

    render("usefrequency_templates/details.html.erb")
  end

  def blank_form
    @usefrequency = Usefrequency.new

    render("usefrequency_templates/blank_form.html.erb")
  end

  def save_new_info
    @usefrequency = Usefrequency.new

    @usefrequency.description = params.fetch("description")

    if @usefrequency.valid?
      @usefrequency.save

      redirect_to("/usefrequencies", { :notice => "Usefrequency created successfully." })
    else
      render("usefrequency_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @usefrequency = Usefrequency.where({ :id => params.fetch("id_to_prefill") }).first

    render("usefrequency_templates/prefilled_form.html.erb")
  end

  def save_edits
    @usefrequency = Usefrequency.where({ :id => params.fetch("id_to_modify") }).first

    @usefrequency.description = params.fetch("description")

    if @usefrequency.valid?
      @usefrequency.save

      redirect_to("/usefrequencies/" + @usefrequency.id.to_s, { :notice => "Usefrequency updated successfully." })
    else
      render("usefrequency_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @usefrequency = Usefrequency.where({ :id => params.fetch("id_to_remove") }).first

    @usefrequency.destroy

    redirect_to("/usefrequencies", { :notice => "Usefrequency deleted successfully." })
  end
end
