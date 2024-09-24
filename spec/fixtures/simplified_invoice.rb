INVOICE_LINES = [].freeze
INVOICE_ID = "SME00010".freeze
INVOICE_UUID = "8e6000cf-1a98-4174-b3e7-b5d5954bc10d".freeze
NOTE = "ABC".freeze
NOTE_LANGUAGE_ID = "ar".freeze
ISSUE_DATE = "2022-08-17".freeze
ISSUE_TIME = "17:41:08".freeze
INVOICE_SUBTYPE = "0200000".freeze
INVOICE_TYPE = "388".freeze
INVOICE_COUNTER_VALUE = "10".freeze
PREVIOUS_INVOICE_HASH = "NWZlY2ViNjZmZmM4NmYzOGQ5NTI3ODZjNmQ2OTZjNzljMmRiYzIzOWRkNGU5MWI0NjcyOWQ3M2EyN2ZiNTdlOQ==".freeze

ACCOUNTING_SUPPLIER_PARTY = ZATCA::UBL::CommonAggregateComponents::Party.new(
  party_identification: ZATCA::UBL::CommonAggregateComponents::PartyIdentification.new(
    id: "324223432432432"
  ),
  postal_address: ZATCA::UBL::CommonAggregateComponents::PostalAddress.new(
    street_name: "الامير سلطان",
    additional_street_name: nil,
    building_number: "3242",
    plot_identification: "4323",
    city_subdivision_name: "32423423",
    city_name: "الرياض | Riyadh",
    postal_zone: "32432",
    country_subentity: nil,
    country_identification_code: "SA"
  ),

  party_tax_scheme: ZATCA::UBL::CommonAggregateComponents::PartyTaxScheme.new(
    company_id: "311111111101113"
  ),

  party_legal_entity: ZATCA::UBL::CommonAggregateComponents::PartyLegalEntity.new(
    registration_name: "Acme Widgets LTD"
  )
).freeze

ACCOUNTING_CUSTOMER_PARTY = ZATCA::UBL::CommonAggregateComponents::Party.new(
  # party_identification: ZATCA::UBL::CommonAggregateComponents::PartyIdentification.new(
  #   id: "2345",
  #   scheme_id: "NAT"
  # ),
  party_identification: nil,
  postal_address: ZATCA::UBL::CommonAggregateComponents::PostalAddress.new(
    street_name: nil,
    additional_street_name: nil,
    building_number: nil,
    plot_identification: nil,
    city_subdivision_name: "32423423",
    city_name: nil,
    postal_zone: nil,
    country_subentity: nil,
    country_identification_code: "SA"
  ),

  party_tax_scheme: ZATCA::UBL::CommonAggregateComponents::PartyTaxScheme.new,
  party_legal_entity: nil
).freeze

# DELIVERY = ZATCA::UBL::CommonAggregateComponents::Delivery.new(
#   actual_delivery_date: "2022-03-13",
#   latest_delivery_date: "2022-03-15"
# ).freeze

DELIVERY = nil

PAYMENT_MEANS_CODE = "10".freeze

ALLOWANCE_CHARGES = [
  ZATCA::UBL::CommonAggregateComponents::AllowanceCharge.new(
    charge_indicator: false,
    amount: "0.00",
    allowance_charge_reason: "discount",
    currency_id: "SAR",
    tax_categories: [
      # Yes, ZATCA's official valid sample duplicates these, not sure why
      ZATCA::UBL::CommonAggregateComponents::TaxCategory.new(
        tax_percent: "15"
      ),
      ZATCA::UBL::CommonAggregateComponents::TaxCategory.new(
        tax_percent: "15"
      )
    ]
  )
].freeze

# ZATCA's official valid sample has two of these, not sure why
TAX_TOTALS = [
  ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
    tax_amount: "30.15"
  ),
  ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
    tax_amount: "30.15",
    tax_subtotal_amount: "30.15",
    taxable_amount: "201.00",
    tax_category: ZATCA::UBL::CommonAggregateComponents::TaxCategory.new(
      tax_percent: "15.00"
    )
  )
].freeze

LEGAL_MONETARY_TOTAL = ZATCA::UBL::CommonAggregateComponents::LegalMonetaryTotal.new(
  line_extension_amount: "201.00",
  tax_exclusive_amount: "201.00",
  tax_inclusive_amount: "231.15",
  allowance_total_amount: "0.00",
  charge_total_amount: "0.00",
  prepaid_amount: "0.00",
  payable_amount: "231.15"
).freeze

