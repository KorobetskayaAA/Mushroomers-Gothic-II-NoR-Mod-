
instance VLK_470_Sarah(Npc_Default)
{
	name[0] = "����";
	guild = GIL_VLK;
	id = 470;
	voice = 16;
	flags = 0;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,1);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_Vlk_Sword);
	B_SetNpcVisual(self,FEMALE,"Hum_Head_Babe",FaceBabe_N_Blondie,BodyTexBabe_N,ITAR_VlkBabe_L);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = Rtn_Start_470;
	aivar[AIV_TheftDex] = 57;
	CreateInvItems(self, ItMi_Gold, 60);
};


func void Rtn_Start_470()
{
	TA_Stand_ArmsCrossed(5,15,20,15,"NW_CITY_SARAH");
	TA_Sleep(20,15,5,15,"NW_CITY_HOTEL_BED_08");
};

