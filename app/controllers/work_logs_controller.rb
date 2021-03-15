class WorkLogsController < ApplicationController
  before_action only: [:edit, :delete]

  def index
    @work_logs = WorkLog.all
  end

  def new
    @work_log = WorkLog.new
    @users = User.all
  end

  def create
    @work_log = WorkLog.create(work_log_params)
    if @work_log
      redirect_to work_logs_path
    else
      puts @work_logs.errors
    end
  end

  private

  def get_work_log
    @work_log = WorkLog.find_by(id: params[:id])
  end

  def work_log_params
    params.require(:work_log).permit(:user_id, :work_date, :hours, :notes)
  end
end
