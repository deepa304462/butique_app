import 'package:pdf/widgets.dart';
import 'package:pdf/pdf.dart';

class MySeparatorForGenerate extends StatelessWidget {
  final double height;
  final PdfColor color;

  MySeparatorForGenerate({this.height = 1, this.color = PdfColors.black});


  @override
  Widget build(Context context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints!.constrainWidth();
        const dashWidth = 2.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}