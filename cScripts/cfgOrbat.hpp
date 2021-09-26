
class CfgORBAT
{
	class 7thCavalry
	{
		text = "7th Cavalry Regiment";
		textShort = "7th Cav Reg";
		description = "The 7th Cavalry is a long-standing Military Realism unit that primarily plays first person military shooter games. The 7th Cavalry was founded in October 2002, making it one of the oldest units in the areas it covers. 7th Cavalry is run with a modified military structure that is compatible with a casual video game environment.<br/> <br/>The first game played by the 7th Cavalry was Call of Duty 1 and in 2009 the Regiment adopted Arma 2 on release. The 7th Cavalry plays several games including Arma, Squad, Hell Let Loose, Escape from Tarkov, and others with an emphasis on tactical realism. The 7th Cavalry generally has between 300-350 active members at any one time.";
		texture = __EVAL(getMissionPath "Data\7Cav\7Cav_Logo");
		insignia = __EVAL(getMissionPath "Data\7Cav\7Cav_Logo");

		class 1BN
		{
			text = "1st Battalion";
			textShort = "1st BN";
			description= "1st Battalion is the home of Arma 3 in the 7th Cavalry and is comprised of three Companies that perform different roles and have different Military Occupational Specialties (MOS).";
			texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7");
			insignia = __EVAL(getMissionPath "Data\7Cav\1BN\Arma_logo");

			class 1BN_ACo
			{
				text = "Alpha Company";
				textShort = "A Co";
				texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_A");
				insignia = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_A_insignia");
				description= "Alpha Company is the premier Aviation Company in 1st Battalion. It provides both rotary wing and fixed wing Aviators and Crewman that operate a wide range of aircraft to provide ISR, CAS, SEAD, logistic support, airborne transportation, air assault transportation, as well as FAC, J-TAC, and TAC-P operators.";

				class 1BN_ACo_1Plt
				{
					text = "1st Platoon 'Archangels'";
					textShort = "1st Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_A_1_insignia");
					description= "Assets:<br/>  OH-6M Little Bird (Reconnaissance)<br/>  MH-6M Little Bird (Transport)<br/>  AH-6M Little Bird (Attack)<br/>  HH-60G/M Pave Hawk<br/>  MH-60M Black Hawk<br/>  MH-60M Direct Action Penetrator (DAP)<br/>  MH-60S Knight Hawk<br/>  MH-60S Knight Hawk GAU-21<br/>  CH-47F Chinook<br/>  AH-64D Apache";

					class 1BN_ACo_1Plt_1Sqd
					{
						text = "1st Section 'Reapers'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_A_1_1_insignia");
						assets[] = {
							{RHS_MELB_AH6M,1},{RHS_UH60M_d,2},{RHS_CH_47F_10,1},{RHS_AH64D,1}
						};
					};

					class 1BN_ACo_1Plt_3Sqd
					{
						text = "3rd Section 'Phoenix'";
						textShort = "3rd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_A_1_3_insignia");
						assets[] = {
							{RHS_MELB_AH6M,1},{RHS_UH60M_d,2},{RHS_CH_47F_10,1},{RHS_AH64D,1}
						};
					};

				};

				class 1BN_ACo_2Plt
				{
					text = "2nd Platoon 'Templars'";
					textShort = "2nd Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_A_2_insignia");
					description= "Assets<br/>  A-10C Thunderbolt II<br/>  F-15C Eagle<br/>  F-15E Strike Eagle<br/>  F-16C Fighting Falcon<br/>  F-16D Fighting Falcon<br/>  F/A-18E Super Hornet<br/>  F/A-18F Super Hornet<br/>  F-22 Raptor<br/>  C-130J Super Hercules";

