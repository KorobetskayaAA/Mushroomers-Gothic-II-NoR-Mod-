
instance DIA_Mika_EXIT(DIA_Proto_End)
{
	npc = Mil_337_Mika;
};

//==============================================
instance DIA_Mika_Head(C_INFO)
{
	nr = 1;
	npc = Mil_337_Mika;
	condition = DIA_NoCond_cond;
	information = DIA_Mika_Head_info;
	permanent = TRUE;
	description = "��� � ��� ��� �������?";
};
func void DIA_Mika_Head_info()
{
	if (hero.voice == 3)	{			//���/������
		AI_Output(other,self,"DIA_Mika_Head_03_00");	//��� � ��� ��� �������?
	} else if (hero.voice == 7)	{		//������
		AI_Output(other,self,"DIA_Mika_Head_07_00");	//��� � ��� ��� �������?
	} else if (hero.voice == 10)	{	//����
		AI_Output(other,self,"DIA_Mika_Head_10_00");	//��� � ��� ��� �������?
	} else if (hero.voice == 14)	{	//����
		AI_Output(other,self,"DIA_Mika_Head_14_00");	//��� � ��� ��� �������?
	} else	{							//�����/����
		AI_Output(other,self,"DIA_Mika_Head_16_00");	//��� � ��� ��� �������?
	};
	AI_Output(self,other,"DIA_Mika_Head_12_01");	//��������� ���� ��������� ����������, �� � �� ���� �� ����� ��� � ��������.
	AI_Output(self,other,"DIA_Mika_Head_12_02");	//������� ���� ��������� �������� - ��������� ���������, �������� ���������� � ��� �����.
	AI_Output(self,other,"DIA_Mika_Head_12_03");	//��� �������� ���. �� �������� �� ������ � ��������.
};

//==============================================
instance DIA_Mika_Training(C_INFO)
{
	nr = 2;
	npc = Mil_337_Mika;
	condition = DIA_NoCond_cond;
	information = DIA_Mika_Training_info;
	permanent = TRUE;
	description = "�� �� ������, ��� ����� ������������� ����?";
};
func void DIA_Mika_Training_info()
{
	if (hero.voice == 3)	{			//���/������
		AI_Output(other,self,"DIA_Mika_Training_03_00");	//�� �� ������, ��� ����� ������������� ����?
	} else if (hero.voice == 7)	{		//������
		AI_Output(other,self,"DIA_Mika_Training_07_00");	//�� �� ������, ��� ����� ������������� ����?
	} else if (hero.voice == 10)	{	//����
		AI_Output(other,self,"DIA_Mika_Training_10_00");	//�� �� ������, ��� ����� ������������� ����?
	} else if (hero.voice == 14)	{	//����
		AI_Output(other,self,"DIA_Mika_Training_14_00");	//�� �� ������, ��� ����� ������������� ����?
	} else	{							//�����/����
		AI_Output(other,self,"DIA_Mika_Training_16_00");	//�� �� ������, ��� ����� ������������� ����?
	};
	AI_Output(self,other,"DIA_Mika_Training_12_01");	//�������� ������� ����������, �� �� �� ����� ����������� ����-�� �� �������.
	AI_Output(self,other,"DIA_Mika_Training_12_02");	//�������� ���������� � �����.
	AI_Output(self,other,"DIA_Mika_Training_12_03");	//��� ����� ����� � ��������� ��� �� ������������� ��������.
};

/*UNFINISHED
DIA_Mika_BodyGuard_12_00 //��, � ������, �� ���������� � ������� ��������?
DIA_Mika_BodyGuard_03_01 //��, ��� ���.
DIA_Mika_BodyGuard_10_01 //�� ����, ��������.
DIA_Mika_BodyGuard_14_01 //�� ����, ��������.
DIA_Mika_BodyGuard_16_01 //��, ��������.
DIA_Mika_BodyGuard_03_02 //���, �� ������.
DIA_Mika_BodyGuard_10_02 //���, �� ���� � ���-�� ���������.
DIA_Mika_BodyGuard_14_02 //���, �� ������.
DIA_Mika_BodyGuard_16_02 //���, �� ������.
DIA_Mika_BodyGuard_12_02 //� ����� ����� ����������� - ������ ������, ������, �����...
DIA_Mika_BodyGuard_12_03a //� �� ���� �������� ������� ����� ������ ��� ������.
DIA_Mika_BodyGuard_12_03b //� �� ���� ��������� ���������� ����� ���������� �������� ��� ������.
DIA_Mika_BodyGuard_12_04 //� � ��� �� �� ������������ �� ����� �������� ��������������.
DIA_Mika_BodyGuard_03_05 //�������?
DIA_Mika_BodyGuard_10_05 //�������� - ��� �������?
DIA_Mika_BodyGuard_14_05 //�������� - ��� �������?
DIA_Mika_BodyGuard_16_05 //�������?
DIA_Mika_BodyGuard_12_06 //10 ������� � ����.
 
DIA_Mika_Pay_03_00 //� ���� ������ ����.
DIA_Mika_Pay_10_00 //� ���� ������ ����.
DIA_Mika_Pay_14_00 //� ���� ������ ����.
DIA_Mika_Pay_16_00 //� ���� ������ ����.
DIA_Mika_Pay_12_01 //�������! �����.
DIA_Mika_Pay_12_02 //����� ������� 10 �������.
DIA_Mika_PayAgain_12_00 //���� ������. �� ���������� ���� ����������?
DIA_Mika_PayAgain_03_01 //��, ��� ��� 10 �������.
DIA_Mika_PayAgain_10_01 //��, ��� ��� 10 �������.
DIA_Mika_PayAgain_14_01 //��, ��� ��� 10 �������.
DIA_Mika_PayAgain_16_01 //��, ��� ��� 10 �������.
DIA_Mika_PayAgain_03_02 //���, �� ��� ������ �� �����.
DIA_Mika_PayAgain_10_02 //���, �� ��� ������ �� �����.
DIA_Mika_PayAgain_14_02 //���, �� ��� ������ �� �����.
DIA_Mika_PayAgain_16_02 //���, �� ��� ������ �� �����.
DIA_Mika_PayAgain_12_03 //��� ������.
DIA_Mika_PayAgain_12_04 //����� � ����������� � ����� ������������ � ������.
 
DIA_Mika_Won_12_00 //���������� � �������!
DIA_Mika_Won_12_01 //���������, ��� ���� ���� �� �� ����������!
*/

