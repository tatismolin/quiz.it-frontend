class DashboardsController < ApplicationController

    before_action :find_dashboard, only: [:show, :update, :destroy]

    def index
        @dashboards = Dashboard.all 
        render json: @dashboards, include: [:cards]
    end

    def show
        render json: @dashboards
    end

    def create
        @dashboard = Dashboard.create(dashboard_params)
        render json: @dashboard
    end

    def update 
        @dashboard.update(dashboard_params)
        render json: @dashboard
    end

    def destroy
        @dashboard.destroy
    end

    private

    def find_dashboard
        @dashboard = Dashboard.find(params[:id])
    end

    def dashboards_params
        params.require(:dashboard).permit(:name)
    end

end
