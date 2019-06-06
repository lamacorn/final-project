class RoutineProductsController < ApplicationController
  def list
    @routine_products = RoutineProduct.all

    render("routine_product_templates/list.html.erb")
  end

  def details
    @routine_product = RoutineProduct.where({ :id => params.fetch("id_to_display") }).first

    render("routine_product_templates/details.html.erb")
  end

  def blank_form
    @routine_product = RoutineProduct.new

    render("routine_product_templates/blank_form.html.erb")
  end

  def save_new_info
    @routine_product = RoutineProduct.new

    @routine_product.routine_id = params.fetch("routine_id")
    @routine_product.product_id = params.fetch("product_id")
    @routine_product.use_frequency_id = params.fetch("use_frequency_id")
    @routine_product.note = params.fetch("note")

    if @routine_product.valid?
      @routine_product.save

      redirect_to("/routine_products", { :notice => "Routine product created successfully." })
    else
      render("routine_product_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @routine_product = RoutineProduct.where({ :id => params.fetch("id_to_prefill") }).first

    render("routine_product_templates/prefilled_form.html.erb")
  end

  def save_edits
    @routine_product = RoutineProduct.where({ :id => params.fetch("id_to_modify") }).first

    @routine_product.routine_id = params.fetch("routine_id")
    @routine_product.product_id = params.fetch("product_id")
    @routine_product.use_frequency_id = params.fetch("use_frequency_id")
    @routine_product.note = params.fetch("note")

    if @routine_product.valid?
      @routine_product.save

      redirect_to("/routine_products/" + @routine_product.id.to_s, { :notice => "Routine product updated successfully." })
    else
      render("routine_product_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @routine_product = RoutineProduct.where({ :id => params.fetch("id_to_remove") }).first

    @routine_product.destroy

    redirect_to("/routine_products", { :notice => "Routine product deleted successfully." })
  end
end
