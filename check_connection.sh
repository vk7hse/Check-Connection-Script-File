#!/bin/bash

# Check Connection to a designated AllStarLink node and reconnect if disconnected

# Set your AllStarLink node number and the target node number you want to check to the connection
MY_NODE=XXXXXX
TARGET_NODE=XXXXXX

# Check if the target node is connected
if ! /usr/sbin/asterisk -rx "rpt lstats $MY_NODE" | grep -q "$TARGET_NODE"; then
  echo "Node $MY_NODE is not connected to node $TARGET_NODE. Reconnecting..."
  /usr/sbin/asterisk -rx "rpt fun $MY_NODE *3$TARGET_NODE"
else
   echo "Node $MY_NODE is already connected to node $TARGET_NODE."
 fi

# comment out all the below if not adding a second section, otherwise fill out MY_NODE and TARGET_NODE
 MY_NODE=XXXXXX
TARGET_NODE=XXXXXX

# Check if the target node is connected
if ! /usr/sbin/asterisk -rx "rpt lstats $MY_NODE" | grep -q "$TARGET_NODE"; then
  echo "Node $MY_NODE is not connected to node $TARGET_NODE. Reconnecting..."
  /usr/sbin/asterisk -rx "rpt fun $MY_NODE *3$TARGET_NODE"
else
   echo "Node $MY_NODE is already connected to node $TARGET_NODE."
 fi
