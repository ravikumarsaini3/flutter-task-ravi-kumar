import 'package:flutter/material.dart';
import 'package:task/components/app_color.dart';
import 'package:task/components/app_images.dart';
import 'package:task/components/cliper.dart';
import 'package:task/components/custom_button.dart';

class DreamProfessionView extends StatefulWidget {
  const DreamProfessionView({super.key});

  @override
  State<DreamProfessionView> createState() => _DreamProfessionViewState();
}

class _DreamProfessionViewState extends State<DreamProfessionView> {
  int? selectedProfession;
  int? selectedCompany;

  final Map<int, String> professions = {
    1: 'Software Engineer',
    2: 'Business Analyst',
    3: 'Project Manager',
    4: 'UI/UX Designer',
    5: 'Data Scientist',
  };
  final Map<int, String> companies = {
    1: 'Google',
    2: 'Microsoft',
    3: 'Amazon',
    4: 'Facebook',
    5: 'Apple',
  };

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: BottomInwardCurveClipper(),
                child: Container(
                  width: double.infinity,
                  height: height * 0.54,
                  decoration: BoxDecoration(color: Colors.grey.shade100),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.02),
                      Center(
                        child: Container(
                          height: 10,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.darkBlue,
                          ),
                        ),
                      ),
                      Image.asset(
                        AppImages.dreamProfession,
                        width: width * 0.8,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Your Dream Profession',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColor.darkBlue,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.darkBlue,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'I want to be...',
                              style: TextStyle(
                                color: AppColor.darkBlue,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Profession',
                                style: TextStyle(
                                  color: AppColor.darkBlue,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 1,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.lightBlue),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<int>(
                                    hint: Text(
                                      'Select Profession',
                                      style: TextStyle(fontSize: 9),
                                    ),
                                    isDense: true,
                                    value: selectedProfession,
                                    isExpanded: true,
                                    iconSize: 20,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColor.darkBlue,
                                    ),
                                    items:
                                        professions.entries.map((entry) {
                                          return DropdownMenuItem<int>(
                                            value: entry.key,
                                            child: Text(
                                              entry.value,
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          );
                                        }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedProfession = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Text('at', style: TextStyle(fontSize: 12)),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Company/Industry',
                                style: TextStyle(
                                  color: AppColor.darkBlue,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.lightBlue),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<int>(
                                    hint: Text(
                                      'Select Company',
                                      style: TextStyle(fontSize: 8),
                                    ),
                                    value: selectedCompany,
                                    isDense: true,
                                    isExpanded: true,
                                    iconSize: 20,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColor.darkBlue,
                                    ),
                                    items:
                                        companies.entries.map((entry) {
                                          return DropdownMenuItem<int>(
                                            value: entry.key,
                                            child: Text(
                                              entry.value,
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          );
                                        }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedCompany = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.07),
                    CustomButton(isDark: true, onPressed: () {}, text: 'Next'),
                    SizedBox(height: height * 0.02),
                    CustomButton(
                      // isDark: true,
                      onPressed: () {},
                      text: 'Next',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
