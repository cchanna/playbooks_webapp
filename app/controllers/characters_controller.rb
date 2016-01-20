class CharactersController < ApplicationController
  def show
    @character = Character.find(params[:id])
    respond_to do |format|
      format.html {render :text => "", :layout => true}
      if params[:partial] == "relationships/show"
        format.js {render partial: "relationships/show", locals: {relationship: Relationship.find(params[:relationship_id])}}
      else
        format.js
      end
    end
  end

  def new
    @character = Character.new
    respond_to do |format|
      format.html {render :text => "", :layout => true}
      format.js
    end
  end

  def create
    @character = Character.create(character_params)
    respond_to do |format|
      format.html {render :text => setting_symbol_character_path(@character.id)}
    end
  end

  def edit
    @character = Character.find(params[:id])
    respond_to do |format|
      format.html {render text: "", layout: true}
      format.js
    end
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    respond_to do |format|
      format.html {render :text => character_path(@character.id)}
    end
  end

  def update_look
    @character = Character.find params[:id]
    @character.archetype.def_looks.each do |dl|
      is_current_look = @character.def_looks.exists?(id: dl.id)
      is_new_look = params[:def_look_ids].include?(dl.id.to_s)
      if !is_current_look && is_new_look
        Look.create(character: @character, def_look: dl)
      elsif is_current_look && !is_new_look
        Look.find_by(character: @character, def_look: dl).destroy
      end
    end
    respond_to do |format|
      format.html {render :text => character_path(@character.id)}
    end
  end


  def setting_symbol
    @character = Character.find(params[:id])
    respond_to do |format|
      format.html {render :text => "", :layout => true}
      format.js
    end
  end

  def setting_other
    @character = Character.find(params[:id])
    respond_to do |format|
      format.html {render :text => "", :layout => true}
      format.js
    end
  end

  private
    def character_params
      params.require(:character).permit(:name, :archetype_id)
    end
end
