﻿namespace SuShiX
{
    partial class FrmLogin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.pnlRoot = new System.Windows.Forms.TableLayoutPanel();
            this.pnlLoginSite = new System.Windows.Forms.Panel();
            this.pnlInfo = new System.Windows.Forms.TableLayoutPanel();
            this.lblRestaurantName = new System.Windows.Forms.Label();
            this.pnlLogin = new System.Windows.Forms.Panel();
            this.btnRegister = new System.Windows.Forms.Button();
            this.btnLogin = new System.Windows.Forms.Button();
            this.txbPassword = new System.Windows.Forms.TextBox();
            this.txbUsername = new System.Windows.Forms.TextBox();
            this.lblPassword = new System.Windows.Forms.Label();
            this.lblUsername = new System.Windows.Forms.Label();
            this.pbLogoLogin = new System.Windows.Forms.PictureBox();
            this.pbDisplayPassword = new System.Windows.Forms.PictureBox();
            this.pnlRoot.SuspendLayout();
            this.pnlLoginSite.SuspendLayout();
            this.pnlInfo.SuspendLayout();
            this.pnlLogin.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbLogoLogin)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbDisplayPassword)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlRoot
            // 
            this.pnlRoot.ColumnCount = 2;
            this.pnlRoot.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 40F));
            this.pnlRoot.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 60F));
            this.pnlRoot.Controls.Add(this.pbLogoLogin, 0, 0);
            this.pnlRoot.Controls.Add(this.pnlLoginSite, 1, 0);
            this.pnlRoot.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlRoot.Location = new System.Drawing.Point(0, 0);
            this.pnlRoot.Name = "pnlRoot";
            this.pnlRoot.RowCount = 1;
            this.pnlRoot.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.pnlRoot.Size = new System.Drawing.Size(800, 417);
            this.pnlRoot.TabIndex = 0;
            // 
            // pnlLoginSite
            // 
            this.pnlLoginSite.Controls.Add(this.pnlInfo);
            this.pnlLoginSite.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlLoginSite.Location = new System.Drawing.Point(323, 3);
            this.pnlLoginSite.Name = "pnlLoginSite";
            this.pnlLoginSite.Size = new System.Drawing.Size(474, 414);
            this.pnlLoginSite.TabIndex = 1;
            // 
            // pnlInfo
            // 
            this.pnlInfo.ColumnCount = 1;
            this.pnlInfo.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.pnlInfo.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.pnlInfo.Controls.Add(this.lblRestaurantName, 0, 0);
            this.pnlInfo.Controls.Add(this.pnlLogin, 0, 1);
            this.pnlInfo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlInfo.Location = new System.Drawing.Point(0, 0);
            this.pnlInfo.Name = "pnlInfo";
            this.pnlInfo.RowCount = 2;
            this.pnlInfo.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.pnlInfo.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 75F));
            this.pnlInfo.Size = new System.Drawing.Size(474, 414);
            this.pnlInfo.TabIndex = 0;
            // 
            // lblRestaurantName
            // 
            this.lblRestaurantName.AutoSize = true;
            this.lblRestaurantName.BackColor = System.Drawing.Color.Yellow;
            this.lblRestaurantName.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblRestaurantName.Font = new System.Drawing.Font("Times New Roman", 30F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRestaurantName.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.lblRestaurantName.Location = new System.Drawing.Point(3, 0);
            this.lblRestaurantName.Name = "lblRestaurantName";
            this.lblRestaurantName.Size = new System.Drawing.Size(468, 103);
            this.lblRestaurantName.TabIndex = 0;
            this.lblRestaurantName.Text = "Nhà Hàng Sushi X";
            this.lblRestaurantName.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // pnlLogin
            // 
            this.pnlLogin.BackColor = System.Drawing.Color.White;
            this.pnlLogin.Controls.Add(this.pbDisplayPassword);
            this.pnlLogin.Controls.Add(this.btnRegister);
            this.pnlLogin.Controls.Add(this.btnLogin);
            this.pnlLogin.Controls.Add(this.txbPassword);
            this.pnlLogin.Controls.Add(this.txbUsername);
            this.pnlLogin.Controls.Add(this.lblPassword);
            this.pnlLogin.Controls.Add(this.lblUsername);
            this.pnlLogin.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlLogin.Location = new System.Drawing.Point(3, 106);
            this.pnlLogin.Name = "pnlLogin";
            this.pnlLogin.Size = new System.Drawing.Size(468, 305);
            this.pnlLogin.TabIndex = 1;
            // 
            // btnRegister
            // 
            this.btnRegister.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnRegister.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Gray;
            this.btnRegister.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Gray;
            this.btnRegister.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRegister.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegister.Location = new System.Drawing.Point(276, 215);
            this.btnRegister.Name = "btnRegister";
            this.btnRegister.Size = new System.Drawing.Size(138, 54);
            this.btnRegister.TabIndex = 5;
            this.btnRegister.Text = "Đăng Ký";
            this.btnRegister.UseVisualStyleBackColor = true;
            this.btnRegister.Click += new System.EventHandler(this.btnRegister_Click);
            // 
            // btnLogin
            // 
            this.btnLogin.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnLogin.FlatAppearance.MouseDownBackColor = System.Drawing.Color.DarkGray;
            this.btnLogin.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LightGray;
            this.btnLogin.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLogin.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLogin.Location = new System.Drawing.Point(45, 215);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(138, 54);
            this.btnLogin.TabIndex = 4;
            this.btnLogin.Text = "Đăng Nhập";
            this.btnLogin.UseVisualStyleBackColor = true;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // txbPassword
            // 
            this.txbPassword.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txbPassword.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbPassword.Location = new System.Drawing.Point(229, 110);
            this.txbPassword.Name = "txbPassword";
            this.txbPassword.Size = new System.Drawing.Size(196, 30);
            this.txbPassword.TabIndex = 3;
            this.txbPassword.UseSystemPasswordChar = true;
            // 
            // txbUsername
            // 
            this.txbUsername.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txbUsername.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbUsername.Location = new System.Drawing.Point(229, 38);
            this.txbUsername.Name = "txbUsername";
            this.txbUsername.Size = new System.Drawing.Size(196, 30);
            this.txbUsername.TabIndex = 2;
            // 
            // lblPassword
            // 
            this.lblPassword.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblPassword.AutoSize = true;
            this.lblPassword.BackColor = System.Drawing.Color.White;
            this.lblPassword.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPassword.Location = new System.Drawing.Point(25, 117);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(94, 23);
            this.lblPassword.TabIndex = 1;
            this.lblPassword.Text = "Mật Khẩu";
            // 
            // lblUsername
            // 
            this.lblUsername.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblUsername.AutoSize = true;
            this.lblUsername.BackColor = System.Drawing.Color.White;
            this.lblUsername.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUsername.Location = new System.Drawing.Point(25, 45);
            this.lblUsername.Name = "lblUsername";
            this.lblUsername.Size = new System.Drawing.Size(134, 23);
            this.lblUsername.TabIndex = 0;
            this.lblUsername.Text = "Tên Tài Khoản";
            // 
            // pbLogoLogin
            // 
            this.pbLogoLogin.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pbLogoLogin.Image = global::SuShiX.Properties.Resources.logo_login;
            this.pbLogoLogin.Location = new System.Drawing.Point(3, 3);
            this.pbLogoLogin.Name = "pbLogoLogin";
            this.pbLogoLogin.Size = new System.Drawing.Size(314, 414);
            this.pbLogoLogin.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pbLogoLogin.TabIndex = 0;
            this.pbLogoLogin.TabStop = false;
            // 
            // pbDisplayPassword
            // 
            this.pbDisplayPassword.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.pbDisplayPassword.Image = global::SuShiX.Properties.Resources.eye_open;
            this.pbDisplayPassword.Location = new System.Drawing.Point(395, 110);
            this.pbDisplayPassword.Name = "pbDisplayPassword";
            this.pbDisplayPassword.Size = new System.Drawing.Size(30, 30);
            this.pbDisplayPassword.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pbDisplayPassword.TabIndex = 6;
            this.pbDisplayPassword.TabStop = false;
            this.pbDisplayPassword.Click += new System.EventHandler(this.pbDisplayPassword_Click);
            // 
            // FrmLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(800, 417);
            this.Controls.Add(this.pnlRoot);
            this.Name = "FrmLogin";
            this.Text = "Phầm mềm quản lý nhà hàng Sushi X";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.pnlRoot.ResumeLayout(false);
            this.pnlLoginSite.ResumeLayout(false);
            this.pnlInfo.ResumeLayout(false);
            this.pnlInfo.PerformLayout();
            this.pnlLogin.ResumeLayout(false);
            this.pnlLogin.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbLogoLogin)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbDisplayPassword)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel pnlRoot;
        private System.Windows.Forms.PictureBox pbLogoLogin;
        private System.Windows.Forms.Panel pnlLoginSite;
        private System.Windows.Forms.TableLayoutPanel pnlInfo;
        private System.Windows.Forms.Label lblRestaurantName;
        private System.Windows.Forms.Panel pnlLogin;
        private System.Windows.Forms.Label lblPassword;
        private System.Windows.Forms.Label lblUsername;
        private System.Windows.Forms.TextBox txbPassword;
        private System.Windows.Forms.TextBox txbUsername;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.Button btnRegister;
        private System.Windows.Forms.PictureBox pbDisplayPassword;
    }
}

