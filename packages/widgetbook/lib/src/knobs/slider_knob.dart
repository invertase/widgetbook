import '../fields/fields.dart';
import '../state/state.dart';
import 'knob.dart';

class SliderKnob extends Knob<double> {
  SliderKnob({
    required super.label,
    required super.value,
    super.description,
    this.max = 1,
    this.min = 0,
    this.divisions,
  });

  final double max;
  final double min;
  final int? divisions;

  @override
  List<Field> get fields {
    return [
      DoubleSliderField(
        group: 'knobs',
        name: label,
        initialValue: value,
        min: min,
        max: max,
        divisions: divisions,
        onChanged: (context, num? value) {
          if (value == null) return;
          WidgetbookState.of(context).updateKnobValue(label, value);
        },
      ),
    ];
  }
}

class NullableSliderKnob extends Knob<double?> {
  NullableSliderKnob({
    required super.label,
    required double super.value,
    super.description,
    this.max = 1,
    this.min = 0,
    this.divisions,
  });

  final double max;
  final double min;
  final int? divisions;

  @override
  List<Field> get fields {
    return [
      DoubleSliderField(
        group: 'knobs',
        name: label,
        initialValue: value,
        min: min,
        max: max,
        divisions: divisions,
        onChanged: (context, num? value) {
          if (value == null) return;
          WidgetbookState.of(context).updateKnobValue(label, value);
        },
      ),
    ];
  }
}
