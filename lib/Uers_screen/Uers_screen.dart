import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:html';
import 'dart:math';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hms/Model/LanguageModel.dart';
import 'package:intl/intl.dart';
import '../Const_File.dart';
import '../Model/State.dart' as StatusModel;

class Uers_screen extends StatefulWidget {
  const Uers_screen({super.key});
  @override
  State<Uers_screen> createState() => _Uers_screenState();
}

class _Uers_screenState extends State<Uers_screen> {



  String SelectedButton="";
  var seletedColor;

  bool AddFormPage=false;

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  GlobalKey filterDataKey = GlobalKey();

  final RegExp _inputPattern = RegExp(r'^\d{4}\s\d{4}\s\d{4}$');

  File? Url;

  var Uploaddocument;


  String imgUrl = "";
  String userUpdateDocumentID = "";


  int BatchYearValid=0;
  int billcount = 0;

  List filterDataList = [
    'Filter by Date',
  ];
  List<String> StateList = <String>[
    "Select State",
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    'Gujarat',
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    " Uttar Pradesh",
    "West Bengal",
  ];
  List<String> GenderList = <String>[
    'Select',
    "Male",
    "Female",
    "Transgender"
  ];
  List<String> coutryList = <String>[
    'Select Country',
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    'Belize',
    "Bhutan",
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'Brunei',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    "Côte d'Ivoire",
    'Cabo Verde	',
    'Cambodia',
    'Cameroon	',
    'Canada',
    'Central African Republic',
    'Chad',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Congo (Congo-Brazzaville)	',
    'Costa Rica	',
    'Croatia	',
    'Cuba	',
    'Cyprus	',
    'Czechia (Czech Republic)',
    'Democratic Republic of the Congo',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea	',
    'Estonia	',
    'Eswatini (Swaziland)	',
    'Ethiopia	',
    'Fiji	',
    'Finland	',
    'France	',
    'Gabon	',
    'Gambia	',
    'Georgia',
    'Germany',
    'Ghana',
    'Greece',
    'Grenada',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Holy See	',
    'Honduras',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands	',
    'Mauritania',
    'Mauritius',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Morocco',
    'Mozambique',
    'Myanmar (formerly Burma)',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'North Korea',
    'North Macedonia',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Palestine State',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Qatar',
    'Romania',
    'Russia',
    'Rwanda',
    'Saint Kitts and Nevis	',
    'Saint Lucia	',
    'Saint Vincent and the Grenadines	',
    'Samoa',
    'San Marino	',
    'Sao Tome and Principe	',
    'Saudi Arabia	',
    'Senegal',
    'Serbia',
    'Seychelles	',
    'Sierra Leone	',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands	',
    'Somalia',
    'South Africa',
    'South Korea',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'Sudan',
    'Suriname',
    'Sweden',
    'Switzerland',
    'Syria',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Timor-Leste',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Tuvalu',
    'Uganda',
    'Ukraine',
    'United Arab Emirates',
    'United Kingdom	',
    'United States of America	',
    'Uruguay	',
    'Uzbekistan	',
    'Vanuatu	',
    'Venezuela	',
    'Vietnam	',
    'Yemen',
    'Zambia',
    'Zimbabwe',
  ];
  List<String> MaritalStatusList = ['Marital Status', 'Yes', 'No'];
  List<String> WorkingEmpList = [ 'No', 'Yes', "Own Business"];
  List<String> _cities = ["Select City"];


  bool Loading = false;
  bool Useradd = false;
  bool isEmail(String input) => EmailValidator.validate(input);


  ///dropdown validator values
  bool dropdownValidator = false;
  bool dropdownValidator2 = false;
  bool dropdownValidator3 = false;

  /// controllers
  TextEditingController firstNamecon = TextEditingController();
  TextEditingController middleNamecon = TextEditingController();
  TextEditingController lastNamecon = TextEditingController();
  TextEditingController dateofBirthcon = TextEditingController();
  TextEditingController gendercon = TextEditingController(text: "Select");
  TextEditingController alterEmailIdcon = TextEditingController();
  TextEditingController aadhaarNumbercon = TextEditingController();
  TextEditingController phoneNumbercon = TextEditingController();
  TextEditingController mobileNumbercon = TextEditingController();
  TextEditingController emailIDcon = TextEditingController();
  TextEditingController adreesscon = TextEditingController();
  TextEditingController citycon = TextEditingController(text: "Select City");
  TextEditingController pinCodecon = TextEditingController();
  TextEditingController statecon = TextEditingController(text: "Select State");
  TextEditingController countrycon = TextEditingController(text: "Select Country");
  TextEditingController occupationcon = TextEditingController();
  TextEditingController designationcon = TextEditingController();
  TextEditingController company_concerncon = TextEditingController();
  TextEditingController maritalStatuscon = TextEditingController(text: "Marital Status");
  TextEditingController spouseNamecon = TextEditingController();
  TextEditingController anniversaryDatecon = TextEditingController();
  TextEditingController no_of_childreancon = TextEditingController();
  TextEditingController alumniEmployedController = TextEditingController(text: "No");

  /// add type controller
  TextEditingController nameController=TextEditingController();

  /// serach Controller

  TextEditingController searchController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery .of(context) .size.width;
    final double height = MediaQuery .of(context) .size.height;
    Size size = MediaQuery.of(context) .size;

