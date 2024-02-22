class FraudsController < ApplicationController
  before_action :check_search_params, only: :search

  def index
  end

  def search
    @frauds = []
      (0..2).each do |i|
        if params[:card]["#{i}"].present?
          @frauds[i] = Fraud.find_by(card_code: params[:card]["#{i}"][:card_code])
        end
      end
    
  end

  private

  def check_search_params
    if params[:card].present?
      params[:card].each do |key, card_params|
        if card_params.values_at(:card_code, :fraud_card, :procedure).all?(&:present?)
          return # 必要な情報が揃っている場合、そのままsearchアクションを実行する
        end
      end
    end
    # 必要な情報が揃っていない場合、エラーメッセージを設定し、indexを表示する
    flash.now[:alert] = "「カードコード」、「停止するカード」、「手続き」を入力してください"
    render :index
  end

end
