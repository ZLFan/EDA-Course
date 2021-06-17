  //Example instantiation for system 'nioscpu'
  nioscpu nioscpu_inst
    (
      .address_to_the_cfi_flash_0       (address_to_the_cfi_flash_0),
      .clk_0                            (clk_0),
      .data_to_and_from_the_cfi_flash_0 (data_to_and_from_the_cfi_flash_0),
      .in_port_to_the_button_pio        (in_port_to_the_button_pio),
      .out_port_from_the_led_pio        (out_port_from_the_led_pio),
      .read_n_to_the_cfi_flash_0        (read_n_to_the_cfi_flash_0),
      .reset_n                          (reset_n),
      .select_n_to_the_cfi_flash_0      (select_n_to_the_cfi_flash_0),
      .write_n_to_the_cfi_flash_0       (write_n_to_the_cfi_flash_0),
      .zs_addr_from_the_sdram_0         (zs_addr_from_the_sdram_0),
      .zs_ba_from_the_sdram_0           (zs_ba_from_the_sdram_0),
      .zs_cas_n_from_the_sdram_0        (zs_cas_n_from_the_sdram_0),
      .zs_cke_from_the_sdram_0          (zs_cke_from_the_sdram_0),
      .zs_cs_n_from_the_sdram_0         (zs_cs_n_from_the_sdram_0),
      .zs_dq_to_and_from_the_sdram_0    (zs_dq_to_and_from_the_sdram_0),
      .zs_dqm_from_the_sdram_0          (zs_dqm_from_the_sdram_0),
      .zs_ras_n_from_the_sdram_0        (zs_ras_n_from_the_sdram_0),
      .zs_we_n_from_the_sdram_0         (zs_we_n_from_the_sdram_0)
    );

