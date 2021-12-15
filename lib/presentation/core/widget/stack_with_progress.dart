import 'package:flutter/material.dart';

class StackWithProgress extends StatelessWidget {
  const StackWithProgress(
      {Key? key,
      required List<Widget> children,
      double opacity = 7.0,
      bool isLoading = false,
      AlignmentGeometry alignment = Alignment.center,
      StackFit fit = StackFit.loose,
      Color modalColor = Colors.grey})
      : _children = children,
        _isLoading = isLoading,
        _aligment = alignment,
        _fit = fit,
        _opacity = opacity,
        _modalColor = modalColor,
        super(key: key);

  final List<Widget> _children;
  final bool _isLoading;
  final AlignmentGeometry _aligment;
  final StackFit _fit;
  final double _opacity;
  final Color _modalColor;

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      _children.add(_progressBar());
    }
    return Stack(
      alignment: _aligment,
      fit: _fit,
      children: _children,
    );
  }

  Widget _progressBar() {
    return Stack(
      children: [
        Opacity(
          opacity: _opacity,
          child: ModalBarrier(
            dismissible: false,
            color: _modalColor,
          ),
        ),
        const Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
