using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Game
{
    /// <summary>
    /// Interaction logic for Math.xaml
    /// </summary>
    public partial class Math : UserControl
    {
        private int CurrentQuestion = 0;
        private List<MathTable> MathData;
        private int ButtonState = 0;

        public Math()
        {
            InitializeComponent();
        }

        private void Submit_Click(object sender, RoutedEventArgs e)
        {
            if (this.ButtonState == 1)
            {
                this.CurrentQuestion++;
                this.LoadQuestion();
                this.UpdateButton(0);
            }
            else if (this.ButtonState == 2)
            {
                this.Content = new MainMenu();
            }
            else
            {
                double UserAnswer = double.NaN;
                try
                {
                    UserAnswer = Convert.ToDouble(this.Answer.Text);
                }
                catch { };
                if (UserAnswer != double.NaN && this.GetAnswer().Equals(UserAnswer))
                {
                    if (this.CurrentQuestion+1 < this.MathData.Count)
                    {
                        this.UpdateButton(1);
                    }
                    else
                    {
                        this.UpdateButton(2);
                    };
                    (new Correct()).ShowDialog();
                }
                else
                {
                    if (this.CurrentQuestion+1 < this.MathData.Count)
                    {
                        this.UpdateButton(1);
                    }
                    else
                    {
                        this.UpdateButton(2);
                    };
                    this.CorrectAnswer.Content = this.GetAnswer();
                    this.CorrectAnswerLabel.Visibility = Visibility.Visible;
                    this.CorrectAnswer.Visibility = Visibility.Visible;
                    (new Wrong()).ShowDialog();
                }
            };
        }

        private void Math_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                   var Questions = from q in Storage.Data.MathTable
                                   select q;

                this.MathData = Questions.ToList();
                this.LoadQuestion();
            }
            catch (Exception Exception)
            {
                Util.ShowErrorAndQuit(Exception);
            };
        }

        private void UpdateButton(int NewButtonState)
        {
            this.ButtonState = NewButtonState;
            if (this.ButtonState == 1)
            {
                this.Submit.Content = "Nākošo jautājumu";
                this.Answer.IsEnabled = false;
            }
            else if (this.ButtonState == 2)
            {
                this.Submit.Content = "Uz Sākumu";
                this.Answer.IsEnabled = false;
            }
            else
            {
                this.Answer.Text = "";
                this.Answer.IsEnabled = true;
                this.CorrectAnswerLabel.Visibility = Visibility.Hidden;
                this.CorrectAnswer.Visibility = Visibility.Hidden;
                this.Submit.Content = "Pārbaudīt";
            };
        }

        private double GetAnswer()
        {
            return this.MathData[this.CurrentQuestion].Answer;
        }

        private void LoadQuestion()
        {
            if (this.CurrentQuestion < this.MathData.Count)
            {
                this.Question.Text = this.MathData[this.CurrentQuestion].Question;
                this.UpdateButton(0);
            }
            else
            {
                this.UpdateButton(2);
            }
        }
    }
}
