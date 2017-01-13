module ProductsHelper
  def get_data(data)
    int_data = data.to_i
    min =0
    max =0
    if int_data != 0
      min = int_data - int_data * 0.1
      max = int_data + int_data * 0.1
    end
    @products = Product.where("name LIKE :search OR category LIKE :search OR price between #{min} and #{max}", search: "%#{data}%")
  end

end