    double baseWidth = 1920;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child:
        Useradd==true?
       SingleChildScrollView(
         physics: const ScrollPhysics(),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             SizedBox(
               width: 1300,
       
               child: Padding(
                 padding: EdgeInsets.symmetric(
                     horizontal: width / 170.75,
                     vertical: height / 81.375),
                 child: Form(
                   key: _formkey,
                   child: SizedBox(
                     width: 1550 * fem,
                     child: Row(
                       crossAxisAlignment:
                       CrossAxisAlignment.start,
                       children: [
                         Column(
                           mainAxisAlignment:
                           MainAxisAlignment.start,
                           crossAxisAlignment:
                           CrossAxisAlignment.start,
                           children: [

                             SizedBox(height: height / 26.04),
                             Row(
                               mainAxisAlignment:
                               MainAxisAlignment.start,
                               children: [
                                 SizedBox(width: width / 307.2),
                                 KText(
                                     text: 'Add Users Details',
                                     style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                 ),
                               ],
                             ),
                             SizedBox(height: height / 26.04),
       
                             Row(
                               crossAxisAlignment:
                               CrossAxisAlignment.start,
                               children: [
                                 SizedBox(
                                  width: width / 3.7463,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: height / 7.39,
                                        width: width / 15.36,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                100),
                                            color:
                                            const Color(0xffDDDEEE),
                                            image: Uploaddocument !=
                                                null
                                                ? DecorationImage(
                                              fit: BoxFit
                                                  .cover,
                                              image:
                                              MemoryImage(
                                                Uint8List
                                                    .fromList(
                                                  base64Decode(
                                                      Uploaddocument!
                                                          .split(
                                                          ',')
                                                          .last),
                                                ),
                                              ),
                                            )
                                                : imgUrl != null
                                                ? DecorationImage(
                                                fit: BoxFit
                                                    .cover,
                                                image: NetworkImage(
                                                    imgUrl))
                                                : DecorationImage(
                                                fit: BoxFit
                                                    .cover,
                                                image: AssetImage(""))
                                                ),
                                      ),
                                      SizedBox(width: width / 102.4),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                        children: [
                                          Text(
                                              "Upload Student Photo (150px X 150px)",
                                              style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeextraSmall,TextColor: HeadingTextColor)
                                          ),
                                          SizedBox(
                                              height: height / 147.8),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  addImage(size);
                                                },
                                                child: Container(
                                                  height: height / 24.633,
                                                  width: width / 17.2,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffDDDEEE),
                                                      border: Border.all(
                                                          color: const Color(
                                                              0xff000000))),
                                                  child: Center(
                                                    child: Text(
                                                        "Choose File",
                                                        style:
                                                        textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeextraSmall,TextColor: HeadingTextColor)
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: width / 307.2),
                                              KText(
                                                  text: Uploaddocument ==
                                                      null
                                                      ? "No file chosen"
                                                      : "File is Selected",
                                                  style:
                                                  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                 SizedBox(
                                   width: width / 2.2588,
                                   height: height / 2.8,
                                   child: Column(
                                     children: [
       
                                       ///first name and last name
                                       Row(
                                         mainAxisAlignment:
                                         MainAxisAlignment
                                             .spaceAround,
                                         children: [
                                           SizedBox(
                                             height: height / 9.369,
                                             child: Column(
                                               crossAxisAlignment:
                                               CrossAxisAlignment
                                                   .start,
                                               children: [
                                                 KText(
                                                     text:
                                                     'First Name *',
                                                     style:
                                                     textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                 ),
                                                 SizedBox(
                                                     height: height /
                                                         123.1666),
                                                 Container(
                                                   height: height / 15.114,
                                                   width: width / 8.0842,
                                                   decoration: BoxDecoration(
                                                       color: const Color(
                                                           0xffDDDEEE),
                                                       borderRadius:
                                                       BorderRadius
                                                           .circular(
                                                           3)),
                                                   child:
                                                   TextFormField(
                                                     autovalidateMode: AutovalidateMode
                                                         .onUserInteraction,
                                                     controller: firstNamecon,
                                                     inputFormatters: [
                                                       FilteringTextInputFormatter
                                                           .allow(
                                                           RegExp(
                                                               "[a-zA-Z ]")),
                                                     ],
                                                     maxLength: 25,
                                                     decoration: const InputDecoration(
                                                       border: InputBorder
                                                           .none,
                                                       contentPadding: EdgeInsets
                                                           .only(
                                                           bottom:
                                                           10,
                                                           top:
                                                           2,
                                                           left:
                                                           10),
                                                       counterText:
                                                       "",
                                                     ),
                                                     validator: (
                                                         value) =>
                                                     value!
                                                         .isEmpty
                                                         ? 'Field is required'
                                                         : null,
       
       
                                                   ),
                                                 ),
                                               ],
                                             ),
                                           ),
                                           SizedBox(
                                             height: height / 9.369,
                                             child: Column(
                                               crossAxisAlignment:
                                               CrossAxisAlignment
                                                   .start,
                                               children: [
                                                 KText(
                                                     text:
                                                     'Middle Name ',
                                                     style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                 ),
                                                 SizedBox(
                                                     height: height /
                                                         123.1666),
                                                 Container(
                                                     height: height /
                                                         15.114,
                                                     width: width / 8.0842,
                                                     decoration: BoxDecoration(
                                                         color: const Color(
                                                             0xffDDDEEE),
                                                         borderRadius:
                                                         BorderRadius
                                                             .circular(
                                                             3)),
                                                     child:
                                                     TextFormField(
                                                       maxLength: 25,
                                                       controller:
                                                       middleNamecon,
                                                       inputFormatters: [
                                                         FilteringTextInputFormatter
                                                             .allow(
                                                             RegExp(
                                                                 "[a-zA-Z ]")),
                                                       ],
                                                       decoration:
                                                       const InputDecoration(
                                                         counterText: "",
                                                         border: InputBorder
                                                             .none,
                                                         contentPadding: EdgeInsets
                                                             .only(
                                                             bottom:
                                                             10,
                                                             top:
                                                             2,
                                                             left:
                                                             10),
                                                       ),
                                                     ))
                                               ],
                                             ),
                                           ),
                                           SizedBox(
                                             height: height / 9.369,
                                             child: Column(
                                               crossAxisAlignment:
                                               CrossAxisAlignment
                                                   .start,
                                               children: [
                                                 KText(
                                                     text:
                                                     'Last Name *',
                                                     style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                 ),
                                                 SizedBox(
                                                     height: height /
                                                         123.1666),
                                                 Container(
                                                     height: height /
                                                         15.114,
                                                     width: width / 8.0842,
                                                     decoration: BoxDecoration(
                                                         color: const Color(
                                                             0xffDDDEEE),
                                                         borderRadius:
                                                         BorderRadius
                                                             .circular(
                                                             3)),
                                                     child:
                                                     TextFormField(
                                                       autovalidateMode: AutovalidateMode
                                                           .onUserInteraction,
                                                       controller:
                                                       lastNamecon,
       
                                                       inputFormatters: [
                                                         FilteringTextInputFormatter
                                                             .allow(
                                                             RegExp(
                                                                 "[a-zA-Z ]")),
                                                       ],
                                                       maxLength:
                                                       25,
                                                       decoration:
                                                       const InputDecoration(
                                                         border: InputBorder
                                                             .none,
                                                         counterText:
                                                         "",
                                                         contentPadding: EdgeInsets
                                                             .only(
                                                             bottom:
                                                             10,
                                                             top:
                                                             2,
                                                             left:
                                                             10),
                                                       ),
                                                       validator: (
                                                           value) =>
                                                       value!
                                                           .isEmpty
                                                           ? 'Field is required'
                                                           : null,
                                                     ))
                                               ],
                                             ),
                                           ),
                                         ],
                                       ),
       
                                       SizedBox(height: height / 73.9),
       
                                       ///date of birth and
       
                                       Row(
                                         mainAxisAlignment:
                                         MainAxisAlignment
                                             .spaceAround,
                                         children: [
       
                                           /// date of birth
                                           SizedBox(
                                             height: height / 9.369,
                                             child: Column(
                                               crossAxisAlignment:
                                               CrossAxisAlignment
                                                   .start,
                                               children: [
                                                 KText(
                                                     text:
                                                     'Date Of Birth *',
                                                     style:
                                                     textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                 ),
                                                 SizedBox(
                                                     height: height /
                                                         123.1666),
                                                 Container(
                                                   height: height / 15.114,
                                                   width: width / 5.12,
                                                   decoration: BoxDecoration(
                                                       color: const Color(
                                                           0xffDDDEEE),
                                                       borderRadius:
                                                       BorderRadius
                                                           .circular(
                                                           3)),
                                                   child:
                                                   TextFormField(
                                                     autovalidateMode: AutovalidateMode
                                                         .onUserInteraction,
                                                     controller:
                                                     dateofBirthcon,
                                                     decoration:
                                                     const InputDecoration(
                                                       border:
                                                       InputBorder
                                                           .none,
                                                       contentPadding: EdgeInsets
                                                           .only(
                                                           bottom:
                                                           10,
                                                           top: 2,
                                                           left:
                                                           10),
                                                     ),
                                                     validator: (value) =>
                                                     value!.isEmpty
                                                         ? 'Field is required'
                                                         : null,
                                                     readOnly:
                                                     true,
                                                     onTap: () async {
                                                       DateTime? pickedDate = await showDatePicker(
                                                           context: context,
                                                           initialDate: DateTime.now(),
                                                           firstDate: DateTime(1950),
                                                           lastDate: DateTime(2100));

                                                       if (pickedDate != null) {
                                                         print("Picked Dateeeeeeeeeeeeeeeeeeeeeeeeee");
                                                         BatchYearValid= pickedDate.year;
                                                         //pickedDate output format => 2021-03-10 00:00:00.000
                                                         String formattedDate =
                                                         DateFormat('dd/MM/yyyy').format(pickedDate);
                                                         //formatted date output using intl package =>  2021-03-16

                                                         // Calculate age difference
                                                         DateTime currentDate = DateTime.now();
                                                         Duration difference = currentDate.difference(pickedDate);
                                                         int age = (difference.inDays / 365).floor();
                                                         print('Age: $age years');

                                                         if (age >=17) {
                                                           setState(
                                                                   () {
                                                                 dateofBirthcon
                                                                     .text =
                                                                     formattedDate; //set output date to TextField value.
                                                               });
                                                         }
                                                         else {
                                                           userNotValidAgePopup();
                                                           print(
                                                               "Age Is Lowwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww");
                                                         }
                                                       } else {}
                                                     },
                                                   ),
                                                 )
                                               ],
                                             ),
                                           ),
       
                                           SizedBox(
                                             height: height / 9.369,
                                             child: Column(
                                               crossAxisAlignment:
                                               CrossAxisAlignment
                                                   .start,
                                               children: [
                                                 KText(
                                                     text: 'Gender ',
                                                     style:
                                                     textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                 ),
                                                 SizedBox(
                                                     height: height /
                                                         123.1666),
                                                 Container(
                                                   height: height / 15.114,
                                                   width: width / 5.12,
                                                   decoration: BoxDecoration(
                                                       color: const Color(
                                                           0xffDDDEEE),
                                                       borderRadius:
                                                       BorderRadius
                                                           .circular(
                                                           3)),
                                                   child:
                                                   DropdownButtonHideUnderline(
                                                     child: DropdownButtonFormField2<
                                                         String>(
                                                       isExpanded: true,
                                                       autovalidateMode: AutovalidateMode
                                                           .onUserInteraction,
                                                       hint: Padding(
                                                         padding: const EdgeInsets
                                                             .only(
                                                             left: 8.0),
                                                         child: Text(
                                                             'Select',
                                                             style:
                                                             textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                         ),
                                                       ),
                                                       items: GenderList
                                                           .map((String
                                                       item) =>
                                                           DropdownMenuItem<
                                                               String>(
       
                                                             value:
                                                             item,
                                                             child:
                                                             Text(
                                                                 item,
                                                                 style:
                                                                 textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                             ),
                                                           )).toList(),
                                                       value: gendercon
                                                           .text,
       
                                                       onChanged: (String?
                                                       value) {
                                                         setState(() {
                                                           gendercon.text =
                                                           value!;
                                                         });
                                                       },
                                                       buttonStyleData:
                                                       ButtonStyleData(
                                                         height: 20,
                                                         width:
                                                         width / 2.571,
                                                       ),
                                                       menuItemStyleData: const MenuItemStyleData(),
                                                       decoration:
                                                       const InputDecoration(
                                                           contentPadding: EdgeInsets
                                                               .only(
                                                               left: 5,
                                                               right: 5),
                                                           border:
                                                           InputBorder
                                                               .none),
                                                     ),
                                                   ),
       
                                                 )
                                               ],
                                             ),
                                           ),
       
                                         ],
                                       ),
                                       SizedBox(height: height / 73.9),
       
                                       ///adhaaar card and emailid
                                       Row(
                                         mainAxisAlignment:
                                         MainAxisAlignment
                                             .start,
                                         children: [
                                           Padding(
                                             padding: EdgeInsets.only(
                                                 left: width / 71.8947),
                                             child: SizedBox(
                                               height: height / 9.369,
                                               child: Column(
                                                 crossAxisAlignment:
                                                 CrossAxisAlignment
                                                     .start,
                                                 children: [
                                                   KText(
                                                       text:
                                                       'Aadhaar Number ',
                                                       style:
                                                       textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                   ),
                                                   SizedBox(
                                                       height: height /
                                                           123.1666),
                                                   Container(
                                                       height: height /
                                                           15.114,
                                                       width: width / 5.12,
                                                       decoration: BoxDecoration(
                                                           color: const Color(
                                                               0xffDDDEEE),
                                                           borderRadius:
                                                           BorderRadius
                                                               .circular(
                                                               3)),
                                                       child:
                                                       TextFormField(
                                                         controller:
                                                         aadhaarNumbercon,
                                                         maxLength:
                                                         14,
                                                         inputFormatters: [
                                                           FilteringTextInputFormatter
                                                               .digitsOnly,
                                                           TextInputFormatter
                                                               .withFunction(
                                                                   (
                                                                   oldValue,
                                                                   newValue) {
                                                                 final newString =
                                                                     newValue
                                                                         .text;
       
                                                                 if (_inputPattern
                                                                     .hasMatch(
                                                                     newString)) {
                                                                   return oldValue;
                                                                 }
       
                                                                 var formattedValue = newString
                                                                     .replaceAllMapped(
                                                                     RegExp(
                                                                         r'\d{4}'),
                                                                         (
                                                                         match) {
                                                                       return '${match
                                                                           .group(
                                                                           0)} ';
                                                                     });
       
                                                                 // Remove any trailing space
                                                                 if (formattedValue
                                                                     .endsWith(
                                                                     ' ')) {
                                                                   formattedValue =
                                                                       formattedValue
                                                                           .substring(
                                                                           0,
                                                                           formattedValue
                                                                               .length -
                                                                               1);
                                                                 }
       
                                                                 return TextEditingValue(
                                                                   text:
                                                                   formattedValue,
                                                                   selection:
                                                                   TextSelection
                                                                       .collapsed(
                                                                       offset: formattedValue
                                                                           .length),
                                                                 );
                                                               }),
                                                         ],
                                                         decoration:
                                                         const InputDecoration(
                                                           border: InputBorder
                                                               .none,
                                                           counterText:
                                                           "",
                                                           contentPadding: EdgeInsets
                                                               .only(
                                                               bottom:
                                                               10,
                                                               top:
                                                               2,
                                                               left:
                                                               10),
                                                         ),
                                                       ))
                                                 ],
                                               ),
                                             ),
                                           ),
       
                                         ],
                                       ),
                                     ],
                                   ),
                                 )
                               ],
                             ),
       
                             ///contact info
                             Row(
                               children: [
                                 SizedBox(width: width / 307.2),
                                 KText(
                                     text: 'Contact Details',
                                     style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                 ),
                               ],
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                   left: 4,
                                   right: 4,
                                   top: 4,
                                   bottom: 4),
                               child: Container(
                                 height: 1,
                                 width: width / 1.4422,
                                 color: Colors.grey.shade300,
                               ),
                             ),
                             SizedBox(height: height / 36.95),
                             Row(
                               children: [
                                 SizedBox(
                                     width: width / 2.4,
                                     height: height / 2.8,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.all(6.0),
                                       child: Column(
                                         mainAxisAlignment:
                                         MainAxisAlignment
                                             .spaceAround,
                                         crossAxisAlignment:
                                         CrossAxisAlignment
                                             .start,
                                         children: [
       
                                           ///phone number
                                           SizedBox(
                                             height: height / 9.369,
                                             child: Column(
                                               crossAxisAlignment:
                                               CrossAxisAlignment
                                                   .start,
                                               children: [
                                                 KText(
                                                     text:
                                                     'Phone Number',
                                                     style:
                                                     textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                 ),
                                                 SizedBox(
                                                     height: height /
                                                         123.1666),
                                                 Container(
                                                     height: height /
                                                         15.114,
                                                     width: width / 3.84,
                                                     decoration: BoxDecoration(
                                                         color: const Color(
                                                             0xffDDDEEE),
                                                         borderRadius:
                                                         BorderRadius
                                                             .circular(
                                                             3)),
                                                     child:
                                                     TextFormField(
                                                       autovalidateMode: AutovalidateMode
                                                           .onUserInteraction,
                                                       controller:
                                                       phoneNumbercon,
                                                       maxLength:
                                                       10,
                                                       inputFormatters: [
                                                         FilteringTextInputFormatter
                                                             .allow(
                                                             RegExp(
                                                                 "[0-9]")),
                                                       ],
                                                       decoration: const InputDecoration(
                                                           border: InputBorder
                                                               .none,
                                                           contentPadding: EdgeInsets
                                                               .only(
                                                               bottom:
                                                               10,
                                                               top:
                                                               2,
                                                               left:
                                                               10),
                                                           counterText:
                                                           ""),
                                                       validator:
                                                           (value) {
                                                         if (value!
                                                             .isNotEmpty) {
                                                           if (value
                                                               .length !=
                                                               10) {
                                                             return 'Enter the Phone no correctly';
                                                           }
                                                         }
                                                         return null;
                                                       },
                                                     ))
                                               ],
                                             ),
                                           ),
       
                                           /// mobile number
                                           SizedBox(
                                             height: height / 9.369,
                                             child: Column(
                                               crossAxisAlignment:
                                               CrossAxisAlignment
                                                   .start,
                                               children: [
                                                 KText(
                                                     text:
                                                     'Mobile Number',
                                                     style:
                                                     textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                 ),
                                                 SizedBox(
                                                     height: height /
                                                         123.1666),
                                                 Container(
                                                     height: height /
                                                         15.114,
                                                     width: width / 3.84,
                                                     decoration: BoxDecoration(
                                                         color: const Color(
                                                             0xffDDDEEE),
                                                         borderRadius:
                                                         BorderRadius
                                                             .circular(
                                                             3)),
                                                     child:
                                                     TextFormField(
                                                       autovalidateMode: AutovalidateMode
                                                           .onUserInteraction,
                                                       controller:
                                                       mobileNumbercon,
                                                       maxLength:
                                                       10,
                                                       inputFormatters: [
                                                         FilteringTextInputFormatter
                                                             .allow(
                                                             RegExp(
                                                                 "[0-9]")),
                                                       ],
                                                       decoration:
                                                       const InputDecoration(
                                                         border: InputBorder
                                                             .none,
                                                         counterText: "",
                                                         contentPadding: EdgeInsets
                                                             .only(
                                                             bottom:
                                                             10,
                                                             top:
                                                             2,
                                                             left:
                                                             10),
                                                       ),
                                                       validator: (value) {
                                                         if (value!
                                                             .isNotEmpty) {
                                                           if (value
                                                               .length !=
                                                               10) {
                                                             return 'Enter the Mobile no correctly';
                                                           }
                                                         }
                                                         return null;
                                                       },
                                                     ))
                                               ],
                                             ),
                                           ),
       
                                           /// Email iD
                                           SizedBox(
                                             height: height / 9.369,
                                             child: Column(
                                               crossAxisAlignment:
                                               CrossAxisAlignment
                                                   .start,
                                               children: [
                                                 KText(
                                                     text:
                                                     'Email ID',
                                                     style:
                                                     textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                 ),
                                                 SizedBox(
                                                     height: height /
                                                         123.1666),
                                                 Container(
                                                     height: height /
                                                         15.114,
                                                     width: width / 3.84,
                                                     decoration: BoxDecoration(
                                                         color: const Color(
                                                             0xffDDDEEE),
                                                         borderRadius:
                                                         BorderRadius
                                                             .circular(
                                                             3)),
                                                     child:
                                                     TextFormField(
                                                       controller:
                                                       emailIDcon,
                                                       inputFormatters: [
                                                         FilteringTextInputFormatter
                                                             .allow(
                                                             RegExp(
                                                                 "[a-z@0-9.]")),
                                                       ],
                                                       decoration:
                                                       const InputDecoration(
                                                         border: InputBorder
                                                             .none,
                                                         contentPadding: EdgeInsets
                                                             .only(
                                                             bottom:
                                                             10,
                                                             top:
                                                             2,
                                                             left:
                                                             10),
                                                       ),
                                                       validator:
                                                           (value) {
                                                         if (isEmail(
                                                             value!)) {
                                                           return 'Enter the Correct the Email';
                                                         }
       
                                                         return null;
                                                       },
                                                     ))
                                               ],
                                             ),
                                           ),
                                         ],
                                       ),
                                     )),
                                 SizedBox(
                                   width: width / 3.49090,
                                   height: height / 2.8,
                                   child: Padding(
                                     padding:
                                     const EdgeInsets.all(2.0),
                                     child: Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment
                                           .start,
                                       children: [
                                         KText(
                                             text: 'Address',
                                             style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                         ),
                                         SizedBox(
                                             height: height / 123.1666),
                                         Container(
                                             height: height / 3.3,
                                             width: width / 3.57209,
                                             decoration: BoxDecoration(
                                                 color: const Color(
                                                     0xffDDDEEE),
                                                 borderRadius:
                                                 BorderRadius
                                                     .circular(
                                                     3)),
                                             child: TextFormField(
                                               controller:
                                               adreesscon,
                                               maxLines: null,
                                               expands: true,
                                               inputFormatters: [
                                                 FilteringTextInputFormatter
                                                     .allow(RegExp(
                                                     "[a-zA-Z0-9 ,]")),
                                               ],
                                               decoration:
                                               const InputDecoration(
                                                 border:
                                                 InputBorder
                                                     .none,
                                                 contentPadding:
                                                 EdgeInsets.only(
                                                     bottom:
                                                     10,
                                                     top: 10,
                                                     left: 10),
                                               ),
                                             ))
                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
       
                             Padding(
                               padding:  EdgeInsets.only(left: width/273.2),
                               child: Row(
                                 children: [
       
                                   ///State Dropdown
                                   SizedBox(
                                     height: height / 7.4,
                                     child: Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment
                                           .start,
                                       children: [
                                         KText(
                                             text: 'State *',
                                             style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                         ),
                                         SizedBox(
                                             height: height / 123.1666),
                                         Container(
                                           height: height / 15.114,
                                           width: width / 6.4,
                                           decoration: BoxDecoration(
                                               color: const Color(
                                                   0xffDDDEEE),
                                               borderRadius:
                                               BorderRadius
                                                   .circular(
                                                   3)),
                                           padding:  EdgeInsets.only(
                                               left: width/273.2),
                                           child:
                                           DropdownSearch <String>(
                                             autoValidateMode: AutovalidateMode.onUserInteraction,
                                             selectedItem: statecon.text,
                                             popupProps: PopupProps.menu(
                                               showSearchBox: true,
                                             ),
                                             dropdownDecoratorProps: DropDownDecoratorProps(
                                               baseStyle:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor),
                                               textAlignVertical: TextAlignVertical.center,
                                               dropdownSearchDecoration: InputDecoration(
                                                   border: InputBorder.none),
                                             ),
                                             items: StateList,
                                             validator: (value) {
                                               if (value=='Select State') {
                                                 setState((){
                                                   dropdownValidator=true;
                                                 });
                                               }
                                               return null;
                                             },
                                             onChanged: (String? value) {
                                               getCity(value.toString());
                                               if (value=='Select State') {
                                                 setState((){
                                                   dropdownValidator=true;
                                                 });
                                               }else{
       
                                                 setState(() {
                                                   statecon.text =
                                                   value!;
                                                   dropdownValidator=false;
                                                 });
                                               }
                                             },
                                           ),
       
                                         ),
                                         dropdownValidator == true &&
                                             statecon.text ==
                                                 "Select State"
                                             ? Text("Field is required",
                                             style: TextStyle(
                                                 color: Colors.red,
                                                 fontSize: 13))
                                             : const SizedBox()
                                       ],
                                     ),
                                   ),
                                   SizedBox(width: width / 46.5454),
       
                                   ///city
                                   SizedBox(
                                     height: height / 7.4,
                                     child: Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment
                                           .start,
                                       children: [
                                         KText(
                                             text: 'City *',
                                             style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                         ),
                                         SizedBox(
                                             height: height / 123.1666),
                                         Container(
                                           height: height / 15.114,
                                           width: width / 6.4,
                                           decoration: BoxDecoration(
                                               color: const Color(
                                                   0xffDDDEEE),
                                               borderRadius:
                                               BorderRadius
                                                   .circular(
                                                   3)),
                                           padding:  EdgeInsets.only(
                                               left: width/273.2),
                                           child:
                                           DropdownSearch <String>(
                                             autoValidateMode: AutovalidateMode.onUserInteraction,
                                             selectedItem: citycon.text,
                                             popupProps: PopupProps.menu(
                                               showSearchBox: true,
                                             ),
       
                                             dropdownDecoratorProps: DropDownDecoratorProps(
                                               baseStyle: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor),
                                               textAlignVertical: TextAlignVertical.center,
                                               dropdownSearchDecoration: InputDecoration(
                                                   border: InputBorder.none),
                                             ),
                                             items: _cities,
                                             validator: (value) {
                                               if (value ==
                                                   'Select City') {
                                                 setState(() {
                                                   dropdownValidator2 =
                                                   true;
                                                 });
                                               }
                                               return null;
                                             },
                                             onChanged: (String?
                                             value) {
                                               if (value ==
                                                   'Select City') {
                                                 setState(() {
                                                   dropdownValidator2 =
                                                   true;
                                                 });
                                               }
                                               else {
                                                 setState(() {
                                                   citycon.text =
                                                   value!;
                                                   dropdownValidator2 =
                                                   false;
                                                 });
                                               }
                                             },
                                           ),
       
                                           /*  DropdownButtonHideUnderline(
                                                child:
                                                DropdownButtonFormField2<
                                                    String>(
                                                  isExpanded: true,
                                                  autovalidateMode: AutovalidateMode
                                                      .onUserInteraction,
                                                  hint: Text(
                                                    'Select City',
                                                    style:
                                                    SafeGoogleFont(
                                                      'Nunito',
                                                      fontSize:
                                                      20 * ffem,
                                                    ),
                                                  ),
                                                  items: _cities
                                                      .map((String
                                                  item) =>
                                                      DropdownMenuItem<
                                                          String>(
                                                        value:
                                                        item,
                                                        child:
                                                        Text(
                                                          item,
                                                          style:
                                                          SafeGoogleFont(
                                                            'Nunito',
                                                            fontSize:
                                                            20 * ffem,
                                                          ),
                                                        ),
                                                      ))
                                                      .toList(),
                                                  value: citycon.text,
                                                  validator: (value) {
                                                    if (value ==
                                                        'Select City') {
                                                      setState(() {
                                                        dropdownValidator2 =
                                                        true;
                                                      });
                                                    }
                                                    return null;
                                                  },
                                                  onChanged: (String?
                                                  value) {
                                                    if (value ==
                                                        'Select City') {
                                                      setState(() {
                                                        dropdownValidator2 =
                                                        true;
                                                      });
                                                    }
                                                    else {
                                                      setState(() {
                                                        citycon.text =
                                                        value!;
                                                        dropdownValidator2 =
                                                        false;
                                                      });
                                                    }
                                                  },
                                                  buttonStyleData:
                                                  const ButtonStyleData(
       
       
                                                  ),
                                                  menuItemStyleData:
                                                  const MenuItemStyleData(
       
                                                  ),
                                                  decoration:
                                                  const InputDecoration(
                                                      border:
                                                      InputBorder
                                                          .none),
                                                ),
                                              ),*/
                                         ),
                                         dropdownValidator2 == true &&
                                             citycon.text == "Select City"
                                             ? Text("Field is required",
                                             style: TextStyle(
                                                 color: Colors.red,
                                                 fontSize: 13))
                                             : const SizedBox()
                                       ],
                                     ),
                                   ),
                                   SizedBox(width: width / 43.8857),
       
                                   ///Pin Code
                                   SizedBox(
                                     height: height / 7.4,
                                     child: Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment
                                           .start,
                                       children: [
                                         KText(
                                             text: 'Pin Code *',
                                             style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                         ),
                                         SizedBox(
                                             height: height / 123.1666),
                                         Container(
                                             height: height / 15.114,
                                             width: width / 6.4,
                                             decoration: BoxDecoration(
                                                 color: const Color(
                                                     0xffDDDEEE),
                                                 borderRadius:
                                                 BorderRadius
                                                     .circular(
                                                     3)),
                                             child: TextFormField(
                                               controller:
                                               pinCodecon,
                                               maxLength: 6,
                                               autovalidateMode: AutovalidateMode
                                                   .onUserInteraction,
                                               inputFormatters: [
                                                 FilteringTextInputFormatter
                                                     .allow(RegExp(
                                                     "[0-9]")),
                                               ],
                                               decoration:
                                               const InputDecoration(
                                                 border:
                                                 InputBorder
                                                     .none,
                                                 contentPadding:
                                                 EdgeInsets.only(
                                                     bottom:
                                                     10,
                                                     top: 2,
                                                     left: 10),
                                                 counterText: "",
                                               ),
                                               validator: (value) {
                                                 if (value!
                                                     .isEmpty) {
                                                   return 'Field is required';
                                                 } else if (value!
                                                     .isNotEmpty) {
                                                   if (value!
                                                       .length <
                                                       6) {
                                                     return 'Please Enter Pin code Correctly';
                                                   }
                                                 }
                                                 return null;
                                               },
                                             ))
                                       ],
                                     ),
                                   ),
                                   SizedBox(width: width / 43.8857),
       
                                   ///Country Dropdown
                                   SizedBox(
                                     height: height / 7.4,
                                     child: Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment
                                           .start,
                                       children: [
                                         KText(
                                             text: 'Country *',
                                             style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                         ),
                                         SizedBox(
                                             height: height / 123.1666),
                                         Container(
                                           height: height / 15.114,
                                           width: width / 6.4,
                                           decoration: BoxDecoration(
                                               color: const Color(
                                                   0xffDDDEEE),
                                               borderRadius:
                                               BorderRadius
                                                   .circular(
                                                   3)),
                                           padding:  EdgeInsets.only(
                                               left: width/273.2),
                                           child:
                                           DropdownSearch <String>(
                                             autoValidateMode: AutovalidateMode.onUserInteraction,
                                             selectedItem: countrycon.text,
                                             popupProps: PopupProps.menu(
                                               showSearchBox: true,
                                             ),
                                             dropdownDecoratorProps: DropDownDecoratorProps(
                                               baseStyle: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor),
                                               textAlignVertical: TextAlignVertical.center,
                                               dropdownSearchDecoration: InputDecoration(
                                                   border: InputBorder.none),
                                             ),
                                             items: coutryList,
                                             validator: (value) {
                                               if (value ==
                                                   "Select Country") {
                                                 setState(() {
                                                   dropdownValidator3 =
                                                   true;
                                                 });
                                               }
                                               return null;
                                             },
                                             onChanged: (String?
                                             value) {
                                               if (value ==
                                                   'Select Country') {
                                                 setState(() {
                                                   dropdownValidator3 =
                                                   true;
                                                 });
                                               }
                                               else {
                                                 setState(() {
                                                   countrycon
                                                       .text =
                                                   value!;
                                                   dropdownValidator3 =
                                                   false;
                                                 });
                                               }
                                             },
                                           ),
                                           /* DropdownButtonHideUnderline(
       
                                                child:
                                                DropdownButtonFormField2<
                                                    String>(
                                                  isExpanded: true,
                                                  autovalidateMode: AutovalidateMode
                                                      .onUserInteraction,
                                                  hint: Text(
                                                    'Select Country',
                                                    style:
                                                    SafeGoogleFont(
                                                      'Nunito',
                                                      fontSize:
                                                      20 * ffem,
                                                    ),
                                                  ),
                                                  items: coutryList
                                                      .map((String
                                                  item) =>
                                                      DropdownMenuItem<
                                                          String>(
                                                        value:
                                                        item,
                                                        child:
                                                        Text(
                                                          item,
                                                          style:
                                                          SafeGoogleFont(
                                                            'Nunito',
                                                            fontSize:
                                                            20 * ffem,
                                                          ),
                                                        ),
                                                      ))
                                                      .toList(),
                                                  value:
                                                  countrycon.text,
                                                  validator: (value) {
                                                    if (value ==
                                                        "Select Country") {
                                                      setState(() {
                                                        dropdownValidator3 =
                                                        true;
                                                      });
                                                    }
                                                    return null;
                                                  },
                                                  onChanged: (String?
                                                  value) {
                                                    if (value ==
                                                        'Select Country') {
                                                      setState(() {
                                                        dropdownValidator3 =
                                                        true;
                                                      });
                                                    }
                                                    else {
                                                      setState(() {
                                                        countrycon
                                                            .text =
                                                        value!;
                                                        dropdownValidator3 =
                                                        false;
                                                      });
                                                    }
                                                  },
                                                  buttonStyleData:
                                                  const ButtonStyleData(
       
                                                  ),
                                                  menuItemStyleData:
                                                  const MenuItemStyleData(
       
                                                  ),
                                                  decoration:
                                                  const InputDecoration(
                                                      border:
                                                      InputBorder
                                                          .none),
                                                ),
                                              ),*/
                                         ),
                                         dropdownValidator3 == true &&
                                             countrycon.text ==
                                                 "Select Country"
                                             ? Text("Field is required",
                                             style: TextStyle(
                                                 color: Colors.red,
                                                 fontSize: 13))
                                             : const SizedBox()
       
                                       ],
                                     ),
                                   ),
                                 ],
                               ),
                             ),
       
                            
       
                             SizedBox(height: height / 36.95),
                             Row(
                               children: [
                                 SizedBox(width: width / 307.2),
                                 KText(
                                     text: 'Professional Details',
                                     style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                 ),
                               ],
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                   left: 4,
                                   right: 4,
                                   top: 4,
                                   bottom: 4),
                               child: Container(
                                 height: 1,
                                 width: width / 1.4422,
                                 color: Colors.grey.shade300,
                               ),
                             ),
                             SizedBox(height: height / 36.95),
       
