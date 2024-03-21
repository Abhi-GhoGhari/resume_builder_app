import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/utils/widget/my_snackbar.dart';

import '../../../../utils/global_utils.dart';

bool _hide = true;

Widget formWidget({
  required BuildContext context,
}) {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.black12,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Form(
      key: formKey,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Column(
          children: [
            //name
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onSaved: (val) {
                      Global.global.name = val;
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Name!!";
                      } else {
                        return null;
                      }
                    },
                    initialValue: Global.global.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: "Enter Your Name",
                      labelText: "Name",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(6),
            ),

            //email
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onSaved: (val) {
                      Global.global.email = val;
                    },
                    validator: (val) => val!.isEmpty
                        ? "Enter Email!!"
                        : RegExp(r'''^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$''')
                                .hasMatch(val)
                            ? null
                            : "Invalid Email!!",
                    initialValue: Global.global.email,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_rounded),
                      hintText: "Enter Your Email",
                      labelText: "E-mail",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(6),
            ),

            //phone
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onSaved: (val) {
                      Global.global.phone = val;
                    },
                    validator: (val) {
                      return val!.isEmpty
                          ? "Enter Phone Number!"
                          : val.length < 10
                              ? "Can't Must Be Of A 10 Digit"
                              : null;
                    },
                    initialValue: Global.global.phone,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone_enabled),
                      hintText: "Enter Your Mobile No.",
                      labelText: "Mobile No..",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(6),
            ),

            //password
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onSaved: (val) {
                      Global.global.password = val;
                    },
                    validator: (val) {
                      return val!.isEmpty
                          ? "Enter Passwor!!!"
                          : val.length < 8
                              ? "Can't Must Be Lent Of A 8"
                              : null;
                    },
                    initialValue: Global.global.password,
                    maxLength: 8,
                    obscureText: _hide,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      hintText: "Enter Password",
                      labelText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _hide = !_hide;
                          // setState(() {});
                        },
                        icon: Icon(
                          _hide ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(6),
            ),

            //Address
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onSaved: (val) {
                      Global.global.address = val;
                    },
                    validator: (val) => val!.isEmpty ? "Enter Adress!!" : null,
                    onFieldSubmitted: (val) {
                      formKey.currentState!.validate();
                    },
                    initialValue: Global.global.address,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.location_history),
                      hintText: "Enter Your Address",
                      labelText: "Address",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    bool valideted = formKey.currentState!.validate();
                    if (valideted) {
                      formKey.currentState!.save();
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      mysnackbar(
                          content:
                              valideted ? "Form Saved" : "Failed  Validation!!",
                          color: valideted ? Colors.green : Colors.red),
                    );
                  },
                  child: const Text("SAVE"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Global.global.reset();
                    formKey.currentState!.reset();
                  },
                  child: const Text("RESET"),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
