return {
  "rhysd/accelerated-jk",
  config = function()
    vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)")
    vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)")
    -- Array of N_i numbers. If j or k has been pressed repeatedly more than
    -- N times, jump the cursor i + 1 lines. E.g., [20,50] will move by one line
    -- until the 21st press, at which time jump 2 lines at time. After 50 presses
    -- (30 of which have been going 2 lines at time), go 3 at a time.

    -- default
    -- vim.cmd("let g:accelerated_jk_acceleration_table = [7,12,17,21,24,26,28,30]")
    vim.cmd("let g:accelerated_jk_acceleration_table = [7, 13, 20, 33, 53, 86]")
  end,
}