                             Row(
                               children: [
                                 SizedBox(
                                   height: height / 9.369,
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       KText(
                                           text: 'Are You Working',
                                           style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                       ),
                                       SizedBox(height: height / 123.1666),
                                       Container(
                                         height: height / 15.114,
                                         width: width / 6.6782,
                                         decoration: BoxDecoration(
                                             color: const Color(
                                                 0xffDDDEEE),
                                             borderRadius:
                                             BorderRadius
                                                 .circular(3)),
                                         child:
                                         DropdownButtonHideUnderline(
                                           child:
                                           DropdownButtonFormField2<
                                               String>(
                                             isExpanded: true,
                                             hint: Text(
                                                 'Working',
                                                 style:
                                                 textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                             ),
                                             items: WorkingEmpList
                                                 .map((String
                                             item) =>
                                                 DropdownMenuItem<
                                                     String>(
                                                   value: item,
                                                   child: Text(
                                                       item,
                                                       style:
                                                       textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                   ),
                                                 )).toList(),
                                             value:
                                             alumniEmployedController
                                                 .text,
                                             onChanged:
                                                 (String? value) {
                                               setState(() {
                                                 alumniEmployedController
                                                     .text =
                                                 value!;
                                               });
                                             },
                                             buttonStyleData:
                                             const ButtonStyleData(
       
       
                                             ),
                                             menuItemStyleData:
                                             const MenuItemStyleData(
       
                                             ),
                                             decoration:
                                             const InputDecoration(
                                                 border:
                                                 InputBorder
                                                     .none),
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
       
                               ],
                             ),
                             SizedBox(height: height / 36.95),
                             alumniEmployedController.text == "Yes" ?
                             Row(
                               children: [
                                 SizedBox(
                                   height: height / 9.369,
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       KText(
                                           text: 'Occupations',
                                           style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                       ),
                                       SizedBox(height: height / 123.1666),
                                       Container(
                                           height: height / 15.114,
                                           width: width / 4.6545,
                                           decoration: BoxDecoration(
                                               color: const Color(
                                                   0xffDDDEEE),
                                               borderRadius:
                                               BorderRadius
                                                   .circular(
                                                   3)),
                                           child: TextFormField(
                                             controller:
                                             occupationcon,
                                             inputFormatters: [
                                               FilteringTextInputFormatter
                                                   .allow(RegExp(
                                                   "[a-zA-Z ]")),
                                             ],
                                             decoration:
                                             const InputDecoration(
                                               border: InputBorder
                                                   .none,
                                               contentPadding:
                                               EdgeInsets.only(
                                                   bottom: 10,
                                                   top: 2,
                                                   left: 10),
                                             ),
                                             // validator: (value) => value!.isEmpty ? 'Field is required' : null,
                                           ))
                                     ],
                                   ),
                                 ),
                                 SizedBox(width: width / 38.4),
                                 SizedBox(
                                   height: height / 9.369,
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       KText(
                                           text: 'Designation',
                                           style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                       ),
                                       SizedBox(height: height / 123.1666),
                                       Container(
                                           height: height / 15.114,
                                           width: width / 4.6545,
                                           decoration: BoxDecoration(
                                               color: const Color(
                                                   0xffDDDEEE),
                                               borderRadius:
                                               BorderRadius
                                                   .circular(
                                                   3)),
                                           child: TextFormField(
                                             controller:
                                             designationcon,
                                             inputFormatters: [
                                               FilteringTextInputFormatter
                                                   .allow(RegExp(
                                                   "[a-zA-Z ]")),
                                             ],
                                             decoration:
                                             const InputDecoration(
                                               border: InputBorder
                                                   .none,
                                               contentPadding:
                                               EdgeInsets.only(
                                                   bottom: 10,
                                                   top: 2,
                                                   left: 10),
                                             ),
                                             //validator: (value) => value!.isEmpty ? 'Field is required' : null,
                                           ))
                                     ],
                                   ),
                                 ),
                                 SizedBox(width: width / 38.4),
                                 SizedBox(
                                   height: height / 9.369,
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       KText(
                                           text:
                                           "Company/Concern's Name",
                                           style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                       ),
                                       SizedBox(height: height / 123.1666),
                                       Container(
                                           height: height / 15.114,
                                           width: width / 4.6545,
                                           decoration: BoxDecoration(
                                               color: const Color(
                                                   0xffDDDEEE),
                                               borderRadius:
                                               BorderRadius
                                                   .circular(
                                                   3)),
                                           child: TextFormField(
                                             controller:
                                             company_concerncon,
                                             inputFormatters: [
                                               FilteringTextInputFormatter
                                                   .allow(RegExp(
                                                   "[a-zA-Z ]")),
                                             ],
                                             decoration:
                                             const InputDecoration(
                                               border: InputBorder
                                                   .none,
                                               contentPadding:
                                               EdgeInsets.only(
                                                   bottom: 10,
                                                   top: 2,
                                                   left: 10),
                                             ),
                                             // validator: (value) => value!.isEmpty ? 'Field is required' : null,
                                           ))
                                     ],
                                   ),
                                 ),
                               ],
                             ) :
                             alumniEmployedController.text ==
                                 "Own Business" ?
                             Row(
                               children: [
       
                                 SizedBox(
                                   height: height / 9.369,
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       KText(
                                           text:
                                           "Company Name",
                                           style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                       ),
                                       SizedBox(height: height / 123.1666),
                                       Container(
                                           height: height / 15.114,
                                           width: width / 4.6545,
                                           decoration: BoxDecoration(
                                               color: const Color(
                                                   0xffDDDEEE),
                                               borderRadius:
                                               BorderRadius
                                                   .circular(
                                                   3)),
                                           child: TextFormField(
                                             controller:
                                             company_concerncon,
                                             inputFormatters: [
                                               FilteringTextInputFormatter
                                                   .allow(RegExp(
                                                   "[a-zA-Z ]")),
                                             ],
                                             decoration:
                                             const InputDecoration(
                                               border: InputBorder
                                                   .none,
                                               contentPadding:
                                               EdgeInsets.only(
                                                   bottom: 10,
                                                   top: 2,
                                                   left: 10),
                                             ),
                                             // validator: (value) => value!.isEmpty ? 'Field is required' : null,
                                           ))
                                     ],
                                   ),
                                 ),
                                 SizedBox(width: width / 38.4),
                                 SizedBox(
                                   height: height / 9.369,
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       KText(
                                           text: 'Type',
                                           style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                       ),
                                       SizedBox(height: height / 123.1666),
                                       Container(
                                           height: height / 15.114,
                                           width: width / 4.6545,
                                           decoration: BoxDecoration(
                                               color: const Color(
                                                   0xffDDDEEE),
                                               borderRadius:
                                               BorderRadius
                                                   .circular(
                                                   3)),
                                           child: TextFormField(
                                             controller:
                                             occupationcon,
                                             inputFormatters: [
                                               FilteringTextInputFormatter
                                                   .allow(RegExp(
                                                   "[a-zA-Z ]")),
                                             ],
                                             decoration:
                                             const InputDecoration(
                                               border: InputBorder
                                                   .none,
                                               contentPadding:
                                               EdgeInsets.only(
                                                   bottom: 10,
                                                   top: 2,
                                                   left: 10),
                                             ),
                                             // validator: (value) => value!.isEmpty ? 'Field is required' : null,
                                           ))
                                     ],
                                   ),
                                 ),
                               ],
                             ) :
                             const SizedBox(),
       
                             ///Material Status
                             SizedBox(height: height / 36.95),
                             Row(
                               children: [
                                 SizedBox(width: width / 307.2),
                                 KText(
                                     text: 'Marital Information',
                                     style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                 ),
                               ],
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                   left: 4,
                                   right: 4,
                                   top: 4,
                                   bottom: 4),
                               child: Container(
                                 height: 1,
                                 width: width / 1.4422,
                                 color: Colors.grey.shade300,
                               ),
                             ),
                             SizedBox(height: height / 36.95),
                             Row(
                               children: [
                                 SizedBox(
                                   height: height / 9.369,
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       KText(
                                           text: 'Are You Married',
                                           style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                       ),
                                       SizedBox(height: height / 123.1666),
                                       Container(
                                         height: height / 15.114,
                                         width: width / 6.6782,
                                         decoration: BoxDecoration(
                                             color: const Color(
                                                 0xffDDDEEE),
                                             borderRadius:
                                             BorderRadius
                                                 .circular(3)),
                                         child:
                                         DropdownButtonHideUnderline(
       
                                           child:
                                           DropdownButtonFormField2<
                                               String>(
                                             isExpanded: true,
                                             hint: Text(
                                                 'Marital Status',
                                                 style:
                                                 textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                             ),
                                             items: MaritalStatusList
                                                 .map((String
                                             item) =>
                                                 DropdownMenuItem<
                                                     String>(
                                                   value: item,
                                                   child: Text(
                                                       item,
                                                       style:
                                                       textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                                   ),
                                                 )).toList(),
                                             value:
                                             maritalStatuscon
                                                 .text,
                                             onChanged:
                                                 (String? value) {
                                               setState(() {
                                                 maritalStatuscon
                                                     .text =
                                                 value!;
                                               });
                                             },
                                             buttonStyleData:
                                             const ButtonStyleData(
       
       
                                             ),
                                             menuItemStyleData:
                                             const MenuItemStyleData(
       
                                             ),
                                             decoration:
                                             const InputDecoration(
                                                 border:
                                                 InputBorder
                                                     .none),
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                                 SizedBox(width: width / 38.4),
                                 maritalStatuscon.text == "Yes"
                                     ? SizedBox(
                                     child: Row(children: [
                                       SizedBox(
                                         height: height / 9.369,
                                         child: Column(
                                           crossAxisAlignment:
                                           CrossAxisAlignment
                                               .start,
                                           children: [
                                             KText(
                                                 text:
                                                 'Spouse Name',
                                                 style:
                                                 textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                             ),
                                             SizedBox(height: height /
                                                 123.1666),
                                             Container(
                                                 height: height / 15.114,
                                                 width: width / 6.4,
                                                 decoration: BoxDecoration(
                                                     color: const Color(
                                                         0xffDDDEEE),
                                                     borderRadius:
                                                     BorderRadius.circular(
                                                         3)),
                                                 child:
                                                 TextFormField(
                                                   controller:
                                                   spouseNamecon,
                                                   inputFormatters: [
                                                     FilteringTextInputFormatter
                                                         .allow(RegExp(
                                                         "[a-zA-Z ]")),
                                                   ],
                                                   decoration:
                                                   const InputDecoration(
                                                     border:
                                                     InputBorder
                                                         .none,
                                                     contentPadding: EdgeInsets
                                                         .only(
                                                         bottom:
                                                         10,
                                                         top: 2,
                                                         left:
                                                         10),
                                                   ),
                                                   //validator: (value) => value!.isEmpty ? 'Field is required' : null,
                                                 ))
                                           ],
                                         ),
                                       ),
                                       SizedBox(width: width / 38.4),
                                       SizedBox(
                                         height: height / 9.369,
                                         child: Column(
                                           crossAxisAlignment:
                                           CrossAxisAlignment
                                               .start,
                                           children: [
                                             KText(
                                                 text:
                                                 "Anniversary Date ",
                                                 style:
                                                 textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                             ),
                                             SizedBox(height: height /
                                                 123.1666),
                                             Container(
                                                 height: height / 15.114,
                                                 width: width / 6.4,
                                                 decoration: BoxDecoration(
                                                     color: const Color(
                                                         0xffDDDEEE),
                                                     borderRadius:
                                                     BorderRadius.circular(
                                                         3)),
                                                 child:
                                                 TextFormField(
                                                   readOnly:
                                                   true,
                                                   controller:
                                                   anniversaryDatecon,
                                                   decoration:
                                                   const InputDecoration(
                                                     border:
                                                     InputBorder
                                                         .none,
                                                     contentPadding: EdgeInsets
                                                         .only(
                                                         bottom:
                                                         10,
                                                         top: 2,
                                                         left:
                                                         10),
                                                   ),
                                                   onTap:
                                                       () async {
                                                     DateTime? pickedDate = await showDatePicker(
                                                         context: context,
                                                         initialDate: DateTime
                                                             .now(),
                                                         firstDate: DateTime(
                                                             1950),
                                                         //DateTime.now() - not to allow to choose before today.
                                                         lastDate: DateTime(
                                                             2100));
       
                                                     if (pickedDate !=
                                                         null) {
                                                       //pickedDate output format => 2021-03-10 00:00:00.000
                                                       String
                                                       formattedDate =
                                                       DateFormat(
                                                           'dd/MM/yyyy')
                                                           .format(
                                                           pickedDate);
                                                       //formatted date output using intl package =>  2021-03-16
                                                       setState(
                                                               () {
                                                             anniversaryDatecon
                                                                 .text =
                                                                 formattedDate; //set output date to TextField value.
                                                           });
                                                     } else {}
                                                   },
                                                   // validator: (value) => value!.isEmpty ? 'Field is required' : null,
                                                 ))
                                           ],
                                         ),
                                       ),
                                       SizedBox(width: width / 38.4),
                                       SizedBox(
                                         height: height / 9.369,
                                         child: Column(
                                           crossAxisAlignment:
                                           CrossAxisAlignment
                                               .start,
                                           children: [
                                             KText(
                                                 text:
                                                 "No. Of Children",
                                                 style:
                                                 textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                                             ),
                                             SizedBox(height: height /
                                                 123.1666),
                                             Container(
                                                 height: height / 15.114,
                                                 width: width / 6.4,
                                                 decoration: BoxDecoration(
                                                     color: const Color(
                                                         0xffDDDEEE),
                                                     borderRadius:
                                                     BorderRadius.circular(
                                                         3)),
                                                 child:
                                                 TextFormField(
                                                   controller:
                                                   no_of_childreancon,
                                                   maxLength: 2,
                                                   inputFormatters: [
                                                     FilteringTextInputFormatter
                                                         .allow(RegExp(
                                                         "[0-9]")),
                                                   ],
                                                   decoration:
                                                   const InputDecoration(
                                                     border:
                                                     InputBorder
                                                         .none,
                                                     contentPadding: EdgeInsets
                                                         .only(
                                                         bottom:
                                                         10,
                                                         top: 2,
                                                         left:
                                                         10),
                                                     counterText:
                                                     "",
                                                   ),
                                                 ))
                                           ],
                                         ),
                                       ),
                                     ]))
                                     : const SizedBox(),
                               ],
                             ),
                             SizedBox(height: height / 24.633),
       
                             ///buttons Save reset and back
       
                             Row(
                               mainAxisAlignment:
                               MainAxisAlignment.end,
                               children: [
                                 SizedBox(
                                   width: width / 2.2925,
                                 ),
       
                                 ///save button
                                 GestureDetector(
                                   onTap: Loading == false ? () {
                                     if (citycon.text == "Select City") {
                                       setState(() {
                                         dropdownValidator2 = true;
                                       });
                                     }
       
                                     if (statecon.text == "Select State") {
                                       setState(() {
                                         dropdownValidator = true;
                                       });
                                     }
       
                                     if (countrycon.text ==
                                         "Select Country") {
                                       setState(() {
                                         dropdownValidator3 = true;
                                       });
                                     }
       
                                     if (_formkey.currentState!
                                         .validate()) {
                                       if (citycon.text == "Select City") {
                                         setState(() {
                                           dropdownValidator2 = true;
                                         });
                                       }
       
                                       if (statecon.text ==
                                           "Select State") {
                                         setState(() {
                                           dropdownValidator = true;
                                         });
                                       }
       
                                       if (countrycon.text ==
                                           "Select Country") {
                                         setState(() {
                                           dropdownValidator3 = true;
                                         });
                                       }
                                       if (dropdownValidator == false &&
                                           dropdownValidator2 == false &&
                                           dropdownValidator3 == false) {
                                         print(
                                             "Finalaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                                         userdatecreatefunc();
                                       }
                                       else {
                                         print(
                                             "errorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
                                       }
                                     }
                                   } : () {},
                                   child: Container(
                                       height: height / 18.475,
                                       width: width / 12.8,
                                       decoration: BoxDecoration(
                                         color: const Color(0xffD60A0B),
                                         borderRadius:
                                         BorderRadius.circular(
                                             4),
                                       ),
                                       child: Center(
                                         child: KText(
                                             text: 'Save',
                                             style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: Colors.white)
                                         ),
                                       )),
                                 ),
                                 SizedBox(
                                   width: width / 76.8,
                                 ),
       
                                 ///Reset Button
                                 GestureDetector(
                                   onTap: () {
                                     controllersclearfunc();
                                   },
                                   child: Container(
                                       height: height / 18.475,
                                       width: width / 12.8,
                                       decoration: BoxDecoration(
                                         color: const Color(0xff00A0E3),
                                         borderRadius:
                                         BorderRadius.circular(
                                             4),
                                       ),
                                       child: Center(
                                         child: KText(
                                             text: 'Reset',
                                             style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: Colors.white)
                                         ),
                                       )),
                                 ),
                                 SizedBox(
                                   width: width / 76.8,
                                 ),
       
                                 ///back Button
                                 GestureDetector(
                                   onTap: () {
                                     setState(() {
                                       Useradd = false;
                                     });
                                     controllersclearfunc();
                                   },
                                   child: Container(
                                       height: height / 18.475,
                                       width: width / 12.8,
                                       decoration: BoxDecoration(
                                         color: Colors.green,
                                         borderRadius:
                                         BorderRadius.circular(
                                             4),
                                       ),
                                       child: Center(
                                         child: KText(
                                             text: 'Back',
                                             style: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: Colors.white)
                                         ),
                                       )),
                                 ),
                               ],
                             ),
                             SizedBox(height: height / 24.633),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
             ),
           ],
         ),
       )
            :  Useradd==false?Column(
          children: [

               Padding(
              padding:  EdgeInsets.only(top:25),
              child: Padding(
                padding: const EdgeInsets.only(left:20),
                child: Row(
                  children: [
                    Text(
                      "Hotel List",
                      style:
                      textStyle(
                          TextColor: HostelTextColor,
                          TextSize: TextSizeEXLarge,
                          fontWeight: fontWeightmediumextra
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:200),
                      child: Card(
                        elevation: 1,
                        color: UsersearchConColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          height: 38,
                          width: 300,
                          decoration: BoxDecoration(
                              color: UsersearchConColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextField(
                              controller:searchController,
                            style: textStyle(fontWeight: fontWeightlight,TextSize: TextSizeSmall,TextColor: searchTextColor),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:8,top: 6),
                              prefixIcon: Icon(
                                Icons.search,
                                color: searchTextColor,
                              ),
                              border: InputBorder.none,
                              hintText: "Search here",
                              hintStyle:
                              textStyle(fontWeight: fontWeightlight,TextSize: TextSizeSmall,TextColor: searchTextColor),
                            ),
                              onChanged: (value){
                                setState(() {

                                });
                              },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:400),
                      child: InkWell(
                        onTap: (){
                          addTypeFieldPopup();
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: ContainerColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("Add Type",style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: TextColorwhite),))

                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),

              const Padding(
              padding:  EdgeInsets.only(top:15,bottom: 20),
              child: Divider(
                thickness: 0.6,
              ),
            ),

             Padding(
             padding:  EdgeInsets.only(bottom: 20),
             child: SizedBox(
               height: 50,
               width: 1300,
               child: 
              StreamBuilder(
                stream: FirebaseFirestore.instance.collection("dataType").orderBy("timestamp").snapshots(),
                builder: (context, snapshot) {

                  if(snapshot.hasData==null){
                    return const Center(child: CircularProgressIndicator(),);
                  }
                  if(!snapshot.hasData){
                    return const Center(child: CircularProgressIndicator(),);
                  }
                  
                  return  ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.docs.length,
                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) {

                      var Value=snapshot.data!.docs[index];

                      return  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              SelectedButton=Value['name'].toString();
                              seletedColor=index;
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                                color:seletedColor==index?ListedContainerColor:Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: ListedContainerColor
                                )
                            ),
                            child: Center(
                              child: Text(
                                Value['name'].toString(),
                                style:
                                textStyle(
                                    TextColor: seletedColor==index?TextColorwhite:ListedContainerColor,
                                    TextSize: TextSizeMedium,
                                    fontWeight: fontWeightmediumextra
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },);
                },
              )
             ),
           ),
               Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //SelectedButton
                SelectedButton==""?const SizedBox(): Padding(
                  padding:  EdgeInsets.only(right: 25),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        Useradd=!Useradd;
                      });

                    },
                    child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: ContainerColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(child:
                        Text(SelectedButton.toString(),style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: TextColorwhite),))

                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 50,
                  child: Center(
                    child: Icon(Icons.circle,size: 10,),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    width: 300,
                    height: 20,
                    child: Text("Name", style:
                    textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)),
                  ),
                ),
                SizedBox(
                  width: 300,
                   height: 20,
                  child: Text("Activity", style:
                  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)),
                ),
                SizedBox(
                  width: 200,
                  height: 20,
                  child: Text("Time", style:
                  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)),
                ),
                SizedBox(
                  width: 200,
                  height: 20,
                  child: Text("Status", style:
                  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 500,
                width: 1300,
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("HostelUsers").orderBy("timestamp").snapshots(),
                  builder: (context, snapshot) {
                    if(snapshot.hasData==null){
                      return const Center(child: CircularProgressIndicator(),);
                    }
                    if(!snapshot.hasData){
                      return const Center(child: CircularProgressIndicator(),);
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      physics: const ScrollPhysics(),
                      itemBuilder: (context, index) {

                        var HostellerData=snapshot.data!.docs[index];

                        if(searchController.text!=""){

                          if(HostellerData['Name'].toString().toLowerCase().contains(searchController.text.toString().toLowerCase())){
                            return
                              SizedBox(
                                height: 50,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 40,
                                          width: 35,
                                          decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.6),
                                              borderRadius: BorderRadius.circular(5),
                                              image: DecorationImage(
                                                  image: NetworkImage(HostellerData['UserImg'].toString())
                                              )
                                          ),
                                          child:
                                          HostellerData['UserImg'].toString()==""?
                                          Center(
                                            child: Icon(Icons.person,),
                                          ):Text("")
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Container(
                                        width: 300,
                                        height: 50,
                                        child: Text(HostellerData['Name'].toString(), style:
                                        textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: UsersTextColor)),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                    Container(
                                      width: 300,
                                      height: 50,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Text("Last Check out at ", style:
                                          textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: UsersTextColor)),
                                          Text(HostellerData['lastCheckin'].toString(), style:
                                          textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: ListedContainerColor)),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      height: 50,
                                      alignment: Alignment.centerLeft,
                                      child: Text(HostellerData['time'].toString(), style:
                                      textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: UsersTextColor)),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      height: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 100,top: 5,bottom: 5),
                                        child: InkWell(
                                          onTap:(){
                                            roomStatus(
                                                ActiveStatus: HostellerData['Active'],
                                                DocumentId: HostellerData.id
                                            );
                                          },
                                          child: Container(
                                            width: 80,
                                            height: 50,
                                            decoration:BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color:
                                                OutRoomContainerColor
                                            ),
                                            child: Center(
                                              child: Text(
                                                  HostellerData['Active']==true?
                                                  "In Room":"Out Room", style:
                                              textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: OutRoomrColor)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              );
                          }
                        }
                        else{
                          return
                            SizedBox(
                              height: 50,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        height: 40,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.6),
                                            borderRadius: BorderRadius.circular(5),
                                            image: DecorationImage(
                                                image: NetworkImage(HostellerData['UserImg'].toString())
                                            )
                                        ),
                                        child:
                                        HostellerData['UserImg'].toString()==""?
                                        Center(
                                          child: Icon(Icons.person,),
                                        ):Text("")
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      width: 300,
                                      height: 50,
                                      child: Text(HostellerData['Name'].toString(), style:
                                      textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: UsersTextColor)),
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 50,
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Text("Last Check out at ", style:
                                        textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: UsersTextColor)),
                                        Text(HostellerData['lastCheckin'].toString(), style:
                                        textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: ListedContainerColor)),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    height: 50,
                                    alignment: Alignment.centerLeft,
                                    child: Text(HostellerData['time'].toString(), style:
                                    textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: UsersTextColor)),
                                  ),
                                  SizedBox(
                                    width: 200,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 100,top: 5,bottom: 5),
                                      child: InkWell(
                                        onTap:(){
                                          roomStatus(
                                            ActiveStatus: HostellerData['Active'],
                                            DocumentId: HostellerData.id
                                          );
                                        },
                                        child: Container(
                                          width: 80,
                                          height: 50,
                                          decoration:BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color:OutRoomContainerColor
                                          ),
                                          child: Center(
                                            child: Text(
                                                HostellerData['Active']==true?
                                                "In Room":"Out Room", style:
                                            textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: OutRoomrColor)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            );
                        }
                        return const SizedBox();


                      },);
                  },
                )
              ),
            )



          ],
        ):const SizedBox(),
      ),
    );
  }

  addTypeFieldPopup(){
    
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        content:  SizedBox(
          height: 200,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 10,
              ),
            Text("Add Type Field",style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeLarge,TextColor: Colors.black),),

              Container(
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextField(
                    controller: nameController,
                    style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeLarge,TextColor: Colors.black),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){

                      FirebaseFirestore.instance.collection("dataType").doc().set({
                        "date":"${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                        "time":DateTime.now().millisecondsSinceEpoch,
                         "name":nameController.text,
                        "timestamp":DateTime.now().millisecondsSinceEpoch
                      });

                      setState(() {
                        nameController.clear();
                      });

                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: HeadingTextColor
                      ),
                      child:
                      Center(child: Text("Okay",style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.white),),
                                     )
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: HeadingTextColor
                          ),
                          child:
                          Center(child: Text("Cancel",style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.white),),
                          )
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      );
    },);

  }


  ///room Status Update function

  roomStatus({DocumentId,ActiveStatus}){
    FirebaseFirestore.instance.collection("HostelUsers").doc(DocumentId).update({
      "lastCheckin":DateFormat('dd MMM -hh:mm a').format(DateTime.now()),
      "Active": !ActiveStatus,
    });


  }
  ///choose the image fundtions------------------------'\

  addImage(Size size) {
    InputElement input = FileUploadInputElement() as InputElement
      ..accept = 'image/*';
    input.click();
    input.onChange.listen((event) {
      final file = input.files!.first;
      final reader = FileReader();
      reader.readAsDataUrl(file);
      reader.onLoadEnd.listen((event) async {
        setState(() {
          Url = file;
          Uploaddocument = reader.result;
          imgUrl = "";
        });
      });
    });
  }

  imageupload() async {
    var snapshot = await FirebaseStorage.instance.ref().child('Images').child(
        "${Url!.name}").putBlob(Url);
    String downloadUrl = await snapshot.ref.getDownloadURL();
    setState(() {
      imgUrl = downloadUrl;
    });
  }

  /// popup func
  userNotValidAgePopup() {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    showDialog(
      barrierColor: Colors.transparent,
      context: context, builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(
            top: 160.0, bottom: 160, left: 400, right: 400),
        child: Material(
          color: Colors.white,
          shadowColor: const Color(0xff245BCA),
          borderRadius: BorderRadius.circular(8),
          elevation: 10,
          child: Container(

            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Scaffold(
              backgroundColor: const Color(0xffFFFFFF),
              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height / 24.6333),
                    KText(text: "Please Select the Age Correctly ", style:
                    textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: Colors.black)),

                    SizedBox(height: height / 36.95),

                    SizedBox(
                        height: height / 4.10555,
                        width: width / 8.53333,
                        child: Icon(Icons.error_outline, color: Colors.red,
                          size: width / 10.5076,)
                    ),

                    SizedBox(height: height / 36.95),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: height / 18.475,
                            width: width / 8.53333,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color:HeadingTextColor
                            ),
                            child: Center(
                              child: KText(text: "Okay",
                                  style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: TextColorwhite)
                              ),
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },);
  }


  /// user data add function

  String generateRandomString(int len) {
    var r = Random();
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
        .join();
  }

  userdatecreatefunc() async {
    setState(() {
      Loading = true;
    });
    print("Craete Funtion Entered+++++++++++++++++++++++++++");
    String userid = generateRandomString(16);

    if (Uploaddocument != null) {
      var snapshot = await FirebaseStorage.instance.ref().child('Images').child("${Url!.name}").putBlob(Url);
      String downloadUrl = await snapshot.ref.getDownloadURL();
      setState(() {
        imgUrl = downloadUrl;
      });
      print("Img Url Validate_+++++++++++++++++++++++++++++++++++++++++++++");
      await FirebaseFirestore.instance.collection("HostelUsers").doc(userid).set({
        "Address": adreesscon.text,
        "Gender": gendercon.text,
        "Name": firstNamecon.text,
        "middleName": middleNamecon.text,
        "lastName": lastNamecon.text,
        "Occupation": occupationcon.text,
        "Phone": phoneNumbercon.text,
        "UserImg": imgUrl,
        "lastchat": "",
        "verifyed": false,
        "dob": dateofBirthcon.text,
        "alteremail": alterEmailIdcon.text,
        "aadhaarNo": aadhaarNumbercon.text,
        "mobileNo": mobileNumbercon.text,
        "email": emailIDcon.text,
        "city": citycon.text,
        "pinCode": pinCodecon.text,
        "state": statecon.text,
        "country": countrycon.text,
        "designation": designationcon.text,
        "company_concern": company_concerncon.text,
        "maritalStatus": maritalStatuscon.text,
        "spouseName": spouseNamecon.text,
        "anniversaryDate": anniversaryDatecon.text,
        "childreancount": no_of_childreancon.text,
        "date": "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
        "timestamp": DateTime.now().millisecondsSinceEpoch,
        "userDocId": userid,
        "Active": false,
        "Token": "",
        "longtitude": 0,
        "latitude": 0,
        'workingStatus': alumniEmployedController.text,
        "regno": "Hm${(billcount).toString().padLeft(2, "0")}",
        "UserType":SelectedButton,
        "lastCheckin":DateFormat('dd MMM -hh:mm a').format(DateTime.now()),
        'time':DateFormat("hh:mm a").format(DateTime.now())
      });
      setState(() {
        Useradd = false;
      });
    }
    else {
      print("Else Fucntion_+++++++++++++++++++++++++++++++++++++++++++++");
      FirebaseFirestore.instance.collection("HostelUsers").doc(userid).set({
        "Address": adreesscon.text,
        "Gender": gendercon.text,
        "Name": firstNamecon.text,
        "middleName": middleNamecon.text,
        "lastName": lastNamecon.text,
        "Occupation": occupationcon.text,
        "Phone": phoneNumbercon.text,
        "UserImg": imgUrl,
        "lastchat": "",
        "verifyed": true,
        "dob": dateofBirthcon.text,
        "alteremail": alterEmailIdcon.text,
        "aadhaarNo": aadhaarNumbercon.text,
        "mobileNo": mobileNumbercon.text,
        "email": emailIDcon.text,
        "city": citycon.text,
        "pinCode": pinCodecon.text,
        "state": statecon.text,
        "country": countrycon.text,
        "designation": designationcon.text,
        "company_concern": company_concerncon.text,
        "maritalStatus": maritalStatuscon.text,
        "spouseName": spouseNamecon.text,
        "anniversaryDate": anniversaryDatecon.text,
        "childreancount": no_of_childreancon.text,
        "date": "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
        "timestamp": DateTime.now().millisecondsSinceEpoch,
        "userDocId": userid,
        "Active": false,
        "Token": "",
        "longtitude": 0,
        "latitude": 0,
        'workingStatus': alumniEmployedController.text,
        "regno": "Hm${(billcount).toString().padLeft(2, "0")}",
        "UserType":SelectedButton,
        "lastCheckin":DateFormat('dd MMM -hh:mm a').format(DateTime.now()),
        'time':DateFormat("hh:mm a").format(DateTime.now())
      });
      setState(() {
        Useradd = false;
      });
    }
    userCreateSuccessPopup();
    controllersclearfunc();
  }

  userCreateSuccessPopup() {
    double height = MediaQuery .of(context) .size.height;
    double width = MediaQuery.of(context) .size.width;

    showDialog(
      barrierColor: Colors.transparent,
      context: context, builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(
            top: 160.0, bottom: 160, left: 400, right: 400),
        child: Material(
          color: Colors.white,
          shadowColor: const Color(0xff245BCA),
          borderRadius: BorderRadius.circular(8),
          elevation: 10,
          child: Container(

            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Scaffold(
              backgroundColor: const Color(0xffFFFFFF),
              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height / 24.6333),
                    KText(
                        text: "Add New Hostel Users SuccessFully....", style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: Colors.black)
                    ),

                    SizedBox(height: height / 36.95),

                    SizedBox(
                      height: height / 4.10555,
                      width: width / 8.53333,
                      child: SvgPicture.asset(SuccesDataSvg),
                    ),

                    SizedBox(height: height / 36.95),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: height / 18.475,
                            width: width / 8.53333,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: KText(text: "Cancel", style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: height / 18.475,
                            width: width / 8.53333,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: HeadingTextColor
                            ),
                            child: Center(
                              child: KText(text: "Okay",
                                  style:textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: TextColorwhite)
                              ),
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },);
  }


  ///clear controller functions--------------------------------

  controllersclearfunc() {
    setState(() {
      Loading = false;
      firstNamecon.clear();
      middleNamecon.clear();
      lastNamecon.clear();
      dateofBirthcon.clear();
      gendercon.clear();
      alterEmailIdcon.clear();
      aadhaarNumbercon.clear();
      phoneNumbercon.clear();
      mobileNumbercon.clear();
      emailIDcon.clear();
      adreesscon.clear();
      citycon.text = "Select City";
      pinCodecon.clear();
      statecon.text = "Select State";
      countrycon.text = "Select Country";
      occupationcon.clear();
      designationcon.clear();
      company_concerncon.clear();
      maritalStatuscon.text = "Marital Status";
      alumniEmployedController.text = "No";
      spouseNamecon.clear();
      anniversaryDatecon.clear();
      no_of_childreancon.clear();
      Uploaddocument = null;
      imgUrl = "";
      dropdownValidator2 = false;
      userUpdateDocumentID = "";
    });
  }

  ///select the city functions----------------------


  Future getResponse() async {
    var res = await rootBundle.loadString(
        'packages/country_state_city_picker/lib/assets/country.json');
    return jsonDecode(res);
  }

  Future getCity(state) async {
    var response = await getResponse();
    var takestate = response
        .map((map) => StatusModel.StatusModel.fromJson(map))
        .where((item) => item.emoji + "    " + item.name == "🇮🇳    India")
        .map((item) => item.state)
        .toList();
    var states = takestate as List;
    states.forEach((f) {
      var name = f.where((item) => item.name == state);
      var cityname = name.map((item) => item.city).toList();
      cityname.forEach((ci) {
        if (!mounted) return;
        setState(() {
          var citiesname = ci.map((item) => item.name).toList();
          for (var citynames in citiesname) {
            _cities.add(citynames.toString());
          }
        });
      });
    });
    print("Get cityssss");
    print(_cities);
    return _cities;
  }


}
