// import 'dart:convert';

import 'dart:convert';

import 'package:app/utilities/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  double output = 0;
  double balance = 0;
  var amt1;
  var amt2;

  late Client httpClient;
  late Web3Client ethClient;
  String rpcUrl = 'HTTP://192.168.43.78';

  @override
  void initState() {
    initialSetup();
    super.initState();
  }

  Future<void> initialSetup() async {
    httpClient = Client();
    ethClient = Web3Client(rpcUrl, httpClient);

    await getCredentials();
    await getDeployedContract();
    await getContractFunctions();
  }

  String privateKey =
      'e8d6cc0ad5836bd1ee7256827b42cc47e84fa94c86b2fef95c2c8243f5b07bf7';
  late Credentials credentials;
  late EthereumAddress myAddress;

  Future<void> getCredentials() async {
    credentials = await ethClient.credentialsFromPrivateKey(privateKey);
    myAddress = await credentials.extractAddress();
  }

  late String abi;
  late EthereumAddress contractAddress;

  Future<void> getDeployedContract() async {
    String abiString = await rootBundle.loadString('src/abis/payment.json');
    var abiJson = jsonDecode(abiString);
    abi = jsonEncode(abiJson['abi']);

    contractAddress =
        EthereumAddress.fromHex(abiJson['networks']['80001']['address']);
  }

  late DeployedContract contract;
  late ContractFunction getBalanceAmount,
      getDepositAmount,
      addDepositAmount,
      withdrawBalance;

  Future<void> getContractFunctions() async {
    contract =
        DeployedContract(ContractAbi.fromJson(abi, "payment"), contractAddress);

    getBalanceAmount = contract.function('getBalanceAmount');
    getDepositAmount = contract.function('getDepositAmount');
    addDepositAmount = contract.function('addDepositAmount');
    withdrawBalance = contract.function('withdrawBalance');
  }

  Future<List<dynamic>> readContract(
    ContractFunction functionName,
    List<dynamic> functionArgs,
  ) async {
    var queryResult = await ethClient.call(
      contract: contract,
      function: functionName,
      params: functionArgs,
    );

    return queryResult;
  }

  Future<void> writeContract(
    ContractFunction functionName,
    List<dynamic> functionArgs,
  ) async {
    await ethClient.sendTransaction(
      credentials,
      Transaction.callContract(
        contract: contract,
        function: functionName,
        parameters: functionArgs,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: 360,
            height: 640,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 360,
                      height: 640,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                        color: Color.fromRGBO(105, 186, 250, 1),
                      ))),
              Positioned(
                left: 10,
                top: 20,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                  top: 27,
                  left: 98,
                  child: Text(
                    'Payment',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Poppins',
                        fontSize: 40,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  left: 4,
                  top: 130,
                  child: Container(
                    width: 352,
                    height: 150,
                    child: Text(
                      "Wallet\n\n${output}\n\nETH",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 5),
                          blurRadius: 4,
                        )
                      ],
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xccffffff),
                    ),
                  )),
              Positioned(
                  left: 4,
                  top: 284,
                  child: Container(
                    width: 352,
                    height: 350,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 5),
                          blurRadius: 4,
                        )
                      ],
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xccffffff),
                    ),
                  )),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 48,
                      decoration: kBoxDecorationStyle,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) => amt1 = double.parse('$value'),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.payment_rounded,
                            color: Colors.white,
                          ),
                          hintText: 'Enter the amount',
                          hintStyle: kHintTextStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () async {
                          if (output > 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                    'Payment is successfully completed'),
                                duration: const Duration(milliseconds: 1500),
                                width: 240.0, // Width of the SnackBar.
                                padding: const EdgeInsets.symmetric(
                                  horizontal:
                                      5.0, // Inner padding for SnackBar content.
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text('Your wallet is empty'),
                                duration: const Duration(milliseconds: 1500),
                                width: 240.0, // Width of the SnackBar.
                                padding: const EdgeInsets.symmetric(
                                  horizontal:
                                      5.0, // Inner padding for SnackBar content.
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            );
                          }
                          await writeContract(withdrawBalance, [amt1]);
                        },
                        child: Container(
                            width: 200,
                            height: 50,
                            child: Text(
                              "Pay",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(255, 153, 0, 1),
                            ))),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      height: 48,
                      decoration: kBoxDecorationStyle,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) => amt2 = double.parse('$value'),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.account_balance_rounded,
                            color: Colors.white,
                          ),
                          hintText: 'Deposit ETH to your wallet',
                          hintStyle: kHintTextStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () async {
                          await writeContract(
                              addDepositAmount, [BigInt.from(amt2)]);
                        },
                        child: Container(
                            width: 200,
                            height: 50,
                            child: Text(
                              "Deposit in Wallet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(255, 153, 0, 1),
                            ))),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              )
            ])));
  }
}