INVOICE_LINES = [
  # Book
  ZATCA::UBL::CommonAggregateComponents::InvoiceLine.new(
    invoiced_quantity: "33.000000",
    invoiced_quantity_unit_code: "PCE",
    line_extension_amount: "99.00",
    tax_total: ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
      tax_amount: "14.85",
      rounding_amount: "113.85"
    ),
    item: ZATCA::UBL::CommonAggregateComponents::Item.new(
      name: "كتاب"
    ),
    price: ZATCA::UBL::CommonAggregateComponents::Price.new(
      price_amount: "3.00",
      allowance_charge: ZATCA::UBL::CommonAggregateComponents::AllowanceCharge.new(
        charge_indicator: false,
        allowance_charge_reason: "discount",
        amount: "0.00",
        add_tax_category: false,
        add_id: false
      )
    )
  ),

  # Pen
  ZATCA::UBL::CommonAggregateComponents::InvoiceLine.new(
    invoiced_quantity: "3.000000",
    invoiced_quantity_unit_code: "PCE",
    line_extension_amount: "102.00",
    tax_total: ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
      tax_amount: "15.30",
      rounding_amount: "117.30"
    ),
    item: ZATCA::UBL::CommonAggregateComponents::Item.new(
      name: "قلم"
    ),
    price: ZATCA::UBL::CommonAggregateComponents::Price.new(
      price_amount: "34.00",
      allowance_charge: ZATCA::UBL::CommonAggregateComponents::AllowanceCharge.new(
        charge_indicator: false,
        allowance_charge_reason: "discount",
        amount: "0.00",
        add_tax_category: false,
        add_id: false
      )
    )
  )
].freeze

CURRENCY_CODE = "SAR".freeze

def make_invoice(signature: nil, qr_code: nil)
  ZATCA::UBL::Invoice.new(
    add_ids_to_allowance_charges: false,
    signature: signature,
    qr_code: qr_code,
    id: INVOICE_ID,
    uuid: INVOICE_UUID,
    issue_date: ISSUE_DATE,
    issue_time: ISSUE_TIME,
    subtype: INVOICE_SUBTYPE,
    type: INVOICE_TYPE,
    invoice_counter_value: INVOICE_COUNTER_VALUE,
    previous_invoice_hash: PREVIOUS_INVOICE_HASH,
    accounting_supplier_party: ACCOUNTING_SUPPLIER_PARTY,
    accounting_customer_party: ACCOUNTING_CUSTOMER_PARTY,
    delivery: DELIVERY,
    payment_means_code: PAYMENT_MEANS_CODE,
    allowance_charges: ALLOWANCE_CHARGES,
    tax_totals: TAX_TOTALS,
    legal_monetary_total: LEGAL_MONETARY_TOTAL,
    invoice_lines: INVOICE_LINES,
    currency_code: CURRENCY_CODE,
    note: NOTE,
    note_language_id: NOTE_LANGUAGE_ID
  )
end

