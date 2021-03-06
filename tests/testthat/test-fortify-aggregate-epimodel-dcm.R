test_that("fortify_aggregate.dcm", {
    out3 <- fortify_aggregate(EpiModel_det)
    expect_equal(colnames(out3), c("t", "orig_t", "sim", "X0", "X1", "X2"))
    expect_equal(rowSums(out3[, 4:6]),  rep(1000.0, 300))
})
