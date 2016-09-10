class ThoughtLogsController < ApplicationController
  before_action :set_thought_log, only: [:show, :edit, :update, :destroy, :add_time]

  def index
    @thought_logs = ThoughtLog.all
  end

  def show
  end

  def new
    @thought_log = ThoughtLog.new
  end

  def edit
  end

  def create
    @thought_log = ThoughtLog.new(thought_log_params)

    if @thought_log.save
      redirect_to thought_logs_path, notice: 'Gracias'
    else
      render :new
    end
  end

  def add_time
    times = @thought_log.times
    if @thought_log.update(times: times + 1)
      redirect_to @thought_log, notice: 'Gracias'
    else
      render :edit
    end
  end

  def update
    if @thought_log.update(thought_log_params)
      redirect_to @thought_log, notice: 'Gracias'
    else
      render :edit
    end
  end

  def destroy
    @thought_log.destroy
    redirect_to thought_logs_url, notice: 'Gracias'
  end

  private
    def set_thought_log
      @thought_log = ThoughtLog.find(params[:id])
    end

    def thought_log_params
      params.require(:thought_log).permit(:situation, :emotion, :thought, :response, :result, :error, :times, :alternative_thought, :result)
    end
end
