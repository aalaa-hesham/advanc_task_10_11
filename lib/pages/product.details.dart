import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.red,
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Center(
                    child: Text(
                      " your favourite skate shoe",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.shopping_cart_checkout_outlined)),
                  ),
                ],
              ),
            ),
            const Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    " \$49.453",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    " 4.9 %",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.red,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Image.network(
                "https://m.media-amazon.com/images/I/61pwlViA13L._AC_SX679_.jpg",
                width: 300,
                height: 300,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "product",
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Details",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Reviews",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 400.0, top: 0.0),
                  child: Text(
                    "SELECT COLOR",
                    style: TextStyle(color: Color.fromARGB(255, 103, 98, 98)),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Material(
                      elevation: 5,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: CircleAvatar(
                        backgroundColor: Colors.pink.shade400,
                        child: const Icon(
                          Icons.texture_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange.shade600,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.shade600,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Material(
                      elevation: 5,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Material(
                      elevation: 5,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Material(
                      elevation: 5,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 400.0, top: 0),
                  child: Text(
                    "SELECT SIZE (US)",
                    style: TextStyle(color: Color.fromARGB(255, 103, 98, 98)),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 10)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 70,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 10)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 70,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 10)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 70,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 10)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 70,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 10)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 70,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 10)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 70,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 10)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 70,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 10)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text("SHARE THIS"),
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                                backgroundColor: Color.fromARGB(31, 11, 11, 11),
                                child: Icon(
                                  Icons.arrow_upward_outlined,
                                  color: Colors.white,
                                  size: 12,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.red,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Flexible(
                            child: Row(
                              children: [
                                Text(
                                  "ADD TO CART",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      color: Colors.red,
                                      size: 12,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
