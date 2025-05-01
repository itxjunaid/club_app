import 'package:flutter/material.dart';

class WinnerDialog extends StatefulWidget {
  WinnerDialog({Key? key}) : super(key: key);

  @override
  State<WinnerDialog> createState() => _WinnerDialogState();
}

class _WinnerDialogState extends State<WinnerDialog>
    with SingleTickerProviderStateMixin {
  var height, width;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    // Add a Tween to scale from 0.0 to 1.0
    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Rectangle 5.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF1A0942), Color(0xFF2D1263)],
              ),
            ),
            child: Stack(
              children: [
                // Background animated particles
                Positioned.fill(
                  child: CustomPaint(painter: ParticlesPainter()),
                ),

                Column(
                  children: [
                    // Winner Banner
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      margin: EdgeInsets.only(top: height * 0.05),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFFF1A4B), Color(0xFFFF5722)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFF1A4B).withOpacity(0.5),
                            blurRadius: 20,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: ScaleTransition(
                        scale: _scaleAnimation,
                        child: Center(
                          child: Text(
                            "WINNER",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4,
                              shadows: [
                                Shadow(
                                  blurRadius: 15,
                                  color: Colors.black.withOpacity(0.6),
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.06),

                    // Animated Winner Crown
                    ScaleTransition(
                      scale: _scaleAnimation,
                      child: Text("👑", style: TextStyle(fontSize: 48)),
                    ),

                    SizedBox(height: height * 0.02),

                    // Winner & Loser Profiles
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Winner Profile - larger & more prominent
                          Column(
                            children: [
                              Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFFFF1E43),
                                        width: 4,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0xFFFF1E43,
                                          ).withOpacity(0.6),
                                          blurRadius: 20,
                                          spreadRadius: 3,
                                        ),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      radius: 55,
                                      backgroundColor: Colors.grey[300],
                                      backgroundImage: NetworkImage(
                                        'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: -10,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.green,
                                            Color(0xFF4CAF50),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.green.withOpacity(
                                              0.5,
                                            ),
                                            blurRadius: 10,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Text(
                                        "WINNER",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.015),
                              Text(
                                "m ahmad musffir",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          // VS in the middle
                          Container(
                            width: width * 0.25,
                            height: height * 0.12,
                            child: Center(
                              child: Text(
                                "VS",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15,
                                      color: Colors.blue.withOpacity(0.8),
                                      offset: Offset(0, 2),
                                    ),
                                    Shadow(
                                      blurRadius: 15,
                                      color: Colors.red.withOpacity(0.8),
                                      offset: Offset(0, -2),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // Loser Profile - smaller
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFF2065FF),
                                    width: 2,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF2065FF).withOpacity(0.3),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.grey[300],
                                  child: Text(
                                    "👤",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.015),
                              Text(
                                "No User",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.03),

                    // Score Display
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: height * 0.08,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [Color(0xFFFF1A4B), Color(0xFF2065FF)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFF1A4B),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SCORE",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "1250",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF2065FF),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SCORE",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "850",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.05),

                    // Winner Celebration Animation
                    Container(
                      height: height * 0.08,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("🎉", style: TextStyle(fontSize: 38)),
                          SizedBox(width: width * 0.02),
                          ShimmerText(
                            text: "CONGRATULATIONS!",
                            baseColor: Color.fromARGB(255, 85, 194, 26),
                            highlightColor: Colors.white,
                          ),
                          SizedBox(width: width * 0.02),
                          Text("🎊", style: TextStyle(fontSize: 38)),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.05),

                    // Continue Button
                    GlowingButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      text: "CONTINUE",
                      color: Color(0xFF2065FF),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Animated Shimmer Text Widget
class ShimmerText extends StatefulWidget {
  final String text;
  final Color baseColor;
  final Color highlightColor;

  ShimmerText({
    required this.text,
    required this.baseColor,
    required this.highlightColor,
  });

  @override
  _ShimmerTextState createState() => _ShimmerTextState();
}

class _ShimmerTextState extends State<ShimmerText>
    with SingleTickerProviderStateMixin {
  late AnimationController _shimmerController;
  late Animation<double> _shimmerAnimation;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    )..repeat();
    _shimmerAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_shimmerController);
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _shimmerAnimation,
      builder: (context, child) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: widget.baseColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: widget.baseColor, width: 1.5),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              color: Color.lerp(
                widget.baseColor,
                widget.highlightColor,
                _shimmerAnimation.value,
              ),
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        );
      },
    );
  }
}

// Glowing Button Widget
class GlowingButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;

  GlowingButton({
    required this.onPressed,
    required this.text,
    required this.color,
  });

  @override
  _GlowingButtonState createState() => _GlowingButtonState();
}

class _GlowingButtonState extends State<GlowingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _glowController;
  late Animation<double> _glowAnimation;

  @override
  void initState() {
    super.initState();
    _glowController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    _glowAnimation = Tween<double>(
      begin: 1.0,
      end: 2.0,
    ).animate(_glowController);
  }

  @override
  void dispose() {
    _glowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _glowAnimation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: widget.color.withOpacity(0.5 * _glowAnimation.value / 2),
                blurRadius: 20 * _glowAnimation.value,
                spreadRadius: 2 * _glowAnimation.value,
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: widget.onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 8,
            ),
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
        );
      },
    );
  }
}

// Particles Background Effect
class ParticlesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.white.withOpacity(0.6)
          ..style = PaintingStyle.fill;

    // Create a pattern of "particles" or small dots
    final random = DateTime.now().millisecondsSinceEpoch;
    for (int i = 0; i < 100; i++) {
      final x = (random % (i + 1) * 97) % size.width;
      final y = (random % (i + 1) * 83) % size.height;
      final radius = (random % (i + 1) * 3) % 3 + 1.0;
      canvas.drawCircle(Offset(x, y), radius, paint);
    }

    // Add some larger glowing particles
    final glowPaint =
        Paint()
          ..color = Colors.white.withOpacity(0.2)
          ..style = PaintingStyle.fill
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, 8);

    for (int i = 0; i < 20; i++) {
      final x = (random % (i + 1) * 123) % size.width;
      final y = (random % (i + 1) * 111) % size.height;
      final radius = (random % (i + 1) * 5) % 5 + 3.0;
      canvas.drawCircle(Offset(x, y), radius, glowPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// Example Usage
class LiveMatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1A0942), Color(0xFF0A0221)],
          ),
        ),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF2065FF),
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
            ),
            onPressed: () {
              // Show Winner Dialog as a full-screen page
              Navigator.of(context).push(
                PageRouteBuilder(
                  opaque: false,
                  pageBuilder:
                      (context, animation, secondaryAnimation) =>
                          WinnerDialog(),
                  transitionsBuilder: (
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    var begin = Offset(0.0, 1.0);
                    var end = Offset.zero;
                    var curve = Curves.easeInOut;
                    var tween = Tween(
                      begin: begin,
                      end: end,
                    ).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);
                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Text(
              "Winner",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
