class FlowersController < ApplicationController
    def index
      @flowers = Flower.all
    end

    def  new
      @flower = Flower.new
    end

    def create
      @flower = Flower.new(flower_params)

      if @flower.save
        redirect_to flowers_path, notice: "新增成功"
      else
        render :new
      end
    end

    def edit
      @flower = Flower.find_by(id: params[:id])
    end

    def update
      @flower = Flower.find_by(id: params[:id])

      if @flower.update(flower_params)
        redirect_to flowers_path, notice: "修改成功"
      else
        render :edit
      end
    end

    def destroy
      @flower = Flower.find_by(id: params[:id])
      @flower.destroy if @flower
      redirect_to flowers_path, notice: "刪除成功"
    end




    private
    def flower_params
      params.require(:flower).permit(:species, :color, :price, :sell)
    end

end
