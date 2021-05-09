import 'package:cyclo/widgets/SuggestionItem.dart';
import 'package:flutter/material.dart';
class Suggestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            child: TextFormField(
              // readOnly: true,
              cursorColor: Color(0xffFF782D),
              textInputAction: TextInputAction.next,
              onSaved: (value) {},
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide:
                  new BorderSide(width: 2, color: Colors.grey[200]),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide:
                  new BorderSide(width: 2, color: Colors.grey[200]),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.withOpacity(0.4),
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 0),
              ),
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w100,
                  fontSize: 20),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 250,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://www.frogbikes.one/images/L-FM62_media-Metallic%20Grey%20Neon%20Blue-0.default.jpg?resizeid=5&resizeh=1200&resizew=1200",
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, bottom: 10),
            child: Text(
              "Recommendations",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                SuggestionItem(
                  imageUrl:
                  "https://www.frogbikes.one/images/L-FM62_media-Metallic%20Grey%20Neon%20Red-0.jpg?resizeid=5&resizeh=1200&resizew=1200",
                  name: "Lallantop Cycle",
                  price: 99999,
                ),
                SuggestionItem(
                  imageUrl:
                  "https://www.frogbikes.one/images/L-FM62_media-Metallic%20Grey%20Neon%20Red-0.jpg?resizeid=5&resizeh=1200&resizew=1200",
                  name: "Sallu bhai ki cycle",
                  price: 89909,
                ),
                SuggestionItem(
                  imageUrl:
                  "https://d2f9uwgpmber13.cloudfront.net/public/uploads/c9bdf797dfb5a509f9054bad2e69d5ed",
                  name: "BOTTLE CAGE",
                  price: 1999,
                ),
                SuggestionItem(
                  imageUrl:
                  "https://d2f9uwgpmber13.cloudfront.net/public/image_new/00cacde27006d67a932029f610e6dc4e",
                  name: "Modern Helmet H01",
                  price: 999,
                ),
                SuggestionItem(
                  imageUrl:
                  "https://www.frogbikes.one/images/L-FM62_media-Metallic%20Grey%20Neon%20Red-0.jpg?resizeid=5&resizeh=1200&resizew=1200",
                  name: "Modern Helmet H01",
                  price: 999,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
