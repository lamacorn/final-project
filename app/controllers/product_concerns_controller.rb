class ProductConcernsController < ApplicationController
  def list
    @product_concerns = ProductConcern.all

    render("product_concern_templates/list.html.erb")
  end

  def details
    @product_concern = ProductConcern.where({ :id => params.fetch("id_to_display") }).first

    render("product_concern_templates/details.html.erb")
  end

  def blank_form
    @product_concern = ProductConcern.new

    render("product_concern_templates/blank_form.html.erb")
  end

  def save_new_info
    @product_concern = ProductConcern.new

    @product_concern.concern_id = params.fetch("concern_id")
    @product_concern.product_id = params.fetch("product_id")
    @product_concern.good_for = params.fetch("good_for", false)

    if @product_concern.valid?
      @product_concern.save

      redirect_to("/product_concerns", { :notice => "Product concern created successfully." })
    else
      render("product_concern_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @product_concern = ProductConcern.where({ :id => params.fetch("id_to_prefill") }).first

    render("product_concern_templates/prefilled_form.html.erb")
  end

  def save_edits
    @product_concern = ProductConcern.where({ :id => params.fetch("id_to_modify") }).first

    @product_concern.concern_id = params.fetch("concern_id")
    @product_concern.product_id = params.fetch("product_id")
    @product_concern.good_for = params.fetch("good_for", false)

    if @product_concern.valid?
      @product_concern.save

      redirect_to("/product_concerns/" + @product_concern.id.to_s, { :notice => "Product concern updated successfully." })
    else
      render("product_concern_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @product_concern = ProductConcern.where({ :id => params.fetch("id_to_remove") }).first

    @product_concern.destroy

    redirect_to("/product_concerns", { :notice => "Product concern deleted successfully." })
  end
end