					class 1BN_ACo_2Plt_1Sqd
					{
						text = "1st Section 'Valkyries'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_A_2_1_insignia");
						assets[] = {
							{RHS_A10,2},{rhsusf_f22,2},{RHS_C130J,1}
						};
					};

					class 1BN_ACo_2Plt_2Sqd
					{
						text = "2nd Section 'Guardians'";
						textShort = "2nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_A_2_2_insignia");
						assets[] = {
							{RHS_A10,2},{rhsusf_f22,2},{RHS_C130J,1}
						};
					};

					class 1BN_ACo_2Plt_3Sqd
					{
						text = "3rd Section 'Griffins'";
						textShort = "3rd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_A_2_3_insignia");
						assets[] = {
							{RHS_A10,2},{rhsusf_f22,2},{RHS_C130J,1}
						};
					};
				};
			};

			class 1BN_BCo
			{
				text = "Bravo Troop";
				textShort = "B Trp";
				texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B");
				//insignia = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B");
				description= "Bravo Troop is a composite Troop comprised of Armored, Cavalry Scout, and Health Service Support/Combat Service Support units to provide robust organic sustainment to reconnaissance and armored assets enabling complete terrain domination.";

				class 1BN_BCo_1Plt
				{
					text = "1st Platoon 'Iron Legion'";
					textShort = "1st Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B_1_insignia");
					description= "Assets:<br/>  M1A2 Abrams SEPv1 (TUSK II)<br/>  M1A2 Abrams SEPv2<br/>  M1230A1 Medevac MRAP<br/>  M1085A1P2B (CBPS)<br/>  M977A4(Various Configurations)";

					class 1BN_BCo_2Plt_1Sqd
					{
						text = "1st Section";
						textShort = "1st Sqd";
						//texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B_1_1_insignia");
						assets[] = {
							{rhsusf_m1a2sep1tuskiid_usarmy,2},{rhsusf_m1a2sep2d_usarmy,2}
						};
					};

					class 1BN_BCo_2Plt_2Sqd
					{
						text = "2nd Section";
						textShort = "2nd Sqd";
						//texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B_1_2_insignia");
						assets[] = {
							{rhsusf_m1a2sep1tuskiid_usarmy,2},{rhsusf_m1a2sep2d_usarmy,2}
						};
					};

					class 1BN_BCo_2Plt_3Sqd
					{
						text = "3rd Section 'Atlas'";
						textShort = "3rd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B_1_3_insignia");
						assets[] = {
							{rhsusf_M1230a1_usarmy_d,1},{rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy,1},{rhsusf_M977A4_AMMO_BKIT_usarmy_d,1},{rhsusf_M977A4_REPAIR_BKIT_usarmy_d,1},{rhsusf_M978A4_BKIT_usarmy_d,1}
						};
					};
				};

				class 1BN_BCo_2Plt
				{
					text = "2nd Platoon 'Viking'";
					textShort = "2nd Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B_2_insignia");
					description= "Assets:<br/>  M1126 Stryker (M2, Mk19)<br/>  M1127 Stryker (M2, LRAS3)<br/>  M1132 Stryker (SMP, M2)<br/>  M1134 Stryker (TOW)";

					class 1BN_BCo_2Plt_1Sqd
					{
						text = "1st Squad 'Wolves'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B_2_1_insignia");
						assets[] = {
							{rhsusf_stryker_m1132_m2_d,1},{rhsusf_stryker_m1126_m2_d,1}
						};
					};

					class 1BN_BCo_2Plt_2Sqd
					{
						text = "2nd Squad 'Hogs'";
						textShort = "2nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B_2_2_insignia");
						assets[] = {
							{rhsusf_stryker_m1132_m2_d,1},{rhsusf_stryker_m1126_m2_d,1}
						};
					};

					class 1BN_BCo_2Plt_3Sqd
					{
						text = "3rd Squad 'Bears'";
						textShort = "3rd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B_2_3_insignia");
						assets[] = {
							{rhsusf_stryker_m1132_m2_d,1},{rhsusf_stryker_m1126_m2_d,1}
						};
					};

					class 1BN_BCo_2Plt_4Sqd
					{
						text = "4th Squad 'Troopers'";
						textShort = "4th Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_B_2_4_insignia");
						assets[] = {
							{rhsusf_stryker_m1126_mk19_d,1},{rhsusf_stryker_m1134_d,1}
						};
					};
				};
			};

			class 1BN_CCo
			{
				text = "Charlie Company";
				textShort = "C Co";
				texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C");
				//insignia = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C");
				description= "Charlie Company is a light infantry company that specializes in Air Assault, Airborne, and Motorized Operations to provide the Battalion operational mobility through air delivery of a company sized infantry force. Integrated Weapons squads allow signifigant force projection and sector defense of the Air-Head.";

				class 1BN_CCo_1Plt
				{
					text = "1st Platoon 'Bandit'";
					textShort = "1st Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_1_insignia");
					description= "Assets:<br/>  M4A1<br/>  M320<br/>  M249<br/>  M240<br/>  M3 MAAWS<br/>  M224 60mm Mortar<br/>  FGM-148 Javelin<br/>  BGM-71 TOW<br/>  FIM-92 Stinger<br/>  M11151A1 HMMWV (Various Configurations)";

					class 1BN_CCo_1Plt_1Sqd
					{
						text = "1st Squad 'Checkmate'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_1_1_insignia");
						assets[] = {
							{rhsusf_m1151_m2_v1_usarmy_d,2}
						};
					};

					class 1BN_CCo_1Plt_2Sqd
					{
						text = "2nd Squad 'Daggers'";
						textShort = "2nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_1_2_insignia");
						assets[] = {
							{rhsusf_m1151_m2_v1_usarmy_d,2}
						};
					};

					class 1BN_CCo_1Plt_3Sqd
					{
						text = "3rd Squad 'Chaos'";
						textShort = "3rd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_1_3_insignia");
						assets[] = {
							{rhsusf_m1151_m2_v1_usarmy_d,2}
						};
					};

					class 1BN_CCo_1Plt_4Sqd
					{
						text = "4th Squad 'We've Got Ya' Covered'";
						textShort = "4th Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_1_4_insignia");
						assets[] = {
							{rhsusf_m1151_mk19_v1_usarmy_d,1},{rhsusf_m966_d,1}
						};
					};
				};

				class 1BN_CCo_2Plt
				{
					text = "2nd Platoon 'Misfit'";
					textShort = "2nd Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_2_insignia");
					description= "Assets:<br/>  M4A1<br/>  M320<br/>  M249<br/>  M240<br/>  M3 MAAWS<br/>  M224 60mm Mortar<br/>  FGM-148 Javelin<br/>  BGM-71 TOW<br/>  FIM-92 Stinger<br/>  M11151A1 HMMWV (Various Configurations)";

					class 1BN_CCo_2Plt_1Sqd
					{
						text = "1st Squad 'God Squad'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_2_1_insignia");
						assets[] = {
							{rhsusf_m1151_m2_v1_usarmy_d,2}
						};
					};

					class 1BN_CCo_2Plt_2Sqd
					{
						text = "2nd Squad 'Exiles'";
						textShort = "2nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_2_2_insignia");
						assets[] = {
							{rhsusf_m1151_m2_v1_usarmy_d,2}
						};
					};

					class 1BN_CCo_2Plt_3Sqd
					{
						text = "3rd Squad 'Berserkers'";
						textShort = "3rd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_2_3_insignia");
						assets[] = {
							{rhsusf_m1151_m2_v1_usarmy_d,2}
						};
					};

					class 1BN_CCo_2Plt_4Sqd
					{
						text = "4th Squad 'Jesters'";
						textShort = "4th Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\1BN\1-7_C_2_4_insignia");
						assets[] = {
							{rhsusf_m1151_mk19_v1_usarmy_d,1},{rhsusf_m966_d,1}
						};
					};
				};
			};
  		};

		class 2BN
		{
			text = "2nd Battalion";
			textShort = "2nd BN";
			description= "2nd Battalion is the home of Hell Let Loose in the 7th Cavalry and is comprised of 3 companies that each have a combined arms focus.";
			texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7");
			insignia = __EVAL(getMissionPath "Data\7Cav\2BN\HLL_logo");

			class 2BN_ACo
			{
				text = "Alpha Company 'Dogs of War'";
				textShort = "A Co";
				texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A");
				insignia = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_insignia");
				description= "Alpha Company is a combined-arms company assigned to the Hell Let Loose Area of Operations. It currently employs infantry, armor, engineer, and artillery soldiers in a WW2 environment.";

				class 2BN_ACo_1Plt
				{
					text = "1st Platoon 'Nightmares'";
					textShort = "1st Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_1_insignia");
					description= "";

					class 2BN_ACo_1Plt_1Sqd
					{
						text = "1st Squad 'Fighting First'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_1_1_insignia");
					};

					class 2BN_ACo_1Plt_2Sqd
					{
						text = "2nd Squad 'Reapers'";
						textShort = "2nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_1_2_insignia");
					};

					class 2BN_ACo_1Plt_3Sqd
					{
						text = "3rd Squad";
						textShort = "3rd Sqd";
						//texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_1_3_insignia");
					};

					class 2BN_ACo_1Plt_4Sqd
					{
						text = "4th Squad";
						textShort = "4th Sqd";
						//texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_1_4_insignia");
					};
				};

				class 2BN_ACo_2Plt
				{
					text = "2nd Platoon 'Iron Forge'";
					textShort = "2nd Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_2_insignia");
					description= "";

					class 2BN_ACo_2Plt_1Sqd
					{
						text = "1st Squad";
						textShort = "1st Sqd";
						//texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_2_1_insignia");
					};

					class 2BN_ACo_2Plt_2Sqd
					{
						text = "2nd Squad 'Iron Knights'";
						textShort = "2nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_2_2_insignia");
					};

					class 2BN_ACo_2Plt_3Sqd
					{
						text = "3nd Squad 'Iron Shield'";
						textShort = "3nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_A_2_3_insignia");
					};
				};
			};

			class 2BN_BCo
			{
				text = "Bravo Company 'Facta Non Verba'";
				textShort = "B Co";
				texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B");
				insignia = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B_insignia");
				description= "Bravo Company is a combined-arms company assigned to the Hell Let Loose Area of Operations. It currently employs infantry, armor, engineer, and artillery Soldiers in a WW2 environment.";

				class 2BN_BCo_1Plt
				{
					text = "1st Platoon 'SPQR'";
					textShort = "1st Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B_1_insignia");
					description= "";

					class 2BN_BCo_1Plt_1Sqd
					{
						text = "1st Squad 'Wolves of Odin'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B_1_1_insignia");
					};

					class 2BN_BCo_1Plt_2Sqd
					{
						text = "2nd Squad";
						textShort = "2nd Sqd";
						//texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B_1_2_insignia");
					};

					class 2BN_BCo_1Plt_3Sqd
					{
						text = "3rd Squad";
						textShort = "3rd Sqd";
						//texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B_1_3_insignia");
					};
				};

				class 2BN_BCo_2Plt
				{
					text = "2nd Platoon";
					textShort = "2nd Plt";
					//texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B_2_insignia");
					description= "";

					class 2BN_BCo_2Plt_1Sqd
					{
						text = "1st Squad 'Grizzles'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B_2_1_insignia");
					};

					class 2BN_BCo_2Plt_2Sqd
					{
						text = "2nd Squad 'Pathfinders'";
						textShort = "2nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B_2_2_insignia");
					};

					class 2BN_BCo_2Plt_3Sqd
					{
						text = "3rd Squad 'Raiders'";
						textShort = "3rd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_B_2_3_insignia");
					};
				};
			};

			class 2BN_CCo
			{
				text = "Charlie Company 'Hell Hounds'";
				textShort = "C Co";
				texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_C");
				insignia = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_C_insignia");
				description= "Charlie Company is a combined-arms company assigned to the Hell Let Loose Area of Operations. It currently employs infantry, armor, engineer, and artillery Soldiers in a WW2 environment.";

				class 2BN_CCo_1Plt
				{
					text = "1st Platoon 'Blood Eagles'";
					textShort = "1st Plt";
					texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_C_1_insignia");
					description= "";

					class 2BN_CCo_1Plt_1Sqd
					{
						text = "1st Squad 'Fighting Roosters'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_C_1_1_insignia");
					};

					class 2BN_CCo_1Plt_2Sqd
					{
						text = "2nd Squad 'Crusaders'";
						textShort = "2nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_C_1_2_insignia");
					};

					class 2BN_CCo_1Plt_3Sqd
					{
						text = "3rd Squad 'Praetorians'";
						textShort = "3rd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_C_1_3_insignia");
					};
				};

				class 2BN_CCo_2Plt
				{
					text = "2nd Platoon";
					textShort = "2nd Plt";
					//texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_C_2_insignia");
					description= "";

					class 2BN_CCo_2Plt_1Sqd
					{
						text = "1st Squad 'Bad Juju'";
						textShort = "1st Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_C_2_1_insignia");
					};

					class 2BN_CCo_2Plt_2Sqd
					{
						text = "2nd Squad 'Catamounts'";
						textShort = "2nd Sqd";
						texture = __EVAL(getMissionPath "Data\7Cav\2BN\2-7_C_2_2_insignia");
					};
				};
			};
		};

		class reserve
		{
			class SP
			{
				class EFT
				{
					text = "Escape From Tarkov Starter Platoon";
					textShort = "EFT";
					description= "";
					texture = __EVAL(getMissionPath "Data\7Cav\EFT");
					insignia = __EVAL(getMissionPath "Data\7Cav\EFT_logo");
				};

				class SQD
				{
					text = "Squad Starter Platoon";
					textShort = "SQD";
					//description= "";
					texture = __EVAL(getMissionPath "Data\7Cav\SQD");
					insignia = __EVAL(getMissionPath "Data\7Cav\SQD_logo");
				};
			};

			class RES
			{
				text = "Regimental Reserve";
				textShort = "Reserve";
				description= "The 7th Cavalry Reserve is a separate component of 7th Cavalry Gaming that has only one weekly requirement; to sign a roll-call. The intent behind the creation of this new part of the unit is to allow members who cannot meet the minimum requirement of one section practice weekly to still be members of the unit, albeit with certain restrictions.";
				texture = __EVAL(getMissionPath "Data\7Cav\Res");
			};
		};

		class RSB
		{
			text = "Regiment Support Battalion";
			textShort = "RSB";
			description= "While not an actual battalion, the Regimental Support Battalion represents all the staff branches and supporting departments that run the 7th Cavalry. Positions are predominantly filled by members of the primary battalions aside from special exemptions.";
			texture = __EVAL(getMissionPath "Data\7Cav\RSB\RSB");

			class RSB_S3
			{
				text = "S3 Operations";
				textShort = "S3";
				description= "S3 Operations provides expert mission creation, mission control, and product production in support of the 7th Cavalry. S3 Operations is responsible for mission and orders production for operations, as well as the maintenance of inhouse mods, and the collation of public and private modpacks.";
				texture = __EVAL(getMissionPath "Data\7Cav\RSB\S3\S3");

				class RSB_S3_1BN
				{
					class RSB_S3_1BN_Ops
					{
						text = "Arma Operations Staff";
						textShort = "Arma Ops";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S3\S3");
					};

					class RSB_S3_1BN_PS
					{
						text = "Arma Public Staff";
						textShort = "Arma PS";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S3\S3_PS");
					};

					class RSB_S3_1BN_SQF
					{
						text = "Arma Scripting Staff";
						textShort = "Arma SQF";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S3\S3_1BN_SQF");
					};

				};

				class RSB_S3_2BN
				{
					class RSB_S3_2BN_Ops
					{
						text = "Hell Let Loose Operations Staff";
						textShort = "HLL Ops";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S3\S3");
					};

					class RSB_S3_2BN_Ps
					{
						text = "Hell Let Loose Public Staff";
						textShort = "HLL PS";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S3\S3_PS");
					};
				};
			};

			class RSB_S7
			{
				text = "S7 Training";
				textShort = "S7";
				description= "The S7 Branch consists of all Training functions in the 7th Cavalry Regiment. The branch executes all individual training, commands all 7th Cavalry Schools, and develops and implements training courses and material.";
				texture = __EVAL(getMissionPath "Data\7Cav\RSB\S7\S7");

				class RSB_S7_1BN
				{
					class RSB_S7_1BN_IS
					{
						text = "Arma Infantry School";
						textShort = "Arma IS";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S7\S7_1BN_IS");
					};

					class RSB_S7_1BN_TCS
					{
						text = "Arma The Cavalry School";
						textShort = "Arma TCS";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S7\S7_1BN_TCS");
					};

					class RSB_S7_1BN_TAS
					{
						text = "Arma The Airborne School";
						textShort = "Arma TAS";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S7\S7_1BN_TAS");
					};

					class RSB_S7_1BN_ACE
					{
						text = "Arma Aviation Center of Excellence";
						textShort = "Arma ACE";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S7\S7_1BN_ACE");
					};
				};

				class RSB_S7_2BN
				{
					class RSB_S7_2BN_CAS
					{
						text = "Squad Combined Arms School";
						textShort = "Squad CAS";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S7\S7_2BN_CAS");
					};

					class RSB_S7_2BN_IS
					{
						text = "Hell Let Loose Infantry School";
						textShort = "HLL IS";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S7\S7_2BN_IS");
					};
				};

				class RSB_S7_LDR
				{
					class RSB_S7_LDR_NCOA
					{
						text = "Non-Commissioned Officer Academy";
						textShort = "NCOA";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S7\S7_LDR_NCOA");
					};

					class RSB_S7_LDR_ODS
					{
						text = "Officer Development School";
						textShort = "ODS";
						description= "";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S7\S7_LDR_ODS");
					};
				};
			};

			class RSB_IMO
			{
				text = "Information Maganagement Office";
				textShort = "IMO";
				description= "";
				texture = __EVAL(getMissionPath "Data\7Cav\RSB\S6");

				class RSB_IMO_S1
				{
					text = "S1 Personnel";
					textShort = "S1";
					description= "The S1 Branch is responsible for all force structure, manpower, personnel, and administration requirements for the Regiment. The branch provides recommendations to command staff in resourcing current manpower requirements and in determining future organizational structure. S1 also advises and assists command staff in the management of personnel, personnel replacements, discipline, morale and welfare by developing personnel and administrative programs, policies, and procedures to support the commander's goals and objectives.";
					texture = __EVAL(getMissionPath "Data\7Cav\RSB\S1");

					class RSB_IMO_S1_Mil
					{
						text = "S1 MILPACs";
						textShort = "S1 MILPACs";
						description= "The MILPACs sub-department process official Regimental documents and maintains the entry of records and awards for all MILPACs.";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S1");
					};

					class RSB_IMO_S1_Uni
					{
						text = "S1 Uniforms";
						textShort = "S1 Uniforms";
						description= "The Uniforms sub-department maintains the uniforms and standards of their display.";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S1");
					};

					class RSB_IMO_S1_Cit
					{
						text = "S1 Citations";
						textShort = "S1 Citations";
						description= "The Citations sub-department creates and notorizes official documents verifying service records and awards.";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S1");
					};

					class RSB_IMO_S1_Ops
					{
						text = "S1 Operations";
						textShort = "S1 Operations";
						description= "The Operations sub-department processes the records from S3 Operations and maintains service record entries regarding those operations.";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S1");
					};
				};

				class RSB_IMO_S6
				{
					text = "S6 Information Systems";
					textShort = "S6";
					description= "";
					texture = __EVAL(getMissionPath "Data\7Cav\RSB\S6");

					class RSB_IMO_S6_Clerk
					{
						text = "S6 Clerks";
						textShort = "S6 Clerks";
						description= "Game Clerks are responsible for operation and basic administrative task for their respective game servers.";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S6");
					};

					class RSB_IMO_S6_Dev
					{
						text = "S6 Developer";
						textShort = "S6 Dev";
						description= "The 7th Cavalry has several custom services, scripts and software actively maintained by S6 Administrators and Developer staff. With efficiency and accessibility in mind, S6 Developers actively work to improve day-to-day operations by introducing new ways to automate tasks, implement services and overall development of the technologies we use. Developers are individuals with a aspiration to further their knowledge and to learn or work with several programming languages or systems to improve the 7th Cavalry organization and the member’s experience.";
						texture = __EVAL(getMissionPath "Data\7Cav\RSB\S6");
					};
				};

				class RSB_IMO_Wiki
				{
					text = "Wiki Administration Group";
					textShort = "WAG";
					description= "The Wiki Administration Group is responsible for updating all pages contained in the Regimental Wiki. These pages are the most concrete forms of information available to members of the 7th Cavalry and consists of all policies and procedures. The Wiki Administration Group updates, creates, deletes, and amends pages when necessary.";
					texture = __EVAL(getMissionPath "Data\7Cav\RSB\WAG");
				};
			};

			class RSB_SOD
			{
				text = "Security Operations Department";
				textShort = "SecOps";
				description= "The Security Operations Department (SOD) is responsible to command and control all judicial, administrative, and force protection activities in the 7th Cavalry.";
				texture = __EVAL(getMissionPath "Data\7Cav\RSB\S2");

				class RSB_SOD_S2
				{
					text = "S2 Intelligence";
					textShort = "S2";
					description= "The S2 Branch provides the commander with relevant, timely, and detailed intelligence information. In the 7th Cavalry, it is responsible to conduct all initial checks for members joining to ensure they meet our requirements.";
					texture = __EVAL(getMissionPath "Data\7Cav\RSB\S2");
				};

				class RSB_SOD_MP
				{
					text = "Military Police Department";
					textShort = "MP";
					description= "The Military Police Department is responsible to act as the subject matter experts for force protection on the 7th Cavalry Regiment's servers. They are responsible to control the administration of all servers, advise the commander on force protection, and train 7th Cavalry soldiers on server administration.";
					texture = __EVAL(getMissionPath "Data\7Cav\RSB\MP");
				};

				class RSB_SOD_JAG
				{
					text = "Office of the Judge Advocate General";
					textShort = "JAG";
					description= "The Office of the Judge Advocate General provides the commander with timely, expert legal advice, and is responsible to operate and review the 7th Cavalry judicial system.";
					texture = __EVAL(getMissionPath "Data\7Cav\RSB\JAG");
				};
			};

			class RSB_ROO
			{
				text = "Recruitment Oversight Office";
				textShort = "ROO";
				description= "The Recruiting Oversight Office (ROO) is responsible to administer all 7th Cavalry recruiting efforts, and public affairs activities. The department is responsible to advise the commander on all matters involving recruitment, basic training, and public affairs. Day to day operations include running the recruiting department, training all new enlistees in Basic Combat Training, and producing public affairs products for bother internal and external distribution.";
				texture = __EVAL(getMissionPath "Data\7Cav\RSB\ROO");

				class RSB_ROO_S5
				{
					text = "S5 Public Affairs";
					textShort = "S5";
					description= "The S5 Branch produces public affairs products that communicate the message of the 7th Cavalry to external and internal audiences.";
					texture = __EVAL(getMissionPath "Data\7Cav\RSB\S5");
				};

				class RSB_ROO_RRD
				{
					text = "Regimental Recruiting Department";
					textShort = "RRD";
					description= "The Regimental Recruiting Department is responsible for all recruiting activities, processing of recruitment administration, and re-enlistment administration. The Regimental Recruiting Department also develops and produces recruiting material.";
					texture = __EVAL(getMissionPath "Data\7Cav\RSB\RRD");
				};

				class RSB_ROO_RTC
				{
					text = "Recruit Training Command";
					textShort = "RTC";
					description= "The Recruit Training Command processes all new enlisted members, and administers Basic Combat Training. The Recruit Training Command is the first contact for many new members, and introduces them to the rules, regulations, and traditions of the 7th Cavalry.";
					texture = __EVAL(getMissionPath "Data\7Cav\RSB\RTC");
				};
			};
		};
	};
};