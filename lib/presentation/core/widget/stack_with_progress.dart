import 'package:flutter/material.dart';

class StackWithProgress extends StatelessWidget {
  const StackWithProgress(
      {Key? key,
      required List<Widget> children,
      bool? isLoading,
      AlignmentGeometry? alignment,
      StackFit? fit})
      : _children = children,
        _isLoading = isLoading ?? false,
        _aligment = alignment ?? Alignment.center,
        _fit = fit ?? StackFit.expand,
        super(key: key);

  final List<Widget> _children;
  final bool _isLoading;
  final AlignmentGeometry _aligment;
  final StackFit _fit;

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
      children: const [
        Opacity(
          opacity: 0.7,
          child: ModalBarrier(
            dismissible: false,
            color: Colors.grey,
          ),
        ),
        Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
