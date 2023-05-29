class VendorFacade
  def vendor(id)
    vendor_info = VendorService.new.vendor(id)[:data]
    Vendor.new(vendor_info)
  end
end