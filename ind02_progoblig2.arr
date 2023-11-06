use context essentials2021
include gdrive-sheets
include shared-gdrive("dcic-2021", "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"

tabell=
  load-table:  komponent, energi
  source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
    sanitize komponent using string-sanitizer
end

tabell

fun energi-to-number(str :: String) -> Number:
  doc: "If s is not a numeric string, default to 0."
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end

where:
energi-to-number("") is 0
energi-to-number("48") is 48
end


distance-travelled-per-day = 10 
distance-per-unit-of-fuel = 5 
energy-per-unit-of-fuel = 15 


energy-per-day = 
  num-round(distance-travelled-per-day / distance-per-unit-of-fuel) * energy-per-unit-of-fuel

# c) her bruker vi funksjonen tansform-column
transform-table = transform-column(tabell, "energi", energi-to-number)

#d) her bruker vi funksjonen sum, for å beregne det totale energi forbruket
summert = sum(transform-table, "energi")

# e) her bruker vi bar-chart for å generere et stolpediagram som viser de forskjellige dataene.
bar-chart(transform-table, "komponent", "energi")

#Her legges det til en ny rad, med den oppsumerte dataen
table-summert = table: komponent :: String, energi :: Number
  row: "Totalt", summert
end
#Printer tabellen med den nye raden
new-row = get-row(table-summert, 0)
add-row(transform-table, new-row)