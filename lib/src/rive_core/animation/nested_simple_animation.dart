import 'package:rive/src/generated/animation/nested_simple_animation_base.dart';
import 'package:rive/src/rive_core/animation/nested_linear_animation.dart';
import 'package:rive/src/rive_core/nested_artboard.dart';

export 'package:rive/src/generated/animation/nested_simple_animation_base.dart';

class NestedSimpleAnimation extends NestedSimpleAnimationBase {
  @override
  void isPlayingChanged(bool from, bool to) {}

  @override
  void speedChanged(double from, double to) {
    linearAnimationInstance?.speed = to;
  }

  @override
  void linearAnimationInstanceChanged(
      NestedLinearAnimationInstance? from, NestedLinearAnimationInstance? to) {
    to?.speed = speed;
  }

  @override
  bool get isEnabled => true;

  @override
  void advance(double elapsedSeconds, MountedArtboard mountedArtboard) {
    if (isPlaying) {
      linearAnimationInstance?.advance(elapsedSeconds);
    }
    super.advance(elapsedSeconds, mountedArtboard);
  }
}
