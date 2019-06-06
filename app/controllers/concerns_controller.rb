class ConcernsController < ApplicationController
  def list
    @concerns = Concern.all

    render("concern_templates/list.html.erb")
  end

  def details
    @concern = Concern.where({ :id => params.fetch("id_to_display") }).first

    render("concern_templates/details.html.erb")
  end

  def blank_form
    @concern = Concern.new

    render("concern_templates/blank_form.html.erb")
  end

  def save_new_info
    @concern = Concern.new

    @concern.name = params.fetch("name")
    @concern.description = params.fetch("description")
    @concern.example_photo = params.fetch("example_photo")

    if @concern.valid?
      @concern.save

      redirect_to("/concerns", { :notice => "Concern created successfully." })
    else
      render("concern_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @concern = Concern.where({ :id => params.fetch("id_to_prefill") }).first

    render("concern_templates/prefilled_form.html.erb")
  end

  def save_edits
    @concern = Concern.where({ :id => params.fetch("id_to_modify") }).first

    @concern.name = params.fetch("name")
    @concern.description = params.fetch("description")
    @concern.example_photo = params.fetch("example_photo")

    if @concern.valid?
      @concern.save

      redirect_to("/concerns/" + @concern.id.to_s, { :notice => "Concern updated successfully." })
    else
      render("concern_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @concern = Concern.where({ :id => params.fetch("id_to_remove") }).first

    @concern.destroy

    redirect_to("/concerns", { :notice => "Concern deleted successfully." })
  end
end
