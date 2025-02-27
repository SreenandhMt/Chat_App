import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors.dart';

class CountryCodePicker extends StatefulWidget {
  final Function(String, String, String) onCountrySelected;

  const CountryCodePicker({required this.onCountrySelected, super.key});

  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  final List<Map<String, String>> countryList = [
    {
      "name": "United States",
      "code": "+1",
      "flagUrl": "https://flagcdn.com/w320/us.png"
    },
    {
      "name": "India",
      "code": "+91",
      "flagUrl": "https://flagcdn.com/w320/in.png"
    },
    {
      "name": "United Kingdom",
      "code": "+44",
      "flagUrl": "https://flagcdn.com/w320/gb.png"
    },
    {
      "name": "Germany",
      "code": "+49",
      "flagUrl": "https://flagcdn.com/w320/de.png"
    },
    {
      "name": "France",
      "code": "+33",
      "flagUrl": "https://flagcdn.com/w320/fr.png"
    },
    {
      "name": "Brazil",
      "code": "+55",
      "flagUrl": "https://flagcdn.com/w320/br.png"
    },
    // Add more countries as needed
  ];

  TextEditingController searchController = TextEditingController();
  late List<Map<String, String>> filteredCountries;
  Map<String, String> selectedCountry = {
    "name": "India",
    "code": "+91",
    "flagUrl": "https://flagcdn.com/w320/in.png"
  };

  @override
  void initState() {
    filteredCountries = countryList;
    super.initState();
  }

  void update(country) {
    setState(() {
      selectedCountry = country;
    });
  }

  void _showCountryPickerDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              title: Text(
                "Select Country",
                style: GoogleFonts.outfit(
                    fontSize: 19, fontWeight: FontWeight.w600),
              ),
              content: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // SEARCH FIELD
                    TextField(
                      controller: searchController,
                      onChanged: (value) {
                        setState(() {
                          filteredCountries = countryList
                              .where((country) => country["name"]!
                                  .toLowerCase()
                                  .contains(value.toLowerCase()))
                              .toList();
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Search country...",
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // COUNTRY LIST
                    Expanded(
                      child: ListView.builder(
                        itemCount: filteredCountries.length,
                        itemBuilder: (context, index) {
                          final country = filteredCountries[index];
                          return ListTile(
                            leading: Image.network(
                              country["flagUrl"]!,
                              width: 40,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                            title: Text(country["name"]!),
                            subtitle: Text(country["code"]!),
                            onTap: () {
                              update(country);
                              Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showCountryPickerDialog,
      child: SizedBox(
        child: Row(
          spacing: 10,
          children: [
            Container(
                width: 25,
                height: 20,
                decoration: BoxDecoration(
                    color: AppColors.grey(context),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image:
                            NetworkImage(selectedCountry["flagUrl"] ?? "")))),
            Text(
              selectedCountry["code"] ?? "",
              style: GoogleFonts.quicksand(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
