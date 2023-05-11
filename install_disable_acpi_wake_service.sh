# https://ubuntu-mate.community/t/stop-usb-wake-from-suspend/23195
sudo cp disable_acpi_wake.service /etc/systemd/system/disable_acpi_wake.service
sudo systemctl start disable_acpi_wake.service
sudo systemctl enable disable_acpi_wake.service
