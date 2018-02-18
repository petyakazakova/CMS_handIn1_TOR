using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS_handIn1
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //UPLOAD JOKE TO FOLDER
        protected void ButtonUploadJoke_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                if (TextBoxNewName.Text != "")
                {
                    if (TextBoxNewName.Text.Substring(0, 1) != " ")
                    {
                        FileUpload.SaveAs(Server.MapPath("~/Jokes/" + TextBoxNewName.Text)); //save to map path
                        TextBoxNewName.Text = "";
                        LabelMessage.Text = FileUpload.PostedFile.FileName + "; " + FileUpload.PostedFile.ContentLength.ToString() + "; " + FileUpload.PostedFile.ContentType;
                    }
                    else
                    {
                        LabelMessage.Text = "Initial space not allowed.";
                    }
                }
                else
                {
                    LabelMessage.Text = "New file name is missing.";
                }
            }
            else
            {
                LabelMessage.Text = "Wrong file name.";
            }
        }

        //UPLOAD PICTURE TO FOLDER
        protected void ButtonUploadPicture_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                if (TextBoxNewName.Text != "")
                {
                    if (TextBoxNewName.Text.Substring(0, 1) != " ")
                    {
                        FileUpload.SaveAs(Server.MapPath("~/Pictures/" + TextBoxNewName.Text));
                        TextBoxNewName.Text = "";
                        LabelMessage.Text = FileUpload.PostedFile.FileName + "; " + FileUpload.PostedFile.ContentLength.ToString() + "; " + FileUpload.PostedFile.ContentType;
                    }
                    else
                    {
                        LabelMessage.Text = "Initial space not allowed.";
                    }
                }
                else
                {
                    LabelMessage.Text = "New file name missing.";
                }
            }
            else
            {
                LabelMessage.Text = "Wrong file name.";
            }
        }

    }
}