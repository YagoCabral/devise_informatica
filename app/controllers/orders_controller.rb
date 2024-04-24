class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
  ActiveRecord::Base.transaction do
    begin
      order_params = JSON.parse(request.body.read)

      customer = create_or_find_customer(order_params["customer"])

      unless customer.valid?
        render json: { errors: customer.errors.full_messages }, status: :unprocessable_entity
        return
      end

      computer = create_computer(order_params["computer"])

      unless computer.valid?
        render json: { errors: computer.errors.full_messages }, status: :unprocessable_entity
        return
      end

      order = Order.new(customer: customer, computer: computer)
      order.computer_id = computer.id  # Atribuição do ID do computador ao pedido

      if order.save
        render json: { message: "Pedido criado com sucesso!" }, status: :created
      else
        render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
      end
    rescue JSON::ParserError => e
      render json: { error: "Erro ao processar o JSON: #{e.message}" }, status: :bad_request
    rescue StandardError => e
      render json: { error: "Erro ao criar o pedido: #{e.message}" }, status: :internal_server_error
    end
  end
end


  private

  def create_or_find_customer(customer_params)
    name = customer_params["name"]
    Customer.find_or_initialize_by(name: name) do |customer|
      customer.save!
    end
  end

  def create_computer(computer_params)
    processor = Processor.create(computer_params["processor"])
    motherboard = Motherboard.create(computer_params["motherboard"])
  
    # Verifica se há uma entrada correspondente para video_card no JSON
    video_card_params = computer_params["video_card"]
    video_card = VideoCard.create(video_card_params) if video_card_params.present?
  
    rams = computer_params["rams"].map { |ram_params| Ram.create(ram_params) }
  
    computer = Computer.new
    computer.processor = processor
    computer.motherboard = motherboard
    computer.video_card = video_card if video_card.present?  # Só atribui se o video_card estiver presente
    computer.rams = rams
  
    computer
  end  
end
