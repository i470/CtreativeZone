using System.Windows;

namespace SpyGlass.Design.Wpf.Transitions
{
    public interface ITransitionWipe
    {
        void Wipe(TransitionerSlide fromSlide, TransitionerSlide toSlide, Point origin, IZIndexController zIndexController);
    }
}