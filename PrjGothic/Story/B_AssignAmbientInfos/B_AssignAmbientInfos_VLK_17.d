
instance DIA_VLK_17_EXIT(C_Info)
{
	nr = 999;
	condition = DIA_VLK_17_EXIT_Condition;
	information = DIA_VLK_17_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_VLK_17_EXIT_Condition()
{
	return TRUE;
};

func void DIA_VLK_17_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

instance DIA_VLK_17_News(C_Info)
{
	nr = 101;
	condition = DIA_VLK_17_News_Condition;
	information = DIA_VLK_17_News_Info;
	permanent = TRUE;
	description = "���� �����-������ �������?";
};

func int DIA_VLK_17_News_Condition()
{
	return TRUE;
};

func void DIA_VLK_17_News_Info()
{
	if (hero.voice == 3)	{
		AI_Output(other,self,"DIA_VLK_News_03_00");	//���� �����-������ �������?
	} else if (hero.voice == 7)	{
		AI_Output(other,self,"DIA_VLK_News_07_00");	//���� �����-������ �������?
	} else if (hero.voice == 10)	{
		AI_Output(other,self,"DIA_VLK_News_10_00");	//���� �����-������ �������?
	} else if (hero.voice == 14)	{
		AI_Output(other,self,"DIA_VLK_News_14_00");	//���� �����-������ �������?
	} else	{
		AI_Output(other,self,"DIA_VLK_News_16_00");	//���� �����-������ �������?
	};
	var int rnd;	rnd = Hlp_Random(4);
	if (rnd == 0)	{
		AI_Output(self,other,"DIA_VLK_News_17_01");	//�������, �� �������� ���� ��� ����. ������, ��� ��� ��� �� ��������.
	} else if ((rnd == 1) && (Wld_GetDay() <= Competition_LastDay))	{
		AI_Output(self,other,"DIA_VLK_News_17_02");	//����������� ������� ������� �� ����� ������. ���������, ����� �� �������� ��������...
	} else if (rnd == 2)	{
		AI_Output(self,other,"DIA_VLK_News_17_03");	//���� ������� ��������.
	} else	{
		AI_Output(self,other,"DIA_VLK_News_17_04");	//���������� ������� ����� �� �������. � ��� ���������� � ������ ������������� ���������.
	};
};

instance DIA_VLK_17_Konkurs(C_Info)
{
	nr = 102;
	condition = DIA_VLK_17_Konkurs_Condition;
	information = DIA_VLK_17_Konkurs_Info;
	permanent = TRUE;
	description = "�� ���������� � �������� �����������?";
};

func int DIA_VLK_17_Konkurs_Condition()
{
	if (Wld_GetDay() <= Competition_LastDay)	{
		return TRUE;
	};
};

func void DIA_VLK_17_Konkurs_Info()
{
	if (hero.voice == 3)	{
		AI_Output(other,self,"DIA_VLK_Konkurs_03_00");	//�� ���������� � �������� �����������?
	} else if (hero.voice == 7)	{
		AI_Output(other,self,"DIA_VLK_Konkurs_07_00");	//�� ���������� � �������� �����������?
	} else if (hero.voice == 10)	{
		AI_Output(other,self,"DIA_VLK_Konkurs_10_00");	//�� ���������� � �������� �����������?
	} else if (hero.voice == 14)	{
		AI_Output(other,self,"DIA_VLK_Konkurs_14_00");	//�� ���������� � �������� �����������?
	} else	{
		AI_Output(other,self,"DIA_VLK_Konkurs_16_00");	//�� ���������� � �������� �����������?
	};
	var int rnd;	rnd = Hlp_Random(4);
	if (rnd == 0)	{
		AI_Output(self,other,"DIA_VLK_Konkurs_17_01");	//���. ����� ��� ���?
	} else if (rnd == 1)	{
		AI_Output(self,other,"DIA_VLK_Konkurs_17_02");	//���. � ���� � ������ ��� �������.
	} else	{
		AI_Output(self,other,"DIA_VLK_Konkurs_17_03");	//� ���, ������, ��� � ��� ����� �������?
	};
};

func void B_AssignAmbientInfos_VLK_17(var C_Npc slf)
{
	dia_vlk_17_exit.npc = Hlp_GetInstanceID(slf);
	dia_vlk_17_news.npc = Hlp_GetInstanceID(slf);
	dia_vlk_17_konkurs.npc = Hlp_GetInstanceID(slf);
};




