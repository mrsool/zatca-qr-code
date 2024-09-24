def construct_signed_standard_invoice
  signature = ZATCA::UBL::Signing::Signature.new(
    invoice_hash: "mfVCipyZPmHg1iSt+ybRbRLhP+xfnH5ffsLawdiu6PI=",
    signed_properties_hash: "M2ZkZWViYTg3OGYwNGQ3ZjhkOGJiNWUyZjlhODViMTc1YTg0MmE4MDFmNjU1MWJhYmYyYWFlMDc4MjRmMGVlOQ==",
    signature_value: "",
    certificate: "MIID3DCCA4KgAwIBAgITbwAAZIQwd/uzGGbr+QABAABkhDAKBggqhkjOPQQDAjBjMRUwEwYKCZImiZPyLGQBGRYFbG9jYWwxEzARBgoJkiaJk/IsZAEZFgNnb3YxFzAVBgoJkiaJk/IsZAEZFgdleHRnYXp0MRwwGgYDVQQDExNUU1pFSU5WT0lDRS1TdWJDQS0xMB4XDTIyMDMxNTA4MjkwNVoXDTIyMDMxNzA4MjkwNVowTzELMAkGA1UEBhMCU0ExEzARBgNVBAoTCmhheWEgeWFnIDMxFzAVBgNVBAsTDmFtbWFuIEJyYW5jaGNoMRIwEAYDVQQDEwkxMjcuMC4wLjEwVjAQBgcqhkjOPQIBBgUrgQQACgNCAATTAK9lrTVko9rkq6ZYcc9HDRZP4b9S4zA4Km7YXJ+snTVhLkzU0HsmSX9Un8jDhRTOHDKaft8C/uuUY934vuMNo4ICKjCCAiYwgYsGA1UdEQSBgzCBgKR+MHwxHTAbBgNVBAQMFDEtaGF5YXwyLTIzNHwzLTcxMTExMR8wHQYKCZImiZPyLGQBAQwPMzAwMDU1MTg0NDAwMDAzMQ0wCwYDVQQMDAQxMTExMREwDwYDVQQaDAhaYXRjYSAxMjEYMBYGA1UEDwwPRm9vZCBCdXNzaW5lc3MzMB0GA1UdDgQWBBSgmIWD6bPfbbKkmTwOJRXvIbH9HjAfBgNVHSMEGDAWgBR2YIz7BqCsZ1c1nc+arKcrmTW1LzBOBgNVHR8ERzBFMEOgQaA/hj1odHRwOi8vdHN0Y3JsLnphdGNhLmdvdi5zYS9DZXJ0RW5yb2xsL1RTWkVJTlZPSUNFLVN1YkNBLTEuY3JsMIGtBggrBgEFBQcBAQSBoDCBnTBuBggrBgEFBQcwAYZiaHR0cDovL3RzdGNybC56YXRjYS5nb3Yuc2EvQ2VydEVucm9sbC9UU1pFaW52b2ljZVNDQTEuZXh0Z2F6dC5nb3YubG9jYWxfVFNaRUlOVk9JQ0UtU3ViQ0EtMSgxKS5jcnQwKwYIKwYBBQUHMAGGH2h0dHA6Ly90c3RjcmwuemF0Y2EuZ292LnNhL29jc3AwDgYDVR0PAQH/BAQDAgeAMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDAzAnBgkrBgEEAYI3FQoEGjAYMAoGCCsGAQUFBwMCMAoGCCsGAQUFBwMDMAoGCCqGSM49BAMCA0gAMEUCIARehvaSyyUUyKpOrF/loNYHOWypNKttFPpUIm4dLwyaAiEAiNlHW6XNGo3sETvQxqVF4bx5AAw14BmXiYic1ZrtAOM=",
    signing_time: "2022-03-18T14:13:54",
    cert_digest_value: "ZjFmMmY0NWM0M2NjMmY0MGM0ODkzNGI5NDg0Mjg0ODhkYzMwZDFkOThlYTI5YjNlNmU1ODk3MDQ3ZGE4MzdlZg==",
    cert_issuer_name: "CN=TSZEINVOICE-SubCA-1, DC=extgazt, DC=gov, DC=local",
    cert_serial_number: "2475382850646064994238214165482959904908010628"
  )

  invoice_id = "100"
  invoice_uuid = "3cf5ee18-ee25-44ea-a444-2c37ba7f28be"
  line_count_numeric = "2"
  issue_date = "2021-04-25"
  issue_time = "15:30:00"
  invoice_subtype = "0100000"
  invoice_type = "388"

  invoice_counter_value = "46531"
  previous_invoice_hash = "NWZlY2ViNjZmZmM4NmYzOGQ5NTI3ODZjNmQ2OTZjNzljMmRiYzIzOWRkNGU5MWI0NjcyOWQ3M2EyN2ZiNTdlOQ=="
  qr_code = "ARlBbCBTYWxhbSBTdXBwbGllcyBDby4gTFREAg8zMDAwNTUxODQ0MDAwMDMDFDIwMjEtMDQtMjVUMTU6MzA6MDBaBAcxMDM1LjAwBQYxMzUuMDAGLG1mVkNpcHlaUG1IZzFpU3QreWJSYlJMaFAreGZuSDVmZnNMYXdkaXU2UEk9B1gwVjAQBgcqhkjOPQIBBgUrgQQACgNCAATTAK9lrTVko9rkq6ZYcc9HDRZP4b9S4zA4Km7YXJ+snTVhLkzU0HsmSX9Un8jDhRTOHDKaft8C/uuUY934vuMNCCEAnHTyqYXeVhBdCUO9gq4nX73oEgVZCjZ8STz9QY7Sy1sJIBkN9Q56qQGMZly02uwNYqXPAagxEF1tqxImEczcDbK2"

  accounting_supplier_party = ZATCA::UBL::CommonAggregateComponents::Party.new(
    party_identification: ZATCA::UBL::CommonAggregateComponents::PartyIdentification.new(
      id: "123457890",
      scheme_id: "MLS"
    ),
    postal_address: ZATCA::UBL::CommonAggregateComponents::PostalAddress.new(
      street_name: "King Abdulaziz Road",
      building_number: "8228",
      plot_identification: "2121",
      city_subdivision_name: "Al Amal",
      city_name: "Riyadh",
      postal_zone: "12643",
      country_subentity: "Riyadh Region",
      country_identification_code: "SA"
    ),

    party_tax_scheme: ZATCA::UBL::CommonAggregateComponents::PartyTaxScheme.new(
      company_id: "300055184400003"
    ),

    party_legal_entity: ZATCA::UBL::CommonAggregateComponents::PartyLegalEntity.new(
      registration_name: "Al Salam Supplies Co. LTD"
    )
  )

  accounting_customer_party = ZATCA::UBL::CommonAggregateComponents::Party.new(
    party_identification: ZATCA::UBL::CommonAggregateComponents::PartyIdentification.new(
      id: "123C12345678",
      scheme_id: "SAG"
    ),
    postal_address: ZATCA::UBL::CommonAggregateComponents::PostalAddress.new(
      street_name: "King Abdullah Road",
      building_number: "3709",
      plot_identification: "1004",
      city_subdivision_name: "Al Mursalat",
      city_name: "Riyadh",
      postal_zone: "11564",
      country_subentity: "Riyadh Region",
      country_identification_code: "SA"
    ),

    party_tax_scheme: ZATCA::UBL::CommonAggregateComponents::PartyTaxScheme.new,
    party_legal_entity: ZATCA::UBL::CommonAggregateComponents::PartyLegalEntity.new(
      registration_name: "AL KAWTHAR MARKETS"
    )
  )

  delivery = ZATCA::UBL::CommonAggregateComponents::Delivery.new(
    actual_delivery_date: "2022-04-25"
  )

  payment_means_code = "42"

  allowance_charges = []

  tax_totals = [
    ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
      tax_amount: "135.00",
      tax_subtotal_amount: "135.00",
      taxable_amount: "900.00",
      tax_category: ZATCA::UBL::CommonAggregateComponents::TaxCategory.new(
        tax_percent: "15"
      )
    ),

    ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
      tax_amount: "135.00"
    )
  ]

  legal_monetary_total = ZATCA::UBL::CommonAggregateComponents::LegalMonetaryTotal.new(
    line_extension_amount: "900.00",
    tax_exclusive_amount: "900.00",
    tax_inclusive_amount: "1035.00",
    allowance_total_amount: "0.00",
    charge_total_amount: "0.00",
    payable_amount: "1035.00"
  )

  invoice_lines = [
    ZATCA::UBL::CommonAggregateComponents::InvoiceLine.new(
      invoiced_quantity: "1",
      invoiced_quantity_unit_code: "PCE",
      line_extension_amount: "200.00",
      tax_total: ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
        tax_amount: "30.00",
        rounding_amount: "230.00"
      ),
      item: ZATCA::UBL::CommonAggregateComponents::Item.new(
        name: "Item A",
        classified_tax_category: ZATCA::UBL::CommonAggregateComponents::ClassifiedTaxCategory.new(
          percent: "15"
        )
      ),
      price: ZATCA::UBL::CommonAggregateComponents::Price.new(
        price_amount: "200.00"
      )
    ),
    ZATCA::UBL::CommonAggregateComponents::InvoiceLine.new(
      invoiced_quantity: "2",
      invoiced_quantity_unit_code: "PCE",
      line_extension_amount: "700.00",
      tax_total: ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
        tax_amount: "105.00",
        rounding_amount: "805.00"
      ),
      item: ZATCA::UBL::CommonAggregateComponents::Item.new(
        name: "Item B",
        classified_tax_category: ZATCA::UBL::CommonAggregateComponents::ClassifiedTaxCategory.new(
          percent: "15"
        )
      ),
      price: ZATCA::UBL::CommonAggregateComponents::Price.new(
        price_amount: "350.00"
      )
    )
  ]

  currency_code = "SAR"

  ZATCA::UBL::Invoice.new(
    signature: signature,
    id: invoice_id,
    uuid: invoice_uuid,
    issue_date: issue_date,
    issue_time: issue_time,
    subtype: invoice_subtype,
    type: invoice_type,
    line_count_numeric: line_count_numeric,
    invoice_counter_value: invoice_counter_value,
    previous_invoice_hash: previous_invoice_hash,
    qr_code: qr_code,
    accounting_supplier_party: accounting_supplier_party,
    accounting_customer_party: accounting_customer_party,
    delivery: delivery,
    payment_means_code: payment_means_code,
    allowance_charges: allowance_charges,
    tax_totals: tax_totals,
    legal_monetary_total: legal_monetary_total,
    invoice_lines: invoice_lines,
    currency_code: currency_code
  )
