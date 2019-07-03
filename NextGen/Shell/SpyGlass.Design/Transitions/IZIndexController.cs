namespace SpyGlass.Design.Wpf.Transitions
{
    public interface IZIndexController
    {
        void Stack(params TransitionerSlide[] highestToLowest);
    }
}