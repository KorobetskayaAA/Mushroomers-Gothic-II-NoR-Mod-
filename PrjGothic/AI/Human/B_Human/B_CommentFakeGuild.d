/**************************************************************************

					����������������� ������ �������

  ZS_CommentFakeGuild	()
  �������� self (�) ���������� other (��) �� ������������ �����.

  �������� ������ ������� ����� ������ �� ������ ������ ������� 
(���. C_PlayerHasFakeGuild). ����� ��������������, ��� �� � ���������������
�������.

***************************************************************************/


func void ZS_CommentFakeGuild()
{
	// ���������� ����������� ����� ����������
	Perception_Set_Minimal();
	// ������������
	AI_Standup(self);
	
	// ���� � �� ����
	if(!C_BodyStateContains(self,BS_SIT))
	{
		// ����������� � ��
		B_TurnToNpc(self,other);
	};
	// ���� �� �� �����
	if(!C_BodyStateContains(other,BS_SIT))
	{
		// �� �������������� �� ���
		B_TurnToNpc(other,self);
		// � ���� �� ������� ������
		if(Npc_GetDistToNpc(other,self) < 80)
		{
			// �� ������ ��� �����
			AI_Dodge(other);
		};
	};
	
	// ������ ������ �����������,
	
	// ���� �� ������ ����
	if(Npc_HasEquippedArmor(other) == TRUE)
	{
		if((self.guild == GIL_MIL) || (self.guild == GIL_PAL))		// ��� ��������� � ���������
		{
			B_Say(self,other,"$ADDON_WRONGARMOR_MIL");
		}
		else if((self.guild == GIL_NOV) || (self.guild == GIL_KDF))	// ��� ����������� � ����� ����
		{
			B_Say(self,other,"$ADDON_WRONGARMOR_KDF");
		}
		else if(self.guild == GIL_SLD)	// ��� ��������� � ��������� �� ��������
		{
			B_Say(self,other,"$ADDON_WRONGARMOR_SLD");
		}
		else // ��� ���� ��������� //PB: GIL_NONE
		{
			B_Say(self,other,"$ADDON_WRONGARMOR"); 
		};
	}
	// ���� �� �� ����, � � ������
	else if(self.guild == GIL_BDT)
	{
		B_Say(self,other,"$ADDON_NOARMOR_BDT"); // � ���� ��� ��������
	};
};

