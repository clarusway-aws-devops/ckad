#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create -f - << EOF
apiVersion: apiextensions.k8s.io/v1
kind: CustomResourceDefinition
metadata:
  name: booksellers.clarusway.com
spec:
  group: clarusway.com
  versions:
    - name: v1
      served: true
      storage: true
      schema:
        openAPIV3Schema:
          type: object
          properties:
            spec:
              type: object
              properties:
                book:
                  type: string
                count:
                  type: integer
    - name: v1beta3
      served: false
      storage: false
      schema:
        openAPIV3Schema:
          type: object
          properties:
            spec:
              type: object
              properties:
                book:
                  type: string
                count:
                  type: integer
      subresources:
        status: {}
      deprecated: true  # Mark the v1beta3 version as deprecated
  scope: Namespaced
  names:
    plural: booksellers
    singular: bookseller
    kind: BookSeller
    shortNames:
    - bs
EOF

touch /tmp/finished
