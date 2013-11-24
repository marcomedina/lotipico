module ApplicationHelper
  def stock_counter(product)
    {
      on_hand: product.total_on_hand,
      original: product.stock_items.first.stock_movements.first.try(:quantity) || 0,
      percentaje: (product.total_on_hand*100) / (product.stock_items.first.stock_movements.first.try(:quantity) || 1)
    }
  end
end
