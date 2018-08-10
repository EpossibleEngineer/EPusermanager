using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.DirectoryServices;

namespace Epossible_User_Manager
{
    /// <summary>
    /// Interaction logic for Manage_Employee_Settings.xaml
    /// </summary>
    public partial class Manage_Employee_Settings : Window
    {
        
        public static string DomainDN { get; private set; }
        public static string DomainName { get; private set; }
        public string UserName { get; set; }

        public Manage_Employee_Settings()
        {
            InitializeComponent();
        }

        private void SubmitBTN2_Click(object sender, RoutedEventArgs e)
        {
            UserName = FNtextBox.Text + "." + LNTextBox.Text;
            if (Exists(UserName))
            {
                UAlabel.Content = UserName;
                ResetPassRadioBTN.IsEnabled = true;
                ChgDeptRadioBTN.IsEnabled = true;
                ChgGroupRadioBTN.IsEnabled = true;
                DisableRadioBTN.IsEnabled = true;
            }
            else
            {
                UAlabel.Content = "User Does not exist";
            }
        }
        
        private void ContinueBTN_Click(object sender, RoutedEventArgs e)
        {
            if(ResetPassRadioBTN.IsChecked == true)
            {
                var win = new Reset_Pass();
                win.ShowDialog();
            }else if (ChgDeptRadioBTN.IsChecked == true)
            {
                var win = new Change_Primary_Department();
                win.ShowDialog();
            }else if(ChgGroupRadioBTN.IsChecked == true)
            {
                var win = new Change_Group();
                win.ShowDialog();
            }
            else
            {
                var win = new Disable_Employee();
                win.ShowDialog();
            }
        }

        public static bool Exists(string username)
        {
            //Discover domain Name and extract the Domain DN
            DomainName = System.Net.NetworkInformation.IPGlobalProperties.GetIPGlobalProperties().DomainName;
            var index = DomainName.IndexOf(".");
            var domain = DomainName.Substring(0, index);
            var suffix = DomainName.Substring(index + 1);
            DomainDN = "dc=" + domain + ",dc=" + suffix;

            bool found = false;
            if (DirectoryEntry.Exists("LDAP://cn=" + username + "," + DomainDN))
            {
                found = true;
            }
            return found;
        }
    }
}
