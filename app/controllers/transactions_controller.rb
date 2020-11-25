class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  def index
    @transactions = current_user.transactions.all.recent
    @total = current_user.transactions.pluck(:amount).inject(0) { |sum, x| sum + x }
  end

  def show
    Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
    @groups = Group.all.collect
  end

  def edit; end

  def create
    @transaction = current_user.transactions.new(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'Your bill was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @transaction, notice: 'Your bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Your bill was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def external_transactions
    @all_transactions = current_user.transactions.all.recent
    @e_transactions = current_user.external_transaction(@all_transactions)
    @e_total = Transaction.where(group_id: nil)
    @ex_total = @e_total.current_user.pluck(:amount).inject(0) { |sum, x| sum + x }
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :desc, :group_id)
  end
end
