using System;

namespace LiveCharts
{
    /// <summary>
    /// 
    /// </summary>
    public static class AxisWindows
    {
        /// <summary>
        /// 
        /// </summary>
        public static AxisWindow EmptyWindow => new EmptyAxisWindow();

        /// <summary>
        /// 
        /// </summary>
        public class EmptyAxisWindow : AxisWindow
        {
            /// <inheritdoc />
            public override double MinimumSeparatorWidth => 0;

            /// <inheritdoc />
            public override bool IsHeader(double x)
            {
                return false;
            }

            /// <inheritdoc />
            public override bool IsSeparator(double x)
            {
                return false;
            }

            /// <inheritdoc />
            public override string FormatAxisLabel(double x)
            {
                return "";
            }
        }
    }
}