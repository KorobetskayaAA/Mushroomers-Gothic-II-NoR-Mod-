
instance DIA_Lucia_EXIT(DIA_Proto_End)
{
	npc = VLK_4361_Lucia;
};

//////////////////////////////////����////////////////////////////////////////
instance DIA_Lucia_Sarah_Hello(C_INFO)
{
	npc = VLK_4361_Lucia;			nr = 1;
	condition = DIA_Lucia_Sarah_MR_Hello_cond;
	information = DIA_Lucia_Sarah_MR_Hello_info;
	description = "��, �� �����?";
};
func int DIA_Lucia_Sarah_MR_Hello_cond()
{
	if (C_HeroIs_Sarah()
		 && (MIS_Sarah_BadHabit == LOG_Running) && Borka_Sarah_AgreedToTell)	{
		return TRUE;
	};
};
func void DIA_Lucia_Sarah_MR_Hello_info()
{
		AI_Output(other,self,"DIA_Lucia_Sarah_MR_Hello_16_00");	//��, �� �����?
	AI_Output(self,other,"DIA_Lucia_Sarah_MR_Hello_16_01");	//�� �.
		AI_Output(other,self,"DIA_Lucia_Sarah_MR_Hello_16_02");	//���� ������� �����������. � ����, ����� ���� ������� ������.
	AI_Output(self,other,"DIA_Lucia_Sarah_MR_Hello_16_03");	//� ��� ����� ����?
		AI_Output(other,self,"DIA_Lucia_Sarah_MR_Hello_16_04");	//������� � ���, ��� ��� �� ������ �������.
		AI_Output(other,self,"DIA_Lucia_Sarah_MR_Hello_16_05");	//���� ��������� - �������� ������ �� ���, ���� ���������� - � ������� ���� ����� ����� ���������.
		AI_Output(other,self,"DIA_Lucia_Sarah_MR_Hello_16_06");	//� ����� ������, � ������� �� ����������.
	AI_Output(self,other,"DIA_Lucia_Sarah_MR_Hello_16_07");	//��, ������������ ��� ����� � ��� �� ��� ��� � ��������? ������ ���������.
	AI_Output(self,other,"DIA_Lucia_Sarah_MR_Hello_16_08");	//�� ������ � ���� ����. � ���� ���-��� ������.
	AI_Output(self,other,"DIA_Lucia_Sarah_MR_Hello_16_09");	//������� � ������� ������ ����. ���� ������ ������� ���, ��� ���� ���� ������� ���-�� � �����, ����������.
	AI_Output(self,other,"DIA_Lucia_Sarah_MR_Hello_16_10");	//����� ��� � ������� ���. ��� ������� �������� ����, � �� �������� ���������� ����� �.
	B_LogEntry(TOPIC_Sarah_BadHabit,TOPIC_Sarah_BadHabit_AskedLucia);
};
//------------------------------------------------------------
instance DIA_Lucia_Sarah_GiveKey(C_INFO)
{
	npc = VLK_4361_Lucia;			nr = 2;
	condition = DIA_Lucia_Sarah_GiveKey_cond;
	information = DIA_Lucia_Sarah_GiveKey_info;
	description = "���� ����?";
};
func int DIA_Lucia_Sarah_GiveKey_cond()
{
	if (C_HeroIs_Sarah()
		 && (MIS_Sarah_BadHabit == LOG_Running) && Npc_KnowsInfo(other,DIA_Lucia_Sarah_Hello)
		 && Npc_HasItems(other, ItKe_Bromor))	{
		return TRUE;
	};
};
func void DIA_Lucia_Sarah_GiveKey_info()
{
		AI_Output(other,self,"DIA_Lucia_Sarah_GiveKey_16_00");	//���� ����?
	B_GiveInvItems(other,self,ItKe_Bromor,1);
	AI_Output(self,other,"DIA_Lucia_Sarah_GiveKey_16_01");	//��, ��� ��. ��� �, ������ ���� ������ - � ������� �� ��������� � �����.
	AI_Output(self,other,"DIA_Lucia_Sarah_GiveKey_16_02");	//�� ���� ��� ���������, ��� �� ��� ��������.
	B_LogEntry(TOPIC_Sarah_BadHabit,TOPIC_Sarah_BadHabit_GiveLuciaKey);
	B_GivePlayerXP(XP_Sarah_Nadja_LuciaTalked);
	MIS_Sarah_BadHabit_LuciaTalkDay = Wld_GetDay() + 1;
	B_StartOtherRoutine(VLK_435_Nadja,"NOSMOKING");
};

//////////////////////////////////���������////////////////////////////////////////
instance DIA_Lucia_MR_Perm(C_INFO)
{
	npc = VLK_4361_Lucia;			nr = 10;
	condition = DIA_Lucia_MR_Perm_cond;
	information = DIA_Lucia_MR_Perm_info;
	important = TRUE;
	permanent = TRUE;
};
func int DIA_Lucia_MR_Perm_cond()
{
	if (DIA_WhenAsked_cond()
		 && !(C_HeroIs_Sarah() && (DIA_Lucia_Sarah_GiveKey_cond() == TRUE || DIA_Lucia_Sarah_MR_Hello_cond() == TRUE)) || Npc_KnowsInfo(other,DIA_Lucia_Sarah_GiveKey))
	{
		return TRUE;
	};
};
func void DIA_Lucia_MR_Perm_info()
{
	if (other.aivar[AIV_Gender] == FEMALE)	{
		AI_Output(self,other,"DIA_Lucia_Female_Hello_16_01");	//� �� ��� ��� ������?
	}
	else if(C_HeroIs_Till())	{
		AI_Output(self,other,"DIA_Lucia_Till_Hello_16_01");	//�������, �� ����������?
	}
	else	{
		AI_Output(self,other,"DIA_Lucia_Male_Hello_16_01");	//� ������, �����.
	};
	AI_StopProcessInfos(self);
};

