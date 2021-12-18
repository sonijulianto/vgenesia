// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vgenesia/common/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vgenesia/cubit/auth_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is AuthSuccess) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/sign-in', (route) => false);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('error'),
                  backgroundColor: Colors.red,
                ));
              }
            },
            builder: (context, state) {
              return FloatingActionButton(
                onPressed: () {
                  context.read<AuthCubit>().logout();
                },
                child: Icon(Icons.logout),
              );
            },
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 5,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                        width: 5,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Kirim Motivasi'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Motivasi saya'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Semua motivasi'),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 400,
                  child: Expanded(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sonijulianto@gmail.com',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'berakit-rakit dahulu berenang ketepian, bersakit-sakit dahulu bersenang-senang kemudian',
                              style: blackTextStyle,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sonijulianto@gmail.com',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'berakit-rakit dahulu berenang ketepian, bersakit-sakit dahulu bersenang-senang kemudian',
                              style: blackTextStyle,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sonijulianto@gmail.com',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'berakit-rakit dahulu berenang ketepian, bersakit-sakit dahulu bersenang-senang kemudian',
                              style: blackTextStyle,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sonijulianto@gmail.com',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'berakit-rakit dahulu berenang ketepian, bersakit-sakit dahulu bersenang-senang kemudian',
                              style: blackTextStyle,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sonijulianto@gmail.com',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'berakit-rakit dahulu berenang ketepian, bersakit-sakit dahulu bersenang-senang kemudian',
                              style: blackTextStyle,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sonijulianto@gmail.com',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'berakit-rakit dahulu berenang ketepian, bersakit-sakit dahulu bersenang-senang kemudian',
                              style: blackTextStyle,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sonijulianto@gmail.com',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'berakit-rakit dahulu berenang ketepian, bersakit-sakit dahulu bersenang-senang kemudian',
                              style: blackTextStyle,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sonijulianto@gmail.com',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'berakit-rakit dahulu berenang ketepian, bersakit-sakit dahulu bersenang-senang kemudian',
                              style: blackTextStyle,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
