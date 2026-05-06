import 'package:flutter/material.dart';
import '../../models/filter_model.dart';

class FilterBottomSheet extends StatefulWidget {

  final Function(FilterModel) onApply;

  const FilterBottomSheet({super.key,required this.onApply});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {

  double minPrice = 10;
  double maxPrice = 80;
  int rating = 5;

  void applyFilter(){

    FilterModel filter = FilterModel(
      minPrice: minPrice,
      maxPrice: maxPrice,
      rating: rating,
      colorIndex: null,
      category: "Crop Tops",
      discounts: [],
    );

    widget.onApply(filter);

    Navigator.pop(context);

  }

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.all(20),

      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text(
            "Filter",
            style: TextStyle(
                fontSize:22,
                fontWeight:FontWeight.bold
            ),
          ),

          const SizedBox(height:20),

          const Text("Price"),

          RangeSlider(
            values: RangeValues(minPrice,maxPrice),
            min:0,
            max:100,
            onChanged:(value){
              setState(() {
                minPrice = value.start;
                maxPrice = value.end;
              });
            },
          ),

          const SizedBox(height:20),

          const Text("Star Rating"),

          const SizedBox(height:10),

          Row(
            children: List.generate(5, (index){

              int value = index+1;

              return GestureDetector(

                onTap:(){
                  setState(() {
                    rating = value;
                  });
                },

                child: Container(
                  margin: const EdgeInsets.only(right:10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: rating==value ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star,size:16),
                      Text("$value"),
                    ],
                  ),
                ),
              );

            }),
          ),

          const SizedBox(height:30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              TextButton(
                onPressed: (){
                  setState(() {
                    minPrice = 10;
                    maxPrice = 80;
                    rating = 5;
                  });
                },
                child: const Text("Reset"),
              ),

              ElevatedButton(
                onPressed: applyFilter,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal:30,
                        vertical:12
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
                child: const Text("Apply"),
              )

            ],
          )

        ],
      ),

    );
  }
}