/**************************************************************************

						���������� ���������

  B_SetAttitude	(slf,	att)
  ���������� ��������� att ��������� slf �� ���� ����������.
  
  ������ ��������� � ���������� ���������.
  
***************************************************************************/


func void B_SetAttitude(var C_Npc slf,var int att)
{
	// ���������� ���������� ���������
	Npc_SetAttitude(slf,att);
	// ���������� ��������� ���������
	Npc_SetTempAttitude(slf,att);
};

