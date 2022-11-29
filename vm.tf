resource "ncloud_server" "public-server" {
  subnet_no                 = ncloud_subnet.public-subnet.id
  name                      = "qa_ncp_hi"
  server_image_product_code = "SW.VSVR.OS.LNX64.CNTOS.0708.B050"
  server_product_code       = "SVR.VSVR.HICPU.C002.M004.NET.HDD.B050.G002"
}

resource "ncloud_public_ip" "public-ip" {
  server_instance_no = ncloud_server.public-server.id
}