end

def construct_unsigned_standard_invoice
  invoice_id = "SME00023"
  invoice_uuid = "8d487816-70b8-4ade-a618-9d620b73814a"
  issue_date = "2022-09-07"
  issue_time = "12:21:28"
  invoice_subtype = "0100000"
  invoice_type = "388"

  invoice_counter_value = "23"
  previous_invoice_hash = "NWZlY2ViNjZmZmM4NmYzOGQ5NTI3ODZjNmQ2OTZjNzljMmRiYzIzOWRkNGU5MWI0NjcyOWQ3M2EyN2ZiNTdlOQ=="

  accounting_supplier_party = ZATCA::UBL::CommonAggregateComponents::Party.new(
    party_identification: ZATCA::UBL::CommonAggregateComponents::PartyIdentification.new(
      id: "311111111111113",
      scheme_id: "CRN"
    ),
    postal_address: ZATCA::UBL::CommonAggregateComponents::PostalAddress.new(
      street_name: "الامير سلطان",
      building_number: "2322",
      plot_identification: "2223",
      city_subdivision_name: "الرياض",
      city_name: "الرياض | Riyadh",
      postal_zone: "23333",
      country_identification_code: "SA",
      country_subentity: nil
    ),

    party_tax_scheme: ZATCA::UBL::CommonAggregateComponents::PartyTaxScheme.new(
      company_id: "311111111101113"
    ),

    party_legal_entity: ZATCA::UBL::CommonAggregateComponents::PartyLegalEntity.new(
      registration_name: "Acme Widget’s LTD"
    )
  )

  accounting_customer_party = ZATCA::UBL::CommonAggregateComponents::Party.new(
    party_identification: ZATCA::UBL::CommonAggregateComponents::PartyIdentification.new(
      id: "311111111111113",
      scheme_id: "NAT"
    ),
    postal_address: ZATCA::UBL::CommonAggregateComponents::PostalAddress.new(
      street_name: "الرياض",
      building_number: "1111",
      plot_identification: "2223",
      city_subdivision_name: "الرياض",
      city_name: "الدمام | Dammam",
      postal_zone: "12222",
      country_identification_code: "SA",
      country_subentity: nil
    ),

    party_tax_scheme: ZATCA::UBL::CommonAggregateComponents::PartyTaxScheme.new,
    party_legal_entity: ZATCA::UBL::CommonAggregateComponents::PartyLegalEntity.new(
      registration_name: "Acme Widget’s LTD 2"
    )
  )

  delivery = ZATCA::UBL::CommonAggregateComponents::Delivery.new(
    actual_delivery_date: "2022-09-07"
  )

  payment_means_code = "10"

  allowance_charges = [
    ZATCA::UBL::CommonAggregateComponents::AllowanceCharge.new(
      charge_indicator: false,
      amount: "0.00",
      allowance_charge_reason: "discount",
      currency_id: "SAR",
      add_id: false,
      tax_categories: [
        # Yes, ZATCA's official valid sample duplicates these, not sure why
        ZATCA::UBL::CommonAggregateComponents::TaxCategory.new(
          tax_percent: "15"
        )
      ]
    )
  ]

  tax_totals = [
    ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
      tax_amount: "0.6"
    ),

    ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
      tax_amount: "0.6",
      tax_subtotal_amount: "0.60",
      taxable_amount: "4.00",
      tax_category: ZATCA::UBL::CommonAggregateComponents::TaxCategory.new(
        tax_percent: "15.00"
      )
    )
  ]

  legal_monetary_total = ZATCA::UBL::CommonAggregateComponents::LegalMonetaryTotal.new(
    line_extension_amount: "4.00",
    tax_exclusive_amount: "4.00",
    tax_inclusive_amount: "4.60",
    allowance_total_amount: "0.00",
    charge_total_amount: "0.00",
    prepaid_amount: "0.00",
    payable_amount: "4.60"
  )

  invoice_lines = [
    ZATCA::UBL::CommonAggregateComponents::InvoiceLine.new(
      invoiced_quantity: "2.000000",
      invoiced_quantity_unit_code: "PCE",
      line_extension_amount: "4.00",
      tax_total: ZATCA::UBL::CommonAggregateComponents::TaxTotal.new(
        tax_amount: "0.60",
        rounding_amount: "4.60"
      ),
      item: ZATCA::UBL::CommonAggregateComponents::Item.new(
        name: "قلم رصاص",
        classified_tax_category: ZATCA::UBL::CommonAggregateComponents::ClassifiedTaxCategory.new(
          percent: "15.00"
        )
      ),
      price: ZATCA::UBL::CommonAggregateComponents::Price.new(
        price_amount: "2.00",
        allowance_charge: ZATCA::UBL::CommonAggregateComponents::AllowanceCharge.new(
          charge_indicator: false,
          allowance_charge_reason: "discount",
          amount: "0.00",
          add_tax_category: false,
          add_id: false
        )
      )
    )
  ]

  currency_code = "SAR"

  ZATCA::UBL::Invoice.new(
    id: invoice_id,
    uuid: invoice_uuid,
    issue_date: issue_date,
    issue_time: issue_time,
    subtype: invoice_subtype,
    type: invoice_type,
    invoice_counter_value: invoice_counter_value,
    previous_invoice_hash: previous_invoice_hash,
    accounting_supplier_party: accounting_supplier_party,
    accounting_customer_party: accounting_customer_party,
    delivery: delivery,
    payment_means_code: payment_means_code,
    allowance_charges: allowance_charges,
    tax_totals: tax_totals,
    legal_monetary_total: legal_monetary_total,
    invoice_lines: invoice_lines,
    currency_code: currency_code
  )
end
