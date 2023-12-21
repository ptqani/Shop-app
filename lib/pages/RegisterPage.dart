import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng ký'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập địa chỉ email';
                  }
                  return null;
                },
                style: TextStyle(
                    fontSize: 14.0), // Đặt kích thước font cho TextFormField
              ),
              SizedBox(height: 14.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập mật khẩu';
                  }
                  return null;
                },
                style: TextStyle(
                    fontSize: 16.0), // Đặt kích thước font cho TextFormField
              ),
              SizedBox(height: 14.0),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: 'Xác nhận mật khẩu',
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng xác nhận mật khẩu';
                  } else if (value != _passwordController.text) {
                    return 'Mật khẩu không khớp';
                  }
                  return null;
                },
                style: TextStyle(
                    fontSize: 14.0), // Đặt kích thước font cho TextFormField
              ),
              SizedBox(height: 14.0),
              Row(
                children: [
                  Checkbox(
                    value: _agreedToTerms,
                    onChanged: (value) {
                      setState(() {
                        _agreedToTerms = value ?? false;
                      });
                    },
                  ),
                  Text(
                    'Tôi đồng ý với các điều khoản và điều kiện',
                    style:
                        TextStyle(fontSize: 10), // Đặt kích thước font cho Text
                  ),
                ],
              ),
              SizedBox(height: 14.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Thực hiện logic đăng ký ở đây
                    // Ví dụ: Gửi dữ liệu đăng ký đến server
                  }
                },
                child: Text(
                  'Đăng ký',
                  style:
                      TextStyle(fontSize: 15.0), // Đặt kích thước font cho nút
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
