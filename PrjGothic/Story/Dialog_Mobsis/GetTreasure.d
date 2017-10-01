
var int PC_Erol_GetRing_Run;
instance DIA_PC_Erol_GetRing(C_Info)
{
	npc = PC_Erol;
	condition = DIA_PC_Erol_GetRing_cond;
	information = DIA_PC_Erol_GetRing_info;
	description = "����� ������ �� �������.";
};
func int DIA_PC_Erol_GetRing_cond()	{
	if (PC_Erol_GetRing_Run == TRUE)	{
		return TRUE;
	};
};
func void DIA_PC_Erol_GetRing_info()
{
	CreateInvItem(self,ItRi_HP_Regen);
	self.aivar[AIV_INVINCIBLE] = FALSE;
	PC_Erol_GetRing_Run = -1;
	AI_StopProcessInfos(self);
};
//----------------------------
instance DIA_PC_Erol_DontGetRing(C_Info)
{
	npc = PC_Erol;
	condition = DIA_PC_Erol_DontGetRing_cond;
	information = DIA_PC_Erol_DontGetRing_info;
	description = "�������� ������ � ������.";
};
func int DIA_PC_Erol_DontGetRing_cond()	{
	if (PC_Erol_GetRing_Run == TRUE)	{
		return TRUE;
	};
};
func void DIA_PC_Erol_DontGetRing_info()
{
	B_GivePlayerXP(XP_Erol_RingInGrave);
	//������ ������������� ������ ����!
	B_Adanos_Bless4Good();
	self.aivar[AIV_INVINCIBLE] = FALSE;
	PC_Erol_GetRing_Run = -1;
	AI_StopProcessInfos(self);
};


// ���� ������ � ������� ====================================================

func int CanGetTreasure()
{
	if (!Npc_IsPlayer(self))	{
		return FALSE;
	};
	if (!C_HeroIs_Erol())	{
		return FALSE;
	};
	if (!Npc_HasItems(self,ItMw_2H_Axe_L_01))	{
		PrintScreen("��� ����� �����.",-1,-1,FONT_ScreenSmall,2);
		return FALSE;
	};
	Npc_RemoveInvItem(self,ItMw_2H_Axe_L_01);
	return TRUE;
};
func void GetTreasure_Erol_01_S1()
{
	if (Npc_IsPlayer(self) && C_HeroIs_Erol())
	{
		PrintScreen("������ ���.",-1,-1,FONT_Screen,2);
	};
};

func void GetTreasure_Erol_02_S1()
{
	if (Npc_IsPlayer(self) && C_HeroIs_Erol())
	{
		if (PC_Erol_GetRing_Run == FALSE)	{
			PrintScreen("�� ������ ������� ������������ ������.",-1,-1,FONT_Screen,4);
			//����� ��� ��������
			PC_Erol_GetRing_Run = TRUE;
			self.aivar[AIV_INVINCIBLE] = TRUE;
			AI_ProcessInfos(self);
		}
		else	{
			PrintScreen("����� ������ ������ ���.",-1,-1,FONT_Screen,4);
		};
	};
};

func void GetTreasure_Erol_03_S1()
{
	if (Npc_IsPlayer(self) && C_HeroIs_Erol())
	{
		if (!Erol_Graves_GotPlates)	{
			PrintScreen("����� ���-��� ����.",-1,-1,FONT_Screen,2);
			CreateInvItems(self,ItWr_OldStonePlate_Erol,2);
			CreateInvItems(self,ItWr_Stoneplate_Silver,1);
			Erol_Graves_GotPlates = TRUE;
		}
		else	{
			PrintScreen("����� ������ ������ ���.",-1,-1,FONT_Screen,4);
		};
	};
};
