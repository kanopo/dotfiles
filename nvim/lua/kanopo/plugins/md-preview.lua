return {
    "ellisonleao/glow.nvim",
    -- config = true,
    cmd = "Glow",
    config = function ()
        require("glow").setup({
            width_ratio = 0.85,
            height_ratio = 0.85,
        })
    end
}
