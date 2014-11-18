MoneyRails.configure do |config|

  config.default_currency = :usd

  config.amount_column = { prefix: "",           # column name prefix
                           postfix: "_cents",    # column name postfix
                           column_name: nil,
                           type: :integer,       # column type
                           present: true,        # column will be created
                           null: false,
                           default: 0
  }
  config.currency_column = { prefix: "",
                             postfix: "_currency",
                             column_name: nil,
                             type: :string,
                             present: true,
                             null: false,
                             default: "USD"
  }
#  config.register_currency = { 
#    priority:            1,
#    iso_code:            "EU4",
#    name:                "Euro with subunit of 4 digits",
#    symbol:               "€",
#    symbol_first:         true,
#    subunit:              "Subcent",
#    subunit_to_unit:      10000,
#    thousands_separator:  ".",
#    decimal_mark:         ","
#  }
end
