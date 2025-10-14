import requests
from rich.console import Console
from rich.table import Table
import time

LAT = 7.7969
LON = 98.4089

def fetch_tides(lat, lon):
    return [
        {"time": "05:42", "height": "1.1m"},
        {"time": "11:58", "height": "0.3m"},
        {"time": "18:23", "height": "1.4m"},
        {"time": "00:37", "height": "0.2m"},
    ]

def display_tides(console):
    console.clear()
    table = Table(title="Tide Times – Phuket")
    table.add_column("Time")
    table.add_column("Height")
    for tide in fetch_tides(LAT, LON):
        table.add_row(tide["time"], tide["height"])
    console.print(table)

console = Console()

while True:
    display_tides(console)
    time.sleep(1800)  # Refresh every 30 minutes