def construct_simplified_invoice
  signature = ZATCA::UBL::Signing::Signature.new(
    invoice_hash: "o4RpnVmSAttoj1roBwPSEn8RM4Yaid4NPa2/lffpqkQ=",
    signed_properties_hash: "OGU1M2Q3NGFkOTdkYTRiNDVhOGZmYmU2ZjE0YzI3ZDhhNjlmM2EzZmQ4MTU5NTBhZjBjNDU2MWZlNjU3MWU0ZQ==",
    signature_value: "MEYCIQDYsDnviJYPgYjyCIYAyzETeYthIoJaQhChblP4eAAPPAIhAJl6zfHgiKmWTtsfUz8YBZ8QkQ9rBL4Uy7mK0cxvWooH",
    certificate: "MIID6jCCA5CgAwIBAgITbwAAgdnaFeERlUnosgABAACB2TAKBggqhkjOPQQDAjBjMRUwEwYKCZImiZPyLGQBGRYFbG9jYWwxEzARBgoJkiaJk/IsZAEZFgNnb3YxFzAVBgoJkiaJk/IsZAEZFgdleHRnYXp0MRwwGgYDVQQDExNUU1pFSU5WT0lDRS1TdWJDQS0xMB4XDTIyMTExMzA4MTQwNloXDTI0MTExMjA4MTQwNlowTjELMAkGA1UEBhMCU0ExEzARBgNVBAoTCjMxMTExMTExMTExDDAKBgNVBAsTA1RTVDEcMBoGA1UEAxMTVFNULTMxMTExMTExMTEwMTExMzBWMBAGByqGSM49AgEGBSuBBAAKA0IABGGDDKDmhWAITDv7LXqLX2cmr6+qddUkpcLCvWs5rC2O29W/hS4ajAK4Qdnahym6MaijX75Cg3j4aao7ouYXJ9GjggI5MIICNTCBmgYDVR0RBIGSMIGPpIGMMIGJMTswOQYDVQQEDDIxLVRTVHwyLVRTVHwzLTNiYjUwNzUyLTczZTktNGZkMS05Y2FmLTk5MDMxZTg2NzYwOTEfMB0GCgmSJomT8ixkAQEMDzMxMTExMTExMTEwMTExMzENMAsGA1UEDAwEMTEwMDEMMAoGA1UEGgwDVFNUMQwwCgYDVQQPDANUU1QwHQYDVR0OBBYEFDuWYlOzWpFN3no1WtyNktQdrA8JMB8GA1UdIwQYMBaAFHZgjPsGoKxnVzWdz5qspyuZNbUvME4GA1UdHwRHMEUwQ6BBoD+GPWh0dHA6Ly90c3RjcmwuemF0Y2EuZ292LnNhL0NlcnRFbnJvbGwvVFNaRUlOVk9JQ0UtU3ViQ0EtMS5jcmwwga0GCCsGAQUFBwEBBIGgMIGdMG4GCCsGAQUFBzABhmJodHRwOi8vdHN0Y3JsLnphdGNhLmdvdi5zYS9DZXJ0RW5yb2xsL1RTWkVpbnZvaWNlU0NBMS5leHRnYXp0Lmdvdi5sb2NhbF9UU1pFSU5WT0lDRS1TdWJDQS0xKDEpLmNydDArBggrBgEFBQcwAYYfaHR0cDovL3RzdGNybC56YXRjYS5nb3Yuc2Evb2NzcDAOBgNVHQ8BAf8EBAMCB4AwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMDMCcGCSsGAQQBgjcVCgQaMBgwCgYIKwYBBQUHAwIwCgYIKwYBBQUHAwMwCgYIKoZIzj0EAwIDSAAwRQIgaHfuXVSkdtyfxmbM32OZzobhX/za+GV4my0HiZkaj88CIQCDDFZ0pHH13kH0fv2gauv7PtsdTYsDRixr8BjyRv1AMw==",
    signing_time: "2022-09-15T00:41:21",
    cert_digest_value: "YTJkM2JhYTcwZTBhZTAxOGYwODMyNzY3NTdkZDM3YzhjY2IxOTIyZDZhM2RlZGJiMGY0NDUzZWJhYWI4MDhmYg==",
    cert_issuer_name: "CN=TSZEINVOICE-SubCA-1, DC=extgazt, DC=gov, DC=local",
    cert_serial_number: "2475382889638462342007062736671525055900975577"
  )

  qr_code = "ARNBY21lIFdpZGdldOKAmXMgTFREAg8zMTExMTExMTExMDExMTMDFDIwMjItMDgtMTdUMTc6NDE6MDhaBAYyMzEuMTUFBTMwLjE1BixSdkNTcE1ZejgwMDlLYkoza3U3Mm9hQ0ZXcHpFZlFOY3BjKzVidWxoM0prPQdgTUVZQ0lRRFlzRG52aUpZUGdZanlDSVlBeXpFVGVZdGhJb0phUWhDaGJsUDRlQUFQUEFJaEFKbDZ6ZkhnaUttV1R0c2ZVejhZQlo4UWtROXJCTDRVeTdtSzBjeHZXb29ICFgwVjAQBgcqhkjOPQIBBgUrgQQACgNCAARhgwyg5oVgCEw7+y16i19nJq+vqnXVJKXCwr1rOawtjtvVv4UuGowCuEHZ2ocpujGoo1++QoN4+GmqO6LmFyfRCUYwRAIgOgjNPJW017lsIijmVQVkP7GzFO2KQKd9GHaukLgIWFsCIFJF9uwKhTMxDjWbN+1awsnFI7RLBRxA/6hZ+F1wtaqU"

  make_invoice(signature: signature, qr_code: qr_code)
end

def construct_unsigned_simplified_invoice
  make_invoice
end
