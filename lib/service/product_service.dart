class ProductService {
  List _products = [
    {
      "product_name": "Food1",
      "photo":
          "https://i.ibb.co/0smrtD5/photo-1430163393927-3dab9af7ea38-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description": "-",
    },
    {
      "product_name": "Food2",
      "photo":
          "https://i.ibb.co/jf4s7Kt/photo-1511688878353-3a2f5be94cd7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description": "-",
    },
    {
      "product_name": "Food3",
      "photo":
          "https://i.ibb.co/Z2pp9Hz/photo-1495147466023-ac5c588e2e94-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description": "-",
    },
    {
      "product_name": "Food4",
      "photo":
          "https://i.ibb.co/hcSY1GC/photo-1464454709131-ffd692591ee5-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description": "-",
    },
    {
      "product_name": "Food5",
      "photo":
          "https://i.ibb.co/2hWW693/photo-1511690656952-34342bb7c2f2-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description": "-",
    },
    {
      "product_name": "Food6",
      "photo":
          "https://i.ibb.co/jk4q9sG/photo-1497034825429-c343d7c6a68f-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description": "-",
    },
    {
      "product_name": "Food7",
      "photo":
          "https://i.ibb.co/4jTb1Rf/photo-1454944338482-a69bb95894af-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description": "-",
    },
    {
      "product_name": "Food8",
      "photo":
          "https://i.ibb.co/f1JcxVd/photo-1481671703460-040cb8a2d909-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description": "-",
    },
    {
      "product_name": "Food9",
      "photo":
          "https://i.ibb.co/XyLPs0T/photo-1523049673857-eb18f1d7b578-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "description": "-",
    },
    {
      "product_name": "Food10",
      "photo":
          "https://i.ibb.co/RBrxyvF/rca-NUh3p-Q9-GD8w7-Iy8q-E-DSC0940-jpg-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MH.jpg",
      "price": 25,
      "description": "-",
    },
  ];
  Future<List> getProducts() {
    return Future.value(_products);
  }
}
