unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  ZAbstractConnection, ZConnection, Vcl.Imaging.pngimage, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractTable, Vcl.ComCtrls,
  Vcl.MPlayer, Vcl.CustomizeDlg, Vcl.Tabs, Vcl.DockTabSet, Vcl.OleCtrls, SHDocVw,
  Vcl.ShellAnimations, ShellAPI, Registry;

type
  TForm6 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    ZConnection1: TZConnection;
    Panel_N9: TPanel;
    Panel_N17: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    worker_id1: TLabel;
    name1: TLabel;
    surname1: TLabel;
    dolj1: TLabel;
    vkpage1: TLabel;
    skype1: TLabel;
    Image2: TImage;
    Image3: TImage;
    N17: TMenuItem;
    N18: TMenuItem;
    N20: TMenuItem;
    Panel_Chose: TPanel;
    Button1: TButton;
    Button2: TButton;
    ZQuery_login: TZQuery;
    Memo_N9: TMemo;
    Label7: TLabel;
    frating_label: TLabel;
    Panel_N8: TPanel;
    Memo_N8: TMemo;
    Label8: TLabel;
    rating_label: TLabel;
    Panel_N18: TPanel;
    ListBox_N18: TListBox;
    N18_dolj1: TLabel;
    Image1: TImage;
    Image4: TImage;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    N18_skype1: TLabel;
    N18_vkpage1: TLabel;
    N18_worker_id: TLabel;
    Label9: TLabel;
    ZQuery_N18: TZQuery;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    N18_rating: TLabel;
    N18_frating: TLabel;
    N18_name: TLabel;
    N18_surname: TLabel;
    Panel_N20: TPanel;
    RichEdit1: TRichEdit;
    Memo1: TMemo;
    Button3: TButton;
    Label18: TLabel;
    ListBox_N20: TListBox;
    ZQuery_Chat: TZQuery;
    Timer_Chat: TTimer;
    GroupBox1: TGroupBox;
    ZQuery_chat_send: TZQuery;
    MediaPlayer1: TMediaPlayer;
    CheckBox1: TCheckBox;
    Label19: TLabel;
    ZQuery_dop: TZQuery;
    N19: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N15: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    Panel_N2: TPanel;
    DockTabSet_task: TDockTabSet;
    Memo_task: TMemo;
    Label20: TLabel;
    Label21: TLabel;
    ltitle: TLabel;
    ltask_id: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    lreward: TLabel;
    lcomplexity: TLabel;
    ZQuery_task: TZQuery;
    Button4: TButton;
    Label24: TLabel;
    Memo_otchet: TMemo;
    ZQuery_otchet: TZQuery;
    Label25: TLabel;
    Label26: TLabel;
    llast_visit: TLabel;
    ZQuery_last_visit: TZQuery;
    Timer_last_visit: TTimer;
    Label27: TLabel;
    N18_llast_visit: TLabel;
    Panel_N5: TPanel;
    DockTabSet_massages: TDockTabSet;
    Label28: TLabel;
    Label29: TLabel;
    Label33: TLabel;
    msg_ltask_id: TLabel;
    msg_ltitle: TLabel;
    Memo_massages: TMemo;
    Button_set_readed: TButton;
    ZQuery_massages: TZQuery;
    Label30: TLabel;
    msg_date: TLabel;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    Label31: TLabel;
    Panel_task_ctrl: TPanel;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DockTabSet_task_ctrl: TDockTabSet;
    Memo_task_send: TMemo;
    ComboBox_task: TGroupBox;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label32: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label35: TLabel;
    ComboBox_sloj: TComboBox;
    Button8: TButton;
    Button9: TButton;
    Label36: TLabel;
    N34: TMenuItem;
    N35: TMenuItem;
    Label39: TLabel;
    Edit3: TEdit;
    Memo_otchet2: TMemo;
    Label40: TLabel;
    Panel_N22: TPanel;
    Label41: TLabel;
    ListBox_N22: TListBox;
    GroupBox2: TGroupBox;
    Button10: TButton;
    Label45: TLabel;
    Edit4: TEdit;
    Memo2: TMemo;
    Label46: TLabel;
    Panel_N23: TPanel;
    Label47: TLabel;
    Edit5: TEdit;
    Label44: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    CheckBox2: TCheckBox;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Button11: TButton;
    Panel_N24: TPanel;
    Label58: TLabel;
    Label60: TLabel;
    Edit14: TEdit;
    Button12: TButton;
    Label56: TLabel;
    Edit15: TEdit;
    Button13: TButton;
    N13: TMenuItem;
    Panel_N7: TPanel;
    ZQueryNew1: TZQuery;
    ListBox1: TListBox;
    Button14: TButton;
    N26: TMenuItem;
    Memo3: TMemo;
    Label55: TLabel;
    Label57: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    ZQueryNew2: TZQuery;
    Panel_N25: TPanel;
    Label64: TLabel;
    Label65: TLabel;
    Button15: TButton;
    Edit12: TEdit;
    Memo4: TMemo;
    Edit13: TEdit;
    Label59: TLabel;
    N36: TMenuItem;
    Panel_N32: TPanel;
    Label63: TLabel;
    Label66: TLabel;
    Memo5: TMemo;
    ListBox_N32: TListBox;
    WebBrowser1: TWebBrowser;
    Panel_webbrowser: TPanel;
    Edit16: TEdit;
    Panel_N36: TPanel;
    Label61: TLabel;
    Label62: TLabel;
    Label67: TLabel;
    Button16: TButton;
    Edit17: TEdit;
    Memo6: TMemo;
    Edit18: TEdit;
    Panel_N31: TPanel;
    Memo7: TMemo;
    Button17: TButton;
    Panel_N30: TPanel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    CheckBox3: TCheckBox;
    Button18: TButton;
    TrayIcon1: TTrayIcon;
    Panel_N33: TPanel;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    GroupBox3: TGroupBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    GroupBox4: TGroupBox;
    Button19: TButton;
    ZQueryNew_options: TZQuery;
    procedure N9Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure ListBox_N18Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ListBox_N20Click(Sender: TObject);
    procedure Timer_ChatTimer(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure N10Click(Sender: TObject);
    procedure DockTabSet_taskClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer_last_visitTimer(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure DockTabSet_massagesClick(Sender: TObject);
    procedure Button_set_readedClick(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure DockTabSet_task_ctrlClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure ListBox_N32Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  login: String;
  password: String;
  worker_id: integer;
  admin7: Integer;
  name_user: String;
  surname: String;
  vk_page: String;
  skype: String;
  dolgnost: String;
  rating: integer;
  rating_full: integer;
  last_msg_id : integer;
  task_id : integer;
  task_id_red : integer;
  last_visit : String;
  massage_id : integer;
  Connection_Database : String;
  Connection_HostName : String;
  Connection_User : String;
  Connection_Password : String;
  Connection_Port : String;
  t_a_title, t_a_reward,  t_a_sost : String;
  t_a_task_id, t_a_worker_id, t_a_complexity : integer;
  t_a_description, t_a_otchet : WideString;

implementation

{$R *.dfm}

uses Unit1;


procedure OptionsSet6();
var
sql_options : String;
op_n8, op_n2, op_n3, op_n4, op_n32, op_n31, op_n7, op_autorun, op_sound : Boolean;
regist : TRegistry;
begin
  sql_options:='SELECT * FROM `launch`';
  Form6.ZQueryNew_options.SQL.Clear;
  Form6.ZQueryNew_options.SQL.Add(sql_options);
  Form6.ZQueryNew_options.Active:=True;

  if Form6.ZQueryNew_options.FieldByName('n8').AsInteger=1 then op_n8:=True
  else op_n8:=False;

  if Form6.ZQueryNew_options.FieldByName('n2').AsInteger=1 then op_n2:=True
  else op_n2:=False;

  if Form6.ZQueryNew_options.FieldByName('n3').AsInteger=1 then op_n3:=True
  else op_n3:=False;

  if Form6.ZQueryNew_options.FieldByName('n4').AsInteger=1 then op_n4:=True
  else op_n4:=False;

  if Form6.ZQueryNew_options.FieldByName('n32').AsInteger=1 then op_n32:=True
  else op_n32:=False;

  if Form6.ZQueryNew_options.FieldByName('n31').AsInteger=1 then op_n31:=True
  else op_n31:=False;

  if Form6.ZQueryNew_options.FieldByName('n7').AsInteger=1 then op_n7:=True
  else op_n7:=False;

  if Form6.ZQueryNew_options.FieldByName('autorun').AsInteger=1 then op_autorun:=True
  else op_autorun:=False;

  if Form6.ZQueryNew_options.FieldByName('sound').AsInteger=1 then op_sound:=True
  else op_sound:=False;

  Form6.ZQueryNew_options.Active:=False;

  if admin7=0 then
    begin
      Form6.N2.Visible:=op_n2;
      Form6.N3.Visible:=op_n3;
      Form6.N4.Visible:=op_n4;
      Form6.N31.Visible:=op_n31;
      Form6.N32.Visible:=op_n32;
      Form6.N7.Visible:=op_n7;
      Form6.N8.Visible:=op_n8;

      Form6.N19.Visible:=False;

      if op_autorun=False then
        begin
          regist:=TRegistry.Create();
          regist.RootKey:=HKEY_CURRENT_USER;

          if regist.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', True) then
            begin
              regist.WriteString( Application.Title, Application.ExeName);
              regist.CloseKey();
              Form6.CheckBox3.Checked:=True;
              Form6.CheckBox3.Enabled:=False;
            end
        end;

      if op_sound=False then
        begin
          Form6.CheckBox1.Checked:=True;
          Form6.CheckBox1.Enabled:=False;
        end;
    end
  else
    begin
      Form6.N2.Visible:=True;
      Form6.N3.Visible:=True;
      Form6.N4.Visible:=True;
      Form6.N31.Visible:=True;
      Form6.N32.Visible:=True;
      Form6.N7.Visible:=True;
      Form6.N8.Visible:=True;
      Form6.N19.Visible:=True;
      Form6.CheckBox1.Enabled:=True;
      Form6.CheckBox3.Enabled:=True;

      Form6.CheckBox4.Checked:=op_n8;
      Form6.CheckBox5.Checked:=op_n2;
      Form6.CheckBox6.Checked:=op_n3;
      Form6.CheckBox7.Checked:=op_n4;
      Form6.CheckBox8.Checked:=op_n32;
      Form6.CheckBox9.Checked:=op_n31;
      Form6.CheckBox10.Checked:=op_n7;
      Form6.CheckBox11.Checked:=op_autorun;
      Form6.CheckBox12.Checked:=op_sound;
    end;

end;

procedure AddLink();
var
t_a_url, t_a_link_title : String;
sql_add_link, t_a_link_description : WideString;
i1 : integer;
begin
  if ((Form6.Edit17.Text<>'') and (Form6.Edit18.Text<>'')) then
    try
      t_a_link_title:=Form6.Edit17.Text;
      t_a_url:=Form6.Edit18.Text;
      t_a_link_description:=Form6.Memo6.Lines[0];
      for i1 := 1 to Form6.Memo6.Lines.Count-1 do t_a_link_description:=t_a_link_description+#13#10+Form6.Memo6.Lines[i1];
      sql_add_link:='INSERT INTO `baseforcommandosprogramm`.`links` (`link_id`, `url`, `description`, `title`) VALUES (NULL, "'+t_a_url+'", "'+t_a_link_description+'", "'+t_a_link_title+'");';
      Form6.ZQueryNew1.SQL.Clear;
      Form6.ZQueryNew1.SQL.Add(sql_add_link);
      Form6.ZQueryNew1.ExecSQL;
      ShowMessage('���� ��������!');
      Form6.N17.Click;
    except
      ShowMessage('������!');
    end;
end;

procedure LinkList(); //���� �������� ������.
var
sql_llist, link_title : String;
i1, i2 : integer;
begin
  Form6.ListBox_N32.Clear;
  sql_llist:='SELECT `title` FROM `links` WHERE 1';
  Form6.ZQueryNew1.SQL.Clear;
  Form6.ZQueryNew1.SQL.Add(sql_llist);
  Form6.ZQueryNew1.Active:=True;
  i2:=Form6.ZQueryNew1.RecordCount;
  i1:=1;
  Form6.ZQueryNew1.First;
  while i1<=i2 do
  begin
    link_title:=Form6.ZQueryNew1.FieldByName('title').AsString;
    Form6.ListBox_N32.Items.Add(link_title);
    Form6.ZQueryNew1.Next;
    i1:=i1+1;
  end;
  Form6.ZQueryNew1.Active:=False;

end;

procedure AddPresent();//��������� ���������� ������ � �������.
var
t_a_ptitle : String;
sql_send, t_a_pdescription : WideString;
i1, t_a_price : Integer;
begin
  if Form6.Memo4.Lines.Count<>0 then
    begin
      t_a_ptitle:=Form6.Edit12.Text;
      t_a_price:=StrToInt(Form6.Edit13.Text);
      t_a_pdescription:=Form6.Memo4.Lines[0];
      for i1 := 1 to Form6.Memo4.Lines.Count-1 do t_a_pdescription:=t_a_pdescription+#13#10+Form6.Memo4.Lines[i1];
      sql_send:='INSERT INTO `baseforcommandosprogramm`.`presents` (`present_id`, `ptitle`, `pdescription`, `worker_id`, `price`) VALUES (NULL, "'+t_a_ptitle+'", "'+t_a_pdescription+'", "0", "'+IntToStr(t_a_price)+'");';
      Form6.ZQuery_chat_send.SQL.Clear;
      Form6.ZQuery_chat_send.SQL.Add(sql_send);
      try
        Form6.ZQuery_chat_send.ExecSQL;
        ShowMessage('���� ��������!');
      except
        ShowMessage('������!');
      end;

    end;

end;

procedure PresentList(w_id : integer);   // �������� ����� ������.
var
sql_prlist : String;
i1, i2 : integer;
begin
  Form6.ListBox1.Clear;
  if w_id=-1 then sql_prlist:='SELECT * FROM `presents` WHERE 1'
  else sql_prlist:='SELECT * FROM `presents` WHERE worker_id="'+IntToStr(w_id)+'"';
  Form6.ZQueryNew1.SQL.Clear;
  Form6.ZQueryNew1.SQL.Add(sql_prlist);
  Form6.ZQueryNew1.Active:=True;
  i2:=Trunc(Form6.ZQueryNew1.RecordCount.ToDouble);
  i1:=1;
  Form6.ZQueryNew1.First;
  while i1<=i2 do
  begin
    Form6.ListBox1.Items.Add(Form6.ZQueryNew1.FieldByName('ptitle').AsString);
    Form6.ZQueryNew1.Next;
    i1:=i1+1;
  end;
end;

procedure SetRating(plus : boolean);  //���������� ���������.
var
t_a_addrating, t_a_rid, t_a_rating, t_a_rating_full : integer;
sql_rating : String;
begin
  if plus then  t_a_addrating:=StrToInt(Form6.Edit15.Text)
  else t_a_addrating:=-StrToInt(Form6.Edit15.Text);

  t_a_rid:=StrToInt(Form6.Edit14.Text);
  sql_rating:='SELECT `rating_full`, `rating`  FROM `workers` WHERE worker_id="'+IntToStr(t_a_rid)+'"';
  Form6.ZQueryNew1.Active:=False;
  Form6.ZQueryNew1.SQL.Clear;
  Form6.ZQueryNew1.SQL.Add(sql_rating);
  Form6.ZQueryNew1.Active:=True;
  t_a_rating:=Form6.ZQueryNew1.FieldByName('rating').AsInteger;
  t_a_rating_full:=Form6.ZQueryNew1.FieldByName('rating_full').AsInteger;
  Form6.ZQueryNew1.Active:=False;

  t_a_rating:=t_a_rating+t_a_addrating;
  t_a_rating_full:=t_a_rating_full+t_a_addrating;
  if t_a_rating<0 then t_a_rating:=0;
  if t_a_rating_full<0 then t_a_rating_full:=0;

  sql_rating:='UPDATE  `baseforcommandosprogramm`.`workers` SET  `rating` =  "'+IntToStr(t_a_rating)+'", `rating_full` =  "'+IntToStr(t_a_rating_full)+'" WHERE  `workers`.`worker_id` ='+IntToStr(t_a_rid)+';';
  Form6.ZQueryNew1.SQL.Clear;
  Form6.ZQueryNew1.SQL.Add(sql_rating);
  Form6.ZQueryNew1.ExecSQL;
  ShowMessage('������� �������!');
  Form6.N17.Click;
end;

procedure InsertUser();//�������� ������������.
var
user_skype , user_vk_page , user_dolgnost , user_surname , user_name , user_password , user_login , user_admin7 : String;
sql_ins : String;
begin
  user_skype:=Form6.Edit5.Text;
  user_vk_page:=Form6.Edit6.Text;
  user_dolgnost:=Form6.Edit7.Text;
  user_surname:=Form6.Edit8.Text;
  user_name:=Form6.Edit9.Text;
  user_password:=Form6.Edit10.Text;
  user_login:=Form6.Edit11.Text;
  user_admin7:='0';
  if Form6.CheckBox2.Checked then user_admin7:='1';
  sql_ins:='INSERT INTO `baseforcommandosprogramm`.`workers` (`login`, `password`, `worker_id`, `admin7`, `name`, `surname`, `vk_page`, `skype`, `dolgnost`, `rating`, `rating_full`, `last_visit`) VALUES ("'+user_login+'", "'+user_password+'", NULL, "'+user_admin7+'", "'+user_name+'", "'+user_surname+'", "'+user_vk_page+'", "'+user_skype+'", "'+user_dolgnost+'", "0", "0", "");';
  Form6.ZQueryNew1.Active:=False;
  Form6.ZQueryNew1.SQL.Clear;
  Form6.ZQueryNew1.SQL.Add(sql_ins);
  Form6.ZQueryNew1.ExecSQL;

  ShowMessage('������������ ��������!');
  Form6.N17.Click;
end;

procedure ChatSend();//��������� �������� ��������� � ����.
var
sql_send : String;
i1, addressee_id : Integer;
begin

  if Form6.Memo1.Lines.Count<>0 then
    begin
      if Trunc(Form6.ListBox_N20.ItemIndex.ToDouble)>=0 then
        begin
            for i1 := 0 to Form6.Memo1.Lines.Count-1 do
            begin
              addressee_id:=Trunc(Form6.ListBox_N20.ItemIndex.ToDouble);
              sql_send:='INSERT INTO `baseforcommandosprogramm`.`chat` (`msg_text`, `msg_time`, `addressee_id`, `sender_id`) VALUES ("'+Form6.Memo1.Lines[i1]+'", NOW(), "'+IntToStr(addressee_id)+'", "'+IntToStr(worker_id)+'")';
              Form6.ZQuery_chat_send.SQL.Clear;
              Form6.ZQuery_chat_send.SQL.Add(sql_send);
              try
                Form6.ZQuery_chat_send.ExecSQL;
              except
                ShowMessage('�� �����������.');
              end;
            end;
            Form6.Memo1.Lines.Clear;
        end;
    end;
end;

procedure MsgSend();//��������� �������� ��������� � �������.
var
sql_send, t_a_mtitle : String;
t_a_msg : WideString;
i1, for_all, addressee_id : Integer;
begin

  if Form6.Memo2.Lines.Count<>0 then
    begin
      if Trunc(Form6.ListBox_N22.ItemIndex.ToDouble)>=0 then
        begin
          t_a_mtitle:=Form6.Edit4.Text;
          t_a_msg:=Form6.Memo2.Lines[0];
          for i1 := 1 to Form6.Memo2.Lines.Count-1 do t_a_msg:=t_a_msg+#13#10+Form6.Memo2.Lines[i1];
          addressee_id:=Form6.ListBox_N22.ItemIndex;
          if addressee_id=0 then
            begin
              for for_all := 1 to Form6.ListBox_N22.Items.Count-1 do
              begin
                sql_send:='INSERT INTO `baseforcommandosprogramm`.`massages` (`massage_id`, `title`, `massage`, `worker_id`, `date`, `readed`) VALUES (NULL, "'+t_a_mtitle+'", "'+t_a_msg+'", "'+IntToStr(for_all)+'", NOW(), "0");';
                Form6.ZQuery_chat_send.SQL.Clear;
                Form6.ZQuery_chat_send.SQL.Add(sql_send);
                try
                  Form6.ZQuery_chat_send.ExecSQL;
                except
                  Form6.N17.Click;
                  ShowMessage('�� �����������.');
                  Break;
                end;
              end;
              ShowMessage('��������� �����������!');
            end
          else
            begin
              sql_send:='INSERT INTO `baseforcommandosprogramm`.`massages` (`massage_id`, `title`, `massage`, `worker_id`, `date`, `readed`) VALUES (NULL, "'+t_a_mtitle+'", "'+t_a_msg+'", "'+IntToStr(addressee_id)+'", NOW(), "0");';
              Form6.ZQuery_chat_send.SQL.Clear;
              Form6.ZQuery_chat_send.SQL.Add(sql_send);
              try
                Form6.ZQuery_chat_send.ExecSQL;
                ShowMessage('��������� �����������!');
                Form6.N17.Click;
              except
                ShowMessage('�� �����������.');
              end;
            end;
        end;
    end;
end;

procedure SetPlatformsNotVisible();//��������� ��������� ����������� ���� �������.
begin
  Form6.ClientWidth:=707;

  Form6.Panel_N9.Visible:=False;
  Form6.Panel_N17.Visible:=False;
  Form6.Panel_N8.Visible:=False;
  Form6.Panel_N18.Visible:=False;
  Form6.Panel_N20.Visible:=False;
  Form6.ZQuery_N18.Active:=False;
  Form6.ZQuery_Chat.Active:=False;
  Form6.Panel_N2.Visible:=False;
  Form6.ZQuery_task.Active:=False;
  Form6.Memo_otchet.Visible:=False;
  Form6.Label24.Visible:=False;
  Form6.Button4.Visible:=False;
  Form6.Panel_N5.Visible:=False;
  Form6.Panel_N22.Visible:=False;
  Form6.Panel_N23.Visible:=False;
  Form6.Panel_N24.Visible:=False;
  Form6.Panel_N7.Visible:=False;
  Form6.Panel_N25.Visible:=False;
  Form6.Panel_N32.Visible:=False;
  Form6.Panel_N36.Visible:=False;
  Form6.Panel_N31.Visible:=False;
  Form6.Panel_N30.Visible:=False;
  Form6.Panel_N33.Visible:=False;

  Form6.Panel_task_ctrl.Visible:=False;
  Form6.Button5.Enabled:=False;
  Form6.Button6.Enabled:=False;
  Form6.Button7.Enabled:=False;
  Form6.Button8.Enabled:=False;
  Form6.Button9.Enabled:=False;
  Form6.DockTabSet_task_ctrl.Visible:=False;
  Form6.Label42.Visible:=False;
  Form6.ComboBox_sloj.Enabled:=False;
  Form6.Edit1.ReadOnly:=True;
  Form6.Edit2.ReadOnly:=True;
  Form6.Edit3.ReadOnly:=True;
  Form6.Label40.Visible:=False;
  Form6.Memo_otchet2.Visible:=False;

  Form6.WebBrowser1.Navigate('about:blank');

  t_a_task_id:=-1;
  t_a_worker_id:=-1;
  Form6.Edit3.Text:=IntToStr(t_a_worker_id);

  Form6.Edit4.Text:='';
  Form6.Memo2.Lines.Clear;

  Form6.Memo3.Visible:=False;
  Form6.Label53.Visible:=False;
  Form6.Label54.Visible:=False;
  Form6.Label55.Visible:=False;
  Form6.Label57.Visible:=False;
  Form6.Button14.Visible:=False;
  Form6.Label55.Caption:='';
  Form6.Label54.Caption:='';
  Form6.Memo3.Lines.Clear;

  Form6.ZQueryNew1.Active:=False;

  Form6.Edit17.Text:='';
  Form6.Edit18.Text:='';
  Form6.Memo6.Lines.Clear;

  Form6.Memo7.Lines.Clear;
  Form6.Button17.Visible:=False;
end;

procedure Tasks_send(but : integer);
var
i1 : integer;
sql_Tasks, sql_Tasks_send1 : WideString;
begin
  Form6.ZQueryNew1.Active:=False;
  Form6.ZQueryNew1.SQL.Clear;

  t_a_title:=Form6.Edit1.Text;
  t_a_reward:=Form6.Edit2.Text;
  t_a_complexity:=Form6.ComboBox_sloj.ItemIndex+1;
  t_a_worker_id:=StrToInt(Form6.Edit3.Text);
  t_a_description:=Form6.Memo_task_send.Lines[0];
  for i1 := 1 to Form6.Memo_task_send.Lines.Count-1 do t_a_description:=t_a_description+#13#10+Form6.Memo_task_send.Lines[i1];

  case but of
  5:begin
    t_a_sost:='on doing';
    sql_Tasks:='INSERT INTO `baseforcommandosprogramm`.`tasks` (`sost`, `task_id`, `worker_id`, `description`, `reward`, `title`, `complexity`, `otchet`) VALUES ("'+t_a_sost+'", NULL, "'+IntToStr(t_a_worker_id)+'", "'+t_a_description+'", "'+t_a_reward+'", "'+t_a_title+'", "'+IntToStr(t_a_complexity)+'", "")';
    ShowMessage('������� �����������!');
    end;
  6:begin
    t_a_sost:='stoped';
    sql_Tasks:='UPDATE  `baseforcommandosprogramm`.`tasks` SET  `sost` =  "'+t_a_sost+'" WHERE  `tasks`.`task_id` ="'+IntToStr(+t_a_task_id)+'";';
    ShowMessage('������� �����������!');
    end;
  7:begin
    t_a_sost:='done';
    sql_Tasks:='UPDATE  `baseforcommandosprogramm`.`tasks` SET  `sost` =  "'+t_a_sost+'" WHERE  `tasks`.`task_id` ="'+IntToStr(+t_a_task_id)+'";';
    ShowMessage('���������� ������������!');
    end;
  8:begin
    t_a_sost:='on doing';
    sql_Tasks:='UPDATE `baseforcommandosprogramm`.`tasks` SET `sost` = "'+t_a_sost+'", `worker_id` = "'+IntToStr(t_a_worker_id)+'", `description` = "'+t_a_description+'", `reward` = "'+t_a_reward+'", `title` = "'+t_a_title+'", `complexity` = "'+IntToStr(t_a_complexity)+'" WHERE `tasks`.`task_id` = '+IntToStr(t_a_task_id)+';';
    ShowMessage('������� ���������� �� ���������!');
    end;
  9:begin
    sql_Tasks:='UPDATE `baseforcommandosprogramm`.`tasks` SET `worker_id` = "'+IntToStr(t_a_worker_id)+'", `description` = "'+t_a_description+'", `reward` = "'+t_a_reward+'", `title` = "'+t_a_title+'", `complexity` = "'+IntToStr(t_a_complexity)+'" WHERE `tasks`.`task_id` = '+IntToStr(t_a_task_id)+';';
    ShowMessage('������� ���������������!');
    end;
  end;

  Form6.ZQueryNew1.SQL.Add(sql_Tasks);
  Form6.ZQueryNew1.ExecSQL;
  Form6.N17.Click;
end;

procedure Tasks_ctrl(sost : string); //�������� ������� � �����-���.
var
i1 : integer;
sql1: String;
(*title, reward : String;
complexity, task_id : integer;
description : TStrings;*)
begin
  Form6.DockTabSet_task_ctrl.Tabs.Clear;
  Form6.Memo_task_send.Lines.Clear;

  Form6.ZQuery_task.Active:=False;
  Form6.ZQuery_task.SQL.Clear;
  sql1:='SELECT * FROM `tasks` WHERE `sost`="'+sost+'"';
  Form6.ZQuery_task.SQL.Add(sql1);
  Form6.ZQuery_task.Active:=True;
  if Trunc(Form6.ZQuery_task.RecordCount.ToDouble)<>0 then
    begin
      for i1 := 1 to Trunc(Form6.ZQuery_task.RecordCount.ToDouble) do
        begin
          Form6.DockTabSet_task_ctrl.Tabs.Add(IntToStr(i1));
        end;
    end
  else
    begin
      ShowMessage('������ ������� ���� ����!');
      Form6.N17.Click;
    end;


end;

procedure Tasks(sost : string); //�������� �������.
var
i1 : integer;
sql1 : String;
(*title, reward : String;
complexity, task_id : integer;
description : TStrings;*)
begin
  Form6.DockTabSet_task.Tabs.Clear;
  Form6.Memo_task.Lines.Clear;

  Form6.ZQuery_task.Active:=False;
  Form6.ZQuery_task.SQL.Clear;
  sql1:='SELECT * FROM `tasks` WHERE `sost`="'+sost+'" AND (`worker_id`='+IntToStr(worker_id)+' OR `worker_id`=0)';
  Form6.ZQuery_task.SQL.Add(sql1);
  Form6.ZQuery_task.Active:=True;
  if Trunc(Form6.ZQuery_task.RecordCount.ToDouble)<>0 then
    begin
      for i1 := 1 to Trunc(Form6.ZQuery_task.RecordCount.ToDouble) do
        begin
          Form6.DockTabSet_task.Tabs.Add(IntToStr(i1));
        end;
    end
  else
    begin
      ShowMessage('������ ������� ���� ����!');
      Form6.N17.Click;
    end;


end;

procedure Massages(readed : integer); //�������� ���������.
var
i1 : integer;
sql1: String;
begin

  Form6.DockTabSet_massages.Tabs.Clear;
  Form6.Memo_massages.Lines.Clear;

  Form6.ZQuery_massages.Active:=False;
  Form6.ZQuery_massages.SQL.Clear;
  sql1:='SELECT * FROM `massages` WHERE `readed`='+IntToStr(readed)+' AND (`worker_id`='+IntToStr(worker_id)+' OR `worker_id`=0)';
  Form6.ZQuery_massages.SQL.Add(sql1);
  Form6.ZQuery_massages.Active:=True;
  if ((Trunc(Form6.ZQuery_massages.RecordCount.ToDouble)<>0)) then
    begin
      for i1 := 1 to Trunc(Form6.ZQuery_massages.RecordCount.ToDouble) do
        begin
          Form6.DockTabSet_massages.Tabs.Add(IntToStr(i1));
        end;
    end
  else
    begin
    if Form6.Panel_N5.Visible then
      begin
        ShowMessage('������ ��������� ���� ����!');
        Form6.N17.Click;
      end;
    end;
  if ((readed=0) and (Form6.DockTabSet_massages.Tabs.Count>0) and (Form6.Panel_N5.Visible=False)) then
    begin
      Form6.N5.Caption:='++���������++';
      if Form6.CheckBox1.Checked then Form6.MediaPlayer1.Play;
      Form6.ZQuery_massages.Last;
      Form6.TrayIcon1.BalloonHint:='����:'+Form6.ZQuery_massages.FieldByName('title').AsString+#10#13+'"'+Form6.ZQuery_massages.FieldByName('massage').AsString+'"'+#10#13+'��������, ����� ����������';
      Form6.TrayIcon1.BalloonTitle:='����� ���������';
      Form6.TrayIcon1.ShowBalloonHint;
    end
  else
    begin
      Form6.N5.Caption:='���������';
    end;



end;

procedure TForm6.N10Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N2.Visible:=True;
  Form6.ClientHeight:=442;

  Form6.Memo_otchet.Visible:=True;
  Form6.Label24.Visible:=True;
  Form6.Button4.Visible:=True;

  Tasks('on doing');


end;

procedure TForm6.N11Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N2.Visible:=True;
  Form6.ClientHeight:=442;

  Form6.Memo_otchet.Visible:=True;
  Form6.Label24.Visible:=True;
  Form6.Button4.Visible:=True;

  Tasks('on verification');

end;

procedure TForm6.N12Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N2.Visible:=True;
  Form6.ClientHeight:=311;

  Tasks('done');

end;

procedure TForm6.N13Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N7.Visible:=True;
  Form6.ClientHeight:=217;

  PresentList(-1);
  Form6.Label53.Visible:=True;
  Form6.Label54.Visible:=True;
  Form6.Label55.Visible:=True;
  Form6.Label57.Visible:=True;
  if admin7=1 then
    begin
      Form6.Memo3.Visible:=True;
      Form6.ClientHeight:=344;
    end;
end;

procedure TForm6.N14Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N2.Visible:=True;
  Form6.ClientHeight:=311;

  Tasks('stoped');

end;

procedure TForm6.N15Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N5.Visible:=True;
  Form6.ClientHeight:=332;
  Button_set_readed.Visible:=False;

  Massages(1);
end;

procedure TForm6.N16Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N5.Visible:=True;
  Form6.ClientHeight:=332;
  Button_set_readed.Visible:=True;

  Massages(0);
end;

procedure TForm6.N17Click(Sender: TObject); //�������� �� ������ "������ ����������".
begin
  SetPlatformsNotVisible();
  Panel_N17.Visible:=True;
  Form6.ClientHeight:=292;

  name1.Caption:=login;
  surname1.Caption:=surname;
  worker_id1.Caption:=IntToStr(worker_id);
  name1.Caption:=name_user;
  surname1.Caption:=surname;
  vkpage1.Caption:=vk_page;
  skype1.Caption:=skype;
  dolj1.Caption:=dolgnost;
  llast_visit.Caption:=last_visit;
end;

procedure TForm6.N18Click(Sender: TObject); //�������� �� ������ "������ �����������".
var
sql_N18 : string;
i1, i2 : integer;
begin
  SetPlatformsNotVisible();
  Panel_N18.Visible:=True;
  Form6.ClientHeight:=369;

  ZQuery_N18.SQL.Clear;
  ZQuery_N18.SQL.Add('SELECT `worker_id` FROM `workers`');
  ZQuery_N18.Active:=True;
  i2:=Trunc(ZQuery_N18.RecordCount.ToDouble);

  ListBox_N18.Items.Clear;

  i1:=1;
  while i1<=i2 do
  begin
    ZQuery_N18.Active:=False;
    sql_N18:='SELECT `surname`, `name`  FROM `workers` WHERE worker_id="'+IntToStr(i1)+'"';
    ZQuery_N18.SQL.Clear;
    ZQuery_N18.SQL.Add(sql_N18);
    ZQuery_N18.Active:=True;
    if Trunc(ZQuery_N18.RecordCount.ToDouble)=0 then
      begin
        ListBox_N18.Items.Add('������!');
        i2:=i2+1;
      end
    else ListBox_N18.Items.Add(ZQuery_N18.FieldByName('name').AsString+' '+ZQuery_N18.FieldByName('surname').AsString);
    i1:=i1+1;
  end;
  ZQuery_N18.Active:=False;
end;

procedure TForm6.N20Click(Sender: TObject);//�������� �� ������ "���������".
var
sql_N18 : string;
i1, i2 : integer;
begin

  SetPlatformsNotVisible();
  Panel_N20.Visible:=True;
  Form6.ClientHeight:=469;

  ZQuery_N18.SQL.Clear;
  ZQuery_N18.SQL.Add('SELECT `worker_id` FROM `workers`');
  ZQuery_N18.Active:=True;
  i2:=Trunc(ZQuery_N18.RecordCount.ToDouble);

  ListBox_N20.Items.Clear;
  ListBox_N20.Items.Add('���');

  i1:=1;
  while i1<=i2 do
  begin
    ZQuery_N18.Active:=False;
    sql_N18:='SELECT `surname`, `name`  FROM `workers` WHERE worker_id="'+IntToStr(i1)+'"';
    ZQuery_N18.SQL.Clear;
    ZQuery_N18.SQL.Add(sql_N18);
    ZQuery_N18.Active:=True;
    if Trunc(ZQuery_N18.RecordCount.ToDouble)=0 then
      begin
        ListBox_N20.Items.Add('������!');
        i2:=i2+1;
      end
    else ListBox_N20.Items.Add(ZQuery_N18.FieldByName('name').AsString+' '+ZQuery_N18.FieldByName('surname').AsString);
    i1:=i1+1;
  end;
  ZQuery_N18.Active:=False;
end;

procedure TForm6.N21Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_task_ctrl.Visible:=True;
  Form6.Height:=513;

  Button5.Enabled:=True;
  Form6.ComboBox_sloj.Enabled:=True;
  Form6.Edit1.ReadOnly:=False;
  Form6.Edit2.ReadOnly:=False;
  Form6.Edit3.ReadOnly:=False;

  Form6.Memo_otchet2.Lines.Clear;
end;

procedure TForm6.N22Click(Sender: TObject);
var
sql_N18 : string;
i1, i2 : integer;
begin
  SetPlatformsNotVisible();
  Panel_N22.Visible:=True;
  Form6.ClientHeight:=435;

  ZQuery_N18.SQL.Clear;
  ZQuery_N18.SQL.Add('SELECT `worker_id` FROM `workers`');
  ZQuery_N18.Active:=True;
  i2:=Trunc(ZQuery_N18.RecordCount.ToDouble);

  ListBox_N22.Items.Clear;
  ListBox_N22.Items.Add('���');
  i1:=1;
  while i1<=i2 do
  begin
    ZQuery_N18.Active:=False;
    sql_N18:='SELECT `surname`, `name`  FROM `workers` WHERE worker_id="'+IntToStr(i1)+'"';
    ZQuery_N18.SQL.Clear;
    ZQuery_N18.SQL.Add(sql_N18);
    ZQuery_N18.Active:=True;
    if Trunc(ZQuery_N18.RecordCount.ToDouble)=0 then
      begin
        ListBox_N22.Items.Add('������!');
        i2:=i2+1;
      end
    else ListBox_N22.Items.Add(ZQuery_N18.FieldByName('name').AsString+' '+ZQuery_N18.FieldByName('surname').AsString);
    i1:=i1+1;
  end;
  ZQuery_N18.Active:=False;
end;

procedure TForm6.N23Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N23.Visible:=True;
  Form6.ClientHeight:=335;
end;

procedure TForm6.N24Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N24.Visible:=True;
  Form6.ClientHeight:=150;
end;

procedure TForm6.N25Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N25.Visible:=True;
  Form6.ClientHeight:=344;
end;

procedure TForm6.N26Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N7.Visible:=True;
  Form6.ClientHeight:=344;

  PresentList(worker_id);
  Form6.Label53.Visible:=True;
  Form6.Label54.Visible:=True;
  Form6.Label55.Visible:=True;
  Form6.Label57.Visible:=True;
  Form6.Memo3.Visible:=True;
end;

procedure TForm6.N27Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_task_ctrl.Visible:=True;
  Form6.Height:=513;

  Form6.Button7.Enabled:=True;
  Form6.Button8.Enabled:=True;
  Form6.DockTabSet_task_ctrl.Visible:=True;
  Form6.Label42.Visible:=True;
  Form6.Memo_otchet2.Visible:=True;
  Form6.Label40.Visible:=True;
  Form6.Edit1.ReadOnly:=False;
  Form6.Edit3.ReadOnly:=False;
  ComboBox_sloj.Enabled:=True;

  Tasks_ctrl('on verification');

end;

procedure TForm6.N28Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_task_ctrl.Visible:=True;
  Form6.Height:=513;

  Form6.Button6.Enabled:=True;
  Form6.Button9.Enabled:=True;
  Form6.DockTabSet_task_ctrl.Visible:=True;
  Form6.Label42.Visible:=True;
  Form6.Edit1.ReadOnly:=False;
  Form6.Edit3.ReadOnly:=False;
  ComboBox_sloj.Enabled:=True;

  Tasks_ctrl('on doing');
end;

procedure TForm6.N29Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N7.Visible:=True;
  Form6.ClientHeight:=217;

  PresentList(0);
  Form6.Label53.Visible:=True;
  Form6.Label54.Visible:=True;
  Form6.Button14.Visible:=True;
end;

procedure TForm6.N30Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N30.Visible:=True;
  Form6.ClientHeight:=146;
end;

procedure TForm6.N31Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N31.Visible:=True;
  Form6.ClientHeight:=257;
  Memo7.Lines.Clear;
  Memo7.Lines.LoadFromFile(MainFolder+'data\cache\about_company.txt');
  if admin7=1 then Form6.Button17.Visible:=True;

end;

procedure TForm6.N32Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N32.Visible:=True;
  Form6.ClientHeight:=666;
  Form6.ClientWidth:=1171;

  LinkList();
end;

procedure TForm6.N33Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N33.Visible:=True;
  Form6.ClientHeight:=256;

  OptionsSet6();
end;

procedure TForm6.N34Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_task_ctrl.Visible:=True;
  Form6.Height:=513;

  Form6.DockTabSet_task_ctrl.Visible:=True;
  Form6.Label42.Visible:=True;
  Form6.Memo_otchet2.Visible:=True;
  Form6.Label40.Visible:=True;

  Tasks_ctrl('done');
end;

procedure TForm6.N35Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_task_ctrl.Visible:=True;
  Form6.Height:=513;

  Form6.DockTabSet_task_ctrl.Visible:=True;
  Form6.Label42.Visible:=True;
  Form6.Memo_otchet2.Visible:=True;
  Form6.Label40.Visible:=True;

  Tasks_ctrl('stoped');
end;

procedure TForm6.N36Click(Sender: TObject);
begin
  SetPlatformsNotVisible();
  Panel_N36.Visible:=True;
  Form6.ClientHeight:=349;
end;

procedure TForm6.N8Click(Sender: TObject);//�������� �� ������ "������ - �������".
begin
  SetPlatformsNotVisible();
  Panel_N8.Visible:=True;
  Form6.ClientHeight:=135;

  ZQuery_login.Refresh;
  rating:=Form6.ZQuery_login.FieldByName('rating').AsInteger;
  rating_label.Caption:=IntToStr(rating);
end;

procedure TForm6.N9Click(Sender: TObject); //�������� �� ������ "������ �������".
begin
  SetPlatformsNotVisible();
  Panel_N9.Visible:=True;
  Form6.ClientHeight:=135;

  ZQuery_login.Refresh;
  rating_full:=Form6.ZQuery_login.FieldByName('rating_full').AsInteger;
  frating_label.Caption:=IntToStr(rating_full);
end;


procedure TForm6.Timer_ChatTimer(Sender: TObject);   //���������� ����
var
sql_chat, sql_dop : string;
addressee_id, i1, i2, ic2 :  integer;
msg_time, msg_text, addressee_name, addressee_surname, sender_name, sender_surname : string;
begin
if Panel_N20.Visible=True then
begin
  if Trunc(ListBox_N20.ItemIndex.ToDouble)>=0 then
  begin
    addressee_id:=Trunc(ListBox_N20.ItemIndex.ToDouble);
    if Trunc(ListBox_N20.ItemIndex.ToDouble)>=1 then
      begin
        addressee_id:=Trunc(ListBox_N20.ItemIndex.ToDouble);
        sql_chat:='SELECT `name`, `surname` FROM `workers` WHERE worker_id="'+IntToStr(addressee_id)+'"';
        ZQuery_Chat.SQL.Clear;
        ZQuery_Chat.SQL.Add(sql_chat);
        ZQuery_Chat.Active:=True;
        addressee_name:=ZQuery_Chat.FieldByName('name').AsString;
        addressee_surname:=ZQuery_Chat.FieldByName('surname').AsString;
        ZQuery_Chat.Active:=False;
        sql_chat:='SELECT `addressee_id`, `msg_id`, `msg_text`, `msg_time`, `sender_id` FROM `chat` WHERE ((addressee_id="'+IntToStr(worker_id)+'" And sender_id="'+IntToStr(addressee_id)+'") Or (addressee_id="'+IntToStr(addressee_id)+'" And sender_id="'+IntToStr(worker_id)+'")) And msg_id>'+IntTOStr(last_msg_id)+' ORDER BY  `msg_id` DESC LIMIT 50';

      end
    else
      begin
        addressee_id:=Trunc(ListBox_N20.ItemIndex.ToDouble);
        addressee_name:='���';
        addressee_surname:='������������';
        sql_chat:='SELECT `addressee_id`, `msg_id`, `msg_text`, `msg_time`, `sender_id` FROM `chat` WHERE addressee_id="'+IntToStr(addressee_id)+'" And msg_id>'+IntTOStr(last_msg_id)+' ORDER BY  `msg_id` DESC LIMIT 50';
      end;
    ZQuery_Chat.SQL.Clear;
    ZQuery_Chat.SQL.Add(sql_chat);
    ZQuery_Chat.Active:=True;
    ZQuery_Chat.Last;
    i2:=Trunc(ZQuery_Chat.RecordCount.ToDouble);
    for  i1:=1 to i2 do
      begin
        if ic2>7 then ic2:=0;
        case ic2 of
          0:color:=clMaroon;
          1:color:=clGreen;
          2:color:=clPurple;
          3:color:=clBlue;
          4:color:=clRed;
          5:color:=clOlive;
          6:color:=clLime;
          7:color:=clNavy;
        end;
        ic2:=ic2+1;
        richedit1.SelAttributes.Color:=color;
        msg_time:=ZQuery_Chat.FieldByName('msg_time').AsString;
        msg_text:=ZQuery_Chat.FieldByName('msg_text').AsString;

        if addressee_id=0 then
          begin
            sql_dop:='SELECT `name`, `surname` FROM `workers` WHERE worker_id="'+ZQuery_Chat.FieldByName('sender_id').AsString+'"';
            ZQuery_dop.SQL.Clear;
            ZQuery_dop.SQL.Add(sql_dop);
            ZQuery_dop.Active:=True;
            richedit1.Lines.Add('['+msg_time+']['+ZQuery_dop.FieldByName('name').AsString+' '+ZQuery_dop.FieldByName('surname').AsString+' �������� ����]: '+msg_text);
            ZQuery_dop.Active:=False;
          end
        else
          begin
            if worker_id=ZQuery_Chat.FieldByName('sender_id').AsInteger then richedit1.Lines.Add('['+msg_time+']['+name_user+' '+surname+' �������� '+addressee_name+' '+addressee_surname+']: '+msg_text)
            else richedit1.Lines.Add('['+msg_time+']['+addressee_name+' '+addressee_surname+' �������� '+name_user+' '+surname+']: '+msg_text);
          end;

        ZQuery_Chat.Prior;
        last_msg_id:=ZQuery_Chat.FieldByName('msg_id').AsInteger;
        if CheckBox1.Checked then mediaplayer1.Play;
      end;

    ZQuery_Chat.Active:=False;
  end;
end;

end;

procedure TForm6.Timer_last_visitTimer(Sender: TObject); //��������� �����.
begin
  try
  if Form6.Visible then
    begin
      ZQuery_last_visit.SQL.Clear;
      ZQuery_last_visit.SQL.Add('UPDATE `workers` SET `last_visit` = NOW() WHERE `worker_id` = '+IntToStr(worker_id)+';');
      ZQuery_last_visit.ExecSQL;
      ZQuery_login.Refresh;
      if Panel_N5.Visible=False then Massages(0);
    end;
  except

  end;

end;

procedure TForm6.TrayIcon1Click(Sender: TObject);
begin
if Form1.Visible=False then
  begin
  Application.Restore;
  Form1.Visible:=False;
  if TrayIcon1.BalloonTitle='����� ���������' then N16.Click;
  SetWindowPos(Form6.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE or SWP_NOMOVE);
  end;
end;

procedure TForm6.TrayIcon1DblClick(Sender: TObject);
begin
  Application.Restore;
  Form1.Visible:=False;

end;

procedure TForm6.Button10Click(Sender: TObject);
begin
  MsgSend();
end;

procedure TForm6.Button11Click(Sender: TObject);
begin
  InsertUser();
end;

procedure TForm6.Button12Click(Sender: TObject);
begin
  SetRating(true);
end;

procedure TForm6.Button13Click(Sender: TObject);
begin
  SetRating(false);
end;

procedure TForm6.Button14Click(Sender: TObject);
var
sql_p : String;
price, present_id : integer;
i1 : integer;

begin
  if ListBox1.ItemIndex>=0 then
    begin
      ZQueryNew1.First;
      i1:=ListBox1.ItemIndex;
      ZQueryNew1.MoveBy(i1);
      price:=ZQueryNew1.FieldByName('price').AsInteger;
      present_id:=ZQueryNew1.FieldByName('present_id').AsInteger;
      ZQuery_login.Refresh;
      rating:=Form6.ZQuery_login.FieldByName('rating').AsInteger;
      if rating>=price then
        begin
          rating:=rating-price;
          sql_p:='UPDATE  `baseforcommandosprogramm`.`workers` SET  `rating` =  "'+IntToStr(rating)+'" WHERE  `workers`.`worker_id` ='+IntToStr(worker_id)+';';
          ZQueryNew2.SQL.Clear;
          ZQueryNew2.SQL.Add(sql_p);
          ZQueryNew2.ExecSQL;
          sql_p:='UPDATE  `baseforcommandosprogramm`.`presents` SET  `worker_id` =  "'+IntToStr(worker_id)+'" WHERE  `presents`.`present_id` ='+IntToStr(present_id)+';';
          ZQueryNew2.SQL.Clear;
          ZQueryNew2.SQL.Add(sql_p);
          ZQueryNew2.ExecSQL;
          ShowMessage('���� �������!');
          N26.Click;
          ListBox1.ItemIndex:=ListBox1.Items.Count-1;
        end
      else ShowMessage('������������ ��������!');
    end;
end;

procedure TForm6.Button15Click(Sender: TObject);
begin
  AddPresent();
end;

procedure TForm6.Button16Click(Sender: TObject);
begin
  AddLink();
end;

procedure TForm6.Button17Click(Sender: TObject);
(*var
ch_about_companytxt  : PWideChar;
s_about_companytxt : String;  *)
begin
 (* ExecuteFile('data\cache\about_company.txt','','',SW_SHOW);
  s_about_companytxt:=MainFolder+'data\cache\about_company.txt';
  StringToWideChar(s_about_companytxt, ch_about_companytxt, length(s_about_companytxt)+1);
  *)
  ShellExecute(Handle, 'open', PChar (MainFolder+'data\cache\about_company.txt'), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TForm6.Button18Click(Sender: TObject);
begin
  Application.Minimize;
  Form6.TrayIcon1.BalloonHint:='�������� ���� ����������.';
  Form6.TrayIcon1.BalloonTitle:='��������� �������� � ����.';
  Form6.TrayIcon1.ShowBalloonHint;

end;

procedure TForm6.Button19Click(Sender: TObject);
var
sql_set_options : String;
i1, i2 : String;
begin
  if CheckBox4.Checked then
    begin
      i1:='1';
    end
  else
    begin
      i1:='0';
    end;
  i2:='n8';
  sql_set_options:='UPDATE  `baseforcommandosprogramm`.`launch` SET  `'+i2+'` =  "'+i1+'" WHERE `launch`.`id` =1;';
  ZQueryNew_options.SQL.Clear;
  ZQueryNew_options.SQL.Add(sql_set_options);
  ZQueryNew_options.ExecSQL;

  if CheckBox5.Checked then
    begin
      i1:='1';
    end
  else
    begin
      i1:='0';
    end;
  i2:='n2';
  sql_set_options:='UPDATE  `baseforcommandosprogramm`.`launch` SET  `'+i2+'` =  "'+i1+'" WHERE `launch`.`id` =1;';
  ZQueryNew_options.SQL.Clear;
  ZQueryNew_options.SQL.Add(sql_set_options);
  ZQueryNew_options.ExecSQL;

  if CheckBox6.Checked then
    begin
      i1:='1';
    end
  else
    begin
      i1:='0';
    end;
  i2:='n3';
  sql_set_options:='UPDATE  `baseforcommandosprogramm`.`launch` SET  `'+i2+'` =  "'+i1+'" WHERE `launch`.`id` =1;';
  ZQueryNew_options.SQL.Clear;
  ZQueryNew_options.SQL.Add(sql_set_options);
  ZQueryNew_options.ExecSQL;

  if CheckBox7.Checked then
    begin
      i1:='1';
    end
  else
    begin
      i1:='0';
    end;
  i2:='n4';
  sql_set_options:='UPDATE  `baseforcommandosprogramm`.`launch` SET  `'+i2+'` =  "'+i1+'" WHERE `launch`.`id` =1;';
  ZQueryNew_options.SQL.Clear;
  ZQueryNew_options.SQL.Add(sql_set_options);
  ZQueryNew_options.ExecSQL;

  if CheckBox8.Checked then
    begin
      i1:='1';
    end
  else
    begin
      i1:='0';
    end;
  i2:='n32';
  sql_set_options:='UPDATE  `baseforcommandosprogramm`.`launch` SET  `'+i2+'` =  "'+i1+'" WHERE `launch`.`id` =1;';
  ZQueryNew_options.SQL.Clear;
  ZQueryNew_options.SQL.Add(sql_set_options);
  ZQueryNew_options.ExecSQL;

  if CheckBox9.Checked then
    begin
      i1:='1';
    end
  else
    begin
      i1:='0';
    end;
  i2:='n31';
  sql_set_options:='UPDATE  `baseforcommandosprogramm`.`launch` SET  `'+i2+'` =  "'+i1+'" WHERE `launch`.`id` =1;';
  ZQueryNew_options.SQL.Clear;
  ZQueryNew_options.SQL.Add(sql_set_options);
  ZQueryNew_options.ExecSQL;

  if CheckBox10.Checked then
    begin
      i1:='1';
    end
  else
    begin
      i1:='0';
    end;
  i2:='n7';
  sql_set_options:='UPDATE  `baseforcommandosprogramm`.`launch` SET  `'+i2+'` =  "'+i1+'" WHERE `launch`.`id` =1;';
  ZQueryNew_options.SQL.Clear;
  ZQueryNew_options.SQL.Add(sql_set_options);
  ZQueryNew_options.ExecSQL;

  if CheckBox11.Checked then
    begin
      i1:='1';
    end
  else
    begin
      i1:='0';
    end;
  i2:='autorun';
  sql_set_options:='UPDATE  `baseforcommandosprogramm`.`launch` SET  `'+i2+'` =  "'+i1+'" WHERE `launch`.`id` =1;';
  ZQueryNew_options.SQL.Clear;
  ZQueryNew_options.SQL.Add(sql_set_options);
  ZQueryNew_options.ExecSQL;

   if CheckBox12.Checked then
    begin
      i1:='1';
    end
  else
    begin
      i1:='0';
    end;
  i2:='sound';
  sql_set_options:='UPDATE  `baseforcommandosprogramm`.`launch` SET  `'+i2+'` =  "'+i1+'" WHERE `launch`.`id` =1;';
  ZQueryNew_options.SQL.Clear;
  ZQueryNew_options.SQL.Add(sql_set_options);
  ZQueryNew_options.ExecSQL;

  ShowMessage('��������� ��������!');
  N17.Click;

end;

procedure TForm6.Button1Click(Sender: TObject); //������� �����.
begin
  Application.Terminate;
  Form6.Close;
  Form1.Close;
end;

procedure TForm6.Button2Click(Sender: TObject);   //���������.
begin
  Form6.Visible:=False;
  Form1.Visible:=True;
end;

procedure TForm6.Button3Click(Sender: TObject); //�������� ��������� � ���.
begin
  ChatSend();

end;

procedure TForm6.Button4Click(Sender: TObject);
var
i1 : integer;
begin
  ZQuery_otchet.SQL.Clear;
  ZQuery_otchet.SQL.Add('UPDATE `tasks` SET `otchet` = "');
  for i1 := 0 to Memo_otchet.Lines.Count-1 do ZQuery_otchet.SQL.Add(Memo_otchet.Lines[i1]);
  ZQuery_otchet.SQL.Add('" WHERE `task_id` = '+IntToStr(task_id)+';');
  ZQuery_otchet.ExecSQL;
  ZQuery_otchet.SQL.Clear;
  ZQuery_otchet.SQL.Add('UPDATE `tasks` SET `sost` = "on verification" WHERE `task_id` = '+IntToStr(task_id)+';');
  ZQuery_otchet.ExecSQL;
  ShowMessage('������� ����������� �� ��������. �� ������ ������������� ����� ������� �� ������� "�� ��������"');
  Form6.N17.Click;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
  Tasks_send(5);
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
  Tasks_send(6);
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
  Tasks_send(7);
end;

procedure TForm6.Button8Click(Sender: TObject);
begin
  Tasks_send(8);
end;

procedure TForm6.Button9Click(Sender: TObject);
begin
  Tasks_send(9);
end;

procedure TForm6.Button_set_readedClick(Sender: TObject);
begin
  ZQuery_otchet.SQL.Clear;
  ZQuery_otchet.SQL.Add('UPDATE `massages` SET `readed` = 1 WHERE `massage_id` = '+IntToStr(massage_id)+';');
  ShowMessage('��������� �������� ��� �����������!');
  Form6.N17.Click;
  ZQuery_otchet.ExecSQL;
  Form6.TrayIcon1.BalloonTitle:='';
end;

procedure TForm6.CheckBox3Click(Sender: TObject);
var
reg:TRegistry;
begin
  if CheckBox3.Checked then
      begin
        reg := TRegistry.Create();
        reg.RootKey := HKEY_CURRENT_USER;

        if reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', True) then
          begin
            reg.WriteString( Application.Title, Application.ExeName);
            reg.CloseKey();
          end
      end
  else
    begin
      reg := TRegistry.Create();
      reg.RootKey := HKEY_CURRENT_USER;

      if reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', False) then
        begin
          reg.DeleteValue( Application.Title );
          reg.CloseKey();
        end;
    end;

end;

procedure TForm6.DockTabSet_massagesClick(Sender: TObject);
begin
  if DockTabSet_massages.TabIndex>=0 then
    begin
      ZQuery_massages.First;
      ZQuery_massages.MoveBy(DockTabSet_massages.TabIndex);
      massage_id := ZQuery_massages.FieldByName('massage_id').AsInteger;
      msg_ltask_id.Caption:=IntToStr(massage_id);
      msg_ltitle.Caption:=ZQuery_massages.FieldByName('title').AsString;
      msg_date.Caption:=ZQuery_massages.FieldByName('date').AsString;
      Memo_massages.Clear;
      Memo_massages.Lines.Add('+++++���������+++++');
      Memo_massages.Lines.Add(ZQuery_massages.FieldByName('massage').AsWideString);

    end;

end;

procedure TForm6.DockTabSet_taskClick(Sender: TObject);    //  ����� ������ �������
begin
  if DockTabSet_task.TabIndex>=0 then
    begin
      ZQuery_task.First;
      ZQuery_task.MoveBy(DockTabSet_task.TabIndex);
      task_id := ZQuery_task.FieldByName('task_id').AsInteger;
      ltask_id.Caption:=IntToStr(task_id);
      ltitle.Caption:=ZQuery_task.FieldByName('title').AsString;
      lreward.Caption:=ZQuery_task.FieldByName('reward').AsString;
      lcomplexity.Caption:=ZQuery_task.FieldByName('complexity').AsString;
      Memo_task.Clear;
      Memo_task.Lines.Add('+++++���� �������+++++');
      Memo_task.Lines.Add(ZQuery_task.FieldByName('description').AsWideString);
      Memo_otchet.Lines.Clear;
      Memo_otchet.Lines.Add(ZQuery_task.FieldByName('otchet').AsWideString);
    end;


end;


procedure TForm6.DockTabSet_task_ctrlClick(Sender: TObject);
begin
  if DockTabSet_task_ctrl.TabIndex>=0 then
    begin

      ZQuery_task.First;
      ZQuery_task.MoveBy(DockTabSet_task_ctrl.TabIndex);
      t_a_task_id:=ZQuery_task.FieldByName('task_id').AsInteger;
      t_a_title:=ZQuery_task.FieldByName('title').AsString;
      t_a_reward:=ZQuery_task.FieldByName('reward').AsString;
      t_a_complexity:=ZQuery_task.FieldByName('complexity').AsInteger;
      t_a_sost:=ZQuery_task.FieldByName('sost').AsString;
      t_a_worker_id:=ZQuery_task.FieldByName('worker_id').AsInteger;
      t_a_description:=ZQuery_task.FieldByName('description').AsWideString;
      t_a_otchet:=ZQuery_task.FieldByName('otchet').AsWideString;

      Edit1.Text:=t_a_title;
      Edit2.Text:=t_a_reward;
      Edit3.Text:=IntToStr(t_a_worker_id);
      ComboBox_sloj.ItemIndex:=t_a_complexity-1;
      Label35.Caption:=IntToStr(t_a_task_id);

      Memo_task_send.Clear;
      Memo_task_send.Lines.Add(t_a_description);
      Memo_otchet2.Lines.Clear;
      Memo_otchet2.Lines.Add(t_a_otchet);
    end;
end;

procedure TForm6.ListBox1Click(Sender: TObject);
var
title : String;
price, present_id, pr_adresse_id  : integer;
i1 : integer;
pdescription : WideString;
begin
  ZQueryNew1.First;
  i1:=ListBox1.ItemIndex;
  ZQueryNew1.MoveBy(i1);
  title:=ZQueryNew1.FieldByName('ptitle').AsString;
  price:=ZQueryNew1.FieldByName('price').AsInteger;
  present_id:=ZQueryNew1.FieldByName('present_id').AsInteger;
  pdescription:=ZQueryNew1.FieldByName('pdescription').AsWideString;
  pr_adresse_id:=ZQueryNew1.FieldByName('worker_id').AsInteger;

  Label55.Caption:=IntToStr(pr_adresse_id);
  Label54.Caption:=IntToStr(price);
  Memo3.Clear;
  Memo3.Lines.Add(pdescription);

end;

procedure TForm6.ListBox_N18Click(Sender: TObject); //����� ���������� �� ������.
var
sql_N18 : string;
begin
  if Trunc(ListBox_N18.ItemIndex.ToDouble)>=0 then
  begin
    N18_surname.Caption:=ListBox_N18.Items[Trunc(ListBox_N18.ItemIndex.ToDouble)];

    Form6.ZQuery_N18.Active:=False;
    sql_N18:='SELECT * FROM `workers` WHERE worker_id="'+IntToStr(Trunc(ListBox_N18.ItemIndex.ToDouble+1))+'"';
    ZQuery_N18.SQL.Clear;
    ZQuery_N18.SQL.Add(sql_N18);
    ZQuery_N18.Active:=True;
    N18_name.Caption:=ZQuery_N18.FieldByName('name').AsString;
    N18_frating.Caption:=ZQuery_N18.FieldByName('rating_full').AsString;
    N18_rating.Caption:=ZQuery_N18.FieldByName('rating').AsString;
    N18_worker_id.Caption:=ZQuery_N18.FieldByName('worker_id').AsString;
    N18_dolj1.Caption:=ZQuery_N18.FieldByName('dolgnost').AsString;
    N18_vkpage1.Caption:=ZQuery_N18.FieldByName('vk_page').AsString;
    N18_skype1.Caption:=ZQuery_N18.FieldByName('skype').AsString;
    N18_surname.Caption:=ZQuery_N18.FieldByName('surname').AsString;
    N18_llast_visit.Caption:=ZQuery_N18.FieldByName('last_visit').AsString;
    ZQuery_N18.Active:=False;
  end;

end;

procedure TForm6.ListBox_N20Click(Sender: TObject);   //����� �����������. �������� ��������� 20 ���������.

begin

RichEdit1.Lines.Clear;
last_msg_id:=0


end;

procedure TForm6.ListBox_N32Click(Sender: TObject);
var
link_title, link_url, sql_link_info : String;
i1 : integer;
link_description : WideString;
begin
  if ListBox_N32.ItemIndex>=0 then
  begin
    sql_link_info:='SELECT `url`, `description`, `title` FROM `links` WHERE 1';
    ZQueryNew1.SQL.Clear;
    ZQueryNew1.SQL.Add(sql_link_info);
    ZQueryNew1.Active:=True;
    Form6.ZQueryNew1.First;
    i1:=ListBox_N32.ItemIndex;
    ZQueryNew1.MoveBy(i1);
    link_title:=ZQueryNew1.FieldByName('title').AsString;
    link_url:=ZQueryNew1.FieldByName('url').AsString;
    link_description:=ZQueryNew1.FieldByName('description').AsWideString;

    Label66.Caption:=link_title;
    Edit16.Text:=link_url;
    Memo5.Clear;
    Memo5.Lines.Add('   ++��������++');
    Memo5.Lines.Add(link_description);
    WebBrowser1.Navigate(link_url);

    ZQueryNew1.Active:=False;
  end;

end;

procedure TForm6.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if (GetKeyState(ord(VK_SHIFT)) < 0) and (GetKeyState(VK_RETURN) < 0) then ChatSend();
end;

end.
