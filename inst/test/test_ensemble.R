
context("Does ensembling and prediction work?")

test_that("We can ensemble regression models", {
  data('models_reg')
  ens.reg <- caretEnsemble(models_reg, iter=1000)
  expect_that(ens.reg, is_a("caretEnsemble"))
  pred.reg <- predict(ens.reg, X.reg)
  expect_true(is.numeric(pred.reg))
  expect_true(length(pred.reg)==150)
})

test_that("We can ensemble classification models", {
  data('models_class')
  ens.class <- caretEnsemble(models_class, iter=1000)
  expect_that(ens.class, is_a("caretEnsemble"))
  pred.class <- predict(ens.class, X.class)
  expect_true(is.numeric(pred.class))
  expect_true(length(pred.class)==150)
})
