- Your company have an application to sell book that will be used with the kubernetes cluster. 

- Create a new `CustomResourceDefinition(CRD)` named booksellers.clarusway.com which has attributes as below.

```
group: xxxxxxx
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
scope: Namespaced
names:
  plural: xxxxxxx
  singular: xxxxxxx
  kind: BookSeller
  shortNames:
  - bs
```