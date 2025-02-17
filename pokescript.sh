#!/bin/bash
if [ -z "$1" ]; then
    echo "Ingrese un Pokemon"
    exit 1
fi

CSV="pokemon_data.csv"

RESPONSE=$(curl -s "https://pokeapi.co/api/v2/pokemon/$1")
if echo "$RESPONSE" | jq -e .id >/dev/null 2>&1; then
    ID=$(echo "$RESPONSE" | jq .id)
    NAME=$(echo "$RESPONSE" | jq -r .name)
    WEIGHT=$(echo "$RESPONSE" | jq .weight)
    HEIGHT=$(echo "$RESPONSE" | jq .height)
    ORDER=$(echo "$RESPONSE" | jq .order)
    
    echo "$NAME (No. $ID)"
    echo "Id = $ID"
    echo "Weight = $WEIGHT"
    echo "Height = $HEIGHT"
    echo "Order = $ORDER"
    
    if [ ! -f "$CSV" ]; then
        echo "id,name,weight,height,order" > "$CSV"
    fi
    echo "$ID,$NAME,$WEIGHT,$HEIGHT,$ORDER" >> "$CSV"
else 
    echo "Error: No se encontró información para el Pokémon"
    exit 1
fi
