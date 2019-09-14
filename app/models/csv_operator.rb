class CsvOperator < ApplicationRecord
  enum kind: {
    gt: 1,
    gte: 2,
    eq: 3,
    lt: 4,
    lte: 5,
    rge: 6,
    diff: 7
  }
end
