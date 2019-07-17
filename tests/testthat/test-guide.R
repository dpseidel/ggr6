
test_that("Guide errors when setting an invalid key", {
  guide <- Guide$new()
  expect_error(guide$set_key(NULL), "must be a tibble")
  expect_error(guide$set_key(tibble(x = 1)), "must contain `\\.breaks`")
  expect_identical(guide$aesthetics(), character(0))
})

test_that("GuideNull has the correct key when trained", {
  guide <- GuideNull$new()

  scale <- ScaleContinuous$new(c("aes1", "aes2"))$set_breaks(1:3)
  expect_identical(guide$train(scale), guide)
  expect_identical(colnames(guide$key), c(".breaks", ".labels", "aes1", "aes2"))
  expect_equal(nrow(guide$key), 0)
  expect_identical(guide$aesthetics(), c("aes1", "aes2"))
})

test_that("Guide returns censored breaks in key", {
  guide <- Guide$new()

  scale <- ScaleContinuous$new(c("aes1", "aes2"))$
    set_breaks(1:5)$
    set_limits(c(1.5, 4.5))
  expect_identical(guide$train(scale), guide)
  expect_identical(colnames(guide$key), c(".breaks", ".labels", "aes1", "aes2"))
  expect_identical(guide$key$.breaks, 2:4)
})

test_that("Guide subclass can return uncensored breaks", {
  GuideUncensored <- R6Class(
    "GuideUncensored", inherit = Guide,
    public = list(
      train = function(scale) {
        self$set_title(self$title() %|W|% scale$name())
        self$key <- self$make_key(scale, censor = FALSE)
        invisible(self)
      }
    )
  )

  guide <- GuideUncensored$new()

  scale <- ScaleContinuous$new(c("aes1", "aes2"))$
    set_breaks(1:5)$
    set_limits(c(1.5, 4.5))
  expect_identical(guide$train(scale), guide)
  expect_identical(guide$key$.breaks, 1:5)
})

test_that("position can be set", {
  expect_identical(Guide$new()$position(), waiver())
  expect_identical(Guide$new()$set_position("pos")$position(), "pos")
})

test_that("identical guides are merged", {
  scale1 <- ScaleContinuous$new("aes1")$set_breaks(1:5)$set_limits(c(1, 5))
  scale2 <- ScaleContinuous$new("aes2")$set_breaks(1:5)$set_limits(c(1, 5))

  guide1 <- Guide$new()$set_title("title")$train(scale1)
  guide2 <- Guide$new()$set_title("title")$train(scale2)

  expect_true(guide1$merge(guide2))
  expect_identical(guide1$aesthetics(), c("aes1", "aes2"))
  expect_identical(guide1$key$aes2, guide2$key$aes2)
})

test_that("non-identical guides are not merged", {
  scale1 <- ScaleContinuous$new("aes1")$set_breaks(1:5)$set_limits(c(1, 5))
  scale2 <- ScaleContinuous$new("aes2")$set_breaks(1:4)$set_limits(c(1, 5))

  guide1 <- Guide$new()$set_title("title")$train(scale1)
  guide2 <- Guide$new()$set_title("title")$train(scale2)

  expect_false(guide1$merge(guide2))
})

test_that("null guides can be merged", {
  expect_true(GuideNull$new()$merge(GuideNull$new()))
})