class ZATCA::UBL::CommonAggregateComponents::LegalMonetaryTotal < ZATCA::UBL::BaseComponent
  attr_reader :line_extension_amount, :tax_exclusive_amount,
    :tax_inclusive_amount, :allowance_total_amount, :charge_total_amount, :prepaid_amount,
    :payable_amount, :currency_id

  # <cac:LegalMonetaryTotal>
  #   <cbc:LineExtensionAmount currencyID="SAR">966.00</cbc:LineExtensionAmount>
  #   <cbc:TaxExclusiveAmount currencyID="SAR">964.00</cbc:TaxExclusiveAmount>
  #   <cbc:TaxInclusiveAmount currencyID="SAR">1108.90</cbc:TaxInclusiveAmount>
  #   <cbc:AllowanceTotalAmount currencyID="SAR">2.00</cbc:AllowanceTotalAmount>
  #   <cbc:PrepaidAmount currencyID="SAR">0.00</cbc:PrepaidAmount>
  #   <cbc:PayableAmount currencyID="SAR">1108.90</cbc:PayableAmount>
  # </cac:LegalMonetaryTotal>

  def initialize(
    line_extension_amount:,
    tax_exclusive_amount:,
    tax_inclusive_amount:,
    allowance_total_amount:,
    charge_total_amount:,
    prepaid_amount: nil,
    payable_amount: nil,
    currency_id: "SAR"
  )
    @line_extension_amount = line_extension_amount
    @tax_exclusive_amount = tax_exclusive_amount
    @tax_inclusive_amount = tax_inclusive_amount
    @allowance_total_amount = allowance_total_amount
    @charge_total_amount = charge_total_amount
    @prepaid_amount = prepaid_amount
    @payable_amount = payable_amount
    @currency_id = currency_id
  end

  def name
    "cac:LegalMonetaryTotal"
  end

  def prepaid_amount_element
    return nil if @prepaid_amount.blank?

    ZATCA::UBL::BaseComponent.new(name: "cbc:PrepaidAmount", value: @prepaid_amount, attributes: {"currencyID" => @currency_id})
  end

  def payable_amount_element
    return nil if @payable_amount.blank?

    ZATCA::UBL::BaseComponent.new(name: "cbc:PayableAmount", value: @payable_amount, attributes: {"currencyID" => @currency_id})
  end

  def elements
    [
      ZATCA::UBL::BaseComponent.new(name: "cbc:LineExtensionAmount", value: @line_extension_amount, attributes: {"currencyID" => @currency_id}),
      ZATCA::UBL::BaseComponent.new(name: "cbc:TaxExclusiveAmount", value: @tax_exclusive_amount, attributes: {"currencyID" => @currency_id}),
      ZATCA::UBL::BaseComponent.new(name: "cbc:TaxInclusiveAmount", value: @tax_inclusive_amount, attributes: {"currencyID" => @currency_id}),
      ZATCA::UBL::BaseComponent.new(name: "cbc:AllowanceTotalAmount", value: @allowance_total_amount, attributes: {"currencyID" => @currency_id}),
      ZATCA::UBL::BaseComponent.new(name: "cbc:ChargeTotalAmount", value: @charge_total_amount, attributes: {"currencyID" => @currency_id}),
      prepaid_amount_element,
      payable_amount_element
    ]
  end
end
