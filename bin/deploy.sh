#!/usr/bin/env sh

swap_name=$1

# usage
if [ "$swap_name" != "blue" ] && [ "$swap_name" != "green" ]
then
  echo "./deploy.sh [blue|green]"
  exit 2
fi


activate_color="green"
deactivate_color="blue"

if [ $swap_name = "blue" ]
then
  activate_color="blue"
  deactivate_color="green"
fi

current_space=`CF_COLOR=false cf target | grep Space | sed 's/Space: *//'`
space_production="production"

if [ $current_space != $space_production ]
then
  echo "Only environment production available. cf login?"
  exit 1
fi

echo "Switching from $deactivate_color to $activate_color in $current_space"


if [ $current_space = $space_production ]
then
  app_to_activate="railsgirlssb-$activate_color"
  app_to_deactivate="railsgirlssb-$deactivate_color"

  echo "Mapping urls from $app_to_deactivate to $app_to_activate"

  cf unmap-route $app_to_deactivate railsgirlssb.de
  cf map-route $app_to_activate railsgirlssb.de

  cf unmap-route $app_to_deactivate www.railsgirlssb.de
  cf map-route $app_to_activate www.railsgirlssb.de

  cf unmap-route $app_to_deactivate aws.ie.a9sapp.eu -n railsgirlssb
  cf map-route $app_to_activate aws.ie.a9sapp.eu -n railsgirlssb

  cf stop $app_to_deactivate
fi
