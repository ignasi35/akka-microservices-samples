#!/usr/bin/env bash

declare -r tutorial_sources="docs-source/docs/modules/microservices-tutorial/examples"
declare -r tutorial_attachments="docs-source/docs/modules/microservices-tutorial/assets/attachments"

function prepareAttachment() {
   source_name=$1
   zip ${tutorial_attachments}/${source_name}.zip ${tutorial_sources}/${source_name}
}

mkdir -p ${tutorial_attachments}

prepareAttachment 00-shopping-cart-service-scala
prepareAttachment 01-shopping-cart-service-scala
prepareAttachment 02-shopping-cart-service-scala
prepareAttachment 03-shopping-cart-service-scala
prepareAttachment 04-shopping-cart-service-scala
prepareAttachment 05-shopping-cart-service-scala
prepareAttachment shopping-cart-service-scala
prepareAttachment shopping-analytics-service-scala
prepareAttachment shopping-order-service-scala