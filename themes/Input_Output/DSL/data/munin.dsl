net data\munin.bif
{
// property softwar aGrUM 1.9.0

	node L_OTHER_ISCH_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ISCH_DIFSLOW;
			NAME = "L_OTHER_ISCH_DIFSLOW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_SUR_RD_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_RD_CA;
			NAME = "L_SUR_RD_CA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_SUR_LD_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_LD_CA;
			NAME = "L_SUR_LD_CA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_SUR_LSLOW_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_LSLOW_CA;
			NAME = "L_SUR_LSLOW_CA";
		};
		PARENTS = (L_SUR_RD_CA, L_SUR_LD_CA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.0021, 0.0042, 0.0295, 0.9642, 0, 0.0012, 0.0025, 0.0194, 0.9769, 0, 0.00069993, 0.00149985, 0.0119988, 0.985801, 0, 0.00020002, 0.00050005, 0.00460046, 0.994499, 0.00020002, 0.0001, 0.0002, 0.0014, 0.083, 0.9153, 0.0001, 0.0001, 0.0008, 0.0533, 0.9457, 0, 0.0001, 0.0004, 0.0319, 0.9676, 0, 0, 0, 0.00350035, 0.9965);
		};
	};

	node L_LNL_ISCH_PATHO
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_ISCH_PATHO;
			NAME = "L_LNL_ISCH_PATHO";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DEMY, BLOCK, AXONAL, V_E_REIN, E_REIN);
			PROBABILITIES = (0.25, 0.25, 0.5, 0, 0);
		};
	};

	node L_LNL_ISCH_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_ISCH_SEV;
			NAME = "L_LNL_ISCH_SEV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (0.96, 0.02, 0.01, 0.005, 0.005);
		};
	};

	node L_LNL_ISCH_SALOSS_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_ISCH_SALOSS_CA;
			NAME = "L_LNL_ISCH_SALOSS_CA";
		};
		PARENTS = (L_LNL_ISCH_PATHO, L_LNL_ISCH_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.6, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0.1, 0.4, 0.4, 0.1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_OTHER_ISCH_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ISCH_SALOSS;
			NAME = "L_OTHER_ISCH_SALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_OTHER_ISCH_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ISCH_BLOCK;
			NAME = "L_OTHER_ISCH_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_OTHER_ISCH_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ISCH_DISP;
			NAME = "L_OTHER_ISCH_DISP";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_OTHER_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_DELT_DENERV;
			NAME = "L_OTHER_DELT_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MYDY_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_DELT_DENERV;
			NAME = "L_MYDY_DELT_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MYOP_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_DELT_DENERV;
			NAME = "L_MYOP_DELT_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MYOP_MYDY_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_DELT_DENERV;
			NAME = "L_MYOP_MYDY_DELT_DENERV";
		};
		PARENTS = (L_MYDY_DELT_DENERV, L_MYOP_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_OTHER_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_DELT_NEUR_ACT;
			NAME = "L_OTHER_DELT_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node L_OTHER_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_DELT_MUDENS;
			NAME = "L_OTHER_DELT_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYAS_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_DELT_MUDENS;
			NAME = "L_MYAS_DELT_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYAS_OTHER_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_OTHER_DELT_MUDENS;
			NAME = "L_MYAS_OTHER_DELT_MUDENS";
		};
		PARENTS = (L_OTHER_DELT_MUDENS, L_MYAS_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_MYDY_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_DELT_MUDENS;
			NAME = "L_MYDY_DELT_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYOP_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_DELT_MUDENS;
			NAME = "L_MYOP_DELT_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYOP_MYDY_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_DELT_MUDENS;
			NAME = "L_MYOP_MYDY_DELT_MUDENS";
		};
		PARENTS = (L_MYDY_DELT_MUDENS, L_MYOP_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_MUSCLE_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_DELT_MUDENS;
			NAME = "L_MUSCLE_DELT_MUDENS";
		};
		PARENTS = (L_MYAS_OTHER_DELT_MUDENS, L_MYOP_MYDY_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_DELT_VOL_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_VOL_ACT;
			NAME = "L_DELT_VOL_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, REDUCED, V_RED, ABSENT);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_OTHER_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_DELT_MALOSS;
			NAME = "L_OTHER_DELT_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_OTHER_AXIL_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_AXIL_BLOCK;
			NAME = "L_OTHER_AXIL_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_MYOP_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_DELT_MUSIZE;
			NAME = "L_MYOP_DELT_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_MYDY_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_DELT_MUSIZE;
			NAME = "L_MYDY_DELT_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_MYOP_MYDY_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_DELT_MUSIZE;
			NAME = "L_MYOP_MYDY_DELT_MUSIZE";
		};
		PARENTS = (L_MYOP_DELT_MUSIZE, L_MYDY_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_OTHER_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_DELT_MUSIZE;
			NAME = "L_OTHER_DELT_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_MUSCLE_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_DELT_MUSIZE;
			NAME = "L_MUSCLE_DELT_MUSIZE";
		};
		PARENTS = (L_MYOP_MYDY_DELT_MUSIZE, L_OTHER_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MYAS_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_DELT_NMT;
			NAME = "L_MYAS_DELT_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_OTHER_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_DELT_DE_REGEN;
			NAME = "L_OTHER_DELT_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_MYDY_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_DELT_DE_REGEN;
			NAME = "L_MYDY_DELT_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_MYOP_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_DELT_DE_REGEN;
			NAME = "L_MYOP_DELT_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_MYOP_MYDY_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_DELT_DE_REGEN;
			NAME = "L_MYOP_MYDY_DELT_DE_REGEN";
		};
		PARENTS = (L_MYDY_DELT_DE_REGEN, L_MYOP_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_MUSCLE_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_DELT_DE_REGEN;
			NAME = "L_MUSCLE_DELT_DE_REGEN";
		};
		PARENTS = (L_OTHER_DELT_DE_REGEN, L_MYOP_MYDY_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_LNLPC5_AXIL_PATHO
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_AXIL_PATHO;
			NAME = "L_LNLPC5_AXIL_PATHO";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DEMY, BLOCK, AXONAL, V_E_REIN, E_REIN);
			PROBABILITIES = (0.6, 0.19, 0.2, 0.005, 0.005);
		};
	};

	node L_LNLPC5_AXIL_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_AXIL_DIFSLOW;
			NAME = "L_LNLPC5_AXIL_DIFSLOW";
		};
		PARENTS = (L_LNLPC5_AXIL_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0);
		};
	};

	node L_AXIL_RD_ED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_AXIL_RD_ED;
			NAME = "L_AXIL_RD_ED";
		};
		PARENTS = (L_LNLPC5_AXIL_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node L_LNLPC5_AXIL_TIME
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_AXIL_TIME;
			NAME = "L_LNLPC5_AXIL_TIME";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (ACUTE, SUBACUTE, CHRONIC, OLD);
			PROBABILITIES = (0.05, 0.6, 0.3, 0.05);
		};
	};

	node L_LNLPC5_AXIL_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_AXIL_SEV;
			NAME = "L_LNLPC5_AXIL_SEV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (0.980314, 0.0106925, 0.0049965, 0.0029979, 0.0009993);
		};
	};

	node L_LNLPC5_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DELT_MUDENS;
			NAME = "L_LNLPC5_DELT_MUDENS";
		};
		PARENTS = (L_LNLPC5_AXIL_PATHO, L_LNLPC5_AXIL_TIME, L_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 0.3, 0.6, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node L_LNLPC5_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DELT_DENERV;
			NAME = "L_LNLPC5_DELT_DENERV";
		};
		PARENTS = (L_LNLPC5_AXIL_PATHO, L_LNLPC5_AXIL_TIME, L_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 0.1, 0.6, 0.25, 0.05, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 0.45, 0.45, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node L_LNLPC5_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DELT_NEUR_ACT;
			NAME = "L_LNLPC5_DELT_NEUR_ACT";
		};
		PARENTS = (L_LNLPC5_AXIL_TIME, L_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLPC5_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DELT_MUSIZE;
			NAME = "L_LNLPC5_DELT_MUSIZE";
		};
		PARENTS = (L_LNLPC5_AXIL_PATHO, L_LNLPC5_AXIL_TIME, L_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_LNLPC5_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DELT_MALOSS;
			NAME = "L_LNLPC5_DELT_MALOSS";
		};
		PARENTS = (L_LNLPC5_AXIL_PATHO, L_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.1, 0.9, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 0.25, 0.25, 0.25, 0.25, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_LNLPC5_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DELT_DE_REGEN;
			NAME = "L_LNLPC5_DELT_DE_REGEN";
		};
		PARENTS = (L_LNLPC5_AXIL_PATHO, L_LNLPC5_AXIL_TIME, L_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_OTHER_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_DELT_NMT;
			NAME = "L_OTHER_DELT_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLW_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ADM_DENERV;
			NAME = "L_LNLW_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLLP_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_ADM_DENERV;
			NAME = "L_LNLLP_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLC8_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_ADM_DENERV;
			NAME = "L_LNLC8_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLC8_LP_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_ADM_DENERV;
			NAME = "L_LNLC8_LP_ADM_DENERV";
		};
		PARENTS = (L_LNLLP_ADM_DENERV, L_LNLC8_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_OTHER_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ADM_DENERV;
			NAME = "L_OTHER_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MYDY_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_ADM_DENERV;
			NAME = "L_MYDY_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MYOP_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_ADM_DENERV;
			NAME = "L_MYOP_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MYOP_MYDY_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_ADM_DENERV;
			NAME = "L_MYOP_MYDY_ADM_DENERV";
		};
		PARENTS = (L_MYDY_ADM_DENERV, L_MYOP_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_OTHER_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ADM_NEUR_ACT;
			NAME = "L_OTHER_ADM_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLW_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ADM_NEUR_ACT;
			NAME = "L_LNLW_ADM_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLLP_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_ADM_NEUR_ACT;
			NAME = "L_LNLLP_ADM_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLC8_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_ADM_NEUR_ACT;
			NAME = "L_LNLC8_ADM_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLC8_LP_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_ADM_NEUR_ACT;
			NAME = "L_LNLC8_LP_ADM_NEUR_ACT";
		};
		PARENTS = (L_LNLLP_ADM_NEUR_ACT, L_LNLC8_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_OTHER_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ADM_MUDENS;
			NAME = "L_OTHER_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYAS_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_ADM_MUDENS;
			NAME = "L_MYAS_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYAS_OTHER_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_OTHER_ADM_MUDENS;
			NAME = "L_MYAS_OTHER_ADM_MUDENS";
		};
		PARENTS = (L_OTHER_ADM_MUDENS, L_MYAS_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_MYDY_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_ADM_MUDENS;
			NAME = "L_MYDY_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYOP_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_ADM_MUDENS;
			NAME = "L_MYOP_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYOP_MYDY_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_ADM_MUDENS;
			NAME = "L_MYOP_MYDY_ADM_MUDENS";
		};
		PARENTS = (L_MYDY_ADM_MUDENS, L_MYOP_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_MUSCLE_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_ADM_MUDENS;
			NAME = "L_MUSCLE_ADM_MUDENS";
		};
		PARENTS = (L_MYAS_OTHER_ADM_MUDENS, L_MYOP_MYDY_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_LNLW_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ADM_MUDENS;
			NAME = "L_LNLW_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_LNLLP_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_ADM_MUDENS;
			NAME = "L_LNLLP_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_LNLC8_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_ADM_MUDENS;
			NAME = "L_LNLC8_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_LNLC8_LP_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_ADM_MUDENS;
			NAME = "L_LNLC8_LP_ADM_MUDENS";
		};
		PARENTS = (L_LNLLP_ADM_MUDENS, L_LNLC8_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_ADM_VOL_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_VOL_ACT;
			NAME = "L_ADM_VOL_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, REDUCED, V_RED, ABSENT);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_ULN_RD_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_RD_WA;
			NAME = "L_ULN_RD_WA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_ULN_LD_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_LD_WA;
			NAME = "L_ULN_LD_WA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_ULN_RDLDDEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_RDLDDEL;
			NAME = "L_ULN_RDLDDEL";
		};
		PARENTS = (L_ULN_RD_WA, L_ULN_LD_WA);
		DEFINITION =
		{
			NAMESTATES = (MS3_1, MS3_9, MS4_7, MS10_1, MS20_1);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0964, 0.7981, 0.1055, 0, 0, 0.0032, 0.127, 0.8698, 0, 0, 0.00090009, 0.00280028, 0.0147015, 0.981598, 0, 0.0019, 0.5257, 0.4724, 0, 0, 0.00019998, 0.0414958, 0.958304, 0, 0, 0.0001, 0.0144, 0.9855, 0, 0, 0.00019998, 0.00059994, 0.00369963, 0.9955, 0, 0.0002, 0.0304, 0.9694, 0, 0, 0.0001, 0.0142, 0.9857, 0, 0, 0, 0.009, 0.9808, 0.0102, 0, 0, 0.0002, 0.0012, 0.9984, 0.0002);
		};
	};

	node L_LNLW_ULN_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ULN_BLOCK;
			NAME = "L_LNLW_ULN_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_OTHER_ULN_BLOCK_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ULN_BLOCK_WA;
			NAME = "L_OTHER_ULN_BLOCK_WA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLC8_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_ADM_MUSIZE;
			NAME = "L_LNLC8_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_LNLLP_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_ADM_MUSIZE;
			NAME = "L_LNLLP_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_LNLC8_LP_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_ADM_MUSIZE;
			NAME = "L_LNLC8_LP_ADM_MUSIZE";
		};
		PARENTS = (L_LNLC8_ADM_MUSIZE, L_LNLLP_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLW_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ADM_MUSIZE;
			NAME = "L_LNLW_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_MYOP_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_ADM_MUSIZE;
			NAME = "L_MYOP_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_MYDY_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_ADM_MUSIZE;
			NAME = "L_MYDY_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_MYOP_MYDY_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_ADM_MUSIZE;
			NAME = "L_MYOP_MYDY_ADM_MUSIZE";
		};
		PARENTS = (L_MYOP_ADM_MUSIZE, L_MYDY_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_OTHER_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ADM_MUSIZE;
			NAME = "L_OTHER_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_MUSCLE_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_ADM_MUSIZE;
			NAME = "L_MUSCLE_ADM_MUSIZE";
		};
		PARENTS = (L_MYOP_MYDY_ADM_MUSIZE, L_OTHER_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MYAS_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_ADM_NMT;
			NAME = "L_MYAS_ADM_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_OTHER_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ADM_DE_REGEN;
			NAME = "L_OTHER_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_MYDY_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_ADM_DE_REGEN;
			NAME = "L_MYDY_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_MYOP_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_ADM_DE_REGEN;
			NAME = "L_MYOP_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_MYOP_MYDY_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_ADM_DE_REGEN;
			NAME = "L_MYOP_MYDY_ADM_DE_REGEN";
		};
		PARENTS = (L_MYDY_ADM_DE_REGEN, L_MYOP_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_MUSCLE_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_ADM_DE_REGEN;
			NAME = "L_MUSCLE_ADM_DE_REGEN";
		};
		PARENTS = (L_OTHER_ADM_DE_REGEN, L_MYOP_MYDY_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_LNLW_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ADM_DE_REGEN;
			NAME = "L_LNLW_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_LNLE_ULN_TIME
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULN_TIME;
			NAME = "L_LNLE_ULN_TIME";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (ACUTE, SUBACUTE, CHRONIC, OLD);
			PROBABILITIES = (0.05, 0.6, 0.3, 0.05);
		};
	};

	node L_LNLLP_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_ADM_DE_REGEN;
			NAME = "L_LNLLP_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_LNLC8_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_ADM_DE_REGEN;
			NAME = "L_LNLC8_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_LNLC8_LP_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_ADM_DE_REGEN;
			NAME = "L_LNLC8_LP_ADM_DE_REGEN";
		};
		PARENTS = (L_LNLLP_ADM_DE_REGEN, L_LNLC8_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_OTHER_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ADM_NMT;
			NAME = "L_OTHER_ADM_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLW_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ADM_MALOSS;
			NAME = "L_LNLW_ADM_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLLP_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_ADM_MALOSS;
			NAME = "L_LNLLP_ADM_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLC8_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_ADM_MALOSS;
			NAME = "L_LNLC8_ADM_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLC8_LP_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_ADM_MALOSS;
			NAME = "L_LNLC8_LP_ADM_MALOSS";
		};
		PARENTS = (L_LNLLP_ADM_MALOSS, L_LNLC8_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_OTHER_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ADM_MALOSS;
			NAME = "L_OTHER_ADM_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLW_ULND5_RD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ULND5_RD_WD;
			NAME = "L_LNLW_ULND5_RD_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_LNLW_ULND5_LD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ULND5_LD_WD;
			NAME = "L_LNLW_ULND5_LD_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLW_ULND5_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ULND5_BLOCK_WD;
			NAME = "L_LNLW_ULND5_BLOCK_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_OTHER_ULND5_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ULND5_DIFSLOW;
			NAME = "L_OTHER_ULND5_DIFSLOW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLLP_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_ULND5_SALOSS;
			NAME = "L_LNLLP_ULND5_SALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLW_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ULND5_SALOSS;
			NAME = "L_LNLW_ULND5_SALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_OTHER_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ULND5_SALOSS;
			NAME = "L_OTHER_ULND5_SALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_OTHER_ULND5_RD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ULND5_RD;
			NAME = "L_OTHER_ULND5_RD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_ULND5_RD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_RD_WD;
			NAME = "L_ULND5_RD_WD";
		};
		PARENTS = (L_LNLW_ULND5_RD_WD, L_OTHER_ULND5_RD);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0.0139, 0.9821, 0.004, 0, 0.0150015, 0.984999, 0.0139, 0.9821, 0.004, 0.0002, 0.1057, 0.8941, 0, 0.0037, 0.9963, 0.00070007, 0.0968097, 0.90249, 0, 0.0155016, 0.984498, 0, 0.003, 0.997);
		};
	};

	node L_OTHER_ULND5_LD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ULND5_LD;
			NAME = "L_OTHER_ULND5_LD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_ULND5_LD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_LD_WD;
			NAME = "L_ULND5_LD_WD";
		};
		PARENTS = (L_LNLW_ULND5_LD_WD, L_OTHER_ULND5_LD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0186, 0.9584, 0.023, 0, 0, 0.0184, 0.9816, 0, 0.0010001, 0.00310031, 0.030203, 0.965697, 0.0186, 0.9584, 0.023, 0, 0, 0.0304, 0.9696, 0, 0, 0.0013, 0.9987, 0, 0.00039996, 0.00129987, 0.0140986, 0.984202, 0, 0.0184, 0.9816, 0, 0, 0.0013, 0.9987, 0, 0, 0.00029997, 0.9996, 9.999e-05, 0.0001, 0.0005, 0.006, 0.9934, 0.0010001, 0.00310031, 0.030203, 0.965697, 0.00039996, 0.00129987, 0.0140986, 0.984202, 0.0001, 0.0005, 0.006, 0.9934, 0.00010001, 0.00030003, 0.00380038, 0.9958);
		};
	};

	node L_ULND5_LSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_LSLOW_WD;
			NAME = "L_ULND5_LSLOW_WD";
		};
		PARENTS = (L_ULND5_RD_WD, L_ULND5_LD_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.0021, 0.0042, 0.0295, 0.9642, 0, 0.0012, 0.0025, 0.0194, 0.9769, 0, 0.00069993, 0.00149985, 0.0119988, 0.985801, 0, 0.00020002, 0.00050005, 0.00460046, 0.994499, 0.00020002, 0.0001, 0.0002, 0.0014, 0.083, 0.9153, 0.0001, 0.0001, 0.0008, 0.0533, 0.9457, 0, 0.0001, 0.0004, 0.0319, 0.9676, 0, 0, 0, 0.00350035, 0.9965);
		};
	};

	node L_OTHER_ULND5_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ULND5_BLOCK;
			NAME = "L_OTHER_ULND5_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLW_ULND5_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_ULND5_DISP_WD;
			NAME = "L_LNLW_ULND5_DISP_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLE_ULN_PATHO
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULN_PATHO;
			NAME = "L_LNLE_ULN_PATHO";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DEMY, BLOCK, AXONAL, V_E_REIN, E_REIN);
			PROBABILITIES = (0.6, 0.19, 0.2, 0.005, 0.005);
		};
	};

	node L_LNLE_ULN_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULN_DIFSLOW;
			NAME = "L_LNLE_ULN_DIFSLOW";
		};
		PARENTS = (L_LNLE_ULN_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0);
		};
	};

	node L_LNLE_ULND5_RD_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULND5_RD_E;
			NAME = "L_LNLE_ULND5_RD_E";
		};
		PARENTS = (L_LNLE_ULN_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node L_ULND5_RD_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_RD_E;
			NAME = "L_ULND5_RD_E";
		};
		PARENTS = (L_LNLE_ULND5_RD_E, L_OTHER_ULND5_RD);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0.0941, 0.9038, 0.0021, 0.0677, 0.2563, 0.676, 0.0941, 0.9038, 0.0021, 0.014, 0.3525, 0.6335, 0.0324, 0.1629, 0.8047, 0.0677, 0.2563, 0.676, 0.0324, 0.1629, 0.8047, 0.0351, 0.1479, 0.817);
		};
	};

	node L_LNLE_ULND5_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULND5_DIFSLOW;
			NAME = "L_LNLE_ULND5_DIFSLOW";
		};
		PARENTS = (L_LNLE_ULN_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0);
		};
	};

	node L_ULN_RD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_RD_EW;
			NAME = "L_ULN_RD_EW";
		};
		PARENTS = (L_LNLE_ULN_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node L_LNLE_ULN_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULN_SEV;
			NAME = "L_LNLE_ULN_SEV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (0.945, 0.025, 0.015, 0.01, 0.005);
		};
	};

	node L_LNLE_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ADM_DENERV;
			NAME = "L_LNLE_ADM_DENERV";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_TIME, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 0.1, 0.6, 0.25, 0.05, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 0.45, 0.45, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node L_LNLC8_LP_E_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_E_ADM_DENERV;
			NAME = "L_LNLC8_LP_E_ADM_DENERV";
		};
		PARENTS = (L_LNLE_ADM_DENERV, L_LNLC8_LP_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_LNLE_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ADM_DE_REGEN;
			NAME = "L_LNLE_ADM_DE_REGEN";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_TIME, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_LNLC8_LP_E_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_E_ADM_DE_REGEN;
			NAME = "L_LNLC8_LP_E_ADM_DE_REGEN";
		};
		PARENTS = (L_LNLE_ADM_DE_REGEN, L_LNLC8_LP_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_ULN_LD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_LD_EW;
			NAME = "L_ULN_LD_EW";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.25, 0.5, 0.25, 0, 0.05, 0.3, 0.5, 0.15, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 0, 0, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node L_ULN_RDLDCV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_RDLDCV_E;
			NAME = "L_ULN_RDLDCV_E";
		};
		PARENTS = (L_ULN_RD_EW, L_ULN_LD_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S27, M_S15, M_S07);
			PROBABILITIES = (0.90449, 0.0953095, 0.00020002, 0, 0, 0, 0.132, 0.6039, 0.2641, 0, 0, 0, 0.0139, 0.1839, 0.8022, 0, 0, 0, 0.00120012, 0.00670067, 0.0544054, 0.860086, 0.0776078, 0, 0.0115, 0.0333, 0.1509, 0.7319, 0.0724, 0, 0.00340034, 0.0122012, 0.0690069, 0.719672, 0.19532, 0.00040004, 0.0011, 0.0045, 0.0299, 0.5742, 0.3876, 0.0027, 0.0001, 0.0002, 0.0018, 0.0914, 0.6093, 0.2972, 0, 9.999e-05, 0.00109989, 0.146185, 0.807019, 0.0455954, 0, 0, 0.0002, 0.0581, 0.795, 0.1467, 0, 0, 0.0001, 0.0228, 0.6344, 0.3427, 0, 0, 0, 0.0014, 0.1063, 0.8923);
		};
	};

	node L_LNLE_ULN_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULN_BLOCK;
			NAME = "L_LNLE_ULN_BLOCK";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_LNLE_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULND5_SALOSS;
			NAME = "L_LNLE_ULND5_SALOSS";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.6, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0.1, 0.4, 0.4, 0.1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_LNLLP_E_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_E_ULND5_SALOSS;
			NAME = "L_LNLLP_E_ULND5_SALOSS";
		};
		PARENTS = (L_LNLLP_ULND5_SALOSS, L_LNLE_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLE_ULND5_DISP_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULND5_DISP_E;
			NAME = "L_LNLE_ULND5_DISP_E";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.3, 0.5, 0.2, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_LNLE_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ADM_NEUR_ACT;
			NAME = "L_LNLE_ADM_NEUR_ACT";
		};
		PARENTS = (L_LNLE_ULN_TIME, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLC8_LP_E_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_E_ADM_NEUR_ACT;
			NAME = "L_LNLC8_LP_E_ADM_NEUR_ACT";
		};
		PARENTS = (L_LNLE_ADM_NEUR_ACT, L_LNLC8_LP_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLE_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ADM_MUDENS;
			NAME = "L_LNLE_ADM_MUDENS";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_TIME, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 0.3, 0.6, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node L_LNLC8_LP_E_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_E_ADM_MUDENS;
			NAME = "L_LNLC8_LP_E_ADM_MUDENS";
		};
		PARENTS = (L_LNLE_ADM_MUDENS, L_LNLC8_LP_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_LNLE_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ADM_MALOSS;
			NAME = "L_LNLE_ADM_MALOSS";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.1, 0.9, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 0.25, 0.25, 0.25, 0.25, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_LNLC8_LP_E_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_E_ADM_MALOSS;
			NAME = "L_LNLC8_LP_E_ADM_MALOSS";
		};
		PARENTS = (L_LNLE_ADM_MALOSS, L_LNLC8_LP_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLE_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ADM_MUSIZE;
			NAME = "L_LNLE_ADM_MUSIZE";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_TIME, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_LNLC8_LP_E_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLC8_LP_E_ADM_MUSIZE;
			NAME = "L_LNLC8_LP_E_ADM_MUSIZE";
		};
		PARENTS = (L_LNLC8_LP_ADM_MUSIZE, L_LNLE_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLE_ULND5_LD_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULND5_LD_E;
			NAME = "L_LNLE_ULND5_LD_E";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.25, 0.5, 0.25, 0, 0.05, 0.3, 0.5, 0.15, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);
		};
	};

	node L_ULND5_LD_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_LD_E;
			NAME = "L_ULND5_LD_E";
		};
		PARENTS = (L_LNLE_ULND5_LD_E, L_OTHER_ULND5_LD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0186, 0.9584, 0.023, 0, 0, 0.0184, 0.9816, 0, 0.0010001, 0.00310031, 0.030203, 0.965697, 0.0186, 0.9584, 0.023, 0, 0, 0.0304, 0.9696, 0, 0, 0.0013, 0.9987, 0, 0.00039996, 0.00129987, 0.0140986, 0.984202, 0, 0.0184, 0.9816, 0, 0, 0.0013, 0.9987, 0, 0, 0.00029997, 0.9996, 9.999e-05, 0.0001, 0.0005, 0.006, 0.9934, 0.0010001, 0.00310031, 0.030203, 0.965697, 0.00039996, 0.00129987, 0.0140986, 0.984202, 0.0001, 0.0005, 0.006, 0.9934, 0.00010001, 0.00030003, 0.00380038, 0.9958);
		};
	};

	node L_ULND5_LSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_LSLOW_E;
			NAME = "L_ULND5_LSLOW_E";
		};
		PARENTS = (L_ULND5_RD_E, L_ULND5_LD_E);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.00840084, 0.0119012, 0.0619062, 0.917392, 0.00040004, 0.00690069, 0.010001, 0.0535053, 0.928693, 0.00090009, 0.00559944, 0.00829917, 0.0451955, 0.938906, 0.0019998, 0.0023, 0.0036, 0.0217, 0.8326, 0.1398, 0.00529947, 0.00619938, 0.0263974, 0.208179, 0.753925, 0.0049, 0.0057, 0.0244, 0.1966, 0.7684, 0.00440044, 0.00520052, 0.0224022, 0.183918, 0.784078, 0.0028, 0.0033, 0.0145, 0.1304, 0.849);
		};
	};

	node L_LNLE_ULND5_BLOCK_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_ULND5_BLOCK_E;
			NAME = "L_LNLE_ULND5_BLOCK_E";
		};
		PARENTS = (L_LNLE_ULN_PATHO, L_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.3, 0.6, 0.1, 0, 0, 0.1, 0.5, 0.3, 0.1, 0, 0, 0.05, 0.2, 0.55, 0.2, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.6, 0.2, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_OTHER_ULND5_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_ULND5_DISP;
			NAME = "L_OTHER_ULND5_DISP";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLBE_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_APB_DENERV;
			NAME = "L_LNLBE_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLLP_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_APB_DENERV;
			NAME = "L_LNLLP_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLT1_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_APB_DENERV;
			NAME = "L_LNLT1_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLT1_LP_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_APB_DENERV;
			NAME = "L_LNLT1_LP_APB_DENERV";
		};
		PARENTS = (L_LNLLP_APB_DENERV, L_LNLT1_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_LNLT1_LP_BE_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_BE_APB_DENERV;
			NAME = "L_LNLT1_LP_BE_APB_DENERV";
		};
		PARENTS = (L_LNLBE_APB_DENERV, L_LNLT1_LP_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_MYDY_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_APB_DENERV;
			NAME = "L_MYDY_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MYOP_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_APB_DENERV;
			NAME = "L_MYOP_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MYOP_MYDY_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_APB_DENERV;
			NAME = "L_MYOP_MYDY_APB_DENERV";
		};
		PARENTS = (L_MYDY_APB_DENERV, L_MYOP_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_LNLBE_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_APB_NEUR_ACT;
			NAME = "L_LNLBE_APB_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLLP_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_APB_NEUR_ACT;
			NAME = "L_LNLLP_APB_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLT1_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_APB_NEUR_ACT;
			NAME = "L_LNLT1_APB_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLT1_LP_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_APB_NEUR_ACT;
			NAME = "L_LNLT1_LP_APB_NEUR_ACT";
		};
		PARENTS = (L_LNLLP_APB_NEUR_ACT, L_LNLT1_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLT1_LP_BE_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_BE_APB_NEUR_ACT;
			NAME = "L_LNLT1_LP_BE_APB_NEUR_ACT";
		};
		PARENTS = (L_LNLBE_APB_NEUR_ACT, L_LNLT1_LP_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MYAS_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_APB_MUDENS;
			NAME = "L_MYAS_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYDY_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_APB_MUDENS;
			NAME = "L_MYDY_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYOP_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_APB_MUDENS;
			NAME = "L_MYOP_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MYOP_MYDY_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_APB_MUDENS;
			NAME = "L_MYOP_MYDY_APB_MUDENS";
		};
		PARENTS = (L_MYDY_APB_MUDENS, L_MYOP_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_MUSCLE_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_APB_MUDENS;
			NAME = "L_MUSCLE_APB_MUDENS";
		};
		PARENTS = (L_MYAS_APB_MUDENS, L_MYOP_MYDY_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_LNLBE_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_APB_MUDENS;
			NAME = "L_LNLBE_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_LNLLP_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_APB_MUDENS;
			NAME = "L_LNLLP_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_LNLT1_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_APB_MUDENS;
			NAME = "L_LNLT1_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_LNLT1_LP_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_APB_MUDENS;
			NAME = "L_LNLT1_LP_APB_MUDENS";
		};
		PARENTS = (L_LNLLP_APB_MUDENS, L_LNLT1_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_LNLT1_LP_BE_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_BE_APB_MUDENS;
			NAME = "L_LNLT1_LP_BE_APB_MUDENS";
		};
		PARENTS = (L_LNLBE_APB_MUDENS, L_LNLT1_LP_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_APB_VOL_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_VOL_ACT;
			NAME = "L_APB_VOL_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, REDUCED, V_RED, ABSENT);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLBE_MED_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_MED_DIFSLOW;
			NAME = "L_LNLBE_MED_DIFSLOW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLT1_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_APB_MUSIZE;
			NAME = "L_LNLT1_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_LNLLP_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_APB_MUSIZE;
			NAME = "L_LNLLP_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_LNLT1_LP_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_APB_MUSIZE;
			NAME = "L_LNLT1_LP_APB_MUSIZE";
		};
		PARENTS = (L_LNLT1_APB_MUSIZE, L_LNLLP_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLBE_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_APB_MUSIZE;
			NAME = "L_LNLBE_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_LNLT1_LP_BE_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_BE_APB_MUSIZE;
			NAME = "L_LNLT1_LP_BE_APB_MUSIZE";
		};
		PARENTS = (L_LNLT1_LP_APB_MUSIZE, L_LNLBE_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MYOP_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_APB_MUSIZE;
			NAME = "L_MYOP_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_MYDY_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_APB_MUSIZE;
			NAME = "L_MYDY_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node L_MYOP_MYDY_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_APB_MUSIZE;
			NAME = "L_MYOP_MYDY_APB_MUSIZE";
		};
		PARENTS = (L_MYOP_APB_MUSIZE, L_MYDY_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MYAS_APB_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_APB_NMT;
			NAME = "L_MYAS_APB_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_MYDY_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYDY_APB_DE_REGEN;
			NAME = "L_MYDY_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_MYOP_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_APB_DE_REGEN;
			NAME = "L_MYOP_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_MYOP_MYDY_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYOP_MYDY_APB_DE_REGEN;
			NAME = "L_MYOP_MYDY_APB_DE_REGEN";
		};
		PARENTS = (L_MYDY_APB_DE_REGEN, L_MYOP_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_LNLW_MED_TIME
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_MED_TIME;
			NAME = "L_LNLW_MED_TIME";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (ACUTE, SUBACUTE, CHRONIC, OLD);
			PROBABILITIES = (0.05, 0.33, 0.6, 0.02);
		};
	};

	node L_LNLBE_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_APB_DE_REGEN;
			NAME = "L_LNLBE_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_LNLLP_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_APB_DE_REGEN;
			NAME = "L_LNLLP_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_LNLT1_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_APB_DE_REGEN;
			NAME = "L_LNLT1_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node L_LNLT1_LP_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_APB_DE_REGEN;
			NAME = "L_LNLT1_LP_APB_DE_REGEN";
		};
		PARENTS = (L_LNLLP_APB_DE_REGEN, L_LNLT1_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_LNLT1_LP_BE_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_BE_APB_DE_REGEN;
			NAME = "L_LNLT1_LP_BE_APB_DE_REGEN";
		};
		PARENTS = (L_LNLBE_APB_DE_REGEN, L_LNLT1_LP_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_MED_RD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_RD_EW;
			NAME = "L_MED_RD_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MED_LD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_LD_EW;
			NAME = "L_MED_LD_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MED_RDLDCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_RDLDCV_EW;
			NAME = "L_MED_RDLDCV_EW";
		};
		PARENTS = (L_MED_RD_EW, L_MED_LD_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S27, M_S15, M_S07);
			PROBABILITIES = (0.90449, 0.0953095, 0.00020002, 0, 0, 0, 0.132, 0.6039, 0.2641, 0, 0, 0, 0.0139, 0.1839, 0.8022, 0, 0, 0, 0.00120012, 0.00670067, 0.0544054, 0.860086, 0.0776078, 0, 0.0115, 0.0333, 0.1509, 0.7319, 0.0724, 0, 0.00340034, 0.0122012, 0.0690069, 0.719672, 0.19532, 0.00040004, 0.0011, 0.0045, 0.0299, 0.5742, 0.3876, 0.0027, 0.0001, 0.0002, 0.0018, 0.0914, 0.6093, 0.2972, 0, 9.999e-05, 0.00109989, 0.146185, 0.807019, 0.0455954, 0, 0, 0.0002, 0.0581, 0.795, 0.1467, 0, 0, 0.0001, 0.0228, 0.6344, 0.3427, 0, 0, 0, 0.0014, 0.1063, 0.8923);
		};
	};

	node L_LNLBE_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_APB_MALOSS;
			NAME = "L_LNLBE_APB_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLLP_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLLP_APB_MALOSS;
			NAME = "L_LNLLP_APB_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLT1_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_APB_MALOSS;
			NAME = "L_LNLT1_APB_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLT1_LP_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_APB_MALOSS;
			NAME = "L_LNLT1_LP_APB_MALOSS";
		};
		PARENTS = (L_LNLLP_APB_MALOSS, L_LNLT1_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLT1_LP_BE_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLT1_LP_BE_APB_MALOSS;
			NAME = "L_LNLT1_LP_BE_APB_MALOSS";
		};
		PARENTS = (L_LNLBE_APB_MALOSS, L_LNLT1_LP_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLBE_MED_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_MED_BLOCK;
			NAME = "L_LNLBE_MED_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLBE_MEDD2_DIFSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_MEDD2_DIFSLOW_WD;
			NAME = "L_LNLBE_MEDD2_DIFSLOW_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLBE_MEDD2_SALOSS_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_MEDD2_SALOSS_EW;
			NAME = "L_LNLBE_MEDD2_SALOSS_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLBE_MEDD2_RD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_MEDD2_RD_EW;
			NAME = "L_LNLBE_MEDD2_RD_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node L_MEDD2_RD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_RD_EW;
			NAME = "L_MEDD2_RD_EW";
		};
		PARENTS = (L_LNLBE_MEDD2_RD_EW);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_LNLBE_MEDD2_LD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_MEDD2_LD_EW;
			NAME = "L_LNLBE_MEDD2_LD_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_MEDD2_LD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_LD_EW;
			NAME = "L_MEDD2_LD_EW";
		};
		PARENTS = (L_LNLBE_MEDD2_LD_EW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_LSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_LSLOW_EW;
			NAME = "L_MEDD2_LSLOW_EW";
		};
		PARENTS = (L_MEDD2_RD_EW, L_MEDD2_LD_EW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.00840084, 0.0119012, 0.0619062, 0.917392, 0.00040004, 0.00690069, 0.010001, 0.0535053, 0.928693, 0.00090009, 0.00559944, 0.00829917, 0.0451955, 0.938906, 0.0019998, 0.0023, 0.0036, 0.0217, 0.8326, 0.1398, 0.00529947, 0.00619938, 0.0263974, 0.208179, 0.753925, 0.0049, 0.0057, 0.0244, 0.1966, 0.7684, 0.00440044, 0.00520052, 0.0224022, 0.183918, 0.784078, 0.0028, 0.0033, 0.0145, 0.1304, 0.849);
		};
	};

	node L_LNLBE_MEDD2_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_MEDD2_BLOCK_EW;
			NAME = "L_LNLBE_MEDD2_BLOCK_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node L_LNLBE_MEDD2_DISP_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLBE_MEDD2_DISP_EW;
			NAME = "L_LNLBE_MEDD2_DISP_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node L_LNLW_MED_PATHO
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_MED_PATHO;
			NAME = "L_LNLW_MED_PATHO";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DEMY, BLOCK, AXONAL, V_E_REIN, E_REIN);
			PROBABILITIES = (0.8, 0.12, 0.07, 0.005, 0.005);
		};
	};

	node L_MED_RD_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_RD_WA;
			NAME = "L_MED_RD_WA";
		};
		PARENTS = (L_LNLW_MED_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node L_LNLW_MEDD2_RD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_MEDD2_RD_WD;
			NAME = "L_LNLW_MEDD2_RD_WD";
		};
		PARENTS = (L_LNLW_MED_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node L_MEDD2_RD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_RD_WD;
			NAME = "L_MEDD2_RD_WD";
		};
		PARENTS = (L_LNLW_MEDD2_RD_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_LNLW_MED_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_MED_SEV;
			NAME = "L_LNLW_MED_SEV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (0.895, 0.06, 0.03, 0.01, 0.005);
		};
	};

	node L_LNLW_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_APB_NEUR_ACT;
			NAME = "L_LNLW_APB_NEUR_ACT";
		};
		PARENTS = (L_LNLW_MED_TIME, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node L_LNLW_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_APB_MUDENS;
			NAME = "L_LNLW_APB_MUDENS";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_TIME, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 0.3, 0.6, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node L_LNLW_MEDD2_LD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_MEDD2_LD_WD;
			NAME = "L_LNLW_MEDD2_LD_WD";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.25, 0.5, 0.25, 0, 0.05, 0.3, 0.5, 0.15, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);
		};
	};

	node L_MEDD2_LD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_LD_WD;
			NAME = "L_MEDD2_LD_WD";
		};
		PARENTS = (L_LNLW_MEDD2_LD_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_LSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_LSLOW_WD;
			NAME = "L_MEDD2_LSLOW_WD";
		};
		PARENTS = (L_MEDD2_RD_WD, L_MEDD2_LD_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.0021, 0.0042, 0.0295, 0.9642, 0, 0.0012, 0.0025, 0.0194, 0.9769, 0, 0.00069993, 0.00149985, 0.0119988, 0.985801, 0, 0.00020002, 0.00050005, 0.00460046, 0.994499, 0.00020002, 0.0001, 0.0002, 0.0014, 0.083, 0.9153, 0.0001, 0.0001, 0.0008, 0.0533, 0.9457, 0, 0.0001, 0.0004, 0.0319, 0.9676, 0, 0, 0, 0.00350035, 0.9965);
		};
	};

	node L_LNLW_MEDD2_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_MEDD2_BLOCK_WD;
			NAME = "L_LNLW_MEDD2_BLOCK_WD";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.3, 0.6, 0.1, 0, 0, 0.1, 0.5, 0.3, 0.1, 0, 0, 0.05, 0.2, 0.55, 0.2, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.6, 0.2, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_LNLW_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_APB_DENERV;
			NAME = "L_LNLW_APB_DENERV";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_TIME, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 0.1, 0.6, 0.25, 0.05, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 0.45, 0.45, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node L_LNLW_MED_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_MED_BLOCK;
			NAME = "L_LNLW_MED_BLOCK";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_MED_LD_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_LD_WA;
			NAME = "L_MED_LD_WA";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.25, 0.5, 0.25, 0, 0.05, 0.3, 0.5, 0.15, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 0, 0, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node L_MED_RDLDDEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_RDLDDEL;
			NAME = "L_MED_RDLDDEL";
		};
		PARENTS = (L_MED_RD_WA, L_MED_LD_WA);
		DEFINITION =
		{
			NAMESTATES = (MS3_1, MS3_9, MS4_7, MS10_1, MS20_1);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0964, 0.7981, 0.1055, 0, 0, 0.0032, 0.127, 0.8698, 0, 0, 0.00090009, 0.00280028, 0.0147015, 0.981598, 0, 0.0019, 0.5257, 0.4724, 0, 0, 0.00019998, 0.0414958, 0.958304, 0, 0, 0.0001, 0.0144, 0.9855, 0, 0, 0.00019998, 0.00059994, 0.00369963, 0.9955, 0, 0.0002, 0.0304, 0.9694, 0, 0, 0.0001, 0.0142, 0.9857, 0, 0, 0, 0.009, 0.9808, 0.0102, 0, 0, 0.0002, 0.0012, 0.9984, 0.0002);
		};
	};

	node L_LNLW_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_APB_MUSIZE;
			NAME = "L_LNLW_APB_MUSIZE";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_TIME, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_LNLW_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_APB_DE_REGEN;
			NAME = "L_LNLW_APB_DE_REGEN";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_TIME, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_LNLW_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_APB_MALOSS;
			NAME = "L_LNLW_APB_MALOSS";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.1, 0.9, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 0.25, 0.25, 0.25, 0.25, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_LNLW_MEDD2_SALOSS_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_MEDD2_SALOSS_WD;
			NAME = "L_LNLW_MEDD2_SALOSS_WD";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.6, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0.1, 0.4, 0.4, 0.1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_LNLW_MEDD2_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLW_MEDD2_DISP_WD;
			NAME = "L_LNLW_MEDD2_DISP_WD";
		};
		PARENTS = (L_LNLW_MED_PATHO, L_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.3, 0.5, 0.2, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_OTHER_ISCH_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ISCH_DIFSLOW;
			NAME = "R_OTHER_ISCH_DIFSLOW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_SUR_RD_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_RD_CA;
			NAME = "R_SUR_RD_CA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_SUR_LD_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_LD_CA;
			NAME = "R_SUR_LD_CA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_SUR_LSLOW_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_LSLOW_CA;
			NAME = "R_SUR_LSLOW_CA";
		};
		PARENTS = (R_SUR_RD_CA, R_SUR_LD_CA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.0021, 0.0042, 0.0295, 0.9642, 0, 0.0012, 0.0025, 0.0194, 0.9769, 0, 0.00069993, 0.00149985, 0.0119988, 0.985801, 0, 0.00020002, 0.00050005, 0.00460046, 0.994499, 0.00020002, 0.0001, 0.0002, 0.0014, 0.083, 0.9153, 0.0001, 0.0001, 0.0008, 0.0533, 0.9457, 0, 0.0001, 0.0004, 0.0319, 0.9676, 0, 0, 0, 0.00350035, 0.9965);
		};
	};

	node R_LNL_ISCH_PATHO
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_ISCH_PATHO;
			NAME = "R_LNL_ISCH_PATHO";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DEMY, BLOCK, AXONAL, V_E_REIN, E_REIN);
			PROBABILITIES = (0.25, 0.25, 0.5, 0, 0);
		};
	};

	node R_LNL_ISCH_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_ISCH_SEV;
			NAME = "R_LNL_ISCH_SEV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (0.96, 0.02, 0.01, 0.005, 0.005);
		};
	};

	node R_LNL_ISCH_SALOSS_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_ISCH_SALOSS_CA;
			NAME = "R_LNL_ISCH_SALOSS_CA";
		};
		PARENTS = (R_LNL_ISCH_PATHO, R_LNL_ISCH_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.6, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0.1, 0.4, 0.4, 0.1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_OTHER_ISCH_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ISCH_SALOSS;
			NAME = "R_OTHER_ISCH_SALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_OTHER_ISCH_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ISCH_BLOCK;
			NAME = "R_OTHER_ISCH_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_OTHER_ISCH_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ISCH_DISP;
			NAME = "R_OTHER_ISCH_DISP";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_OTHER_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_DELT_DENERV;
			NAME = "R_OTHER_DELT_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MYDY_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_DELT_DENERV;
			NAME = "R_MYDY_DELT_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MYOP_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_DELT_DENERV;
			NAME = "R_MYOP_DELT_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MYOP_MYDY_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_DELT_DENERV;
			NAME = "R_MYOP_MYDY_DELT_DENERV";
		};
		PARENTS = (R_MYDY_DELT_DENERV, R_MYOP_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_OTHER_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_DELT_NEUR_ACT;
			NAME = "R_OTHER_DELT_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node R_OTHER_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_DELT_MUDENS;
			NAME = "R_OTHER_DELT_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYAS_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_DELT_MUDENS;
			NAME = "R_MYAS_DELT_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYAS_OTHER_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_OTHER_DELT_MUDENS;
			NAME = "R_MYAS_OTHER_DELT_MUDENS";
		};
		PARENTS = (R_OTHER_DELT_MUDENS, R_MYAS_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_MYDY_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_DELT_MUDENS;
			NAME = "R_MYDY_DELT_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYOP_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_DELT_MUDENS;
			NAME = "R_MYOP_DELT_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYOP_MYDY_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_DELT_MUDENS;
			NAME = "R_MYOP_MYDY_DELT_MUDENS";
		};
		PARENTS = (R_MYDY_DELT_MUDENS, R_MYOP_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_MUSCLE_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_DELT_MUDENS;
			NAME = "R_MUSCLE_DELT_MUDENS";
		};
		PARENTS = (R_MYAS_OTHER_DELT_MUDENS, R_MYOP_MYDY_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_DELT_VOL_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_VOL_ACT;
			NAME = "R_DELT_VOL_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, REDUCED, V_RED, ABSENT);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_OTHER_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_DELT_MALOSS;
			NAME = "R_OTHER_DELT_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_OTHER_AXIL_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_AXIL_BLOCK;
			NAME = "R_OTHER_AXIL_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_MYOP_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_DELT_MUSIZE;
			NAME = "R_MYOP_DELT_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_MYDY_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_DELT_MUSIZE;
			NAME = "R_MYDY_DELT_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_MYOP_MYDY_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_DELT_MUSIZE;
			NAME = "R_MYOP_MYDY_DELT_MUSIZE";
		};
		PARENTS = (R_MYOP_DELT_MUSIZE, R_MYDY_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_OTHER_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_DELT_MUSIZE;
			NAME = "R_OTHER_DELT_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_MUSCLE_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_DELT_MUSIZE;
			NAME = "R_MUSCLE_DELT_MUSIZE";
		};
		PARENTS = (R_MYOP_MYDY_DELT_MUSIZE, R_OTHER_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MYAS_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_DELT_NMT;
			NAME = "R_MYAS_DELT_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_OTHER_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_DELT_DE_REGEN;
			NAME = "R_OTHER_DELT_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_MYDY_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_DELT_DE_REGEN;
			NAME = "R_MYDY_DELT_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_MYOP_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_DELT_DE_REGEN;
			NAME = "R_MYOP_DELT_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_MYOP_MYDY_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_DELT_DE_REGEN;
			NAME = "R_MYOP_MYDY_DELT_DE_REGEN";
		};
		PARENTS = (R_MYDY_DELT_DE_REGEN, R_MYOP_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_MUSCLE_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_DELT_DE_REGEN;
			NAME = "R_MUSCLE_DELT_DE_REGEN";
		};
		PARENTS = (R_OTHER_DELT_DE_REGEN, R_MYOP_MYDY_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_LNLPC5_AXIL_PATHO
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_AXIL_PATHO;
			NAME = "R_LNLPC5_AXIL_PATHO";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DEMY, BLOCK, AXONAL, V_E_REIN, E_REIN);
			PROBABILITIES = (0.6, 0.19, 0.2, 0.005, 0.005);
		};
	};

	node R_AXIL_RD_ED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_AXIL_RD_ED;
			NAME = "R_AXIL_RD_ED";
		};
		PARENTS = (R_LNLPC5_AXIL_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node R_LNLPC5_AXIL_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_AXIL_DIFSLOW;
			NAME = "R_LNLPC5_AXIL_DIFSLOW";
		};
		PARENTS = (R_LNLPC5_AXIL_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0);
		};
	};

	node R_LNLPC5_AXIL_TIME
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_AXIL_TIME;
			NAME = "R_LNLPC5_AXIL_TIME";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (ACUTE, SUBACUTE, CHRONIC, OLD);
			PROBABILITIES = (0.05, 0.6, 0.3, 0.05);
		};
	};

	node R_LNLPC5_AXIL_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_AXIL_SEV;
			NAME = "R_LNLPC5_AXIL_SEV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (0.980314, 0.0106925, 0.0049965, 0.0029979, 0.0009993);
		};
	};

	node R_LNLPC5_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DELT_MALOSS;
			NAME = "R_LNLPC5_DELT_MALOSS";
		};
		PARENTS = (R_LNLPC5_AXIL_PATHO, R_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.1, 0.9, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 0.25, 0.25, 0.25, 0.25, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_LNLPC5_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DELT_DE_REGEN;
			NAME = "R_LNLPC5_DELT_DE_REGEN";
		};
		PARENTS = (R_LNLPC5_AXIL_PATHO, R_LNLPC5_AXIL_TIME, R_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_LNLPC5_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DELT_MUDENS;
			NAME = "R_LNLPC5_DELT_MUDENS";
		};
		PARENTS = (R_LNLPC5_AXIL_PATHO, R_LNLPC5_AXIL_TIME, R_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 0.3, 0.6, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node R_LNLPC5_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DELT_DENERV;
			NAME = "R_LNLPC5_DELT_DENERV";
		};
		PARENTS = (R_LNLPC5_AXIL_PATHO, R_LNLPC5_AXIL_TIME, R_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 0.1, 0.6, 0.25, 0.05, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 0.45, 0.45, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node R_LNLPC5_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DELT_NEUR_ACT;
			NAME = "R_LNLPC5_DELT_NEUR_ACT";
		};
		PARENTS = (R_LNLPC5_AXIL_TIME, R_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLPC5_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DELT_MUSIZE;
			NAME = "R_LNLPC5_DELT_MUSIZE";
		};
		PARENTS = (R_LNLPC5_AXIL_PATHO, R_LNLPC5_AXIL_TIME, R_LNLPC5_AXIL_SEV);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_OTHER_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_DELT_NMT;
			NAME = "R_OTHER_DELT_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLW_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ADM_DENERV;
			NAME = "R_LNLW_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLLP_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_ADM_DENERV;
			NAME = "R_LNLLP_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLC8_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_ADM_DENERV;
			NAME = "R_LNLC8_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLC8_LP_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_ADM_DENERV;
			NAME = "R_LNLC8_LP_ADM_DENERV";
		};
		PARENTS = (R_LNLLP_ADM_DENERV, R_LNLC8_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_OTHER_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ADM_DENERV;
			NAME = "R_OTHER_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MYDY_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_ADM_DENERV;
			NAME = "R_MYDY_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MYOP_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_ADM_DENERV;
			NAME = "R_MYOP_ADM_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MYOP_MYDY_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_ADM_DENERV;
			NAME = "R_MYOP_MYDY_ADM_DENERV";
		};
		PARENTS = (R_MYDY_ADM_DENERV, R_MYOP_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_OTHER_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ADM_NEUR_ACT;
			NAME = "R_OTHER_ADM_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLW_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ADM_NEUR_ACT;
			NAME = "R_LNLW_ADM_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLLP_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_ADM_NEUR_ACT;
			NAME = "R_LNLLP_ADM_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLC8_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_ADM_NEUR_ACT;
			NAME = "R_LNLC8_ADM_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLC8_LP_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_ADM_NEUR_ACT;
			NAME = "R_LNLC8_LP_ADM_NEUR_ACT";
		};
		PARENTS = (R_LNLLP_ADM_NEUR_ACT, R_LNLC8_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_OTHER_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ADM_MUDENS;
			NAME = "R_OTHER_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYAS_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_ADM_MUDENS;
			NAME = "R_MYAS_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYAS_OTHER_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_OTHER_ADM_MUDENS;
			NAME = "R_MYAS_OTHER_ADM_MUDENS";
		};
		PARENTS = (R_OTHER_ADM_MUDENS, R_MYAS_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_MYDY_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_ADM_MUDENS;
			NAME = "R_MYDY_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYOP_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_ADM_MUDENS;
			NAME = "R_MYOP_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYOP_MYDY_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_ADM_MUDENS;
			NAME = "R_MYOP_MYDY_ADM_MUDENS";
		};
		PARENTS = (R_MYDY_ADM_MUDENS, R_MYOP_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_MUSCLE_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_ADM_MUDENS;
			NAME = "R_MUSCLE_ADM_MUDENS";
		};
		PARENTS = (R_MYAS_OTHER_ADM_MUDENS, R_MYOP_MYDY_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_LNLW_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ADM_MUDENS;
			NAME = "R_LNLW_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_LNLLP_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_ADM_MUDENS;
			NAME = "R_LNLLP_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_LNLC8_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_ADM_MUDENS;
			NAME = "R_LNLC8_ADM_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_LNLC8_LP_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_ADM_MUDENS;
			NAME = "R_LNLC8_LP_ADM_MUDENS";
		};
		PARENTS = (R_LNLLP_ADM_MUDENS, R_LNLC8_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_ADM_VOL_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_VOL_ACT;
			NAME = "R_ADM_VOL_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, REDUCED, V_RED, ABSENT);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_ULN_RD_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_RD_WA;
			NAME = "R_ULN_RD_WA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_ULN_LD_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_LD_WA;
			NAME = "R_ULN_LD_WA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_ULN_RDLDDEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_RDLDDEL;
			NAME = "R_ULN_RDLDDEL";
		};
		PARENTS = (R_ULN_RD_WA, R_ULN_LD_WA);
		DEFINITION =
		{
			NAMESTATES = (MS3_1, MS3_9, MS4_7, MS10_1, MS20_1);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0964, 0.7981, 0.1055, 0, 0, 0.0032, 0.127, 0.8698, 0, 0, 0.00090009, 0.00280028, 0.0147015, 0.981598, 0, 0.0019, 0.5257, 0.4724, 0, 0, 0.00019998, 0.0414958, 0.958304, 0, 0, 0.0001, 0.0144, 0.9855, 0, 0, 0.00019998, 0.00059994, 0.00369963, 0.9955, 0, 0.0002, 0.0304, 0.9694, 0, 0, 0.0001, 0.0142, 0.9857, 0, 0, 0, 0.009, 0.9808, 0.0102, 0, 0, 0.0002, 0.0012, 0.9984, 0.0002);
		};
	};

	node R_LNLW_ULN_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ULN_BLOCK;
			NAME = "R_LNLW_ULN_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_OTHER_ULN_BLOCK_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ULN_BLOCK_WA;
			NAME = "R_OTHER_ULN_BLOCK_WA";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLC8_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_ADM_MUSIZE;
			NAME = "R_LNLC8_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_LNLLP_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_ADM_MUSIZE;
			NAME = "R_LNLLP_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_LNLC8_LP_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_ADM_MUSIZE;
			NAME = "R_LNLC8_LP_ADM_MUSIZE";
		};
		PARENTS = (R_LNLC8_ADM_MUSIZE, R_LNLLP_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLW_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ADM_MUSIZE;
			NAME = "R_LNLW_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_MYOP_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_ADM_MUSIZE;
			NAME = "R_MYOP_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_MYDY_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_ADM_MUSIZE;
			NAME = "R_MYDY_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_MYOP_MYDY_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_ADM_MUSIZE;
			NAME = "R_MYOP_MYDY_ADM_MUSIZE";
		};
		PARENTS = (R_MYOP_ADM_MUSIZE, R_MYDY_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_OTHER_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ADM_MUSIZE;
			NAME = "R_OTHER_ADM_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_MUSCLE_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_ADM_MUSIZE;
			NAME = "R_MUSCLE_ADM_MUSIZE";
		};
		PARENTS = (R_MYOP_MYDY_ADM_MUSIZE, R_OTHER_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MYAS_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_ADM_NMT;
			NAME = "R_MYAS_ADM_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_OTHER_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ADM_DE_REGEN;
			NAME = "R_OTHER_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_MYDY_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_ADM_DE_REGEN;
			NAME = "R_MYDY_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_MYOP_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_ADM_DE_REGEN;
			NAME = "R_MYOP_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_MYOP_MYDY_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_ADM_DE_REGEN;
			NAME = "R_MYOP_MYDY_ADM_DE_REGEN";
		};
		PARENTS = (R_MYDY_ADM_DE_REGEN, R_MYOP_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_MUSCLE_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_ADM_DE_REGEN;
			NAME = "R_MUSCLE_ADM_DE_REGEN";
		};
		PARENTS = (R_OTHER_ADM_DE_REGEN, R_MYOP_MYDY_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_LNLW_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ADM_DE_REGEN;
			NAME = "R_LNLW_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_LNLE_ULN_TIME
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULN_TIME;
			NAME = "R_LNLE_ULN_TIME";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (ACUTE, SUBACUTE, CHRONIC, OLD);
			PROBABILITIES = (0.05, 0.6, 0.3, 0.05);
		};
	};

	node R_LNLLP_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_ADM_DE_REGEN;
			NAME = "R_LNLLP_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_LNLC8_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_ADM_DE_REGEN;
			NAME = "R_LNLC8_ADM_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_LNLC8_LP_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_ADM_DE_REGEN;
			NAME = "R_LNLC8_LP_ADM_DE_REGEN";
		};
		PARENTS = (R_LNLLP_ADM_DE_REGEN, R_LNLC8_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_OTHER_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ADM_NMT;
			NAME = "R_OTHER_ADM_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLW_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ADM_MALOSS;
			NAME = "R_LNLW_ADM_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLLP_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_ADM_MALOSS;
			NAME = "R_LNLLP_ADM_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLC8_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_ADM_MALOSS;
			NAME = "R_LNLC8_ADM_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLC8_LP_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_ADM_MALOSS;
			NAME = "R_LNLC8_LP_ADM_MALOSS";
		};
		PARENTS = (R_LNLLP_ADM_MALOSS, R_LNLC8_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_OTHER_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ADM_MALOSS;
			NAME = "R_OTHER_ADM_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLW_ULND5_RD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ULND5_RD_WD;
			NAME = "R_LNLW_ULND5_RD_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_LNLW_ULND5_LD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ULND5_LD_WD;
			NAME = "R_LNLW_ULND5_LD_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLW_ULND5_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ULND5_BLOCK_WD;
			NAME = "R_LNLW_ULND5_BLOCK_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_OTHER_ULND5_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ULND5_DIFSLOW;
			NAME = "R_OTHER_ULND5_DIFSLOW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLLP_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_ULND5_SALOSS;
			NAME = "R_LNLLP_ULND5_SALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLW_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ULND5_SALOSS;
			NAME = "R_LNLW_ULND5_SALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_OTHER_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ULND5_SALOSS;
			NAME = "R_OTHER_ULND5_SALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_OTHER_ULND5_RD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ULND5_RD;
			NAME = "R_OTHER_ULND5_RD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_ULND5_RD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_RD_WD;
			NAME = "R_ULND5_RD_WD";
		};
		PARENTS = (R_LNLW_ULND5_RD_WD, R_OTHER_ULND5_RD);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0.0139, 0.9821, 0.004, 0, 0.0150015, 0.984999, 0.0139, 0.9821, 0.004, 0.0002, 0.1057, 0.8941, 0, 0.0037, 0.9963, 0.00070007, 0.0968097, 0.90249, 0, 0.0155016, 0.984498, 0, 0.003, 0.997);
		};
	};

	node R_OTHER_ULND5_LD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ULND5_LD;
			NAME = "R_OTHER_ULND5_LD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_ULND5_LD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_LD_WD;
			NAME = "R_ULND5_LD_WD";
		};
		PARENTS = (R_LNLW_ULND5_LD_WD, R_OTHER_ULND5_LD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0186, 0.9584, 0.023, 0, 0, 0.0184, 0.9816, 0, 0.0010001, 0.00310031, 0.030203, 0.965697, 0.0186, 0.9584, 0.023, 0, 0, 0.0304, 0.9696, 0, 0, 0.0013, 0.9987, 0, 0.00039996, 0.00129987, 0.0140986, 0.984202, 0, 0.0184, 0.9816, 0, 0, 0.0013, 0.9987, 0, 0, 0.00029997, 0.9996, 9.999e-05, 0.0001, 0.0005, 0.006, 0.9934, 0.0010001, 0.00310031, 0.030203, 0.965697, 0.00039996, 0.00129987, 0.0140986, 0.984202, 0.0001, 0.0005, 0.006, 0.9934, 0.00010001, 0.00030003, 0.00380038, 0.9958);
		};
	};

	node R_ULND5_LSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_LSLOW_WD;
			NAME = "R_ULND5_LSLOW_WD";
		};
		PARENTS = (R_ULND5_RD_WD, R_ULND5_LD_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.0021, 0.0042, 0.0295, 0.9642, 0, 0.0012, 0.0025, 0.0194, 0.9769, 0, 0.00069993, 0.00149985, 0.0119988, 0.985801, 0, 0.00020002, 0.00050005, 0.00460046, 0.994499, 0.00020002, 0.0001, 0.0002, 0.0014, 0.083, 0.9153, 0.0001, 0.0001, 0.0008, 0.0533, 0.9457, 0, 0.0001, 0.0004, 0.0319, 0.9676, 0, 0, 0, 0.00350035, 0.9965);
		};
	};

	node R_OTHER_ULND5_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ULND5_BLOCK;
			NAME = "R_OTHER_ULND5_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLW_ULND5_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_ULND5_DISP_WD;
			NAME = "R_LNLW_ULND5_DISP_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLE_ULN_PATHO
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULN_PATHO;
			NAME = "R_LNLE_ULN_PATHO";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DEMY, BLOCK, AXONAL, V_E_REIN, E_REIN);
			PROBABILITIES = (0.6, 0.19, 0.2, 0.005, 0.005);
		};
	};

	node R_LNLE_ULN_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULN_DIFSLOW;
			NAME = "R_LNLE_ULN_DIFSLOW";
		};
		PARENTS = (R_LNLE_ULN_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0);
		};
	};

	node R_ULN_RD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_RD_EW;
			NAME = "R_ULN_RD_EW";
		};
		PARENTS = (R_LNLE_ULN_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node R_LNLE_ULND5_RD_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULND5_RD_E;
			NAME = "R_LNLE_ULND5_RD_E";
		};
		PARENTS = (R_LNLE_ULN_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node R_ULND5_RD_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_RD_E;
			NAME = "R_ULND5_RD_E";
		};
		PARENTS = (R_LNLE_ULND5_RD_E, R_OTHER_ULND5_RD);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0.0941, 0.9038, 0.0021, 0.0677, 0.2563, 0.676, 0.0941, 0.9038, 0.0021, 0.014, 0.3525, 0.6335, 0.0324, 0.1629, 0.8047, 0.0677, 0.2563, 0.676, 0.0324, 0.1629, 0.8047, 0.0351, 0.1479, 0.817);
		};
	};

	node R_LNLE_ULND5_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULND5_DIFSLOW;
			NAME = "R_LNLE_ULND5_DIFSLOW";
		};
		PARENTS = (R_LNLE_ULN_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0);
		};
	};

	node R_LNLE_ULN_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULN_SEV;
			NAME = "R_LNLE_ULN_SEV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (0.945, 0.025, 0.015, 0.01, 0.005);
		};
	};

	node R_LNLE_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ADM_MUSIZE;
			NAME = "R_LNLE_ADM_MUSIZE";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_TIME, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_LNLC8_LP_E_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_E_ADM_MUSIZE;
			NAME = "R_LNLC8_LP_E_ADM_MUSIZE";
		};
		PARENTS = (R_LNLC8_LP_ADM_MUSIZE, R_LNLE_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLE_ULND5_BLOCK_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULND5_BLOCK_E;
			NAME = "R_LNLE_ULND5_BLOCK_E";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.3, 0.6, 0.1, 0, 0, 0.1, 0.5, 0.3, 0.1, 0, 0, 0.05, 0.2, 0.55, 0.2, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.6, 0.2, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_LNLE_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ADM_DE_REGEN;
			NAME = "R_LNLE_ADM_DE_REGEN";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_TIME, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_LNLC8_LP_E_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_E_ADM_DE_REGEN;
			NAME = "R_LNLC8_LP_E_ADM_DE_REGEN";
		};
		PARENTS = (R_LNLE_ADM_DE_REGEN, R_LNLC8_LP_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_ULN_LD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_LD_EW;
			NAME = "R_ULN_LD_EW";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.25, 0.5, 0.25, 0, 0.05, 0.3, 0.5, 0.15, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 0, 0, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node R_ULN_RDLDCV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_RDLDCV_E;
			NAME = "R_ULN_RDLDCV_E";
		};
		PARENTS = (R_ULN_RD_EW, R_ULN_LD_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S27, M_S15, M_S07);
			PROBABILITIES = (0.90449, 0.0953095, 0.00020002, 0, 0, 0, 0.132, 0.6039, 0.2641, 0, 0, 0, 0.0139, 0.1839, 0.8022, 0, 0, 0, 0.00120012, 0.00670067, 0.0544054, 0.860086, 0.0776078, 0, 0.0115, 0.0333, 0.1509, 0.7319, 0.0724, 0, 0.00340034, 0.0122012, 0.0690069, 0.719672, 0.19532, 0.00040004, 0.0011, 0.0045, 0.0299, 0.5742, 0.3876, 0.0027, 0.0001, 0.0002, 0.0018, 0.0914, 0.6093, 0.2972, 0, 9.999e-05, 0.00109989, 0.146185, 0.807019, 0.0455954, 0, 0, 0.0002, 0.0581, 0.795, 0.1467, 0, 0, 0.0001, 0.0228, 0.6344, 0.3427, 0, 0, 0, 0.0014, 0.1063, 0.8923);
		};
	};

	node R_LNLE_ULN_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULN_BLOCK;
			NAME = "R_LNLE_ULN_BLOCK";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_LNLE_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULND5_SALOSS;
			NAME = "R_LNLE_ULND5_SALOSS";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.6, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0.1, 0.4, 0.4, 0.1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_LNLLP_E_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_E_ULND5_SALOSS;
			NAME = "R_LNLLP_E_ULND5_SALOSS";
		};
		PARENTS = (R_LNLLP_ULND5_SALOSS, R_LNLE_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLE_ULND5_LD_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULND5_LD_E;
			NAME = "R_LNLE_ULND5_LD_E";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.25, 0.5, 0.25, 0, 0.05, 0.3, 0.5, 0.15, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);
		};
	};

	node R_ULND5_LD_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_LD_E;
			NAME = "R_ULND5_LD_E";
		};
		PARENTS = (R_LNLE_ULND5_LD_E, R_OTHER_ULND5_LD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0186, 0.9584, 0.023, 0, 0, 0.0184, 0.9816, 0, 0.0010001, 0.00310031, 0.030203, 0.965697, 0.0186, 0.9584, 0.023, 0, 0, 0.0304, 0.9696, 0, 0, 0.0013, 0.9987, 0, 0.00039996, 0.00129987, 0.0140986, 0.984202, 0, 0.0184, 0.9816, 0, 0, 0.0013, 0.9987, 0, 0, 0.00029997, 0.9996, 9.999e-05, 0.0001, 0.0005, 0.006, 0.9934, 0.0010001, 0.00310031, 0.030203, 0.965697, 0.00039996, 0.00129987, 0.0140986, 0.984202, 0.0001, 0.0005, 0.006, 0.9934, 0.00010001, 0.00030003, 0.00380038, 0.9958);
		};
	};

	node R_ULND5_LSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_LSLOW_E;
			NAME = "R_ULND5_LSLOW_E";
		};
		PARENTS = (R_ULND5_RD_E, R_ULND5_LD_E);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.00840084, 0.0119012, 0.0619062, 0.917392, 0.00040004, 0.00690069, 0.010001, 0.0535053, 0.928693, 0.00090009, 0.00559944, 0.00829917, 0.0451955, 0.938906, 0.0019998, 0.0023, 0.0036, 0.0217, 0.8326, 0.1398, 0.00529947, 0.00619938, 0.0263974, 0.208179, 0.753925, 0.0049, 0.0057, 0.0244, 0.1966, 0.7684, 0.00440044, 0.00520052, 0.0224022, 0.183918, 0.784078, 0.0028, 0.0033, 0.0145, 0.1304, 0.849);
		};
	};

	node R_LNLE_ULND5_DISP_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ULND5_DISP_E;
			NAME = "R_LNLE_ULND5_DISP_E";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.3, 0.5, 0.2, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNLE_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ADM_DENERV;
			NAME = "R_LNLE_ADM_DENERV";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_TIME, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 0.1, 0.6, 0.25, 0.05, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 0.45, 0.45, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node R_LNLC8_LP_E_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_E_ADM_DENERV;
			NAME = "R_LNLC8_LP_E_ADM_DENERV";
		};
		PARENTS = (R_LNLE_ADM_DENERV, R_LNLC8_LP_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNLE_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ADM_MUDENS;
			NAME = "R_LNLE_ADM_MUDENS";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_TIME, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 0.3, 0.6, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node R_LNLC8_LP_E_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_E_ADM_MUDENS;
			NAME = "R_LNLC8_LP_E_ADM_MUDENS";
		};
		PARENTS = (R_LNLE_ADM_MUDENS, R_LNLC8_LP_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_LNLE_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ADM_MALOSS;
			NAME = "R_LNLE_ADM_MALOSS";
		};
		PARENTS = (R_LNLE_ULN_PATHO, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.1, 0.9, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 0.25, 0.25, 0.25, 0.25, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_LNLC8_LP_E_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_E_ADM_MALOSS;
			NAME = "R_LNLC8_LP_E_ADM_MALOSS";
		};
		PARENTS = (R_LNLE_ADM_MALOSS, R_LNLC8_LP_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLE_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_ADM_NEUR_ACT;
			NAME = "R_LNLE_ADM_NEUR_ACT";
		};
		PARENTS = (R_LNLE_ULN_TIME, R_LNLE_ULN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLC8_LP_E_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLC8_LP_E_ADM_NEUR_ACT;
			NAME = "R_LNLC8_LP_E_ADM_NEUR_ACT";
		};
		PARENTS = (R_LNLE_ADM_NEUR_ACT, R_LNLC8_LP_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_OTHER_ULND5_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_ULND5_DISP;
			NAME = "R_OTHER_ULND5_DISP";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLBE_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_APB_DENERV;
			NAME = "R_LNLBE_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLLP_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_APB_DENERV;
			NAME = "R_LNLLP_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLT1_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_APB_DENERV;
			NAME = "R_LNLT1_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLT1_LP_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_APB_DENERV;
			NAME = "R_LNLT1_LP_APB_DENERV";
		};
		PARENTS = (R_LNLLP_APB_DENERV, R_LNLT1_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNLT1_LP_BE_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_BE_APB_DENERV;
			NAME = "R_LNLT1_LP_BE_APB_DENERV";
		};
		PARENTS = (R_LNLBE_APB_DENERV, R_LNLT1_LP_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_MYDY_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_APB_DENERV;
			NAME = "R_MYDY_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MYOP_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_APB_DENERV;
			NAME = "R_MYOP_APB_DENERV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MYOP_MYDY_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_APB_DENERV;
			NAME = "R_MYOP_MYDY_APB_DENERV";
		};
		PARENTS = (R_MYDY_APB_DENERV, R_MYOP_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNLBE_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_APB_NEUR_ACT;
			NAME = "R_LNLBE_APB_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLLP_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_APB_NEUR_ACT;
			NAME = "R_LNLLP_APB_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLT1_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_APB_NEUR_ACT;
			NAME = "R_LNLT1_APB_NEUR_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLT1_LP_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_APB_NEUR_ACT;
			NAME = "R_LNLT1_LP_APB_NEUR_ACT";
		};
		PARENTS = (R_LNLLP_APB_NEUR_ACT, R_LNLT1_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLT1_LP_BE_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_BE_APB_NEUR_ACT;
			NAME = "R_LNLT1_LP_BE_APB_NEUR_ACT";
		};
		PARENTS = (R_LNLBE_APB_NEUR_ACT, R_LNLT1_LP_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MYAS_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_APB_MUDENS;
			NAME = "R_MYAS_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYDY_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_APB_MUDENS;
			NAME = "R_MYDY_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYOP_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_APB_MUDENS;
			NAME = "R_MYOP_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MYOP_MYDY_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_APB_MUDENS;
			NAME = "R_MYOP_MYDY_APB_MUDENS";
		};
		PARENTS = (R_MYDY_APB_MUDENS, R_MYOP_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_MUSCLE_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_APB_MUDENS;
			NAME = "R_MUSCLE_APB_MUDENS";
		};
		PARENTS = (R_MYAS_APB_MUDENS, R_MYOP_MYDY_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_LNLBE_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_APB_MUDENS;
			NAME = "R_LNLBE_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_LNLLP_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_APB_MUDENS;
			NAME = "R_LNLLP_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_LNLT1_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_APB_MUDENS;
			NAME = "R_LNLT1_APB_MUDENS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_LNLT1_LP_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_APB_MUDENS;
			NAME = "R_LNLT1_LP_APB_MUDENS";
		};
		PARENTS = (R_LNLLP_APB_MUDENS, R_LNLT1_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_LNLT1_LP_BE_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_BE_APB_MUDENS;
			NAME = "R_LNLT1_LP_BE_APB_MUDENS";
		};
		PARENTS = (R_LNLBE_APB_MUDENS, R_LNLT1_LP_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_APB_VOL_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_VOL_ACT;
			NAME = "R_APB_VOL_ACT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NORMAL, REDUCED, V_RED, ABSENT);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLBE_MED_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_MED_DIFSLOW;
			NAME = "R_LNLBE_MED_DIFSLOW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLT1_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_APB_MUSIZE;
			NAME = "R_LNLT1_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_LNLLP_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_APB_MUSIZE;
			NAME = "R_LNLLP_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_LNLT1_LP_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_APB_MUSIZE;
			NAME = "R_LNLT1_LP_APB_MUSIZE";
		};
		PARENTS = (R_LNLT1_APB_MUSIZE, R_LNLLP_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLBE_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_APB_MUSIZE;
			NAME = "R_LNLBE_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_LNLT1_LP_BE_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_BE_APB_MUSIZE;
			NAME = "R_LNLT1_LP_BE_APB_MUSIZE";
		};
		PARENTS = (R_LNLT1_LP_APB_MUSIZE, R_LNLBE_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MYOP_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_APB_MUSIZE;
			NAME = "R_MYOP_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_MYDY_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_APB_MUSIZE;
			NAME = "R_MYDY_APB_MUSIZE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0);
		};
	};

	node R_MYOP_MYDY_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_APB_MUSIZE;
			NAME = "R_MYOP_MYDY_APB_MUSIZE";
		};
		PARENTS = (R_MYOP_APB_MUSIZE, R_MYDY_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.9857, 0.0143, 0, 0, 0, 0, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0.9983, 0.0017, 0, 0, 0, 0, 0.8667, 0.1329, 0.0004, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0.9857, 0.0143, 0, 0, 0, 0, 0.0139014, 0.963696, 0.0224022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0, 0.0329, 0.9671, 0.3673, 0.6298, 0.0029, 0, 0, 0, 0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0, 0, 0, 0.0406041, 0.927793, 0.0316032, 0, 0, 0, 0.00039996, 0.109889, 0.779822, 0.109889, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0.0115012, 0.861686, 0.124912, 0.00190019, 0, 0, 0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004, 0, 0, 0, 0.0319, 0.9362, 0.0319, 0, 0, 0, 0.00030003, 0.123412, 0.876288, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.1596, 0.7368, 0.1016, 0.002, 0, 0, 0, 0.0792, 0.4758, 0.4066, 0.0384, 0, 0, 0, 0, 0.0329, 0.9671, 0, 0, 0, 0, 0.0028, 0.9972, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MYAS_APB_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_APB_NMT;
			NAME = "R_MYAS_APB_NMT";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_MYDY_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYDY_APB_DE_REGEN;
			NAME = "R_MYDY_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_MYOP_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_APB_DE_REGEN;
			NAME = "R_MYOP_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_MYOP_MYDY_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYOP_MYDY_APB_DE_REGEN;
			NAME = "R_MYOP_MYDY_APB_DE_REGEN";
		};
		PARENTS = (R_MYDY_APB_DE_REGEN, R_MYOP_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_LNLW_MED_TIME
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_MED_TIME;
			NAME = "R_LNLW_MED_TIME";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (ACUTE, SUBACUTE, CHRONIC, OLD);
			PROBABILITIES = (0.05, 0.33, 0.6, 0.02);
		};
	};

	node DIFFN_TIME
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_TIME;
			NAME = "DIFFN_TIME";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (ACUTE, SUBACUTE, CHRONIC, OLD);
			PROBABILITIES = (0.01, 0.25, 0.65, 0.09);
		};
	};

	node R_LNLBE_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_APB_DE_REGEN;
			NAME = "R_LNLBE_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_LNLLP_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_APB_DE_REGEN;
			NAME = "R_LNLLP_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_LNLT1_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_APB_DE_REGEN;
			NAME = "R_LNLT1_APB_DE_REGEN";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0);
		};
	};

	node R_LNLT1_LP_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_APB_DE_REGEN;
			NAME = "R_LNLT1_LP_APB_DE_REGEN";
		};
		PARENTS = (R_LNLLP_APB_DE_REGEN, R_LNLT1_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_LNLT1_LP_BE_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_BE_APB_DE_REGEN;
			NAME = "R_LNLT1_LP_BE_APB_DE_REGEN";
		};
		PARENTS = (R_LNLBE_APB_DE_REGEN, R_LNLT1_LP_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_MED_RD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_RD_EW;
			NAME = "R_MED_RD_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MED_LD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_LD_EW;
			NAME = "R_MED_LD_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MED_RDLDCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_RDLDCV_EW;
			NAME = "R_MED_RDLDCV_EW";
		};
		PARENTS = (R_MED_RD_EW, R_MED_LD_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S27, M_S15, M_S07);
			PROBABILITIES = (0.90449, 0.0953095, 0.00020002, 0, 0, 0, 0.132, 0.6039, 0.2641, 0, 0, 0, 0.0139, 0.1839, 0.8022, 0, 0, 0, 0.00120012, 0.00670067, 0.0544054, 0.860086, 0.0776078, 0, 0.0115, 0.0333, 0.1509, 0.7319, 0.0724, 0, 0.00340034, 0.0122012, 0.0690069, 0.719672, 0.19532, 0.00040004, 0.0011, 0.0045, 0.0299, 0.5742, 0.3876, 0.0027, 0.0001, 0.0002, 0.0018, 0.0914, 0.6093, 0.2972, 0, 9.999e-05, 0.00109989, 0.146185, 0.807019, 0.0455954, 0, 0, 0.0002, 0.0581, 0.795, 0.1467, 0, 0, 0.0001, 0.0228, 0.6344, 0.3427, 0, 0, 0, 0.0014, 0.1063, 0.8923);
		};
	};

	node R_LNLBE_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_APB_MALOSS;
			NAME = "R_LNLBE_APB_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLLP_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLLP_APB_MALOSS;
			NAME = "R_LNLLP_APB_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLT1_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_APB_MALOSS;
			NAME = "R_LNLT1_APB_MALOSS";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLT1_LP_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_APB_MALOSS;
			NAME = "R_LNLT1_LP_APB_MALOSS";
		};
		PARENTS = (R_LNLLP_APB_MALOSS, R_LNLT1_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLT1_LP_BE_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLT1_LP_BE_APB_MALOSS;
			NAME = "R_LNLT1_LP_BE_APB_MALOSS";
		};
		PARENTS = (R_LNLBE_APB_MALOSS, R_LNLT1_LP_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLBE_MED_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_MED_BLOCK;
			NAME = "R_LNLBE_MED_BLOCK";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLBE_MEDD2_DIFSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_MEDD2_DIFSLOW_WD;
			NAME = "R_LNLBE_MEDD2_DIFSLOW_WD";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_LNLBE_MEDD2_SALOSS_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_MEDD2_SALOSS_EW;
			NAME = "R_LNLBE_MEDD2_SALOSS_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLBE_MEDD2_RD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_MEDD2_RD_EW;
			NAME = "R_LNLBE_MEDD2_RD_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0);
		};
	};

	node R_MEDD2_RD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_RD_EW;
			NAME = "R_MEDD2_RD_EW";
		};
		PARENTS = (R_LNLBE_MEDD2_RD_EW);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNLBE_MEDD2_LD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_MEDD2_LD_EW;
			NAME = "R_LNLBE_MEDD2_LD_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node R_MEDD2_LD_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_LD_EW;
			NAME = "R_MEDD2_LD_EW";
		};
		PARENTS = (R_LNLBE_MEDD2_LD_EW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_LSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_LSLOW_EW;
			NAME = "R_MEDD2_LSLOW_EW";
		};
		PARENTS = (R_MEDD2_RD_EW, R_MEDD2_LD_EW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.00840084, 0.0119012, 0.0619062, 0.917392, 0.00040004, 0.00690069, 0.010001, 0.0535053, 0.928693, 0.00090009, 0.00559944, 0.00829917, 0.0451955, 0.938906, 0.0019998, 0.0023, 0.0036, 0.0217, 0.8326, 0.1398, 0.00529947, 0.00619938, 0.0263974, 0.208179, 0.753925, 0.0049, 0.0057, 0.0244, 0.1966, 0.7684, 0.00440044, 0.00520052, 0.0224022, 0.183918, 0.784078, 0.0028, 0.0033, 0.0145, 0.1304, 0.849);
		};
	};

	node R_LNLBE_MEDD2_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_MEDD2_BLOCK_EW;
			NAME = "R_LNLBE_MEDD2_BLOCK_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0);
		};
	};

	node R_LNLBE_MEDD2_DISP_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLBE_MEDD2_DISP_EW;
			NAME = "R_LNLBE_MEDD2_DISP_EW";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0);
		};
	};

	node DIFFN_PATHO
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_PATHO;
			NAME = "DIFFN_PATHO";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DEMY, BLOCK, AXONAL, V_E_REIN, E_REIN);
			PROBABILITIES = (0.086, 0.01, 0.9, 0.002, 0.002);
		};
	};

	node DIFFN_DISTR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_DISTR;
			NAME = "DIFFN_DISTR";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DIST, PROX, RANDOM);
			PROBABILITIES = (0.93, 0.02, 0.05);
		};
	};

	node DIFFN_TYPE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_TYPE;
			NAME = "DIFFN_TYPE";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (MOTOR, MIXED, SENS);
			PROBABILITIES = (0.06, 0.935, 0.005);
		};
	};

	node DIFFN_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_SEV;
			NAME = "DIFFN_SEV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (0.9, 0.05, 0.03, 0.02);
		};
	};

	node DIFFN_SENS_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_SENS_SEV;
			NAME = "DIFFN_SENS_SEV";
		};
		PARENTS = (DIFFN_TYPE, DIFFN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node DIFFN_S_SEV_DIST
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_S_SEV_DIST;
			NAME = "DIFFN_S_SEV_DIST";
		};
		PARENTS = (DIFFN_DISTR, DIFFN_SENS_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0.25, 0.45, 0.25, 0.05, 0.1, 0.4, 0.4, 0.1, 0.05, 0.15, 0.4, 0.4);
		};
	};

	node L_DIFFN_ULND5_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ULND5_DISP;
			NAME = "L_DIFFN_ULND5_DISP";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_LNLW_ULND5_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ULND5_DISP_WD;
			NAME = "L_DIFFN_LNLW_ULND5_DISP_WD";
		};
		PARENTS = (L_DIFFN_ULND5_DISP, L_LNLW_ULND5_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0, 0, 1, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0, 0, 1, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_ULND5_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DISP_WD;
			NAME = "L_ULND5_DISP_WD";
		};
		PARENTS = (L_DIFFN_LNLW_ULND5_DISP_WD, L_OTHER_ULND5_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_LNLE_DIFFN_ULND5_DISP_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_DIFFN_ULND5_DISP_E;
			NAME = "L_LNLE_DIFFN_ULND5_DISP_E";
		};
		PARENTS = (L_LNLE_ULND5_DISP_E, L_DIFFN_ULND5_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0, 0, 1, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0, 0, 1, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_ULND5_DISP_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DISP_E;
			NAME = "L_ULND5_DISP_E";
		};
		PARENTS = (L_LNLE_DIFFN_ULND5_DISP_E, L_OTHER_ULND5_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_ULND5_DISP_BEW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DISP_BEW;
			NAME = "L_ULND5_DISP_BEW";
		};
		PARENTS = (L_DIFFN_ULND5_DISP, L_OTHER_ULND5_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_ULND5_DISP_EWD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DISP_EWD;
			NAME = "L_ULND5_DISP_EWD";
		};
		PARENTS = (L_ULND5_DISP_BEW, L_ULND5_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (R0_15, R0_25, R0_35, R0_45, R0_55, R0_65, R0_75, R0_85, R0_95);
			PROBABILITIES = (0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0.0001, 0.2215, 0.7732, 0.0052, 0, 0, 0, 0, 0, 0, 0, 0, 0.131513, 0.857686, 0.0108011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315, 0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315, 0.1315, 0.8577, 0.0108, 0, 0, 0, 0, 0, 0, 0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001, 0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001, 0.9933, 0.0067, 0, 0, 0, 0, 0, 0, 0, 0.0404, 0.9192, 0.0404, 0, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0);
		};
	};

	node L_ULND5_DISP_BED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DISP_BED;
			NAME = "L_ULND5_DISP_BED";
		};
		PARENTS = (L_ULND5_DISP_BEW, L_ULND5_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.0008, 0.0097, 0.9895, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0024, 0.9975, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0.0004, 0.9996, 0, 0.0008, 0.0097, 0.9895, 0, 0.0001, 0.0024, 0.9975, 0, 0, 0.0004, 0.9996, 0, 0, 0.0002, 0.9998);
		};
	};

	node L_ULND5_DISP_EED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DISP_EED;
			NAME = "L_ULND5_DISP_EED";
		};
		PARENTS = (L_ULND5_DISP_BED, L_ULND5_DISP_E);
		DEFINITION =
		{
			NAMESTATES = (R0_15, R0_25, R0_35, R0_45, R0_55, R0_65, R0_75, R0_85, R0_95);
			PROBABILITIES = (0, 0, 0, 0, 0, 0.0404, 0.9192, 0.0404, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.3477, 0.6496, 0.0023, 0, 0, 0, 0, 0, 0, 0, 0.00230023, 0.649865, 0.347835, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0.0004, 0.3477, 0.6496, 0.0023, 0, 0, 0, 0, 0, 0, 0, 0.001, 0.499, 0.499, 0.001, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.2215, 0.7732, 0.0052, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0.4995, 0.4995, 0.001, 0, 0, 0, 0, 0, 0, 0.0004, 0.3477, 0.6496, 0.0023, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742);
		};
	};

	node L_DIFFN_ISCH_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ISCH_SALOSS;
			NAME = "L_DIFFN_ISCH_SALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0, 0.7, 0.3, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0.3, 0.5, 0.2, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_DIFFN_LNL_ISCH_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNL_ISCH_SALOSS;
			NAME = "L_DIFFN_LNL_ISCH_SALOSS";
		};
		PARENTS = (L_LNL_ISCH_SALOSS_CA, L_DIFFN_ISCH_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_SUR_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_SALOSS;
			NAME = "L_SUR_SALOSS";
		};
		PARENTS = (L_DIFFN_LNL_ISCH_SALOSS, L_OTHER_ISCH_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_ISCH_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ISCH_DIFSLOW;
			NAME = "L_DIFFN_ISCH_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node L_SUR_DIFSLOW_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_DIFSLOW_CA;
			NAME = "L_SUR_DIFSLOW_CA";
		};
		PARENTS = (L_DIFFN_ISCH_DIFSLOW, L_OTHER_ISCH_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node L_SUR_DSLOW_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_DSLOW_CA;
			NAME = "L_SUR_DSLOW_CA";
		};
		PARENTS = (L_SUR_DIFSLOW_CA, L_SUR_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (0.8825, 0.1175, 0, 0, 0, 0, 0, 0, 0, 0.346035, 0.650765, 0.00320032, 0, 0, 0, 0, 0, 0, 0.0641, 0.8105, 0.1254, 0, 0, 0, 0, 0, 0, 0.00410041, 0.152715, 0.784878, 0.0583058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0639064, 0.240224, 0.461546, 0.223522, 0.0108011, 0, 0, 0, 0, 0.0245, 0.1308, 0.4221, 0.38, 0.0426, 0, 0, 0, 0, 0.0078, 0.0585, 0.3098, 0.5006, 0.123, 0.0003, 0, 0, 0, 0.0012, 0.0133, 0.1276, 0.4624, 0.3871, 0.0084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0011, 0.0083, 0.0684, 0.2984, 0.5331, 0.0899, 0.0008, 0, 0, 0.0003, 0.003, 0.0335, 0.2043, 0.5689, 0.1865, 0.0035, 0, 0, 0.00010001, 0.0010001, 0.0144014, 0.122312, 0.524052, 0.325633, 0.0125013, 0, 0, 0, 0.0002, 0.0034, 0.043, 0.3319, 0.551, 0.0705, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00040004, 0.00120012, 0.00530053, 0.0214021, 0.0884088, 0.280828, 0.447045, 0.155416, 0, 0.00019996, 0.00069986, 0.00319936, 0.0139972, 0.064987, 0.243251, 0.460908, 0.212757, 0, 0.0001, 0.0004, 0.0018, 0.0089, 0.0461, 0.2037, 0.4588, 0.2802, 0, 0, 0.00010001, 0.00080008, 0.00410041, 0.0254025, 0.143314, 0.421242, 0.405041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_SUR_ALLCV_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_ALLCV_CA;
			NAME = "L_SUR_ALLCV_CA";
		};
		PARENTS = (L_SUR_DSLOW_CA, L_SUR_LSLOW_CA);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0235976, 0.257874, 0.640336, 0.0780922, 9.999e-05, 0, 0, 0, 0, 0, 0.0021, 0.1149, 0.7277, 0.1553, 0, 0, 0, 0, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0, 0, 9.999e-05, 0.00029997, 0.00219978, 0.0191981, 0.125187, 0.853015, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0017, 0.0421, 0.4597, 0.4852, 0.0113, 0, 0, 0, 0, 0, 0.0001, 0.0146, 0.3403, 0.6424, 0.0026, 0, 0, 0, 0.00010002, 0.00040008, 0.00210042, 0.010102, 0.0516103, 0.218444, 0.464693, 0.252551, 0, 0, 0, 0, 0.00019998, 0.00139986, 0.0136986, 0.10289, 0.881812, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.00190019, 0.0749075, 0.569457, 0.353235, 0.00050005, 0, 0, 0, 0, 0, 0.0007, 0.0498, 0.764, 0.1854, 0.0001, 0, 0, 0, 0.00010001, 0.00060006, 0.00340034, 0.0223022, 0.133613, 0.414541, 0.425443, 0, 0, 0, 0, 0.00010001, 0.00070007, 0.00860086, 0.0782078, 0.912391, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.00220022, 0.105111, 0.825182, 0.0675068, 0, 0, 0, 0, 0, 0, 0.0012, 0.137, 0.8421, 0.0197, 0, 0, 0, 0, 0.0001, 0.0008, 0.0073, 0.0649, 0.3063, 0.6206, 0, 0, 0, 0, 0, 0.00030003, 0.0050005, 0.0564056, 0.938294, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.00220022, 0.170017, 0.806281, 0.0215022, 0, 0, 0, 0, 0, 0, 0.0034, 0.4375, 0.5591, 0, 0, 0, 0, 0, 0.00010001, 0.00160016, 0.0226023, 0.174717, 0.80098, 0, 0, 0, 0, 0, 0.0001, 0.0026, 0.0379, 0.9594, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.00219978, 0.233777, 0.762024, 0.0019998, 0, 0, 0, 0, 0, 0, 0.0208021, 0.809481, 0.169717, 0, 0, 0, 0, 0, 0.00020002, 0.00520052, 0.0726073, 0.921992, 0, 0, 0, 0, 0, 0, 0.0012, 0.023, 0.9758, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.010099, 0.489451, 0.50045, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0392039, 0.960696, 0, 0, 0, 0, 0, 0, 0.00120012, 0.029603, 0.969197, 0, 0, 0, 0, 0, 0, 0.0005, 0.014, 0.9855, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0002, 0.0007, 0.0026, 0.0117, 0.0585, 0.2222, 0.704, 0, 0, 0.0001, 0.0002, 0.0009, 0.0051, 0.0329, 0.1636, 0.7972, 0, 0, 0, 0.0001, 0.0004, 0.0022, 0.0159, 0.0994, 0.882, 0, 0, 0, 0, 0.0001, 0.0006, 0.0058, 0.0523, 0.9412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_SUR_CV_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_CV_CA;
			NAME = "L_SUR_CV_CA";
		};
		PARENTS = (L_SUR_ALLCV_CA);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S_64);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00109989, 0.0377962, 0.29927, 0.423158, 0.190181, 0.0450955, 0.00339966, 0, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.0157016, 0.172817, 0.382538, 0.318732, 0.0946095, 0.0135013, 0.00180018, 0.00010001, 0, 0, 0, 0, 0, 0, 0.0001, 0.0103, 0.1527, 0.389, 0.3032, 0.1168, 0.0247, 0.003, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0554, 0.3435, 0.4067, 0.1669, 0.0241, 0.0026, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0.0054, 0.2321, 0.5116, 0.2174, 0.0304, 0.003, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.09981, 0.566757, 0.285729, 0.0440044, 0.00350035, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.146285, 0.690931, 0.152885, 0.00949905, 0.00039996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1754, 0.7847, 0.0388, 0.0011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ULND5_SALOSS;
			NAME = "R_DIFFN_ULND5_SALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0, 0.7, 0.3, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0.3, 0.5, 0.2, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_DIFFN_LNLW_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ULND5_SALOSS;
			NAME = "R_DIFFN_LNLW_ULND5_SALOSS";
		};
		PARENTS = (R_DIFFN_ULND5_SALOSS, R_LNLW_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_LNL_DIFFN_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_ULND5_SALOSS;
			NAME = "R_LNL_DIFFN_ULND5_SALOSS";
		};
		PARENTS = (R_LNLLP_E_ULND5_SALOSS, R_DIFFN_LNLW_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_SALOSS;
			NAME = "R_ULND5_SALOSS";
		};
		PARENTS = (R_LNL_DIFFN_ULND5_SALOSS, R_OTHER_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_MEDD2_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_MEDD2_BLOCK;
			NAME = "R_DIFFN_MEDD2_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_MEDD2_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_BLOCK_EW;
			NAME = "R_MEDD2_BLOCK_EW";
		};
		PARENTS = (R_LNLBE_MEDD2_BLOCK_EW, R_DIFFN_MEDD2_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_MEDD2_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_MEDD2_BLOCK;
			NAME = "L_DIFFN_MEDD2_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_MEDD2_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_BLOCK_WD;
			NAME = "L_MEDD2_BLOCK_WD";
		};
		PARENTS = (L_DIFFN_MEDD2_BLOCK, L_LNLW_MEDD2_BLOCK_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_BLOCK_EW;
			NAME = "L_MEDD2_BLOCK_EW";
		};
		PARENTS = (L_LNLBE_MEDD2_BLOCK_EW, L_DIFFN_MEDD2_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_ULND5_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ULND5_BLOCK;
			NAME = "L_DIFFN_ULND5_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_LNLW_ULND5_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ULND5_BLOCK_WD;
			NAME = "L_DIFFN_LNLW_ULND5_BLOCK_WD";
		};
		PARENTS = (L_DIFFN_ULND5_BLOCK, L_LNLW_ULND5_BLOCK_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_BLOCK_WD;
			NAME = "L_ULND5_BLOCK_WD";
		};
		PARENTS = (L_DIFFN_LNLW_ULND5_BLOCK_WD, L_OTHER_ULND5_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_LNLE_DIFFN_ULND5_BLOCK_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_DIFFN_ULND5_BLOCK_E;
			NAME = "L_LNLE_DIFFN_ULND5_BLOCK_E";
		};
		PARENTS = (L_LNLE_ULND5_BLOCK_E, L_DIFFN_ULND5_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_BLOCK_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_BLOCK_E;
			NAME = "L_ULND5_BLOCK_E";
		};
		PARENTS = (L_LNLE_DIFFN_ULND5_BLOCK_E, L_OTHER_ULND5_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_AMPR_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_AMPR_E;
			NAME = "L_ULND5_AMPR_E";
		};
		PARENTS = (L_ULND5_BLOCK_E, L_ULND5_DISP_EED);
		DEFINITION =
		{
			NAMESTATES = (R0_0, R0_1, R0_2, R0_3, R0_4, R0_5, R0_6, R0_7, R0_8, R0_9, R1_0, R_1_1);
			PROBABILITIES = (0, 0.0836, 0.9164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.5059, 0.4935, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.5217, 0.4707, 0.0076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00440044, 0.514751, 0.450345, 0.029903, 0.00060006, 0, 0, 0, 0, 0, 0, 0, 0, 0.0235, 0.5025, 0.4068, 0.0644, 0.0027, 0.0001, 0, 0, 0, 0, 0, 0, 0.00019998, 0.0638936, 0.433157, 0.40266, 0.089491, 0.009999, 0.00059994, 0, 0, 0, 0, 0, 0, 0.0026, 0.102, 0.4076, 0.3533, 0.1151, 0.0191, 0.0003, 0, 0, 0, 0, 0, 0, 0.008, 0.1231, 0.3775, 0.3319, 0.1488, 0.0107, 0, 0, 0, 0, 0, 0, 0.00039996, 0.0190981, 0.170383, 0.347065, 0.360564, 0.10249, 0, 0.9893, 0.0107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9815, 0.0185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0129, 0.9294, 0.0575, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1893, 0.7372, 0.0722, 0.0013, 0, 0, 0, 0, 0, 0, 0, 0, 0.0034, 0.3663, 0.5458, 0.0804, 0.004, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.0304, 0.4581, 0.4125, 0.092, 0.0066, 0.0004, 0, 0, 0, 0, 0, 0, 0.0011, 0.1122, 0.4488, 0.3467, 0.0798, 0.0106, 0.0008, 0, 0, 0, 0, 0, 0, 0.0108, 0.1733, 0.4244, 0.2869, 0.0885, 0.0158, 0.0003, 0, 0, 0, 0, 0, 0.0007, 0.0357, 0.2319, 0.3899, 0.2461, 0.0897, 0.006, 0, 0.9998, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.3122, 0.686, 0.0018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00070007, 0.89579, 0.10181, 0.00170017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.329, 0.6016, 0.067, 0.0023, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.0363, 0.6123, 0.3112, 0.0376, 0.0025, 0.0001, 0, 0, 0, 0, 0, 0, 0.0025, 0.277, 0.5116, 0.1781, 0.0275, 0.0031, 0.0002, 0, 0, 0, 0, 0, 0.00020002, 0.080208, 0.428643, 0.357136, 0.109011, 0.0218022, 0.00270027, 0.00030003, 0, 0, 0, 0, 0, 0.0156016, 0.223322, 0.418342, 0.240724, 0.0817082, 0.0167017, 0.00310031, 0.00050005, 0, 0, 0, 0, 0.00270027, 0.089709, 0.333533, 0.328233, 0.174217, 0.0542054, 0.0141014, 0.00310031, 0.00020002, 0, 0.9534, 0.0434, 0.0028, 0.0003, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.8829, 0.103, 0.0116, 0.002, 0.0004, 0.0001, 0, 0, 0, 0, 0, 0, 0.790442, 0.172565, 0.0280944, 0.00639872, 0.00169966, 0.0004999, 0.00019996, 9.998e-05, 0, 0, 0, 0, 0.689769, 0.238624, 0.0511051, 0.0139014, 0.00420042, 0.00140014, 0.00060006, 0.00020002, 0.00010001, 0.00010001, 0, 0, 0.5883, 0.2943, 0.0784, 0.0248, 0.0085, 0.0032, 0.0014, 0.0006, 0.0003, 0.0001, 0.0001, 0, 0.4912, 0.3361, 0.1079, 0.0388, 0.0148, 0.006, 0.0028, 0.0013, 0.0006, 0.0003, 0.0002, 0, 0.408, 0.3613, 0.1352, 0.054, 0.0224, 0.0097, 0.0048, 0.0023, 0.0012, 0.0007, 0.0004, 0, 0.332, 0.3737, 0.1612, 0.0709, 0.0319, 0.0148, 0.0077, 0.0038, 0.002, 0.0012, 0.0008, 0, 0.271373, 0.373963, 0.181982, 0.0869913, 0.0417958, 0.020398, 0.0110989, 0.00579942, 0.00319968, 0.0019998, 0.00139986, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_ULND5_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_BLOCK_EW;
			NAME = "L_ULND5_BLOCK_EW";
		};
		PARENTS = (L_DIFFN_ULND5_BLOCK, L_OTHER_ULND5_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_AMPR_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_AMPR_EW;
			NAME = "L_ULND5_AMPR_EW";
		};
		PARENTS = (L_ULND5_BLOCK_EW, L_ULND5_DISP_EWD);
		DEFINITION =
		{
			NAMESTATES = (R0_0, R0_1, R0_2, R0_3, R0_4, R0_5, R0_6, R0_7, R0_8, R0_9, R1_0, R_1_1);
			PROBABILITIES = (0, 0.282672, 0.716428, 0.00089991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.5547, 0.4268, 0.0183, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0.0090009, 0.512751, 0.415242, 0.0589059, 0.00390039, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0.0635, 0.4459, 0.3732, 0.0995, 0.0162, 0.0015, 0.0002, 0, 0, 0, 0, 0, 0.00290029, 0.114111, 0.39514, 0.319832, 0.131513, 0.029803, 0.00580058, 0.00090009, 0, 0, 0, 0, 0.0001, 0.0136, 0.1578, 0.3285, 0.2966, 0.1404, 0.0483, 0.0135, 0.0012, 0, 0, 0, 0, 0.00120024, 0.0385077, 0.174635, 0.30156, 0.261352, 0.144729, 0.065113, 0.0129026, 0, 0, 0, 0, 0.0001, 0.0062, 0.058, 0.1828, 0.2779, 0.2392, 0.1675, 0.0683, 0, 0, 0, 0, 0, 0.0009, 0.0157, 0.0823, 0.2012, 0.2516, 0.2559, 0.1924, 0, 0.9103, 0.0897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.8945, 0.1036, 0.0015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.114011, 0.716972, 0.159816, 0.00890089, 0.00030003, 0, 0, 0, 0, 0, 0, 0, 0.0026, 0.3111, 0.5155, 0.1499, 0.019, 0.0018, 0.0001, 0, 0, 0, 0, 0, 0, 0.0451, 0.3717, 0.4039, 0.1433, 0.0313, 0.0041, 0.0005, 0.0001, 0, 0, 0, 0, 0.0035, 0.1122, 0.3738, 0.3186, 0.1444, 0.0376, 0.0083, 0.0015, 0.0001, 0, 0, 0, 0.00020002, 0.0226023, 0.189019, 0.331733, 0.274427, 0.125213, 0.0431043, 0.0124012, 0.00130013, 0, 0, 0, 0, 0.00310031, 0.0615061, 0.210921, 0.305131, 0.234423, 0.121712, 0.0528053, 0.010401, 0, 0, 0, 0, 0.0004, 0.0166, 0.1002, 0.2325, 0.2777, 0.2039, 0.1251, 0.0436, 0, 0.9974, 0.0026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.3856, 0.6048, 0.0095, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.0073, 0.8191, 0.1638, 0.0095, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.386, 0.4993, 0.1036, 0.0101, 0.0008, 0.0001, 0, 0, 0, 0, 0, 0, 0.0913, 0.5259, 0.3027, 0.0681, 0.0104, 0.0014, 0.0002, 0, 0, 0, 0, 0, 0.0149985, 0.306869, 0.420358, 0.192881, 0.0511949, 0.0113989, 0.00189981, 0.00029997, 9.999e-05, 0, 0, 0, 0.0023, 0.1333, 0.3728, 0.3075, 0.1292, 0.0421, 0.0099, 0.0024, 0.0005, 0, 0, 0, 0.00030003, 0.0444044, 0.241324, 0.343134, 0.220822, 0.10251, 0.0337034, 0.010401, 0.0030003, 0.00040004, 0, 0, 0, 0.0138, 0.1311, 0.2956, 0.2729, 0.1711, 0.0745, 0.0286, 0.0104, 0.002, 0, 0.946705, 0.0491951, 0.00349965, 0.00049995, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.872113, 0.110989, 0.0134986, 0.00249975, 0.00059994, 0.00019998, 9.999e-05, 0, 0, 0, 0, 0, 0.778256, 0.180136, 0.0312062, 0.0075015, 0.0020004, 0.00060012, 0.00020004, 0.00010002, 0, 0, 0, 0, 0.678, 0.2436, 0.0548, 0.0156, 0.005, 0.0018, 0.0007, 0.0003, 0.0001, 0.0001, 0, 0, 0.5789, 0.2957, 0.082, 0.027, 0.0096, 0.0037, 0.0017, 0.0007, 0.0004, 0.0002, 0.0001, 0, 0.485, 0.334, 0.1106, 0.0411, 0.0162, 0.0068, 0.0033, 0.0015, 0.0008, 0.0004, 0.0003, 0, 0.40484, 0.356636, 0.136714, 0.0562056, 0.0240024, 0.0108011, 0.00540054, 0.00270027, 0.00140014, 0.00080008, 0.00050005, 0, 0.331634, 0.367127, 0.161268, 0.0726855, 0.0334933, 0.0159968, 0.0084983, 0.00439912, 0.00239952, 0.0014997, 0.0009998, 0, 0.2731, 0.3669, 0.1808, 0.0881, 0.0434, 0.0217, 0.012, 0.0064, 0.0036, 0.0023, 0.0017, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node DIFFN_DUMMY_3
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_DUMMY_3;
			NAME = "DIFFN_DUMMY_3";
		};
		PARENTS = (DIFFN_TIME, DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (dummy, State1);
			PROBABILITIES = (0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5);
		};
	};

	node L_DIFFN_ISCH_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ISCH_BLOCK;
			NAME = "L_DIFFN_ISCH_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_SUR_BLOCK_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_BLOCK_CA;
			NAME = "L_SUR_BLOCK_CA";
		};
		PARENTS = (L_DIFFN_ISCH_BLOCK, L_OTHER_ISCH_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_SUR_EFFAXLOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_EFFAXLOSS;
			NAME = "L_SUR_EFFAXLOSS";
		};
		PARENTS = (L_SUR_SALOSS, L_SUR_BLOCK_CA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_MEDD2_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_MEDD2_SALOSS;
			NAME = "R_DIFFN_MEDD2_SALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0, 0.7, 0.3, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0.3, 0.5, 0.2, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_DIFFN_MEDD2_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_MEDD2_SALOSS;
			NAME = "L_DIFFN_MEDD2_SALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0, 0.7, 0.3, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0.3, 0.5, 0.2, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_DIFFN_LNLW_MEDD2_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_MEDD2_SALOSS;
			NAME = "L_DIFFN_LNLW_MEDD2_SALOSS";
		};
		PARENTS = (L_DIFFN_MEDD2_SALOSS, L_LNLW_MEDD2_SALOSS_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_SALOSS;
			NAME = "L_MEDD2_SALOSS";
		};
		PARENTS = (L_LNLBE_MEDD2_SALOSS_EW, L_DIFFN_LNLW_MEDD2_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_EFFAXLOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_EFFAXLOSS;
			NAME = "L_MEDD2_EFFAXLOSS";
		};
		PARENTS = (L_MEDD2_SALOSS, L_MEDD2_BLOCK_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_ULND5_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ULND5_DIFSLOW;
			NAME = "L_DIFFN_ULND5_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node L_ULND5_DIFSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DIFSLOW_EW;
			NAME = "L_ULND5_DIFSLOW_EW";
		};
		PARENTS = (L_DIFFN_ULND5_DIFSLOW, L_OTHER_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node L_LNLE_DIFFN_ULND5_DIFSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_DIFFN_ULND5_DIFSLOW_E;
			NAME = "L_LNLE_DIFFN_ULND5_DIFSLOW_E";
		};
		PARENTS = (L_DIFFN_ULND5_DIFSLOW, L_LNLE_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node L_ULND5_DIFSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DIFSLOW_E;
			NAME = "L_ULND5_DIFSLOW_E";
		};
		PARENTS = (L_LNLE_DIFFN_ULND5_DIFSLOW_E, L_OTHER_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node L_LNLE_DIFFN_ULND5_DIFSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLE_DIFFN_ULND5_DIFSLOW_WD;
			NAME = "L_LNLE_DIFFN_ULND5_DIFSLOW_WD";
		};
		PARENTS = (L_DIFFN_ULND5_DIFSLOW, L_LNLE_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node L_ULND5_DIFSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DIFSLOW_WD;
			NAME = "L_ULND5_DIFSLOW_WD";
		};
		PARENTS = (L_LNLE_DIFFN_ULND5_DIFSLOW_WD, L_OTHER_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node R_DIFFN_MEDD2_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_MEDD2_DISP;
			NAME = "R_DIFFN_MEDD2_DISP";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_DISP_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_DISP_EW;
			NAME = "R_MEDD2_DISP_EW";
		};
		PARENTS = (R_LNLBE_MEDD2_DISP_EW, R_DIFFN_MEDD2_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_MEDD2_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_MEDD2_DISP;
			NAME = "L_DIFFN_MEDD2_DISP";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_DISP_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_DISP_EW;
			NAME = "L_MEDD2_DISP_EW";
		};
		PARENTS = (L_LNLBE_MEDD2_DISP_EW, L_DIFFN_MEDD2_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_LNLW_MEDD2_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_MEDD2_DISP_WD;
			NAME = "L_DIFFN_LNLW_MEDD2_DISP_WD";
		};
		PARENTS = (L_DIFFN_MEDD2_DISP, L_LNLW_MEDD2_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0, 0, 1, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0, 0, 1, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_DISP_WD;
			NAME = "L_MEDD2_DISP_WD";
		};
		PARENTS = (L_DIFFN_LNLW_MEDD2_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_DISP_EWD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_DISP_EWD;
			NAME = "L_MEDD2_DISP_EWD";
		};
		PARENTS = (L_MEDD2_DISP_EW, L_MEDD2_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (R0_15, R0_25, R0_35, R0_45, R0_55, R0_65, R0_75, R0_85, R0_95);
			PROBABILITIES = (0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0.0001, 0.2215, 0.7732, 0.0052, 0, 0, 0, 0, 0, 0, 0, 0, 0.131513, 0.857686, 0.0108011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315, 0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315, 0.1315, 0.8577, 0.0108, 0, 0, 0, 0, 0, 0, 0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001, 0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001, 0.9933, 0.0067, 0, 0, 0, 0, 0, 0, 0, 0.0404, 0.9192, 0.0404, 0, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0);
		};
	};

	node L_MEDD2_AMPR_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_AMPR_EW;
			NAME = "L_MEDD2_AMPR_EW";
		};
		PARENTS = (L_MEDD2_BLOCK_EW, L_MEDD2_DISP_EWD);
		DEFINITION =
		{
			NAMESTATES = (R0_0, R0_1, R0_2, R0_3, R0_4, R0_5, R0_6, R0_7, R0_8, R0_9, R1_0, R_1_1);
			PROBABILITIES = (0, 0.282672, 0.716428, 0.00089991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.5547, 0.4268, 0.0183, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0.0090009, 0.512751, 0.415242, 0.0589059, 0.00390039, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0.0635, 0.4459, 0.3732, 0.0995, 0.0162, 0.0015, 0.0002, 0, 0, 0, 0, 0, 0.00290029, 0.114111, 0.39514, 0.319832, 0.131513, 0.029803, 0.00580058, 0.00090009, 0, 0, 0, 0, 0.0001, 0.0136, 0.1578, 0.3285, 0.2966, 0.1404, 0.0483, 0.0135, 0.0012, 0, 0, 0, 0, 0.00120024, 0.0385077, 0.174635, 0.30156, 0.261352, 0.144729, 0.065113, 0.0129026, 0, 0, 0, 0, 0.0001, 0.0062, 0.058, 0.1828, 0.2779, 0.2392, 0.1675, 0.0683, 0, 0, 0, 0, 0, 0.0009, 0.0157, 0.0823, 0.2012, 0.2516, 0.2559, 0.1924, 0, 0.9103, 0.0897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.8945, 0.1036, 0.0015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.114011, 0.716972, 0.159816, 0.00890089, 0.00030003, 0, 0, 0, 0, 0, 0, 0, 0.0026, 0.3111, 0.5155, 0.1499, 0.019, 0.0018, 0.0001, 0, 0, 0, 0, 0, 0, 0.0451, 0.3717, 0.4039, 0.1433, 0.0313, 0.0041, 0.0005, 0.0001, 0, 0, 0, 0, 0.0035, 0.1122, 0.3738, 0.3186, 0.1444, 0.0376, 0.0083, 0.0015, 0.0001, 0, 0, 0, 0.00020002, 0.0226023, 0.189019, 0.331733, 0.274427, 0.125213, 0.0431043, 0.0124012, 0.00130013, 0, 0, 0, 0, 0.00310031, 0.0615061, 0.210921, 0.305131, 0.234423, 0.121712, 0.0528053, 0.010401, 0, 0, 0, 0, 0.0004, 0.0166, 0.1002, 0.2325, 0.2777, 0.2039, 0.1251, 0.0436, 0, 0.9974, 0.0026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.3856, 0.6048, 0.0095, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.0073, 0.8191, 0.1638, 0.0095, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.386, 0.4993, 0.1036, 0.0101, 0.0008, 0.0001, 0, 0, 0, 0, 0, 0, 0.0913, 0.5259, 0.3027, 0.0681, 0.0104, 0.0014, 0.0002, 0, 0, 0, 0, 0, 0.0149985, 0.306869, 0.420358, 0.192881, 0.0511949, 0.0113989, 0.00189981, 0.00029997, 9.999e-05, 0, 0, 0, 0.0023, 0.1333, 0.3728, 0.3075, 0.1292, 0.0421, 0.0099, 0.0024, 0.0005, 0, 0, 0, 0.00030003, 0.0444044, 0.241324, 0.343134, 0.220822, 0.10251, 0.0337034, 0.010401, 0.0030003, 0.00040004, 0, 0, 0, 0.0138, 0.1311, 0.2956, 0.2729, 0.1711, 0.0745, 0.0286, 0.0104, 0.002, 0, 0.946705, 0.0491951, 0.00349965, 0.00049995, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.872113, 0.110989, 0.0134986, 0.00249975, 0.00059994, 0.00019998, 9.999e-05, 0, 0, 0, 0, 0, 0.778256, 0.180136, 0.0312062, 0.0075015, 0.0020004, 0.00060012, 0.00020004, 0.00010002, 0, 0, 0, 0, 0.678, 0.2436, 0.0548, 0.0156, 0.005, 0.0018, 0.0007, 0.0003, 0.0001, 0.0001, 0, 0, 0.5789, 0.2957, 0.082, 0.027, 0.0096, 0.0037, 0.0017, 0.0007, 0.0004, 0.0002, 0.0001, 0, 0.485, 0.334, 0.1106, 0.0411, 0.0162, 0.0068, 0.0033, 0.0015, 0.0008, 0.0004, 0.0003, 0, 0.40484, 0.356636, 0.136714, 0.0562056, 0.0240024, 0.0108011, 0.00540054, 0.00270027, 0.00140014, 0.00080008, 0.00050005, 0, 0.331634, 0.367127, 0.161268, 0.0726855, 0.0334933, 0.0159968, 0.0084983, 0.00439912, 0.00239952, 0.0014997, 0.0009998, 0, 0.2731, 0.3669, 0.1808, 0.0881, 0.0434, 0.0217, 0.012, 0.0064, 0.0036, 0.0023, 0.0017, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_MEDD2_ALLAMP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_ALLAMP_WD;
			NAME = "L_MEDD2_ALLAMP_WD";
		};
		PARENTS = (L_MEDD2_EFFAXLOSS, L_MEDD2_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00);
			PROBABILITIES = (0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0.3192, 0.6448, 0.036, 0, 0, 0.0051, 0.994, 0.0009, 0, 0, 0, 0.9945, 0.0055, 0, 0, 0, 0, 0, 0.3443, 0.6228, 0.0329, 0, 0, 0.0474047, 0.939494, 0.0129013, 0.00020002, 0, 0, 0.9599, 0.0401, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0.0248, 0.9704, 0.0048, 0, 0, 0, 0.933093, 0.0669067, 0, 0, 0, 0.0001, 0.9994, 0.0005, 0, 0, 0, 0.7508, 0.2492, 0, 0, 0, 0, 0.1028, 0.8793, 0.0178, 0.0001, 0, 0, 0.8756, 0.1237, 0.0007, 0, 0, 0, 0.9969, 0.0031, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node L_MEDD2_AMP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_AMP_WD;
			NAME = "L_MEDD2_AMP_WD";
		};
		PARENTS = (L_MEDD2_ALLAMP_WD);
		DEFINITION =
		{
			NAMESTATES = (UV_0_63, UV0_88, UV1_25, UV1_77, UV2_50, UV3_50, UV5_00, UV7_10, UV10_0, UV14_0, UV20_0, UV28_0, UV40_0, UV57_0, UV_80_0);
			PROBABILITIES = (0.750075, 0.187819, 0.0476048, 0.0112011, 0.00260026, 0.00060006, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.3184, 0.2478, 0.178, 0.1158, 0.0688, 0.038, 0.0189, 0.0086, 0.0036, 0.0014, 0.0005, 0.0002, 0, 0, 0, 0.0117012, 0.0392039, 0.0935094, 0.167617, 0.218922, 0.209521, 0.146515, 0.0747075, 0.0287029, 0.00780078, 0.00160016, 0.00020002, 0, 0, 0, 0, 0, 9.999e-05, 0.00129987, 0.0108989, 0.0526947, 0.156284, 0.270173, 0.274273, 0.163584, 0.0568943, 0.0121988, 0.00149985, 9.999e-05, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00219978, 0.0217978, 0.10329, 0.259174, 0.325467, 0.209179, 0.0670933, 0.0107989, 0.00089991, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0072, 0.0656, 0.2449, 0.3735, 0.2388, 0.0624, 0.0072);
		};
	};

	node L_DIFFN_ISCH_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ISCH_DISP;
			NAME = "L_DIFFN_ISCH_DISP";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_SUR_DISP_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_DISP_CA;
			NAME = "L_SUR_DISP_CA";
		};
		PARENTS = (L_DIFFN_ISCH_DISP, L_OTHER_ISCH_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_SUR_ALLAMP_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_ALLAMP_CA;
			NAME = "L_SUR_ALLAMP_CA";
		};
		PARENTS = (L_SUR_EFFAXLOSS, L_SUR_DISP_CA);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00);
			PROBABILITIES = (0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0.3192, 0.6448, 0.036, 0, 0, 0.0051, 0.994, 0.0009, 0, 0, 0, 0.9945, 0.0055, 0, 0, 0, 0, 0, 0.3443, 0.6228, 0.0329, 0, 0, 0.0474047, 0.939494, 0.0129013, 0.00020002, 0, 0, 0.9599, 0.0401, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0.0248, 0.9704, 0.0048, 0, 0, 0, 0.933093, 0.0669067, 0, 0, 0, 0.0001, 0.9994, 0.0005, 0, 0, 0, 0.7508, 0.2492, 0, 0, 0, 0, 0.1028, 0.8793, 0.0178, 0.0001, 0, 0, 0.8756, 0.1237, 0.0007, 0, 0, 0, 0.9969, 0.0031, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node L_SUR_AMP_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_SUR_AMP_CA;
			NAME = "L_SUR_AMP_CA";
		};
		PARENTS = (L_SUR_ALLAMP_CA);
		DEFINITION =
		{
			NAMESTATES = (UV_0_63, UV0_88, UV1_25, UV1_77, UV2_50, UV3_50, UV5_00, UV7_10, UV10_0, UV14_0, UV20_0, UV28_0, UV_40_0);
			PROBABILITIES = (0.7619, 0.1816, 0.0438, 0.0099, 0.0022, 0.0005, 0.0001, 0, 0, 0, 0, 0, 0, 0.382938, 0.263226, 0.167317, 0.0957096, 0.049805, 0.0242024, 0.0105011, 0.00410041, 0.00150015, 0.00050005, 0.00020002, 0, 0, 0.0467047, 0.113511, 0.193019, 0.236624, 0.20492, 0.127713, 0.0557056, 0.0172017, 0.00390039, 0.00060006, 0.00010001, 0, 0, 0, 9.999e-05, 0.00109989, 0.0113989, 0.0648935, 0.190781, 0.308869, 0.264674, 0.123788, 0.030197, 0.00389961, 0.00029997, 0, 0, 0, 0, 0, 0.00010001, 0.00170017, 0.0227023, 0.131813, 0.318832, 0.339034, 0.152515, 0.0308031, 0.00250025, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00580058, 0.0746075, 0.318832, 0.412041, 0.168117, 0.020502);
		};
	};

	node R_DIFFN_ISCH_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ISCH_SALOSS;
			NAME = "R_DIFFN_ISCH_SALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0, 0.7, 0.3, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0.3, 0.5, 0.2, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_DIFFN_LNL_ISCH_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNL_ISCH_SALOSS;
			NAME = "R_DIFFN_LNL_ISCH_SALOSS";
		};
		PARENTS = (R_LNL_ISCH_SALOSS_CA, R_DIFFN_ISCH_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_SUR_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_SALOSS;
			NAME = "R_SUR_SALOSS";
		};
		PARENTS = (R_DIFFN_LNL_ISCH_SALOSS, R_OTHER_ISCH_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_ULND5_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ULND5_BLOCK;
			NAME = "R_DIFFN_ULND5_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_ULND5_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_BLOCK_EW;
			NAME = "R_ULND5_BLOCK_EW";
		};
		PARENTS = (R_DIFFN_ULND5_BLOCK, R_OTHER_ULND5_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_LNLW_ULND5_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ULND5_BLOCK_WD;
			NAME = "R_DIFFN_LNLW_ULND5_BLOCK_WD";
		};
		PARENTS = (R_DIFFN_ULND5_BLOCK, R_LNLW_ULND5_BLOCK_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_BLOCK_WD;
			NAME = "R_ULND5_BLOCK_WD";
		};
		PARENTS = (R_DIFFN_LNLW_ULND5_BLOCK_WD, R_OTHER_ULND5_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_EFFAXLOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_EFFAXLOSS;
			NAME = "R_ULND5_EFFAXLOSS";
		};
		PARENTS = (R_ULND5_SALOSS, R_ULND5_BLOCK_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLE_DIFFN_ULND5_BLOCK_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_DIFFN_ULND5_BLOCK_E;
			NAME = "R_LNLE_DIFFN_ULND5_BLOCK_E";
		};
		PARENTS = (R_LNLE_ULND5_BLOCK_E, R_DIFFN_ULND5_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_BLOCK_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_BLOCK_E;
			NAME = "R_ULND5_BLOCK_E";
		};
		PARENTS = (R_LNLE_DIFFN_ULND5_BLOCK_E, R_OTHER_ULND5_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_ULND5_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ULND5_DISP;
			NAME = "R_DIFFN_ULND5_DISP";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_ULND5_DISP_BEW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DISP_BEW;
			NAME = "R_ULND5_DISP_BEW";
		};
		PARENTS = (R_DIFFN_ULND5_DISP, R_OTHER_ULND5_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNLE_DIFFN_ULND5_DISP_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_DIFFN_ULND5_DISP_E;
			NAME = "R_LNLE_DIFFN_ULND5_DISP_E";
		};
		PARENTS = (R_LNLE_ULND5_DISP_E, R_DIFFN_ULND5_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0, 0, 1, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0, 0, 1, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_ULND5_DISP_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DISP_E;
			NAME = "R_ULND5_DISP_E";
		};
		PARENTS = (R_LNLE_DIFFN_ULND5_DISP_E, R_OTHER_ULND5_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_LNLW_ULND5_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ULND5_DISP_WD;
			NAME = "R_DIFFN_LNLW_ULND5_DISP_WD";
		};
		PARENTS = (R_DIFFN_ULND5_DISP, R_LNLW_ULND5_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0, 0, 1, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0, 0, 1, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_ULND5_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DISP_WD;
			NAME = "R_ULND5_DISP_WD";
		};
		PARENTS = (R_DIFFN_LNLW_ULND5_DISP_WD, R_OTHER_ULND5_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_ULND5_ALLAMP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_ALLAMP_WD;
			NAME = "R_ULND5_ALLAMP_WD";
		};
		PARENTS = (R_ULND5_EFFAXLOSS, R_ULND5_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00);
			PROBABILITIES = (0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0.3192, 0.6448, 0.036, 0, 0, 0.0051, 0.994, 0.0009, 0, 0, 0, 0.9945, 0.0055, 0, 0, 0, 0, 0, 0.3443, 0.6228, 0.0329, 0, 0, 0.0474047, 0.939494, 0.0129013, 0.00020002, 0, 0, 0.9599, 0.0401, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0.0248, 0.9704, 0.0048, 0, 0, 0, 0.933093, 0.0669067, 0, 0, 0, 0.0001, 0.9994, 0.0005, 0, 0, 0, 0.7508, 0.2492, 0, 0, 0, 0, 0.1028, 0.8793, 0.0178, 0.0001, 0, 0, 0.8756, 0.1237, 0.0007, 0, 0, 0, 0.9969, 0.0031, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node R_ULND5_AMP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_AMP_WD;
			NAME = "R_ULND5_AMP_WD";
		};
		PARENTS = (R_ULND5_ALLAMP_WD);
		DEFINITION =
		{
			NAMESTATES = (UV_0_63, UV0_88, UV1_25, UV1_77, UV2_50, UV3_50, UV5_00, UV7_10, UV10_0, UV14_0, UV20_0, UV28_0, UV40_0, UV57_0, UV_80_0);
			PROBABILITIES = (0.757776, 0.183818, 0.0452045, 0.010301, 0.00230023, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.379324, 0.261448, 0.167267, 0.0967806, 0.0511898, 0.0253949, 0.0112977, 0.00459908, 0.00179964, 0.00059988, 0.00019996, 9.998e-05, 0, 0, 0, 0.0652, 0.1312, 0.1955, 0.2207, 0.1859, 0.1188, 0.0562, 0.0198, 0.0054, 0.0011, 0.0002, 0, 0, 0, 0, 0, 0.00070007, 0.00550055, 0.029603, 0.09971, 0.205821, 0.271827, 0.223322, 0.117112, 0.0377038, 0.00760076, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0.00010001, 0.00120012, 0.0107011, 0.0579058, 0.174317, 0.289329, 0.272727, 0.142714, 0.0433043, 0.00710071, 0.00060006, 0, 0, 0, 0, 0, 0, 0.00020002, 0.00370037, 0.0337034, 0.141814, 0.30313, 0.312731, 0.160416, 0.0393039, 0.00470047, 0.00030003);
		};
	};

	node R_ULND5_DISP_EWD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DISP_EWD;
			NAME = "R_ULND5_DISP_EWD";
		};
		PARENTS = (R_ULND5_DISP_BEW, R_ULND5_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (R0_15, R0_25, R0_35, R0_45, R0_55, R0_65, R0_75, R0_85, R0_95);
			PROBABILITIES = (0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0.0001, 0.2215, 0.7732, 0.0052, 0, 0, 0, 0, 0, 0, 0, 0, 0.131513, 0.857686, 0.0108011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315, 0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315, 0.1315, 0.8577, 0.0108, 0, 0, 0, 0, 0, 0, 0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001, 0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001, 0.9933, 0.0067, 0, 0, 0, 0, 0, 0, 0, 0.0404, 0.9192, 0.0404, 0, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0);
		};
	};

	node R_ULND5_AMPR_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_AMPR_EW;
			NAME = "R_ULND5_AMPR_EW";
		};
		PARENTS = (R_ULND5_BLOCK_EW, R_ULND5_DISP_EWD);
		DEFINITION =
		{
			NAMESTATES = (R0_0, R0_1, R0_2, R0_3, R0_4, R0_5, R0_6, R0_7, R0_8, R0_9, R1_0, R_1_1);
			PROBABILITIES = (0, 0.282672, 0.716428, 0.00089991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.5547, 0.4268, 0.0183, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0.0090009, 0.512751, 0.415242, 0.0589059, 0.00390039, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0.0635, 0.4459, 0.3732, 0.0995, 0.0162, 0.0015, 0.0002, 0, 0, 0, 0, 0, 0.00290029, 0.114111, 0.39514, 0.319832, 0.131513, 0.029803, 0.00580058, 0.00090009, 0, 0, 0, 0, 0.0001, 0.0136, 0.1578, 0.3285, 0.2966, 0.1404, 0.0483, 0.0135, 0.0012, 0, 0, 0, 0, 0.00120024, 0.0385077, 0.174635, 0.30156, 0.261352, 0.144729, 0.065113, 0.0129026, 0, 0, 0, 0, 0.0001, 0.0062, 0.058, 0.1828, 0.2779, 0.2392, 0.1675, 0.0683, 0, 0, 0, 0, 0, 0.0009, 0.0157, 0.0823, 0.2012, 0.2516, 0.2559, 0.1924, 0, 0.9103, 0.0897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.8945, 0.1036, 0.0015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.114011, 0.716972, 0.159816, 0.00890089, 0.00030003, 0, 0, 0, 0, 0, 0, 0, 0.0026, 0.3111, 0.5155, 0.1499, 0.019, 0.0018, 0.0001, 0, 0, 0, 0, 0, 0, 0.0451, 0.3717, 0.4039, 0.1433, 0.0313, 0.0041, 0.0005, 0.0001, 0, 0, 0, 0, 0.0035, 0.1122, 0.3738, 0.3186, 0.1444, 0.0376, 0.0083, 0.0015, 0.0001, 0, 0, 0, 0.00020002, 0.0226023, 0.189019, 0.331733, 0.274427, 0.125213, 0.0431043, 0.0124012, 0.00130013, 0, 0, 0, 0, 0.00310031, 0.0615061, 0.210921, 0.305131, 0.234423, 0.121712, 0.0528053, 0.010401, 0, 0, 0, 0, 0.0004, 0.0166, 0.1002, 0.2325, 0.2777, 0.2039, 0.1251, 0.0436, 0, 0.9974, 0.0026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.3856, 0.6048, 0.0095, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.0073, 0.8191, 0.1638, 0.0095, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.386, 0.4993, 0.1036, 0.0101, 0.0008, 0.0001, 0, 0, 0, 0, 0, 0, 0.0913, 0.5259, 0.3027, 0.0681, 0.0104, 0.0014, 0.0002, 0, 0, 0, 0, 0, 0.0149985, 0.306869, 0.420358, 0.192881, 0.0511949, 0.0113989, 0.00189981, 0.00029997, 9.999e-05, 0, 0, 0, 0.0023, 0.1333, 0.3728, 0.3075, 0.1292, 0.0421, 0.0099, 0.0024, 0.0005, 0, 0, 0, 0.00030003, 0.0444044, 0.241324, 0.343134, 0.220822, 0.10251, 0.0337034, 0.010401, 0.0030003, 0.00040004, 0, 0, 0, 0.0138, 0.1311, 0.2956, 0.2729, 0.1711, 0.0745, 0.0286, 0.0104, 0.002, 0, 0.946705, 0.0491951, 0.00349965, 0.00049995, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.872113, 0.110989, 0.0134986, 0.00249975, 0.00059994, 0.00019998, 9.999e-05, 0, 0, 0, 0, 0, 0.778256, 0.180136, 0.0312062, 0.0075015, 0.0020004, 0.00060012, 0.00020004, 0.00010002, 0, 0, 0, 0, 0.678, 0.2436, 0.0548, 0.0156, 0.005, 0.0018, 0.0007, 0.0003, 0.0001, 0.0001, 0, 0, 0.5789, 0.2957, 0.082, 0.027, 0.0096, 0.0037, 0.0017, 0.0007, 0.0004, 0.0002, 0.0001, 0, 0.485, 0.334, 0.1106, 0.0411, 0.0162, 0.0068, 0.0033, 0.0015, 0.0008, 0.0004, 0.0003, 0, 0.40484, 0.356636, 0.136714, 0.0562056, 0.0240024, 0.0108011, 0.00540054, 0.00270027, 0.00140014, 0.00080008, 0.00050005, 0, 0.331634, 0.367127, 0.161268, 0.0726855, 0.0334933, 0.0159968, 0.0084983, 0.00439912, 0.00239952, 0.0014997, 0.0009998, 0, 0.2731, 0.3669, 0.1808, 0.0881, 0.0434, 0.0217, 0.012, 0.0064, 0.0036, 0.0023, 0.0017, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_ULND5_DISP_BED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DISP_BED;
			NAME = "R_ULND5_DISP_BED";
		};
		PARENTS = (R_ULND5_DISP_BEW, R_ULND5_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.0008, 0.0097, 0.9895, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0024, 0.9975, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0.0004, 0.9996, 0, 0.0008, 0.0097, 0.9895, 0, 0.0001, 0.0024, 0.9975, 0, 0, 0.0004, 0.9996, 0, 0, 0.0002, 0.9998);
		};
	};

	node R_ULND5_DISP_EED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DISP_EED;
			NAME = "R_ULND5_DISP_EED";
		};
		PARENTS = (R_ULND5_DISP_BED, R_ULND5_DISP_E);
		DEFINITION =
		{
			NAMESTATES = (R0_15, R0_25, R0_35, R0_45, R0_55, R0_65, R0_75, R0_85, R0_95);
			PROBABILITIES = (0, 0, 0, 0, 0, 0.0404, 0.9192, 0.0404, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.3477, 0.6496, 0.0023, 0, 0, 0, 0, 0, 0, 0, 0.00230023, 0.649865, 0.347835, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0.0004, 0.3477, 0.6496, 0.0023, 0, 0, 0, 0, 0, 0, 0, 0.001, 0.499, 0.499, 0.001, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.2215, 0.7732, 0.0052, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0.4995, 0.4995, 0.001, 0, 0, 0, 0, 0, 0, 0.0004, 0.3477, 0.6496, 0.0023, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742);
		};
	};

	node R_ULND5_AMPR_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_AMPR_E;
			NAME = "R_ULND5_AMPR_E";
		};
		PARENTS = (R_ULND5_BLOCK_E, R_ULND5_DISP_EED);
		DEFINITION =
		{
			NAMESTATES = (R0_0, R0_1, R0_2, R0_3, R0_4, R0_5, R0_6, R0_7, R0_8, R0_9, R1_0, R_1_1);
			PROBABILITIES = (0, 0.0836, 0.9164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.5059, 0.4935, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.5217, 0.4707, 0.0076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00440044, 0.514751, 0.450345, 0.029903, 0.00060006, 0, 0, 0, 0, 0, 0, 0, 0, 0.0235, 0.5025, 0.4068, 0.0644, 0.0027, 0.0001, 0, 0, 0, 0, 0, 0, 0.00019998, 0.0638936, 0.433157, 0.40266, 0.089491, 0.009999, 0.00059994, 0, 0, 0, 0, 0, 0, 0.0026, 0.102, 0.4076, 0.3533, 0.1151, 0.0191, 0.0003, 0, 0, 0, 0, 0, 0, 0.008, 0.1231, 0.3775, 0.3319, 0.1488, 0.0107, 0, 0, 0, 0, 0, 0, 0.00039996, 0.0190981, 0.170383, 0.347065, 0.360564, 0.10249, 0, 0.9893, 0.0107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9815, 0.0185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0129, 0.9294, 0.0575, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1893, 0.7372, 0.0722, 0.0013, 0, 0, 0, 0, 0, 0, 0, 0, 0.0034, 0.3663, 0.5458, 0.0804, 0.004, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.0304, 0.4581, 0.4125, 0.092, 0.0066, 0.0004, 0, 0, 0, 0, 0, 0, 0.0011, 0.1122, 0.4488, 0.3467, 0.0798, 0.0106, 0.0008, 0, 0, 0, 0, 0, 0, 0.0108, 0.1733, 0.4244, 0.2869, 0.0885, 0.0158, 0.0003, 0, 0, 0, 0, 0, 0.0007, 0.0357, 0.2319, 0.3899, 0.2461, 0.0897, 0.006, 0, 0.9998, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.3122, 0.686, 0.0018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00070007, 0.89579, 0.10181, 0.00170017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.329, 0.6016, 0.067, 0.0023, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.0363, 0.6123, 0.3112, 0.0376, 0.0025, 0.0001, 0, 0, 0, 0, 0, 0, 0.0025, 0.277, 0.5116, 0.1781, 0.0275, 0.0031, 0.0002, 0, 0, 0, 0, 0, 0.00020002, 0.080208, 0.428643, 0.357136, 0.109011, 0.0218022, 0.00270027, 0.00030003, 0, 0, 0, 0, 0, 0.0156016, 0.223322, 0.418342, 0.240724, 0.0817082, 0.0167017, 0.00310031, 0.00050005, 0, 0, 0, 0, 0.00270027, 0.089709, 0.333533, 0.328233, 0.174217, 0.0542054, 0.0141014, 0.00310031, 0.00020002, 0, 0.9534, 0.0434, 0.0028, 0.0003, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.8829, 0.103, 0.0116, 0.002, 0.0004, 0.0001, 0, 0, 0, 0, 0, 0, 0.790442, 0.172565, 0.0280944, 0.00639872, 0.00169966, 0.0004999, 0.00019996, 9.998e-05, 0, 0, 0, 0, 0.689769, 0.238624, 0.0511051, 0.0139014, 0.00420042, 0.00140014, 0.00060006, 0.00020002, 0.00010001, 0.00010001, 0, 0, 0.5883, 0.2943, 0.0784, 0.0248, 0.0085, 0.0032, 0.0014, 0.0006, 0.0003, 0.0001, 0.0001, 0, 0.4912, 0.3361, 0.1079, 0.0388, 0.0148, 0.006, 0.0028, 0.0013, 0.0006, 0.0003, 0.0002, 0, 0.408, 0.3613, 0.1352, 0.054, 0.0224, 0.0097, 0.0048, 0.0023, 0.0012, 0.0007, 0.0004, 0, 0.332, 0.3737, 0.1612, 0.0709, 0.0319, 0.0148, 0.0077, 0.0038, 0.002, 0.0012, 0.0008, 0, 0.271373, 0.373963, 0.181982, 0.0869913, 0.0417958, 0.020398, 0.0110989, 0.00579942, 0.00319968, 0.0019998, 0.00139986, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_ISCH_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ISCH_DIFSLOW;
			NAME = "R_DIFFN_ISCH_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node R_SUR_DIFSLOW_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_DIFSLOW_CA;
			NAME = "R_SUR_DIFSLOW_CA";
		};
		PARENTS = (R_DIFFN_ISCH_DIFSLOW, R_OTHER_ISCH_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node R_SUR_DSLOW_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_DSLOW_CA;
			NAME = "R_SUR_DSLOW_CA";
		};
		PARENTS = (R_SUR_DIFSLOW_CA, R_SUR_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (0.8825, 0.1175, 0, 0, 0, 0, 0, 0, 0, 0.346035, 0.650765, 0.00320032, 0, 0, 0, 0, 0, 0, 0.0641, 0.8105, 0.1254, 0, 0, 0, 0, 0, 0, 0.00410041, 0.152715, 0.784878, 0.0583058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0639064, 0.240224, 0.461546, 0.223522, 0.0108011, 0, 0, 0, 0, 0.0245, 0.1308, 0.4221, 0.38, 0.0426, 0, 0, 0, 0, 0.0078, 0.0585, 0.3098, 0.5006, 0.123, 0.0003, 0, 0, 0, 0.0012, 0.0133, 0.1276, 0.4624, 0.3871, 0.0084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0011, 0.0083, 0.0684, 0.2984, 0.5331, 0.0899, 0.0008, 0, 0, 0.0003, 0.003, 0.0335, 0.2043, 0.5689, 0.1865, 0.0035, 0, 0, 0.00010001, 0.0010001, 0.0144014, 0.122312, 0.524052, 0.325633, 0.0125013, 0, 0, 0, 0.0002, 0.0034, 0.043, 0.3319, 0.551, 0.0705, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00040004, 0.00120012, 0.00530053, 0.0214021, 0.0884088, 0.280828, 0.447045, 0.155416, 0, 0.00019996, 0.00069986, 0.00319936, 0.0139972, 0.064987, 0.243251, 0.460908, 0.212757, 0, 0.0001, 0.0004, 0.0018, 0.0089, 0.0461, 0.2037, 0.4588, 0.2802, 0, 0, 0.00010001, 0.00080008, 0.00410041, 0.0254025, 0.143314, 0.421242, 0.405041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_SUR_ALLCV_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_ALLCV_CA;
			NAME = "R_SUR_ALLCV_CA";
		};
		PARENTS = (R_SUR_DSLOW_CA, R_SUR_LSLOW_CA);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0235976, 0.257874, 0.640336, 0.0780922, 9.999e-05, 0, 0, 0, 0, 0, 0.0021, 0.1149, 0.7277, 0.1553, 0, 0, 0, 0, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0, 0, 9.999e-05, 0.00029997, 0.00219978, 0.0191981, 0.125187, 0.853015, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0017, 0.0421, 0.4597, 0.4852, 0.0113, 0, 0, 0, 0, 0, 0.0001, 0.0146, 0.3403, 0.6424, 0.0026, 0, 0, 0, 0.00010002, 0.00040008, 0.00210042, 0.010102, 0.0516103, 0.218444, 0.464693, 0.252551, 0, 0, 0, 0, 0.00019998, 0.00139986, 0.0136986, 0.10289, 0.881812, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.00190019, 0.0749075, 0.569457, 0.353235, 0.00050005, 0, 0, 0, 0, 0, 0.0007, 0.0498, 0.764, 0.1854, 0.0001, 0, 0, 0, 0.00010001, 0.00060006, 0.00340034, 0.0223022, 0.133613, 0.414541, 0.425443, 0, 0, 0, 0, 0.00010001, 0.00070007, 0.00860086, 0.0782078, 0.912391, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.00220022, 0.105111, 0.825182, 0.0675068, 0, 0, 0, 0, 0, 0, 0.0012, 0.137, 0.8421, 0.0197, 0, 0, 0, 0, 0.0001, 0.0008, 0.0073, 0.0649, 0.3063, 0.6206, 0, 0, 0, 0, 0, 0.00030003, 0.0050005, 0.0564056, 0.938294, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.00220022, 0.170017, 0.806281, 0.0215022, 0, 0, 0, 0, 0, 0, 0.0034, 0.4375, 0.5591, 0, 0, 0, 0, 0, 0.00010001, 0.00160016, 0.0226023, 0.174717, 0.80098, 0, 0, 0, 0, 0, 0.0001, 0.0026, 0.0379, 0.9594, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.00219978, 0.233777, 0.762024, 0.0019998, 0, 0, 0, 0, 0, 0, 0.0208021, 0.809481, 0.169717, 0, 0, 0, 0, 0, 0.00020002, 0.00520052, 0.0726073, 0.921992, 0, 0, 0, 0, 0, 0, 0.0012, 0.023, 0.9758, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.010099, 0.489451, 0.50045, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0392039, 0.960696, 0, 0, 0, 0, 0, 0, 0.00120012, 0.029603, 0.969197, 0, 0, 0, 0, 0, 0, 0.0005, 0.014, 0.9855, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0002, 0.0007, 0.0026, 0.0117, 0.0585, 0.2222, 0.704, 0, 0, 0.0001, 0.0002, 0.0009, 0.0051, 0.0329, 0.1636, 0.7972, 0, 0, 0, 0.0001, 0.0004, 0.0022, 0.0159, 0.0994, 0.882, 0, 0, 0, 0, 0.0001, 0.0006, 0.0058, 0.0523, 0.9412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_SUR_CV_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_CV_CA;
			NAME = "R_SUR_CV_CA";
		};
		PARENTS = (R_SUR_ALLCV_CA);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S_64);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00109989, 0.0377962, 0.29927, 0.423158, 0.190181, 0.0450955, 0.00339966, 0, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.0157016, 0.172817, 0.382538, 0.318732, 0.0946095, 0.0135013, 0.00180018, 0.00010001, 0, 0, 0, 0, 0, 0, 0.0001, 0.0103, 0.1527, 0.389, 0.3032, 0.1168, 0.0247, 0.003, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0554, 0.3435, 0.4067, 0.1669, 0.0241, 0.0026, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0.0054, 0.2321, 0.5116, 0.2174, 0.0304, 0.003, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.09981, 0.566757, 0.285729, 0.0440044, 0.00350035, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.146285, 0.690931, 0.152885, 0.00949905, 0.00039996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1754, 0.7847, 0.0388, 0.0011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_ISCH_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ISCH_BLOCK;
			NAME = "R_DIFFN_ISCH_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_SUR_BLOCK_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_BLOCK_CA;
			NAME = "R_SUR_BLOCK_CA";
		};
		PARENTS = (R_DIFFN_ISCH_BLOCK, R_OTHER_ISCH_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_SUR_EFFAXLOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_EFFAXLOSS;
			NAME = "R_SUR_EFFAXLOSS";
		};
		PARENTS = (R_SUR_SALOSS, R_SUR_BLOCK_CA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_ISCH_DISP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ISCH_DISP;
			NAME = "R_DIFFN_ISCH_DISP";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_SUR_DISP_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_DISP_CA;
			NAME = "R_SUR_DISP_CA";
		};
		PARENTS = (R_DIFFN_ISCH_DISP, R_OTHER_ISCH_DISP);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0.00790079, 0.60286, 0.389239, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0069, 0.993, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0.00790079, 0.60286, 0.389239, 0, 0.0001, 0.0069, 0.993, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_SUR_ALLAMP_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_ALLAMP_CA;
			NAME = "R_SUR_ALLAMP_CA";
		};
		PARENTS = (R_SUR_EFFAXLOSS, R_SUR_DISP_CA);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00);
			PROBABILITIES = (0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0.3192, 0.6448, 0.036, 0, 0, 0.0051, 0.994, 0.0009, 0, 0, 0, 0.9945, 0.0055, 0, 0, 0, 0, 0, 0.3443, 0.6228, 0.0329, 0, 0, 0.0474047, 0.939494, 0.0129013, 0.00020002, 0, 0, 0.9599, 0.0401, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0.0248, 0.9704, 0.0048, 0, 0, 0, 0.933093, 0.0669067, 0, 0, 0, 0.0001, 0.9994, 0.0005, 0, 0, 0, 0.7508, 0.2492, 0, 0, 0, 0, 0.1028, 0.8793, 0.0178, 0.0001, 0, 0, 0.8756, 0.1237, 0.0007, 0, 0, 0, 0.9969, 0.0031, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node R_SUR_AMP_CA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_SUR_AMP_CA;
			NAME = "R_SUR_AMP_CA";
		};
		PARENTS = (R_SUR_ALLAMP_CA);
		DEFINITION =
		{
			NAMESTATES = (UV_0_63, UV0_88, UV1_25, UV1_77, UV2_50, UV3_50, UV5_00, UV7_10, UV10_0, UV14_0, UV20_0, UV28_0, UV_40_0);
			PROBABILITIES = (0.7619, 0.1816, 0.0438, 0.0099, 0.0022, 0.0005, 0.0001, 0, 0, 0, 0, 0, 0, 0.382938, 0.263226, 0.167317, 0.0957096, 0.049805, 0.0242024, 0.0105011, 0.00410041, 0.00150015, 0.00050005, 0.00020002, 0, 0, 0.0467047, 0.113511, 0.193019, 0.236624, 0.20492, 0.127713, 0.0557056, 0.0172017, 0.00390039, 0.00060006, 0.00010001, 0, 0, 0, 9.999e-05, 0.00109989, 0.0113989, 0.0648935, 0.190781, 0.308869, 0.264674, 0.123788, 0.030197, 0.00389961, 0.00029997, 0, 0, 0, 0, 0, 0.00010001, 0.00170017, 0.0227023, 0.131813, 0.318832, 0.339034, 0.152515, 0.0308031, 0.00250025, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00580058, 0.0746075, 0.318832, 0.412041, 0.168117, 0.020502);
		};
	};

	node R_DIFFN_ULND5_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ULND5_DIFSLOW;
			NAME = "R_DIFFN_ULND5_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node R_ULND5_DIFSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DIFSLOW_EW;
			NAME = "R_ULND5_DIFSLOW_EW";
		};
		PARENTS = (R_DIFFN_ULND5_DIFSLOW, R_OTHER_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node R_ULND5_DSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DSLOW_EW;
			NAME = "R_ULND5_DSLOW_EW";
		};
		PARENTS = (R_ULND5_DIFSLOW_EW, R_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_ALLCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_ALLCV_EW;
			NAME = "R_ULND5_ALLCV_EW";
		};
		PARENTS = (R_ULND5_DSLOW_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0268973, 0.971303, 0.00179982, 0, 0, 0, 0, 0, 0, 0.0003, 0.0598, 0.8924, 0.0475, 0, 0, 0, 0, 0, 0, 0.0001, 0.0637, 0.9111, 0.0251, 0, 0, 0, 0, 0, 0, 0.0001, 0.0544, 0.9384, 0.0071, 0, 0, 0, 0, 0, 0, 0.0002, 0.0486, 0.8875, 0.0637, 0, 0, 0, 0, 0, 0, 0.00020002, 0.0950095, 0.89739, 0.00740074, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0973097, 0.285529, 0.583358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_CV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_CV_EW;
			NAME = "R_ULND5_CV_EW";
		};
		PARENTS = (R_ULND5_ALLCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72, M_S_76);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0019, 0.0226, 0.089, 0.2126, 0.2696, 0.2267, 0.1139, 0.0467, 0.0169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00089991, 0.0145985, 0.070293, 0.19968, 0.256474, 0.225677, 0.146485, 0.0614939, 0.0182982, 0.00479952, 0.00129987, 0, 0, 0, 0, 0, 0, 0, 0.00070014, 0.0179036, 0.0968194, 0.224145, 0.269354, 0.222344, 0.108322, 0.0408082, 0.015203, 0.00360072, 0.00070014, 0.00010002, 0, 0, 0, 0, 0, 0, 0, 0.00510102, 0.0670134, 0.24965, 0.339768, 0.211442, 0.0914183, 0.0284057, 0.0060012, 0.0010002, 0.00020004, 0, 0, 0, 0, 0, 0, 0, 0, 0.00040004, 0.039704, 0.258726, 0.379338, 0.222322, 0.0811081, 0.0153015, 0.00270027, 0.00040004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0161, 0.2633, 0.4429, 0.2163, 0.0524, 0.0077, 0.0012, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0293971, 0.510149, 0.375162, 0.0752925, 0.00909909, 0.00079992, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0411, 0.82, 0.1295, 0.009, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLE_DIFFN_ULND5_DIFSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_DIFFN_ULND5_DIFSLOW_E;
			NAME = "R_LNLE_DIFFN_ULND5_DIFSLOW_E";
		};
		PARENTS = (R_DIFFN_ULND5_DIFSLOW, R_LNLE_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node R_ULND5_DIFSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DIFSLOW_E;
			NAME = "R_ULND5_DIFSLOW_E";
		};
		PARENTS = (R_LNLE_DIFFN_ULND5_DIFSLOW_E, R_OTHER_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node R_ULND5_DSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DSLOW_E;
			NAME = "R_ULND5_DSLOW_E";
		};
		PARENTS = (R_ULND5_DIFSLOW_E, R_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_ALLCV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_ALLCV_E;
			NAME = "R_ULND5_ALLCV_E";
		};
		PARENTS = (R_ULND5_DSLOW_E, R_ULND5_LSLOW_E);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0264, 0.9149, 0.0587, 0, 0, 0, 0, 0, 0, 0, 0.0218, 0.9469, 0.0313, 0, 0, 0, 0, 0, 0.00030003, 0.00190019, 0.0140014, 0.0788079, 0.323832, 0.459646, 0.121212, 0.00030003, 0, 0, 0, 0.00010001, 0.00050005, 0.00410041, 0.0384038, 0.214521, 0.742374, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0006, 0.0944, 0.8841, 0.0209, 0, 0, 0, 0, 0, 0, 0.0007, 0.2183, 0.779, 0.002, 0, 0, 0, 0, 9.999e-05, 0.00039996, 0.00429957, 0.0320968, 0.19558, 0.504849, 0.260374, 0.00229977, 0, 0, 0, 0, 0.00020002, 0.00210021, 0.0239024, 0.164816, 0.808981, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.0018, 0.1956, 0.786, 0.0166, 0, 0, 0, 0, 0, 0, 0.0077, 0.4577, 0.5345, 0.0001, 0, 0, 0, 0, 0.0001, 0.0007, 0.0074, 0.0735, 0.4044, 0.4938, 0.0201, 0, 0, 0, 0, 0.0001, 0.0008, 0.0123, 0.1119, 0.8749, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.0026, 0.2655, 0.7316, 0.0003, 0, 0, 0, 0, 0, 0, 0.0166, 0.9182, 0.0652, 0, 0, 0, 0, 0, 0.0001, 0.001, 0.0172, 0.2179, 0.6479, 0.1159, 0, 0, 0, 0, 0, 0.0003, 0.0055, 0.0699, 0.9243, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.0044, 0.5355, 0.46, 0.0001, 0, 0, 0, 0, 0, 0, 0.0398, 0.946, 0.0142, 0, 0, 0, 0, 0, 9.999e-05, 0.00179982, 0.0558944, 0.460054, 0.482152, 0, 0, 0, 0, 0, 0.0001, 0.0021, 0.039, 0.9588, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.0047, 0.5053, 0.49, 0, 0, 0, 0, 0, 0, 0.0002, 0.1104, 0.8881, 0.0013, 0, 0, 0, 0, 0, 0.0001, 0.0041, 0.1033, 0.8925, 0, 0, 0, 0, 0, 0, 0.00069993, 0.0188981, 0.980402, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.0218, 0.8352, 0.143, 0, 0, 0, 0, 0, 0, 0.002, 0.3203, 0.6777, 0, 0, 0, 0, 0, 0, 0.0003, 0.0194, 0.9803, 0, 0, 0, 0, 0, 0, 0.0002, 0.0093, 0.9905, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0003, 0.001, 0.0036, 0.0154, 0.0712, 0.2467, 0.6617, 0, 0, 0.00010001, 0.00050005, 0.00190019, 0.00930093, 0.050405, 0.207221, 0.730573, 0, 0, 0, 0.0001, 0.0004, 0.0026, 0.019, 0.1153, 0.8626, 0, 0, 0, 0, 0.0001, 0.0006, 0.0062, 0.0562, 0.9369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_CV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_CV_E;
			NAME = "R_ULND5_CV_E";
		};
		PARENTS = (R_ULND5_ALLCV_E);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72, M_S_76);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.0009999, 0.0114988, 0.0482952, 0.138086, 0.214879, 0.248075, 0.174683, 0.106789, 0.0565943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00049995, 0.00729927, 0.0373963, 0.124288, 0.19878, 0.234277, 0.19878, 0.120088, 0.0511949, 0.019898, 0.00749925, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0094, 0.056, 0.1549, 0.2295, 0.2469, 0.1596, 0.0834, 0.0409, 0.0139, 0.0038, 0.001, 0.0003, 0, 0, 0, 0, 0, 0, 0.0027, 0.0385, 0.174, 0.2983, 0.2508, 0.146, 0.064, 0.0192, 0.0048, 0.0014, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0226, 0.1786, 0.3397, 0.2748, 0.1364, 0.0366, 0.009, 0.0018, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0092, 0.1868, 0.4188, 0.2744, 0.089, 0.0178, 0.0035, 0.0004, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0178982, 0.420158, 0.423158, 0.117288, 0.0189981, 0.00229977, 0.00019998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0263974, 0.783622, 0.173083, 0.0157984, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLE_DIFFN_ULND5_DIFSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLE_DIFFN_ULND5_DIFSLOW_WD;
			NAME = "R_LNLE_DIFFN_ULND5_DIFSLOW_WD";
		};
		PARENTS = (R_DIFFN_ULND5_DIFSLOW, R_LNLE_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node R_ULND5_DIFSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DIFSLOW_WD;
			NAME = "R_ULND5_DIFSLOW_WD";
		};
		PARENTS = (R_LNLE_DIFFN_ULND5_DIFSLOW_WD, R_OTHER_ULND5_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node R_ULND5_DSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_DSLOW_WD;
			NAME = "R_ULND5_DSLOW_WD";
		};
		PARENTS = (R_ULND5_DIFSLOW_WD, R_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_ALLCV_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_ALLCV_WD;
			NAME = "R_ULND5_ALLCV_WD";
		};
		PARENTS = (R_ULND5_DSLOW_WD, R_ULND5_LSLOW_WD);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0235976, 0.257874, 0.640336, 0.0780922, 9.999e-05, 0, 0, 0, 0, 0, 0.0021, 0.1149, 0.7277, 0.1553, 0, 0, 0, 0, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0, 0, 9.999e-05, 0.00029997, 0.00219978, 0.0191981, 0.125187, 0.853015, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0017, 0.0421, 0.4597, 0.4852, 0.0113, 0, 0, 0, 0, 0, 0.0001, 0.0146, 0.3403, 0.6424, 0.0026, 0, 0, 0, 0.00010002, 0.00040008, 0.00210042, 0.010102, 0.0516103, 0.218444, 0.464693, 0.252551, 0, 0, 0, 0, 0.00019998, 0.00139986, 0.0136986, 0.10289, 0.881812, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.00190019, 0.0749075, 0.569457, 0.353235, 0.00050005, 0, 0, 0, 0, 0, 0.0007, 0.0498, 0.764, 0.1854, 0.0001, 0, 0, 0, 0.00010001, 0.00060006, 0.00340034, 0.0223022, 0.133613, 0.414541, 0.425443, 0, 0, 0, 0, 0.00010001, 0.00070007, 0.00860086, 0.0782078, 0.912391, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.00220022, 0.105111, 0.825182, 0.0675068, 0, 0, 0, 0, 0, 0, 0.0012, 0.137, 0.8421, 0.0197, 0, 0, 0, 0, 0.0001, 0.0008, 0.0073, 0.0649, 0.3063, 0.6206, 0, 0, 0, 0, 0, 0.00030003, 0.0050005, 0.0564056, 0.938294, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.00220022, 0.170017, 0.806281, 0.0215022, 0, 0, 0, 0, 0, 0, 0.0034, 0.4375, 0.5591, 0, 0, 0, 0, 0, 0.00010001, 0.00160016, 0.0226023, 0.174717, 0.80098, 0, 0, 0, 0, 0, 0.0001, 0.0026, 0.0379, 0.9594, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.00219978, 0.233777, 0.762024, 0.0019998, 0, 0, 0, 0, 0, 0, 0.0208021, 0.809481, 0.169717, 0, 0, 0, 0, 0, 0.00020002, 0.00520052, 0.0726073, 0.921992, 0, 0, 0, 0, 0, 0, 0.0012, 0.023, 0.9758, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.010099, 0.489451, 0.50045, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0392039, 0.960696, 0, 0, 0, 0, 0, 0, 0.00120012, 0.029603, 0.969197, 0, 0, 0, 0, 0, 0, 0.0005, 0.014, 0.9855, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0002, 0.0007, 0.0026, 0.0117, 0.0585, 0.2222, 0.704, 0, 0, 0.0001, 0.0002, 0.0009, 0.0051, 0.0329, 0.1636, 0.7972, 0, 0, 0, 0.0001, 0.0004, 0.0022, 0.0159, 0.0994, 0.882, 0, 0, 0, 0, 0.0001, 0.0006, 0.0058, 0.0523, 0.9412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULND5_CV_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULND5_CV_WD;
			NAME = "R_ULND5_CV_WD";
		};
		PARENTS = (R_ULND5_ALLCV_WD);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S_72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00089991, 0.0232977, 0.133187, 0.319568, 0.319568, 0.156984, 0.039796, 0.00669933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.0160016, 0.10241, 0.29603, 0.310031, 0.180818, 0.0753075, 0.0162016, 0.00240024, 0.00030003, 0, 0, 0, 0, 0, 0, 0, 0.0005001, 0.0215043, 0.136227, 0.29946, 0.295759, 0.174535, 0.0562112, 0.0125025, 0.00290058, 0.00040008, 0, 0, 0, 0, 0, 0, 0, 0, 0.00520052, 0.090309, 0.329433, 0.365036, 0.156716, 0.0442044, 0.0080008, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00039996, 0.0517948, 0.339466, 0.40266, 0.161884, 0.0389961, 0.00429957, 0.00049995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0206, 0.3368, 0.4519, 0.1606, 0.0272, 0.0026, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0379038, 0.588659, 0.324332, 0.0451045, 0.00380038, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0540946, 0.845115, 0.0956904, 0.00489951, 0.00019998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_MEDD2_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_MEDD2_DIFSLOW;
			NAME = "R_DIFFN_MEDD2_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node R_MEDD2_DIFSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_DIFSLOW_EW;
			NAME = "R_MEDD2_DIFSLOW_EW";
		};
		PARENTS = (R_DIFFN_MEDD2_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_DIFSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_DIFSLOW_WD;
			NAME = "R_MEDD2_DIFSLOW_WD";
		};
		PARENTS = (R_DIFFN_MEDD2_DIFSLOW, R_LNLBE_MEDD2_DIFSLOW_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node L_DIFFN_MEDD2_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_MEDD2_DIFSLOW;
			NAME = "L_DIFFN_MEDD2_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node L_MEDD2_DIFSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_DIFSLOW_EW;
			NAME = "L_MEDD2_DIFSLOW_EW";
		};
		PARENTS = (L_DIFFN_MEDD2_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_DSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_DSLOW_EW;
			NAME = "L_MEDD2_DSLOW_EW";
		};
		PARENTS = (L_MEDD2_DIFSLOW_EW, L_MEDD2_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_ALLCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_ALLCV_EW;
			NAME = "L_MEDD2_ALLCV_EW";
		};
		PARENTS = (L_MEDD2_DSLOW_EW, L_MEDD2_LSLOW_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0264, 0.9149, 0.0587, 0, 0, 0, 0, 0, 0, 0, 0.0218, 0.9469, 0.0313, 0, 0, 0, 0, 0, 0.00030003, 0.00190019, 0.0140014, 0.0788079, 0.323832, 0.459646, 0.121212, 0.00030003, 0, 0, 0, 0.00010001, 0.00050005, 0.00410041, 0.0384038, 0.214521, 0.742374, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0006, 0.0944, 0.8841, 0.0209, 0, 0, 0, 0, 0, 0, 0.0007, 0.2183, 0.779, 0.002, 0, 0, 0, 0, 9.999e-05, 0.00039996, 0.00429957, 0.0320968, 0.19558, 0.504849, 0.260374, 0.00229977, 0, 0, 0, 0, 0.00020002, 0.00210021, 0.0239024, 0.164816, 0.808981, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.0018, 0.1956, 0.786, 0.0166, 0, 0, 0, 0, 0, 0, 0.0077, 0.4577, 0.5345, 0.0001, 0, 0, 0, 0, 0.0001, 0.0007, 0.0074, 0.0735, 0.4044, 0.4938, 0.0201, 0, 0, 0, 0, 0.0001, 0.0008, 0.0123, 0.1119, 0.8749, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.0026, 0.2655, 0.7316, 0.0003, 0, 0, 0, 0, 0, 0, 0.0166, 0.9182, 0.0652, 0, 0, 0, 0, 0, 0.0001, 0.001, 0.0172, 0.2179, 0.6479, 0.1159, 0, 0, 0, 0, 0, 0.0003, 0.0055, 0.0699, 0.9243, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.0044, 0.5355, 0.46, 0.0001, 0, 0, 0, 0, 0, 0, 0.0398, 0.946, 0.0142, 0, 0, 0, 0, 0, 9.999e-05, 0.00179982, 0.0558944, 0.460054, 0.482152, 0, 0, 0, 0, 0, 0.0001, 0.0021, 0.039, 0.9588, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.0047, 0.5053, 0.49, 0, 0, 0, 0, 0, 0, 0.0002, 0.1104, 0.8881, 0.0013, 0, 0, 0, 0, 0, 0.0001, 0.0041, 0.1033, 0.8925, 0, 0, 0, 0, 0, 0, 0.00069993, 0.0188981, 0.980402, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.0218, 0.8352, 0.143, 0, 0, 0, 0, 0, 0, 0.002, 0.3203, 0.6777, 0, 0, 0, 0, 0, 0, 0.0003, 0.0194, 0.9803, 0, 0, 0, 0, 0, 0, 0.0002, 0.0093, 0.9905, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0003, 0.001, 0.0036, 0.0154, 0.0712, 0.2467, 0.6617, 0, 0, 0.00010001, 0.00050005, 0.00190019, 0.00930093, 0.050405, 0.207221, 0.730573, 0, 0, 0, 0.0001, 0.0004, 0.0026, 0.019, 0.1153, 0.8626, 0, 0, 0, 0, 0.0001, 0.0006, 0.0062, 0.0562, 0.9369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_CV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_CV_EW;
			NAME = "L_MEDD2_CV_EW";
		};
		PARENTS = (L_MEDD2_ALLCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72, M_S_76);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0012, 0.0172, 0.1126, 0.2484, 0.321, 0.1935, 0.0803, 0.0258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0009999, 0.0148985, 0.09959, 0.226177, 0.293371, 0.226177, 0.10199, 0.0288971, 0.00649935, 0.00139986, 0, 0, 0, 0, 0, 0, 0, 0, 0.00250025, 0.0317032, 0.144514, 0.263926, 0.292529, 0.167017, 0.0669067, 0.0245025, 0.00540054, 0.00090009, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0.0005, 0.0189, 0.1567, 0.3371, 0.2862, 0.1429, 0.0465, 0.0095, 0.0014, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.010499, 0.156484, 0.377862, 0.30067, 0.125187, 0.0244975, 0.00419958, 0.00049995, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0045, 0.1674, 0.4536, 0.2834, 0.0774, 0.0118, 0.0017, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0109011, 0.422842, 0.444644, 0.106611, 0.0137014, 0.00120012, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0199, 0.8041, 0.1629, 0.0125, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_MEDD2_DIFSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_DIFSLOW_WD;
			NAME = "L_MEDD2_DIFSLOW_WD";
		};
		PARENTS = (L_DIFFN_MEDD2_DIFSLOW, L_LNLBE_MEDD2_DIFSLOW_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0127, 0.9867, 0.0006, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0006, 0.0492, 0.9502, 0.0127, 0.9867, 0.0006, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.00880088, 0.991199, 0, 0.0181018, 0.981898, 0, 0, 0.0011, 0.7402, 0.2587, 0, 0, 0.004, 0.996, 0, 0, 0.0012, 0.9988, 0, 0.0006, 0.0492, 0.9502, 0, 0, 0.00880088, 0.991199, 0, 0, 0.0012, 0.9988, 0, 0, 0.0009, 0.9991);
		};
	};

	node L_MEDD2_DSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_DSLOW_WD;
			NAME = "L_MEDD2_DSLOW_WD";
		};
		PARENTS = (L_MEDD2_DIFSLOW_WD, L_MEDD2_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_ALLCV_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_ALLCV_WD;
			NAME = "L_MEDD2_ALLCV_WD";
		};
		PARENTS = (L_MEDD2_DSLOW_WD, L_MEDD2_LSLOW_WD);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0235976, 0.257874, 0.640336, 0.0780922, 9.999e-05, 0, 0, 0, 0, 0, 0.0021, 0.1149, 0.7277, 0.1553, 0, 0, 0, 0, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0, 0, 9.999e-05, 0.00029997, 0.00219978, 0.0191981, 0.125187, 0.853015, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0017, 0.0421, 0.4597, 0.4852, 0.0113, 0, 0, 0, 0, 0, 0.0001, 0.0146, 0.3403, 0.6424, 0.0026, 0, 0, 0, 0.00010002, 0.00040008, 0.00210042, 0.010102, 0.0516103, 0.218444, 0.464693, 0.252551, 0, 0, 0, 0, 0.00019998, 0.00139986, 0.0136986, 0.10289, 0.881812, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.00190019, 0.0749075, 0.569457, 0.353235, 0.00050005, 0, 0, 0, 0, 0, 0.0007, 0.0498, 0.764, 0.1854, 0.0001, 0, 0, 0, 0.00010001, 0.00060006, 0.00340034, 0.0223022, 0.133613, 0.414541, 0.425443, 0, 0, 0, 0, 0.00010001, 0.00070007, 0.00860086, 0.0782078, 0.912391, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.00220022, 0.105111, 0.825182, 0.0675068, 0, 0, 0, 0, 0, 0, 0.0012, 0.137, 0.8421, 0.0197, 0, 0, 0, 0, 0.0001, 0.0008, 0.0073, 0.0649, 0.3063, 0.6206, 0, 0, 0, 0, 0, 0.00030003, 0.0050005, 0.0564056, 0.938294, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.00220022, 0.170017, 0.806281, 0.0215022, 0, 0, 0, 0, 0, 0, 0.0034, 0.4375, 0.5591, 0, 0, 0, 0, 0, 0.00010001, 0.00160016, 0.0226023, 0.174717, 0.80098, 0, 0, 0, 0, 0, 0.0001, 0.0026, 0.0379, 0.9594, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.00219978, 0.233777, 0.762024, 0.0019998, 0, 0, 0, 0, 0, 0, 0.0208021, 0.809481, 0.169717, 0, 0, 0, 0, 0, 0.00020002, 0.00520052, 0.0726073, 0.921992, 0, 0, 0, 0, 0, 0, 0.0012, 0.023, 0.9758, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.010099, 0.489451, 0.50045, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0392039, 0.960696, 0, 0, 0, 0, 0, 0, 0.00120012, 0.029603, 0.969197, 0, 0, 0, 0, 0, 0, 0.0005, 0.014, 0.9855, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0002, 0.0007, 0.0026, 0.0117, 0.0585, 0.2222, 0.704, 0, 0, 0.0001, 0.0002, 0.0009, 0.0051, 0.0329, 0.1636, 0.7972, 0, 0, 0, 0.0001, 0.0004, 0.0022, 0.0159, 0.0994, 0.882, 0, 0, 0, 0, 0.0001, 0.0006, 0.0058, 0.0523, 0.9412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MEDD2_CV_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MEDD2_CV_WD;
			NAME = "L_MEDD2_CV_WD";
		};
		PARENTS = (L_MEDD2_ALLCV_WD);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S_72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.0108989, 0.0983902, 0.316568, 0.353165, 0.174883, 0.040296, 0.00559944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00849915, 0.0767923, 0.281072, 0.332267, 0.20118, 0.0815918, 0.0160984, 0.00209979, 0.00019998, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.0139014, 0.112011, 0.291829, 0.313431, 0.191519, 0.0610061, 0.0130013, 0.00280028, 0.00030003, 0, 0, 0, 0, 0, 0, 0, 0, 0.00290029, 0.0706071, 0.315132, 0.383638, 0.170917, 0.0476048, 0.00820082, 0.00090009, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.0393961, 0.318468, 0.419458, 0.175582, 0.0418958, 0.00449955, 0.00049995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0156984, 0.314469, 0.466053, 0.171583, 0.0290971, 0.00279972, 0.00029997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0308031, 0.576958, 0.339834, 0.0482048, 0.0040004, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0465047, 0.848285, 0.09991, 0.00510051, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ULND5_SALOSS;
			NAME = "L_DIFFN_ULND5_SALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_S_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0, 0.7, 0.3, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0.3, 0.5, 0.2, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_DIFFN_LNLW_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ULND5_SALOSS;
			NAME = "L_DIFFN_LNLW_ULND5_SALOSS";
		};
		PARENTS = (L_DIFFN_ULND5_SALOSS, L_LNLW_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_LNL_DIFFN_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_ULND5_SALOSS;
			NAME = "L_LNL_DIFFN_ULND5_SALOSS";
		};
		PARENTS = (L_LNLLP_E_ULND5_SALOSS, L_DIFFN_LNLW_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_SALOSS;
			NAME = "L_ULND5_SALOSS";
		};
		PARENTS = (L_LNL_DIFFN_ULND5_SALOSS, L_OTHER_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_EFFAXLOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_EFFAXLOSS;
			NAME = "L_ULND5_EFFAXLOSS";
		};
		PARENTS = (L_ULND5_SALOSS, L_ULND5_BLOCK_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_ALLAMP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_ALLAMP_WD;
			NAME = "L_ULND5_ALLAMP_WD";
		};
		PARENTS = (L_ULND5_EFFAXLOSS, L_ULND5_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00);
			PROBABILITIES = (0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0.3192, 0.6448, 0.036, 0, 0, 0.0051, 0.994, 0.0009, 0, 0, 0, 0.9945, 0.0055, 0, 0, 0, 0, 0, 0.3443, 0.6228, 0.0329, 0, 0, 0.0474047, 0.939494, 0.0129013, 0.00020002, 0, 0, 0.9599, 0.0401, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0.0248, 0.9704, 0.0048, 0, 0, 0, 0.933093, 0.0669067, 0, 0, 0, 0.0001, 0.9994, 0.0005, 0, 0, 0, 0.7508, 0.2492, 0, 0, 0, 0, 0.1028, 0.8793, 0.0178, 0.0001, 0, 0, 0.8756, 0.1237, 0.0007, 0, 0, 0, 0.9969, 0.0031, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node L_ULND5_AMP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_AMP_WD;
			NAME = "L_ULND5_AMP_WD";
		};
		PARENTS = (L_ULND5_ALLAMP_WD);
		DEFINITION =
		{
			NAMESTATES = (UV_0_63, UV0_88, UV1_25, UV1_77, UV2_50, UV3_50, UV5_00, UV7_10, UV10_0, UV14_0, UV20_0, UV28_0, UV40_0, UV57_0, UV_80_0);
			PROBABILITIES = (0.757776, 0.183818, 0.0452045, 0.010301, 0.00230023, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.379324, 0.261448, 0.167267, 0.0967806, 0.0511898, 0.0253949, 0.0112977, 0.00459908, 0.00179964, 0.00059988, 0.00019996, 9.998e-05, 0, 0, 0, 0.0652, 0.1312, 0.1955, 0.2207, 0.1859, 0.1188, 0.0562, 0.0198, 0.0054, 0.0011, 0.0002, 0, 0, 0, 0, 0, 0.00070007, 0.00550055, 0.029603, 0.09971, 0.205821, 0.271827, 0.223322, 0.117112, 0.0377038, 0.00760076, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0.00010001, 0.00120012, 0.0107011, 0.0579058, 0.174317, 0.289329, 0.272727, 0.142714, 0.0433043, 0.00710071, 0.00060006, 0, 0, 0, 0, 0, 0, 0.00020002, 0.00370037, 0.0337034, 0.141814, 0.30313, 0.312731, 0.160416, 0.0393039, 0.00470047, 0.00030003);
		};
	};

	node L_ULND5_DSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DSLOW_E;
			NAME = "L_ULND5_DSLOW_E";
		};
		PARENTS = (L_ULND5_DIFSLOW_E, L_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_ALLCV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_ALLCV_E;
			NAME = "L_ULND5_ALLCV_E";
		};
		PARENTS = (L_ULND5_DSLOW_E, L_ULND5_LSLOW_E);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0264, 0.9149, 0.0587, 0, 0, 0, 0, 0, 0, 0, 0.0218, 0.9469, 0.0313, 0, 0, 0, 0, 0, 0.00030003, 0.00190019, 0.0140014, 0.0788079, 0.323832, 0.459646, 0.121212, 0.00030003, 0, 0, 0, 0.00010001, 0.00050005, 0.00410041, 0.0384038, 0.214521, 0.742374, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0006, 0.0944, 0.8841, 0.0209, 0, 0, 0, 0, 0, 0, 0.0007, 0.2183, 0.779, 0.002, 0, 0, 0, 0, 9.999e-05, 0.00039996, 0.00429957, 0.0320968, 0.19558, 0.504849, 0.260374, 0.00229977, 0, 0, 0, 0, 0.00020002, 0.00210021, 0.0239024, 0.164816, 0.808981, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.0018, 0.1956, 0.786, 0.0166, 0, 0, 0, 0, 0, 0, 0.0077, 0.4577, 0.5345, 0.0001, 0, 0, 0, 0, 0.0001, 0.0007, 0.0074, 0.0735, 0.4044, 0.4938, 0.0201, 0, 0, 0, 0, 0.0001, 0.0008, 0.0123, 0.1119, 0.8749, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.0026, 0.2655, 0.7316, 0.0003, 0, 0, 0, 0, 0, 0, 0.0166, 0.9182, 0.0652, 0, 0, 0, 0, 0, 0.0001, 0.001, 0.0172, 0.2179, 0.6479, 0.1159, 0, 0, 0, 0, 0, 0.0003, 0.0055, 0.0699, 0.9243, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.0044, 0.5355, 0.46, 0.0001, 0, 0, 0, 0, 0, 0, 0.0398, 0.946, 0.0142, 0, 0, 0, 0, 0, 9.999e-05, 0.00179982, 0.0558944, 0.460054, 0.482152, 0, 0, 0, 0, 0, 0.0001, 0.0021, 0.039, 0.9588, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.0047, 0.5053, 0.49, 0, 0, 0, 0, 0, 0, 0.0002, 0.1104, 0.8881, 0.0013, 0, 0, 0, 0, 0, 0.0001, 0.0041, 0.1033, 0.8925, 0, 0, 0, 0, 0, 0, 0.00069993, 0.0188981, 0.980402, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.0218, 0.8352, 0.143, 0, 0, 0, 0, 0, 0, 0.002, 0.3203, 0.6777, 0, 0, 0, 0, 0, 0, 0.0003, 0.0194, 0.9803, 0, 0, 0, 0, 0, 0, 0.0002, 0.0093, 0.9905, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0003, 0.001, 0.0036, 0.0154, 0.0712, 0.2467, 0.6617, 0, 0, 0.00010001, 0.00050005, 0.00190019, 0.00930093, 0.050405, 0.207221, 0.730573, 0, 0, 0, 0.0001, 0.0004, 0.0026, 0.019, 0.1153, 0.8626, 0, 0, 0, 0, 0.0001, 0.0006, 0.0062, 0.0562, 0.9369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_CV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_CV_E;
			NAME = "L_ULND5_CV_E";
		};
		PARENTS = (L_ULND5_ALLCV_E);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72, M_S_76);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.0009999, 0.0114988, 0.0482952, 0.138086, 0.214879, 0.248075, 0.174683, 0.106789, 0.0565943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00049995, 0.00729927, 0.0373963, 0.124288, 0.19878, 0.234277, 0.19878, 0.120088, 0.0511949, 0.019898, 0.00749925, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0094, 0.056, 0.1549, 0.2295, 0.2469, 0.1596, 0.0834, 0.0409, 0.0139, 0.0038, 0.001, 0.0003, 0, 0, 0, 0, 0, 0, 0.0027, 0.0385, 0.174, 0.2983, 0.2508, 0.146, 0.064, 0.0192, 0.0048, 0.0014, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0226, 0.1786, 0.3397, 0.2748, 0.1364, 0.0366, 0.009, 0.0018, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0092, 0.1868, 0.4188, 0.2744, 0.089, 0.0178, 0.0035, 0.0004, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0178982, 0.420158, 0.423158, 0.117288, 0.0189981, 0.00229977, 0.00019998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0263974, 0.783622, 0.173083, 0.0157984, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_ULND5_DSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DSLOW_WD;
			NAME = "L_ULND5_DSLOW_WD";
		};
		PARENTS = (L_ULND5_DIFSLOW_WD, L_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_ALLCV_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_ALLCV_WD;
			NAME = "L_ULND5_ALLCV_WD";
		};
		PARENTS = (L_ULND5_DSLOW_WD, L_ULND5_LSLOW_WD);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0235976, 0.257874, 0.640336, 0.0780922, 9.999e-05, 0, 0, 0, 0, 0, 0.0021, 0.1149, 0.7277, 0.1553, 0, 0, 0, 0, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0, 0, 9.999e-05, 0.00029997, 0.00219978, 0.0191981, 0.125187, 0.853015, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0017, 0.0421, 0.4597, 0.4852, 0.0113, 0, 0, 0, 0, 0, 0.0001, 0.0146, 0.3403, 0.6424, 0.0026, 0, 0, 0, 0.00010002, 0.00040008, 0.00210042, 0.010102, 0.0516103, 0.218444, 0.464693, 0.252551, 0, 0, 0, 0, 0.00019998, 0.00139986, 0.0136986, 0.10289, 0.881812, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.00190019, 0.0749075, 0.569457, 0.353235, 0.00050005, 0, 0, 0, 0, 0, 0.0007, 0.0498, 0.764, 0.1854, 0.0001, 0, 0, 0, 0.00010001, 0.00060006, 0.00340034, 0.0223022, 0.133613, 0.414541, 0.425443, 0, 0, 0, 0, 0.00010001, 0.00070007, 0.00860086, 0.0782078, 0.912391, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.00220022, 0.105111, 0.825182, 0.0675068, 0, 0, 0, 0, 0, 0, 0.0012, 0.137, 0.8421, 0.0197, 0, 0, 0, 0, 0.0001, 0.0008, 0.0073, 0.0649, 0.3063, 0.6206, 0, 0, 0, 0, 0, 0.00030003, 0.0050005, 0.0564056, 0.938294, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.00220022, 0.170017, 0.806281, 0.0215022, 0, 0, 0, 0, 0, 0, 0.0034, 0.4375, 0.5591, 0, 0, 0, 0, 0, 0.00010001, 0.00160016, 0.0226023, 0.174717, 0.80098, 0, 0, 0, 0, 0, 0.0001, 0.0026, 0.0379, 0.9594, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.00219978, 0.233777, 0.762024, 0.0019998, 0, 0, 0, 0, 0, 0, 0.0208021, 0.809481, 0.169717, 0, 0, 0, 0, 0, 0.00020002, 0.00520052, 0.0726073, 0.921992, 0, 0, 0, 0, 0, 0, 0.0012, 0.023, 0.9758, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.010099, 0.489451, 0.50045, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0392039, 0.960696, 0, 0, 0, 0, 0, 0, 0.00120012, 0.029603, 0.969197, 0, 0, 0, 0, 0, 0, 0.0005, 0.014, 0.9855, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0002, 0.0007, 0.0026, 0.0117, 0.0585, 0.2222, 0.704, 0, 0, 0.0001, 0.0002, 0.0009, 0.0051, 0.0329, 0.1636, 0.7972, 0, 0, 0, 0.0001, 0.0004, 0.0022, 0.0159, 0.0994, 0.882, 0, 0, 0, 0, 0.0001, 0.0006, 0.0058, 0.0523, 0.9412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_CV_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_CV_WD;
			NAME = "L_ULND5_CV_WD";
		};
		PARENTS = (L_ULND5_ALLCV_WD);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S_72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00089991, 0.0232977, 0.133187, 0.319568, 0.319568, 0.156984, 0.039796, 0.00669933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.0160016, 0.10241, 0.29603, 0.310031, 0.180818, 0.0753075, 0.0162016, 0.00240024, 0.00030003, 0, 0, 0, 0, 0, 0, 0, 0.0005001, 0.0215043, 0.136227, 0.29946, 0.295759, 0.174535, 0.0562112, 0.0125025, 0.00290058, 0.00040008, 0, 0, 0, 0, 0, 0, 0, 0, 0.00520052, 0.090309, 0.329433, 0.365036, 0.156716, 0.0442044, 0.0080008, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00039996, 0.0517948, 0.339466, 0.40266, 0.161884, 0.0389961, 0.00429957, 0.00049995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0206, 0.3368, 0.4519, 0.1606, 0.0272, 0.0026, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0379038, 0.588659, 0.324332, 0.0451045, 0.00380038, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0540946, 0.845115, 0.0956904, 0.00489951, 0.00019998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_ULND5_DSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_DSLOW_EW;
			NAME = "L_ULND5_DSLOW_EW";
		};
		PARENTS = (L_ULND5_DIFSLOW_EW, L_ULND5_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_ALLCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_ALLCV_EW;
			NAME = "L_ULND5_ALLCV_EW";
		};
		PARENTS = (L_ULND5_DSLOW_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0268973, 0.971303, 0.00179982, 0, 0, 0, 0, 0, 0, 0.0003, 0.0598, 0.8924, 0.0475, 0, 0, 0, 0, 0, 0, 0.0001, 0.0637, 0.9111, 0.0251, 0, 0, 0, 0, 0, 0, 0.0001, 0.0544, 0.9384, 0.0071, 0, 0, 0, 0, 0, 0, 0.0002, 0.0486, 0.8875, 0.0637, 0, 0, 0, 0, 0, 0, 0.00020002, 0.0950095, 0.89739, 0.00740074, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0973097, 0.285529, 0.583358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULND5_CV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULND5_CV_EW;
			NAME = "L_ULND5_CV_EW";
		};
		PARENTS = (L_ULND5_ALLCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72, M_S_76);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0019, 0.0226, 0.089, 0.2126, 0.2696, 0.2267, 0.1139, 0.0467, 0.0169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00089991, 0.0145985, 0.070293, 0.19968, 0.256474, 0.225677, 0.146485, 0.0614939, 0.0182982, 0.00479952, 0.00129987, 0, 0, 0, 0, 0, 0, 0, 0.00070014, 0.0179036, 0.0968194, 0.224145, 0.269354, 0.222344, 0.108322, 0.0408082, 0.015203, 0.00360072, 0.00070014, 0.00010002, 0, 0, 0, 0, 0, 0, 0, 0.00510102, 0.0670134, 0.24965, 0.339768, 0.211442, 0.0914183, 0.0284057, 0.0060012, 0.0010002, 0.00020004, 0, 0, 0, 0, 0, 0, 0, 0, 0.00040004, 0.039704, 0.258726, 0.379338, 0.222322, 0.0811081, 0.0153015, 0.00270027, 0.00040004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0161, 0.2633, 0.4429, 0.2163, 0.0524, 0.0077, 0.0012, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0293971, 0.510149, 0.375162, 0.0752925, 0.00909909, 0.00079992, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0411, 0.82, 0.1295, 0.009, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node DIFFN_MOT_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_MOT_SEV;
			NAME = "DIFFN_MOT_SEV";
		};
		PARENTS = (DIFFN_TYPE, DIFFN_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);
		};
	};

	node DIFFN_M_SEV_PROX
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_M_SEV_PROX;
			NAME = "DIFFN_M_SEV_PROX";
		};
		PARENTS = (DIFFN_DISTR, DIFFN_MOT_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0.25, 0.45, 0.25, 0.05, 0.1, 0.4, 0.4, 0.1, 0.05, 0.15, 0.4, 0.4);
		};
	};

	node L_DIFFN_AXIL_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_AXIL_DIFSLOW;
			NAME = "L_DIFFN_AXIL_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.2, 0.6, 0.2, 1, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node L_AXIL_DIFSLOW_ED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_AXIL_DIFSLOW_ED;
			NAME = "L_AXIL_DIFSLOW_ED";
		};
		PARENTS = (L_DIFFN_AXIL_DIFSLOW, L_LNLPC5_AXIL_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0131987, 0.986201, 0.00059994, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0003, 0.0252, 0.9745, 0.0131987, 0.986201, 0.00059994, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.00440044, 0.9956, 0, 0.0181018, 0.981898, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.002, 0.998, 0, 0, 0.0006, 0.9994, 0, 0.0003, 0.0252, 0.9745, 0, 0, 0.00440044, 0.9956, 0, 0, 0.0006, 0.9994, 0, 0, 0.0005, 0.9995);
		};
	};

	node DIFFN_DUMMY_1
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_DUMMY_1;
			NAME = "DIFFN_DUMMY_1";
		};
		PARENTS = (DIFFN_TIME, DIFFN_PATHO, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (dummy, State1);
			PROBABILITIES = (0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5);
		};
	};

	node R_DIFFN_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_DELT_MUDENS;
			NAME = "R_DIFFN_DELT_MUDENS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node R_LNLPC5_DIFFN_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DIFFN_DELT_MUDENS;
			NAME = "R_LNLPC5_DIFFN_DELT_MUDENS";
		};
		PARENTS = (R_DIFFN_DELT_MUDENS, R_LNLPC5_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MUDENS;
			NAME = "R_DELT_MUDENS";
		};
		PARENTS = (R_MUSCLE_DELT_MUDENS, R_LNLPC5_DIFFN_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_DELT_SF_DENSITY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_SF_DENSITY;
			NAME = "R_DELT_SF_DENSITY";
		};
		PARENTS = (R_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (x_2SD, x2_4SD, x_4SD);
			PROBABILITIES = (0.97, 0.03, 0, 0.05, 0.9, 0.05, 0.01, 0.04, 0.95);
		};
	};

	node L_DIFFN_AXIL_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_AXIL_BLOCK;
			NAME = "L_DIFFN_AXIL_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_AXIL_BLOCK_ED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_AXIL_BLOCK_ED;
			NAME = "L_AXIL_BLOCK_ED";
		};
		PARENTS = (L_OTHER_AXIL_BLOCK, L_DIFFN_AXIL_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_DELT_DENERV;
			NAME = "L_DIFFN_DELT_DENERV";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node L_LNLPC5_DIFFN_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DIFFN_DELT_DENERV;
			NAME = "L_LNLPC5_DIFFN_DELT_DENERV";
		};
		PARENTS = (L_DIFFN_DELT_DENERV, L_LNLPC5_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_DELT_NEUR_ACT;
			NAME = "L_DIFFN_DELT_NEUR_ACT";
		};
		PARENTS = (DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0);
		};
	};

	node L_LNLPC5_DIFFN_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DIFFN_DELT_NEUR_ACT;
			NAME = "L_LNLPC5_DIFFN_DELT_NEUR_ACT";
		};
		PARENTS = (L_DIFFN_DELT_NEUR_ACT, L_LNLPC5_DELT_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_NEUR_ACT;
			NAME = "L_DELT_NEUR_ACT";
		};
		PARENTS = (L_OTHER_DELT_NEUR_ACT, L_LNLPC5_DIFFN_DELT_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_DELT_SPONT_NEUR_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_SPONT_NEUR_DISCH;
			NAME = "L_DELT_SPONT_NEUR_DISCH";
		};
		PARENTS = (L_DELT_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.01, 0.04, 0.75, 0.05, 0.05, 0.1, 0.01, 0.04, 0.05, 0.75, 0.05, 0.1, 0.01, 0.04, 0.05, 0.05, 0.75, 0.1, 0.01, 0.05, 0.05, 0.05, 0.05, 0.79);
		};
	};

	node R_DIFFN_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_DELT_MUSIZE;
			NAME = "R_DIFFN_DELT_MUSIZE";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_LNLPC5_DIFFN_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DIFFN_DELT_MUSIZE;
			NAME = "R_LNLPC5_DIFFN_DELT_MUSIZE";
		};
		PARENTS = (R_LNLPC5_DELT_MUSIZE, R_DIFFN_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MUSIZE;
			NAME = "R_DELT_MUSIZE";
		};
		PARENTS = (R_LNLPC5_DIFFN_DELT_MUSIZE, R_MUSCLE_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0.979398, 0.00050005, 0.00010001, 0, 0, 0.020002, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0, 0.9781, 0.0019, 0, 0, 0.02, 0, 0, 0.0019, 0.9781, 0, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0, 0.0019, 0.9781, 0, 0, 0.02, 0, 0, 0, 0.98, 0, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.979398, 0.00050005, 0.00010001, 0, 0, 0.020002, 0, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node R_DIFFN_AXIL_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_AXIL_BLOCK;
			NAME = "R_DIFFN_AXIL_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_AXIL_BLOCK_ED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_AXIL_BLOCK_ED;
			NAME = "R_AXIL_BLOCK_ED";
		};
		PARENTS = (R_OTHER_AXIL_BLOCK, R_DIFFN_AXIL_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_AXIL_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_AXIL_DIFSLOW;
			NAME = "R_DIFFN_AXIL_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.2, 0.6, 0.2, 1, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node R_AXIL_DIFSLOW_ED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_AXIL_DIFSLOW_ED;
			NAME = "R_AXIL_DIFSLOW_ED";
		};
		PARENTS = (R_DIFFN_AXIL_DIFSLOW, R_LNLPC5_AXIL_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0131987, 0.986201, 0.00059994, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0003, 0.0252, 0.9745, 0.0131987, 0.986201, 0.00059994, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.00440044, 0.9956, 0, 0.0181018, 0.981898, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.002, 0.998, 0, 0, 0.0006, 0.9994, 0, 0.0003, 0.0252, 0.9745, 0, 0, 0.00440044, 0.9956, 0, 0, 0.0006, 0.9994, 0, 0, 0.0005, 0.9995);
		};
	};

	node L_DIFFN_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_DELT_DE_REGEN;
			NAME = "L_DIFFN_DELT_DE_REGEN";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_LNLPC5_DIFFN_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DIFFN_DELT_DE_REGEN;
			NAME = "L_LNLPC5_DIFFN_DELT_DE_REGEN";
		};
		PARENTS = (L_DIFFN_DELT_DE_REGEN, L_LNLPC5_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_DE_REGEN;
			NAME = "L_DELT_DE_REGEN";
		};
		PARENTS = (L_MUSCLE_DELT_DE_REGEN, L_LNLPC5_DIFFN_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_DE_REGEN_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DE_REGEN_DELT_NMT;
			NAME = "L_DE_REGEN_DELT_NMT";
		};
		PARENTS = (L_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0.949, 0.003, 0.001, 0.04, 0.003, 0.001, 0.003);
		};
	};

	node L_MYAS_DE_REGEN_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_DE_REGEN_DELT_NMT;
			NAME = "L_MYAS_DE_REGEN_DELT_NMT";
		};
		PARENTS = (L_MYAS_DELT_NMT, L_DE_REGEN_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_NMT;
			NAME = "L_DELT_NMT";
		};
		PARENTS = (L_MYAS_DE_REGEN_DELT_NMT, L_OTHER_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_DELT_REPSTIM_FACILI
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_REPSTIM_FACILI;
			NAME = "L_DELT_REPSTIM_FACILI";
		};
		PARENTS = (L_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV, REDUCED);
			PROBABILITIES = (0.95, 0.02, 0.01, 0.02, 0.01, 0.889, 0.1, 0.001, 0.01, 0.08, 0.909, 0.001, 0.89, 0.08, 0.01, 0.02, 0.48, 0.5, 0.01, 0.01, 0.02, 0.949, 0.03, 0.001, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node L_DELT_MUPINSTAB
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MUPINSTAB;
			NAME = "L_DELT_MUPINSTAB";
		};
		PARENTS = (L_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.1, 0.9, 0.03, 0.97, 0.2, 0.8, 0.1, 0.9, 0.03, 0.97, 0.1, 0.9);
		};
	};

	node L_NMT_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_NMT_DELT_DENERV;
			NAME = "L_NMT_DELT_DENERV";
		};
		PARENTS = (L_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.4, 0.45, 0.15, 0, 0.15, 0.35, 0.35, 0.15, 0.85, 0.15, 0, 0, 0.3, 0.45, 0.2, 0.05, 0.15, 0.35, 0.35, 0.15, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node L_OTHER_NMT_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_NMT_DELT_DENERV;
			NAME = "L_OTHER_NMT_DELT_DENERV";
		};
		PARENTS = (L_NMT_DELT_DENERV, L_OTHER_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_MUSCLE_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_DELT_DENERV;
			NAME = "L_MUSCLE_DELT_DENERV";
		};
		PARENTS = (L_OTHER_NMT_DELT_DENERV, L_MYOP_MYDY_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_DENERV;
			NAME = "L_DELT_DENERV";
		};
		PARENTS = (L_LNLPC5_DIFFN_DELT_DENERV, L_MUSCLE_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_DELT_SPONT_DENERV_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_SPONT_DENERV_ACT;
			NAME = "L_DELT_SPONT_DENERV_ACT";
		};
		PARENTS = (L_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, SOME, MOD, ABUNDANT);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0.07, 0.85, 0.08, 0, 0.01, 0.07, 0.85, 0.07, 0, 0.01, 0.07, 0.92);
		};
	};

	node L_DELT_SPONT_INS_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_SPONT_INS_ACT;
			NAME = "L_DELT_SPONT_INS_ACT";
		};
		PARENTS = (L_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.98, 0.02, 0.1, 0.9, 0.05, 0.95, 0.05, 0.95);
		};
	};

	node L_DELT_SPONT_HF_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_SPONT_HF_DISCH;
			NAME = "L_DELT_SPONT_HF_DISCH";
		};
		PARENTS = (L_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.99, 0.01, 0.97, 0.03, 0.95, 0.05, 0.93, 0.07);
		};
	};

	node L_DELT_SF_JITTER
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_SF_JITTER;
			NAME = "L_DELT_SF_JITTER";
		};
		PARENTS = (L_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, x2_5, x5_10, x_10);
			PROBABILITIES = (0.95, 0.05, 0, 0, 0.02, 0.2, 0.7, 0.08, 0, 0.1, 0.4, 0.5, 0.05, 0.7, 0.2, 0.05, 0.01, 0.19, 0.7, 0.1, 0, 0.1, 0.4, 0.5, 0.1, 0.3, 0.3, 0.3);
		};
	};

	node L_DELT_REPSTIM_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_REPSTIM_DECR;
			NAME = "L_DELT_REPSTIM_DECR";
		};
		PARENTS = (L_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.04, 0.2, 0.7, 0.04, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.35, 0.57, 0.05, 0.01, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.245, 0.245, 0.245, 0.245, 0.02);
		};
	};

	node L_DELT_REPSTIM_POST_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_REPSTIM_POST_DECR;
			NAME = "L_DELT_REPSTIM_POST_DECR";
		};
		PARENTS = (L_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.25, 0.61, 0.1, 0.02, 0.02, 0.01, 0.1, 0.8, 0.07, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.23, 0.23, 0.22, 0.22, 0.1);
		};
	};

	node L_DELT_MUPSATEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MUPSATEL;
			NAME = "L_DELT_MUPSATEL";
		};
		PARENTS = (L_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.2, 0.8);
		};
	};

	node L_DIFFN_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_DELT_MALOSS;
			NAME = "L_DIFFN_DELT_MALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_LNLPC5_DIFFN_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DIFFN_DELT_MALOSS;
			NAME = "L_LNLPC5_DIFFN_DELT_MALOSS";
		};
		PARENTS = (L_DIFFN_DELT_MALOSS, L_LNLPC5_DELT_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MALOSS;
			NAME = "L_DELT_MALOSS";
		};
		PARENTS = (L_OTHER_DELT_MALOSS, L_LNLPC5_DIFFN_DELT_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0, 0.0361, 0.9439, 0, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.013, 0.967, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0.0005, 0.9795, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node L_AXIL_DCV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_AXIL_DCV;
			NAME = "L_AXIL_DCV";
		};
		PARENTS = (L_AXIL_DIFSLOW_ED, L_DELT_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1136, 0.8864, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0764, 0.8866, 0.0364, 0, 0, 0, 0, 0, 0, 0, 0.0655, 0.9299, 0.0046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.1523, 0.2904, 0.3678, 0.1726, 0.0169, 0, 0, 0, 0, 0.008, 0.168, 0.7407, 0.0833, 0, 0, 0, 0, 0, 0.00089991, 0.0367963, 0.557644, 0.40246, 0.00219978, 0, 0, 0, 0, 0, 0.00070007, 0.0525053, 0.571257, 0.375238, 0.00030003, 0, 0, 0, 0, 0, 0.0007, 0.0745, 0.8859, 0.0389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0168, 0.0618, 0.2223, 0.4015, 0.2803, 0.0172, 0.0001, 0, 0, 0.00069986, 0.00589882, 0.0614877, 0.30064, 0.552589, 0.0781844, 0.0004999, 0, 0, 0.0002, 0.0018, 0.0263, 0.1887, 0.5884, 0.1916, 0.003, 0, 0, 0, 0.0001, 0.0024, 0.0358, 0.316, 0.5741, 0.0716, 0, 0, 0, 0, 9.999e-05, 0.00319968, 0.0780922, 0.594641, 0.323568, 0.00039996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0009999, 0.00469953, 0.0279972, 0.118388, 0.364664, 0.392261, 0.0906909, 0.00029997, 0, 0.0001, 0.0003, 0.0018, 0.011, 0.067, 0.2945, 0.5047, 0.1206, 0, 0, 0.00010001, 0.00090009, 0.00590059, 0.0422042, 0.235624, 0.522552, 0.192719, 0, 0, 0, 0.0001, 0.0012, 0.0121, 0.1131, 0.4415, 0.432, 0, 0, 0, 0, 0.00020002, 0.00280028, 0.0439044, 0.291729, 0.661366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0011, 0.0057, 0.0332, 0.1704, 0.4424, 0.347, 0);
		};
	};

	node L_AXIL_DEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_AXIL_DEL;
			NAME = "L_AXIL_DEL";
		};
		PARENTS = (L_AXIL_DCV, L_AXIL_RD_ED);
		DEFINITION =
		{
			NAMESTATES = (MS0_0, MS0_4, MS0_8, MS1_6, MS3_2, MS6_4, MS12_8, MS25_6, INFIN);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0003, 0.0006, 0.0027, 0.021, 0.2666, 0.7086, 0, 0, 0, 0.0001, 0.0001, 0.0004, 0.0021, 0.0232, 0.4307, 0.5434, 0, 0.6514, 0.3486, 0, 0, 0, 0, 0, 0, 0, 0.00010002, 0.00020004, 0.0005001, 0.00220044, 0.0178036, 0.242248, 0.736947, 0, 0, 0, 0, 0.00010001, 0.00030003, 0.00180018, 0.0210021, 0.408641, 0.568157, 0, 0.0003, 0.9337, 0.066, 0, 0, 0, 0, 0, 0, 0.0001, 0.0002, 0.0004, 0.0016, 0.0137, 0.2066, 0.7774, 0, 0, 0, 0, 0.0001, 0.0003, 0.0015, 0.0178, 0.3739, 0.6064, 0, 0, 0.00380038, 0.9962, 0, 0, 0, 0, 0, 0, 0.0001, 0.0001, 0.0002, 0.0011, 0.0095, 0.165, 0.824, 0, 0, 0, 0, 9.999e-05, 0.00019998, 0.00109989, 0.0141986, 0.329267, 0.655134, 0, 0, 0, 0.0106011, 0.989399, 0, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00050005, 0.00540054, 0.114911, 0.879088, 0, 0, 0, 0, 0, 0.00010002, 0.00070014, 0.00980196, 0.266153, 0.723245, 0, 0, 0.00020002, 0.00260026, 0.135614, 0.861586, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.002, 0.058, 0.9396, 0.0002, 0, 0, 0, 0, 0, 0.00030003, 0.00480048, 0.169717, 0.825182, 0, 0, 0, 0, 0.0005, 0.8212, 0.1783, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0184, 0.9779, 0.0033, 0, 0, 0, 0, 0, 0.0001, 0.0014, 0.0771, 0.9214, 0, 0, 0, 0, 0.00040004, 0.0113011, 0.59806, 0.390239, 0, 0, 0, 0, 0, 0, 0, 0.0021, 0.401, 0.5969, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0144014, 0.985499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_AXIL_LAT_ED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_AXIL_LAT_ED;
			NAME = "L_AXIL_LAT_ED";
		};
		PARENTS = (L_AXIL_DEL);
		DEFINITION =
		{
			NAMESTATES = (MS3_1, MS3_5, MS3_9, MS4_3, MS4_7, MS5_3, MS5_9, MS6_5, MS7_1, MS8_0, MS9_0, MS10_0, MS12_0, MS14_0, MS16_0, MS18_0, INFIN);
			PROBABILITIES = (0.00990099, 0.0715071, 0.233923, 0.347235, 0.292429, 0.0441044, 0.00090009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0017, 0.0166, 0.0866, 0.233, 0.4051, 0.2314, 0.025, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0017, 0.0169, 0.0882, 0.2965, 0.4557, 0.1322, 0.0087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00110011, 0.00810081, 0.0477048, 0.253925, 0.417242, 0.253925, 0.0163016, 0.00160016, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00059994, 0.00189981, 0.00659934, 0.0274973, 0.0709929, 0.135786, 0.274273, 0.309069, 0.134587, 0.0382962, 0.00019998, 0, 0, 0, 0, 9.999e-05, 0.00019998, 0.00029997, 0.00059994, 0.00129987, 0.00359964, 0.00749925, 0.0141986, 0.0456954, 0.0810919, 0.136786, 0.273073, 0.315668, 0.105589, 0.0135986, 0.00069993, 0, 9.999e-05, 0.00019998, 0.00029997, 0.00039996, 0.00059994, 0.00119988, 0.00179982, 0.00269973, 0.00679932, 0.0112989, 0.0191981, 0.0459954, 0.130187, 0.215978, 0.279872, 0.283372, 0, 0.0009, 0.001, 0.0012, 0.0014, 0.0021, 0.0031, 0.0039, 0.0049, 0.0093, 0.0138, 0.0193, 0.0398, 0.0956, 0.1618, 0.2573, 0.3846, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_DELT_MULOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MULOSS;
			NAME = "L_DELT_MULOSS";
		};
		PARENTS = (L_DELT_MALOSS, L_AXIL_BLOCK_ED);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.9746, 0.0054, 0, 0, 0, 0.02, 0.0664, 0.9136, 0, 0, 0, 0.02, 0.016, 0.1801, 0.7138, 0.0701, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0167, 0.9613, 0.002, 0, 0, 0.02, 0.00340034, 0.952995, 0.0236024, 0, 0, 0.020002, 0.0002, 0.2725, 0.7073, 0, 0, 0.02, 0.0009, 0.0263, 0.4192, 0.5336, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00019998, 0.0534947, 0.923708, 0.00259974, 0, 0.019998, 0, 0.0234023, 0.945095, 0.0115012, 0, 0.020002, 0, 0.0048, 0.7523, 0.2229, 0, 0.02, 0, 0.00130013, 0.0637064, 0.914991, 0, 0.020002, 0, 0, 0, 0, 0.98, 0.02, 0, 0.00030003, 0.0481048, 0.931593, 0, 0.020002, 0, 0.00010001, 0.0270027, 0.952895, 0, 0.020002, 0, 0, 0.0091, 0.9709, 0, 0.02, 0, 0.0001, 0.0087, 0.9712, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.1427, 0.2958, 0.4254, 0.1161, 0, 0.02, 0.1157, 0.2677, 0.4444, 0.1522, 0, 0.02, 0.0693931, 0.20108, 0.452655, 0.256874, 0, 0.019998, 0.0173, 0.0696, 0.2854, 0.6077, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node L_DELT_MVA_RECRUIT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MVA_RECRUIT;
			NAME = "L_DELT_MVA_RECRUIT";
		};
		PARENTS = (L_DELT_VOL_ACT, L_DELT_MULOSS);
		DEFINITION =
		{
			NAMESTATES = (FULL, REDUCED, DISCRETE, NO_UNITS);
			PROBABILITIES = (0.9295, 0.0705, 0, 0, 0.4821, 0.5165, 0.0014, 0, 0.0661, 0.7993, 0.1346, 0, 0.00149985, 0.136586, 0.861914, 0, 0, 0, 0, 1, 0.263974, 0.434357, 0.30167, 0, 0.1707, 0.7, 0.1293, 0, 0.0366, 0.5168, 0.4466, 0, 0.0043, 0.1788, 0.8169, 0, 0.00029997, 0.0347965, 0.964904, 0, 0, 0, 0, 1, 0.1146, 0.3465, 0.5389, 0, 0.0038, 0.174, 0.8222, 0, 0.0005, 0.0594, 0.9401, 0, 0.0001, 0.0205, 0.9794, 0, 0, 0.0061, 0.9939, 0, 0, 0, 0, 1, 0.036, 0.2144, 0.7496, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_DELT_NEUR_ACT;
			NAME = "R_DIFFN_DELT_NEUR_ACT";
		};
		PARENTS = (DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0);
		};
	};

	node R_LNLPC5_DIFFN_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DIFFN_DELT_NEUR_ACT;
			NAME = "R_LNLPC5_DIFFN_DELT_NEUR_ACT";
		};
		PARENTS = (R_DIFFN_DELT_NEUR_ACT, R_LNLPC5_DELT_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_DELT_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_NEUR_ACT;
			NAME = "R_DELT_NEUR_ACT";
		};
		PARENTS = (R_OTHER_DELT_NEUR_ACT, R_LNLPC5_DIFFN_DELT_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_DELT_SPONT_NEUR_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_SPONT_NEUR_DISCH;
			NAME = "R_DELT_SPONT_NEUR_DISCH";
		};
		PARENTS = (R_DELT_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.01, 0.04, 0.75, 0.05, 0.05, 0.1, 0.01, 0.04, 0.05, 0.75, 0.05, 0.1, 0.01, 0.04, 0.05, 0.05, 0.75, 0.1, 0.01, 0.05, 0.05, 0.05, 0.05, 0.79);
		};
	};

	node R_DIFFN_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_DELT_DENERV;
			NAME = "R_DIFFN_DELT_DENERV";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node R_LNLPC5_DIFFN_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DIFFN_DELT_DENERV;
			NAME = "R_LNLPC5_DIFFN_DELT_DENERV";
		};
		PARENTS = (R_DIFFN_DELT_DENERV, R_LNLPC5_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_DELT_MUDENS;
			NAME = "L_DIFFN_DELT_MUDENS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node L_LNLPC5_DIFFN_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DIFFN_DELT_MUDENS;
			NAME = "L_LNLPC5_DIFFN_DELT_MUDENS";
		};
		PARENTS = (L_DIFFN_DELT_MUDENS, L_LNLPC5_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_DELT_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MUDENS;
			NAME = "L_DELT_MUDENS";
		};
		PARENTS = (L_MUSCLE_DELT_MUDENS, L_LNLPC5_DIFFN_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_DELT_SF_DENSITY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_SF_DENSITY;
			NAME = "L_DELT_SF_DENSITY";
		};
		PARENTS = (L_DELT_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (x_2SD, x2_4SD, x_4SD);
			PROBABILITIES = (0.97, 0.03, 0, 0.05, 0.9, 0.05, 0.01, 0.04, 0.95);
		};
	};

	node R_DIFFN_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_DELT_DE_REGEN;
			NAME = "R_DIFFN_DELT_DE_REGEN";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_LNLPC5_DIFFN_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DIFFN_DELT_DE_REGEN;
			NAME = "R_LNLPC5_DIFFN_DELT_DE_REGEN";
		};
		PARENTS = (R_DIFFN_DELT_DE_REGEN, R_LNLPC5_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_DELT_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_DE_REGEN;
			NAME = "R_DELT_DE_REGEN";
		};
		PARENTS = (R_MUSCLE_DELT_DE_REGEN, R_LNLPC5_DIFFN_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_DELT_MUPSATEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MUPSATEL;
			NAME = "R_DELT_MUPSATEL";
		};
		PARENTS = (R_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.2, 0.8);
		};
	};

	node R_DE_REGEN_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DE_REGEN_DELT_NMT;
			NAME = "R_DE_REGEN_DELT_NMT";
		};
		PARENTS = (R_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0.949, 0.003, 0.001, 0.04, 0.003, 0.001, 0.003);
		};
	};

	node R_MYAS_DE_REGEN_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_DE_REGEN_DELT_NMT;
			NAME = "R_MYAS_DE_REGEN_DELT_NMT";
		};
		PARENTS = (R_MYAS_DELT_NMT, R_DE_REGEN_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_DELT_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_NMT;
			NAME = "R_DELT_NMT";
		};
		PARENTS = (R_MYAS_DE_REGEN_DELT_NMT, R_OTHER_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_NMT_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_NMT_DELT_DENERV;
			NAME = "R_NMT_DELT_DENERV";
		};
		PARENTS = (R_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.4, 0.45, 0.15, 0, 0.15, 0.35, 0.35, 0.15, 0.85, 0.15, 0, 0, 0.3, 0.45, 0.2, 0.05, 0.15, 0.35, 0.35, 0.15, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node R_OTHER_NMT_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_NMT_DELT_DENERV;
			NAME = "R_OTHER_NMT_DELT_DENERV";
		};
		PARENTS = (R_NMT_DELT_DENERV, R_OTHER_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_MUSCLE_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_DELT_DENERV;
			NAME = "R_MUSCLE_DELT_DENERV";
		};
		PARENTS = (R_OTHER_NMT_DELT_DENERV, R_MYOP_MYDY_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_DELT_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_DENERV;
			NAME = "R_DELT_DENERV";
		};
		PARENTS = (R_LNLPC5_DIFFN_DELT_DENERV, R_MUSCLE_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_DELT_SPONT_HF_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_SPONT_HF_DISCH;
			NAME = "R_DELT_SPONT_HF_DISCH";
		};
		PARENTS = (R_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.99, 0.01, 0.97, 0.03, 0.95, 0.05, 0.93, 0.07);
		};
	};

	node R_DELT_SPONT_DENERV_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_SPONT_DENERV_ACT;
			NAME = "R_DELT_SPONT_DENERV_ACT";
		};
		PARENTS = (R_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, SOME, MOD, ABUNDANT);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0.07, 0.85, 0.08, 0, 0.01, 0.07, 0.85, 0.07, 0, 0.01, 0.07, 0.92);
		};
	};

	node R_DELT_SPONT_INS_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_SPONT_INS_ACT;
			NAME = "R_DELT_SPONT_INS_ACT";
		};
		PARENTS = (R_DELT_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.98, 0.02, 0.1, 0.9, 0.05, 0.95, 0.05, 0.95);
		};
	};

	node R_DELT_REPSTIM_POST_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_REPSTIM_POST_DECR;
			NAME = "R_DELT_REPSTIM_POST_DECR";
		};
		PARENTS = (R_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.25, 0.61, 0.1, 0.02, 0.02, 0.01, 0.1, 0.8, 0.07, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.23, 0.23, 0.22, 0.22, 0.1);
		};
	};

	node R_DELT_REPSTIM_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_REPSTIM_DECR;
			NAME = "R_DELT_REPSTIM_DECR";
		};
		PARENTS = (R_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.04, 0.2, 0.7, 0.04, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.35, 0.57, 0.05, 0.01, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.245, 0.245, 0.245, 0.245, 0.02);
		};
	};

	node R_DELT_REPSTIM_FACILI
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_REPSTIM_FACILI;
			NAME = "R_DELT_REPSTIM_FACILI";
		};
		PARENTS = (R_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV, REDUCED);
			PROBABILITIES = (0.95, 0.02, 0.01, 0.02, 0.01, 0.889, 0.1, 0.001, 0.01, 0.08, 0.909, 0.001, 0.89, 0.08, 0.01, 0.02, 0.48, 0.5, 0.01, 0.01, 0.02, 0.949, 0.03, 0.001, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node R_DELT_SF_JITTER
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_SF_JITTER;
			NAME = "R_DELT_SF_JITTER";
		};
		PARENTS = (R_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, x2_5, x5_10, x_10);
			PROBABILITIES = (0.95, 0.05, 0, 0, 0.02, 0.2, 0.7, 0.08, 0, 0.1, 0.4, 0.5, 0.05, 0.7, 0.2, 0.05, 0.01, 0.19, 0.7, 0.1, 0, 0.1, 0.4, 0.5, 0.1, 0.3, 0.3, 0.3);
		};
	};

	node R_DELT_MUPINSTAB
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MUPINSTAB;
			NAME = "R_DELT_MUPINSTAB";
		};
		PARENTS = (R_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.1, 0.9, 0.03, 0.97, 0.2, 0.8, 0.1, 0.9, 0.03, 0.97, 0.1, 0.9);
		};
	};

	node R_DELT_EFFMUS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_EFFMUS;
			NAME = "R_DELT_EFFMUS";
		};
		PARENTS = (R_DELT_MUSIZE, R_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9683, 0.0117, 0, 0, 0, 0, 0.02, 0.9794, 0.0006, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.9742, 0.0058, 0, 0, 0, 0, 0.02, 0.9789, 0.0011, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.7927, 0.1721, 0.0135, 0.0016, 0.0001, 0, 0.02, 0.0164, 0.9421, 0.0215, 0, 0, 0, 0.02, 0.8182, 0.1616, 0.0002, 0, 0, 0, 0.02, 0.9738, 0.0062, 0, 0, 0, 0, 0.02, 0.0329, 0.9359, 0.0112, 0, 0, 0, 0.02, 0.3885, 0.59, 0.0015, 0, 0, 0, 0.02, 0.9362, 0.0438, 0, 0, 0, 0, 0.02, 0.492951, 0.370363, 0.0905909, 0.0216978, 0.00389961, 0.00049995, 0.019998, 0, 0, 0.973697, 0.00630063, 0, 0, 0.020002, 0.00070007, 0.940394, 0.0389039, 0, 0, 0, 0.020002, 0.7833, 0.1966, 0.0001, 0, 0, 0, 0.02, 0, 9.999e-05, 0.978302, 0.00159984, 0, 0, 0.019998, 0, 0.3781, 0.6016, 0.0003, 0, 0, 0.02, 0.0114988, 0.965303, 0.00319968, 0, 0, 0, 0.019998, 0.150515, 0.39774, 0.271527, 0.117212, 0.0361036, 0.00690069, 0.020002, 0, 0, 0.0082, 0.9646, 0.0072, 0, 0.02, 0, 0.0571, 0.8829, 0.04, 0, 0, 0.02, 0.0541, 0.9055, 0.0203, 0.0001, 0, 0, 0.02, 0, 0, 0.0326033, 0.945695, 0.00170017, 0, 0.020002, 0, 0, 0.7931, 0.1868, 0.0001, 0, 0.02, 0, 0.439, 0.5362, 0.0048, 0, 0, 0.02, 0.0391, 0.2318, 0.3318, 0.2294, 0.1131, 0.0348, 0.02, 0, 0, 0, 0.0072, 0.9656, 0.0072, 0.02, 0, 0.0001, 0.3198, 0.6276, 0.0325, 0, 0.02, 0.0004, 0.4664, 0.4912, 0.0219, 0.0001, 0, 0.02, 0, 0, 0, 0.0287, 0.9496, 0.0017, 0.02, 0, 0, 0.0071, 0.7665, 0.2063, 0.0001, 0.02, 0, 0.00150015, 0.70187, 0.273827, 0.00280028, 0, 0.020002, 0.0065, 0.0866, 0.2598, 0.2877, 0.2273, 0.1121, 0.02, 0, 0, 0, 0, 0.0072, 0.9728, 0.02, 0, 0, 0.0034, 0.2908, 0.6521, 0.0337, 0.02, 0, 0.0126975, 0.626375, 0.324235, 0.0165967, 9.998e-05, 0.019996, 0, 0, 0, 0, 0.0287, 0.9513, 0.02, 0, 0, 0, 0.0062, 0.7673, 0.2065, 0.02, 0, 0, 0.0383962, 0.649135, 0.289471, 0.0029997, 0.019998, 0.00079984, 0.0223955, 0.140872, 0.24985, 0.316237, 0.24985, 0.019996, 0.1111, 0.2284, 0.2388, 0.1875, 0.1354, 0.0788, 0.02, 0.242676, 0.30487, 0.206879, 0.124588, 0.069493, 0.0314968, 0.019998, 0.4236, 0.3196, 0.1381, 0.0628, 0.0267, 0.0092, 0.02, 0.1227, 0.2392, 0.2382, 0.1813, 0.127, 0.0716, 0.02, 0.177682, 0.277672, 0.227477, 0.153485, 0.0955904, 0.0480952, 0.019998, 0.2958, 0.3186, 0.1878, 0.1033, 0.0527, 0.0218, 0.02, 0.219722, 0.264926, 0.20142, 0.140614, 0.0964096, 0.0569057, 0.020002);
		};
	};

	node R_DELT_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MUPDUR;
			NAME = "R_DELT_MUPDUR";
		};
		PARENTS = (R_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9388, 0.0412, 0, 0, 0, 0, 0.02, 0.0396, 0.9008, 0.0396, 0, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0396, 0.9008, 0.0396, 0, 0.02, 0, 0, 0, 0.0412, 0.938, 0.0008, 0.02, 0, 0, 0, 0.0039, 0.2546, 0.7215, 0.02, 0.09, 0.235, 0.3236, 0.235, 0.09, 0.0064, 0.02);
		};
	};

	node R_DELT_QUAL_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_QUAL_MUPDUR;
			NAME = "R_DELT_QUAL_MUPDUR";
		};
		PARENTS = (R_DELT_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (SMALL, NORMAL, INCR);
			PROBABILITIES = (0.8309, 0.1677, 0.0014, 0.49, 0.49, 0.02, 0.1065, 0.787, 0.1065, 0.02, 0.49, 0.49, 0.0014, 0.1677, 0.8309, 0.0001, 0.0392, 0.9607, 0.2597, 0.4806, 0.2597);
		};
	};

	node R_DELT_QUAN_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_QUAN_MUPDUR;
			NAME = "R_DELT_QUAN_MUPDUR";
		};
		PARENTS = (R_DELT_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (MS3, MS4, MS5, MS6, MS7, MS8, MS9, MS10, MS11, MS12, MS13, MS14, MS15, MS16, MS17, MS18, MS19, MS20, MS_20);
			PROBABILITIES = (0.010201, 0.0369037, 0.0951095, 0.174717, 0.228923, 0.214021, 0.142614, 0.0678068, 0.0230023, 0.00560056, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0025, 0.0177, 0.0739, 0.1852, 0.2785, 0.2515, 0.1363, 0.0444, 0.0087, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.00029994, 0.0019996, 0.010198, 0.0368926, 0.094981, 0.174465, 0.228554, 0.213657, 0.142472, 0.0677864, 0.0229954, 0.00559888, 9.998e-05, 0, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00040004, 0.00180018, 0.00730073, 0.0229023, 0.0564056, 0.109711, 0.168317, 0.20352, 0.194119, 0.145915, 0.089509, 0.00520104, 0.0107021, 0.019804, 0.0336067, 0.0521104, 0.0737147, 0.095119, 0.112122, 0.120624, 0.118424, 0.106221, 0.0868174, 0.064913, 0.0442088, 0.0275055, 0.0156031, 0.00810162, 0.00380076, 0.00140028);
		};
	};

	node R_DELT_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MUPAMP;
			NAME = "R_DELT_MUPAMP";
		};
		PARENTS = (R_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.782, 0.195, 0.003, 0, 0, 0, 0.02, 0.10431, 0.771077, 0.10431, 0.00030003, 0, 0, 0.020002, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0.00029997, 0.10109, 0.747125, 0.131487, 0, 0.019998, 0, 0, 0.0024, 0.1528, 0.7968, 0.028, 0.02, 0, 0, 0, 0.0028, 0.0968, 0.8804, 0.02, 0.1328, 0.1932, 0.2189, 0.1932, 0.1726, 0.0693, 0.02);
		};
	};

	node R_DELT_QUAL_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_QUAL_MUPAMP;
			NAME = "R_DELT_QUAL_MUPAMP";
		};
		PARENTS = (R_DELT_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (V_RED, REDUCED, NORMAL, INCR, V_INCR);
			PROBABILITIES = (0.4289, 0.5209, 0.0499, 0.0003, 0, 0.0647, 0.5494, 0.3679, 0.018, 0, 0, 0.0479048, 0.875388, 0.0767077, 0, 0, 0.00869913, 0.283772, 0.677932, 0.029597, 0, 0.0002, 0.0376, 0.6283, 0.3339, 0, 0, 0.001, 0.0788, 0.9202, 0.096, 0.1884, 0.283, 0.3014, 0.1312);
		};
	};

	node R_DELT_QUAN_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_QUAN_MUPAMP;
			NAME = "R_DELT_QUAN_MUPAMP";
		};
		PARENTS = (R_DELT_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (UV34, UV44, UV58, UV74, UV94, UV122, UV156, UV200, UV260, UV330, UV420, UV540, UV700, UV900, UV1150, UV1480, UV1900, UV2440, UV3130, UV4020);
			PROBABILITIES = (0.0418042, 0.089709, 0.150215, 0.19572, 0.19872, 0.157116, 0.0967097, 0.0464046, 0.0173017, 0.0050005, 0.00110011, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0.00420042, 0.0148015, 0.0410041, 0.0880088, 0.147315, 0.192019, 0.194919, 0.154115, 0.0949095, 0.0455046, 0.0170017, 0.00490049, 0.00110011, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0006, 0.0043, 0.021, 0.0693, 0.155, 0.2345, 0.2401, 0.1663, 0.0779, 0.0247, 0.0053, 0.0008, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.00090009, 0.00420042, 0.0148015, 0.0409041, 0.0879088, 0.147215, 0.191819, 0.194719, 0.153915, 0.0948095, 0.0454045, 0.0170017, 0.00490049, 0.00110011, 0.00020002, 0, 0, 0, 0, 0, 0, 0.00020002, 0.00090009, 0.00420042, 0.0148015, 0.0409041, 0.0879088, 0.147215, 0.191819, 0.194719, 0.153915, 0.0948095, 0.0454045, 0.0170017, 0.00490049, 0.00110011, 0.00020002, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0021, 0.007, 0.0196, 0.0451, 0.0853, 0.1326, 0.1696, 0.1784, 0.1544, 0.1099, 0.0644, 0.031, 0.0204979, 0.029997, 0.0415958, 0.0546945, 0.0680932, 0.080292, 0.089691, 0.0949905, 0.0952905, 0.0905909, 0.0815918, 0.069593, 0.0562944, 0.0431957, 0.0312969, 0.0215978, 0.0140986, 0.00869913, 0.00509949, 0.00279972);
		};
	};

	node R_DELT_TA_CONCL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_TA_CONCL;
			NAME = "R_DELT_TA_CONCL";
		};
		PARENTS = (R_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (x_5ABOVE, x2_5ABOVE, NORMAL, x2_5BELOW, x_5BELOW);
			PROBABILITIES = (0, 0, 0.005, 0.045, 0.95, 0, 0, 0.05, 0.9, 0.05, 0, 0.03, 0.94, 0.03, 0, 0.195, 0.6, 0.2, 0.005, 0, 0.48, 0.5, 0.02, 0, 0, 0.8, 0.195, 0.005, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2);
		};
	};

	node R_DELT_QUAN_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_QUAN_MUPPOLY;
			NAME = "R_DELT_QUAN_MUPPOLY";
		};
		PARENTS = (R_DELT_EFFMUS, R_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (x_12_, x12_24_, x_24_);
			PROBABILITIES = (0.109, 0.548, 0.343, 0.004, 0.122, 0.874, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.925, 0.075, 0, 0.091, 0.526, 0.383, 0.796, 0.201, 0.003, 0.061, 0.465, 0.474, 0.637, 0.348, 0.015, 0.039, 0.396, 0.565, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724);
		};
	};

	node R_DELT_QUAL_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_QUAL_MUPPOLY;
			NAME = "R_DELT_QUAL_MUPPOLY";
		};
		PARENTS = (R_DELT_QUAN_MUPPOLY);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.95, 0.05, 0.3, 0.7, 0.05, 0.95);
		};
	};

	node R_DELT_MVA_AMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MVA_AMP;
			NAME = "R_DELT_MVA_AMP";
		};
		PARENTS = (R_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (INCR, NORMAL, REDUCED);
			PROBABILITIES = (0, 0.04, 0.96, 0.01, 0.15, 0.84, 0.05, 0.9, 0.05, 0.5, 0.49, 0.01, 0.85, 0.15, 0, 0.96, 0.04, 0, 0.33, 0.34, 0.33);
		};
	};

	node R_DIFFN_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_DELT_MALOSS;
			NAME = "R_DIFFN_DELT_MALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_LNLPC5_DIFFN_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLPC5_DIFFN_DELT_MALOSS;
			NAME = "R_LNLPC5_DIFFN_DELT_MALOSS";
		};
		PARENTS = (R_DIFFN_DELT_MALOSS, R_LNLPC5_DELT_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_DELT_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MALOSS;
			NAME = "R_DELT_MALOSS";
		};
		PARENTS = (R_OTHER_DELT_MALOSS, R_LNLPC5_DIFFN_DELT_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0, 0.0361, 0.9439, 0, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.013, 0.967, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0.0005, 0.9795, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node R_DELT_MULOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MULOSS;
			NAME = "R_DELT_MULOSS";
		};
		PARENTS = (R_DELT_MALOSS, R_AXIL_BLOCK_ED);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.9746, 0.0054, 0, 0, 0, 0.02, 0.0664, 0.9136, 0, 0, 0, 0.02, 0.016, 0.1801, 0.7138, 0.0701, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0167, 0.9613, 0.002, 0, 0, 0.02, 0.00340034, 0.952995, 0.0236024, 0, 0, 0.020002, 0.0002, 0.2725, 0.7073, 0, 0, 0.02, 0.0009, 0.0263, 0.4192, 0.5336, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00019998, 0.0534947, 0.923708, 0.00259974, 0, 0.019998, 0, 0.0234023, 0.945095, 0.0115012, 0, 0.020002, 0, 0.0048, 0.7523, 0.2229, 0, 0.02, 0, 0.00130013, 0.0637064, 0.914991, 0, 0.020002, 0, 0, 0, 0, 0.98, 0.02, 0, 0.00030003, 0.0481048, 0.931593, 0, 0.020002, 0, 0.00010001, 0.0270027, 0.952895, 0, 0.020002, 0, 0, 0.0091, 0.9709, 0, 0.02, 0, 0.0001, 0.0087, 0.9712, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.1427, 0.2958, 0.4254, 0.1161, 0, 0.02, 0.1157, 0.2677, 0.4444, 0.1522, 0, 0.02, 0.0693931, 0.20108, 0.452655, 0.256874, 0, 0.019998, 0.0173, 0.0696, 0.2854, 0.6077, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node R_DELT_MVA_RECRUIT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MVA_RECRUIT;
			NAME = "R_DELT_MVA_RECRUIT";
		};
		PARENTS = (R_DELT_VOL_ACT, R_DELT_MULOSS);
		DEFINITION =
		{
			NAMESTATES = (FULL, REDUCED, DISCRETE, NO_UNITS);
			PROBABILITIES = (0.9295, 0.0705, 0, 0, 0.4821, 0.5165, 0.0014, 0, 0.0661, 0.7993, 0.1346, 0, 0.00149985, 0.136586, 0.861914, 0, 0, 0, 0, 1, 0.263974, 0.434357, 0.30167, 0, 0.1707, 0.7, 0.1293, 0, 0.0366, 0.5168, 0.4466, 0, 0.0043, 0.1788, 0.8169, 0, 0.00029997, 0.0347965, 0.964904, 0, 0, 0, 0, 1, 0.1146, 0.3465, 0.5389, 0, 0.0038, 0.174, 0.8222, 0, 0.0005, 0.0594, 0.9401, 0, 0.0001, 0.0205, 0.9794, 0, 0, 0.0061, 0.9939, 0, 0, 0, 0, 1, 0.036, 0.2144, 0.7496, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_DELT_ALLAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_ALLAMP;
			NAME = "R_DELT_ALLAMP";
		};
		PARENTS = (R_DELT_MULOSS, R_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00, A2_00, A4_00, A8_00);
			PROBABILITIES = (0.00260026, 0.368737, 0.607561, 0.0208021, 0.00030003, 0, 0, 0, 0, 0, 0.0002, 0.4149, 0.4809, 0.0802, 0.0218, 0.002, 0, 0, 0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0, 0, 0, 0, 0.0018, 0.0536, 0.8696, 0.075, 0, 0, 0, 0, 0, 0, 0, 0.0736, 0.8528, 0.0736, 0, 0, 0, 0, 0, 0, 0.0001, 0.0794, 0.9205, 0.0003, 0.006, 0.105, 0.205, 0.1633, 0.141, 0.1771, 0.1279, 0.0744, 0.0409, 0.8924, 0.0661, 0.0006, 0, 0, 0, 0, 0, 0, 0.01, 0.77, 0.2049, 0.0128, 0.0022, 0.0001, 0, 0, 0, 0, 0, 0.2489, 0.7398, 0.0113, 0, 0, 0, 0, 0, 0, 0.00420042, 0.346835, 0.534854, 0.113711, 0.00040004, 0, 0, 0, 0, 0, 0.0064, 0.0855, 0.788, 0.1197, 0.0004, 0, 0, 0, 0, 0, 0.00029997, 0.116488, 0.766723, 0.116488, 0.00190019, 0.0230023, 0.190019, 0.262326, 0.162916, 0.124412, 0.126413, 0.0740074, 0.0350035, 0.2926, 0.7043, 0.0031, 0, 0, 0, 0, 0, 0, 0.0091, 0.4203, 0.5312, 0.038, 0.0012, 0.0002, 0, 0, 0, 0, 0, 0.309469, 0.680732, 0.00949905, 0.00029997, 0, 0, 0, 0, 0, 0.018, 0.6298, 0.2744, 0.0746, 0.0032, 0, 0, 0, 0, 0.00010001, 0.10461, 0.428143, 0.356836, 0.107111, 0.00320032, 0, 0, 0, 0, 0.00250025, 0.0978098, 0.249825, 0.532353, 0.114111, 0.00340034, 0.0144014, 0.0993099, 0.30283, 0.270227, 0.124312, 0.0821082, 0.0652065, 0.030203, 0.0114011, 0.781, 0.2189, 0.0001, 0, 0, 0, 0, 0, 0, 0.266927, 0.716172, 0.0166017, 0.00030003, 0, 0, 0, 0, 0, 9.999e-05, 0.10279, 0.879212, 0.0177982, 9.999e-05, 0, 0, 0, 0, 0, 0.00440044, 0.811181, 0.176218, 0.00730073, 0.00090009, 0, 0, 0, 0, 9.999e-05, 0.412959, 0.49655, 0.0718928, 0.0172983, 0.00119988, 0, 0, 0, 0, 0.0781078, 0.519652, 0.261026, 0.116712, 0.0234023, 0.00110011, 0, 0.1169, 0.3697, 0.2867, 0.1411, 0.0431, 0.0234, 0.0133, 0.0045, 0.0013, 0.9907, 0.0093, 0, 0, 0, 0, 0, 0, 0, 0.9858, 0.0142, 0, 0, 0, 0, 0, 0, 0, 0.9865, 0.0135, 0, 0, 0, 0, 0, 0, 0, 0.982, 0.018, 0, 0, 0, 0, 0, 0, 0, 0.9779, 0.0221, 0, 0, 0, 0, 0, 0, 0, 0.973, 0.027, 0, 0, 0, 0, 0, 0, 0, 0.937006, 0.0628937, 9.999e-05, 0, 0, 0, 0, 0, 0, 0.359564, 0.514749, 0.0940906, 0.0239976, 0.00459954, 0.0019998, 0.00079992, 0.00019998, 0, 0.133587, 0.385461, 0.269773, 0.130787, 0.040096, 0.0218978, 0.0126987, 0.00439956, 0.00129987, 0.0096, 0.0788, 0.2992, 0.2816, 0.1319, 0.0873, 0.0689, 0.0313, 0.0114, 0.00260052, 0.0289058, 0.204041, 0.265753, 0.159432, 0.119924, 0.119024, 0.0684137, 0.0319064, 0.00049995, 0.00839916, 0.118188, 0.213879, 0.162984, 0.138186, 0.169083, 0.119888, 0.0688931, 0.0001, 0.0021, 0.0586, 0.1473, 0.1427, 0.1363, 0.2057, 0.1798, 0.1274, 0.0521052, 0.160816, 0.227223, 0.20132, 0.106611, 0.0792079, 0.0831083, 0.0559056, 0.0337034);
		};
	};

	node R_DELT_FORCE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_FORCE;
			NAME = "R_DELT_FORCE";
		};
		PARENTS = (R_DELT_ALLAMP, R_DELT_VOL_ACT);
		DEFINITION =
		{
			NAMESTATES = (x5, x4, x3, x2, x1, x0);
			PROBABILITIES = (0, 0, 0, 0.00409959, 0.190781, 0.80512, 0, 0, 0, 0.001, 0.0578, 0.9412, 0, 0, 0, 9.999e-05, 0.0125987, 0.987301, 0, 0, 0, 0, 0.00590059, 0.994099, 9.999e-05, 0.00429957, 0.0521948, 0.266873, 0.433057, 0.243476, 0, 0.0005, 0.0084, 0.0849, 0.3219, 0.5843, 0, 0, 0.0007, 0.0167, 0.1576, 0.825, 0, 0, 0, 0.00260026, 0.0586059, 0.938794, 0.0149015, 0.235424, 0.533153, 0.20152, 0.0149015, 0.00010001, 0.0009, 0.0256, 0.18, 0.4308, 0.3036, 0.0591, 0, 0.0005, 0.0128, 0.1328, 0.4061, 0.4478, 0, 0, 0.0003, 0.0091, 0.1181, 0.8725, 0.1538, 0.6493, 0.1936, 0.0033, 0, 0, 0.0098, 0.1589, 0.4714, 0.3101, 0.0485, 0.0013, 0.0001, 0.0049, 0.0751, 0.3632, 0.429, 0.1277, 0, 0, 0.0008, 0.0215, 0.1873, 0.7904, 0.6667, 0.3291, 0.0042, 0, 0, 0, 0.0537054, 0.420442, 0.454845, 0.0690069, 0.0020002, 0, 0.00050005, 0.0273027, 0.243324, 0.50135, 0.211821, 0.0157016, 0, 9.999e-05, 0.00249975, 0.0471953, 0.275572, 0.674633, 0.946895, 0.0531053, 0, 0, 0, 0, 0.117312, 0.565857, 0.30103, 0.0157016, 0.00010001, 0, 0.00120012, 0.060206, 0.386239, 0.454245, 0.0954095, 0.00270027, 0, 0.0001, 0.0044, 0.0713, 0.3326, 0.5916, 0.9782, 0.0218, 0, 0, 0, 0, 0.410159, 0.479352, 0.106989, 0.00349965, 0, 0, 0.0256026, 0.247025, 0.483848, 0.217422, 0.0256026, 0.00050005, 0, 0.0020002, 0.0279028, 0.181218, 0.411241, 0.377638, 0.9971, 0.0029, 0, 0, 0, 0, 0.7017, 0.2755, 0.0226, 0.0002, 0, 0, 0.1171, 0.4443, 0.3699, 0.0654, 0.0033, 0, 0.0004, 0.0107, 0.0847, 0.3035, 0.3988, 0.2019, 0.9996, 0.0004, 0, 0, 0, 0, 0.8804, 0.1161, 0.0035, 0, 0, 0, 0.327067, 0.487951, 0.172683, 0.0119988, 0.00029997, 0, 0.0030003, 0.0426043, 0.194819, 0.384938, 0.292929, 0.0817082);
		};
	};

	node R_DELT_REPSTIM_CMAPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_REPSTIM_CMAPAMP;
			NAME = "R_DELT_REPSTIM_CMAPAMP";
		};
		PARENTS = (R_DELT_ALLAMP);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_032, MV_044, MV_063, MV_088, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0008, 0.0838, 0.0981, 0.1087, 0.114, 0.1131, 0.1062, 0.0944, 0.0794, 0.0632, 0.0476, 0.034, 0.0229, 0.0146, 0.0089, 0.0051, 0.0027, 0.0014, 0.0007, 0.0003, 0.0001, 0, 0.00029994, 0.0009998, 0.00279944, 0.0069986, 0.0153969, 0.030194, 0.0523895, 0.0805839, 0.109378, 0.131474, 0.139672, 0.131374, 0.109278, 0.0804839, 0.0523895, 0.030194, 0.0153969, 0.00689862, 0.00279944, 0.0009998, 0, 0, 0, 0, 0, 0.00020004, 0.00070014, 0.0025005, 0.00730146, 0.0184037, 0.0393079, 0.0714143, 0.110122, 0.144529, 0.161232, 0.152831, 0.123225, 0.0844169, 0.0492098, 0.0244049, 0.010202, 0, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00059994, 0.00239976, 0.00839916, 0.0234977, 0.0535946, 0.0991901, 0.149585, 0.183282, 0.182582, 0.147785, 0.0972903, 0.0516948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019996, 0.0009998, 0.00439912, 0.0153969, 0.0422915, 0.0913817, 0.154069, 0.203559, 0.210358, 0.170166, 0.107179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0012, 0.0045, 0.0139, 0.0361, 0.0776, 0.1391, 0.2072, 0.2564, 0.2637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0024, 0.0092, 0.0286, 0.0745, 0.1612, 0.2895, 0.434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0003, 0.0019, 0.0086, 0.0327, 0.1028, 0.268, 0.5856);
		};
	};

	node R_AXIL_AMP_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_AXIL_AMP_E;
			NAME = "R_AXIL_AMP_E";
		};
		PARENTS = (R_DELT_ALLAMP);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.215322, 0.19872, 0.170917, 0.136914, 0.10221, 0.0711071, 0.0460046, 0.0278028, 0.0156016, 0.00820082, 0.0040004, 0.00180018, 0.00080008, 0.00030003, 0.00010001, 0, 0, 0.0087, 0.0213, 0.0441, 0.0778, 0.1167, 0.1489, 0.1614, 0.1488, 0.1166, 0.0777, 0.044, 0.0212, 0.0087, 0.003, 0.0009, 0.0002, 0, 0, 0.00019998, 0.00089991, 0.00349965, 0.0113989, 0.029997, 0.0641936, 0.111589, 0.157784, 0.181282, 0.169383, 0.128787, 0.079492, 0.039896, 0.0162984, 0.00529947, 0, 0, 0, 0, 0.0001, 0.0003, 0.0017, 0.0065, 0.0201, 0.0495, 0.0972, 0.1523, 0.1901, 0.1893, 0.1502, 0.0951, 0.0476, 0, 0, 0, 0, 0, 0, 0.00019996, 0.0009998, 0.00439912, 0.0153969, 0.0422915, 0.0913817, 0.154069, 0.203559, 0.210358, 0.170166, 0.107179, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0006, 0.0028, 0.0102, 0.0296, 0.0699, 0.1345, 0.2102, 0.2668, 0.2753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0014, 0.0061, 0.0219, 0.064, 0.152, 0.293, 0.4613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.001, 0.0055, 0.0245, 0.0884, 0.2588, 0.6216);
		};
	};

	node R_DELT_MUSCLE_VOL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DELT_MUSCLE_VOL;
			NAME = "R_DELT_MUSCLE_VOL";
		};
		PARENTS = (R_DELT_MALOSS, R_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (ATROPHIC, NORMAL);
			PROBABILITIES = (0.9896, 0.0104, 0.8137, 0.1863, 0.0209, 0.9791, 0.0209, 0.9791, 0.003, 0.997, 0.0004, 0.9996, 0.4212, 0.5788, 0.9976, 0.0024, 0.9603, 0.0397, 0.5185, 0.4815, 0.1492, 0.8508, 0.0278, 0.9722, 0.0046, 0.9954, 0.5185, 0.4815, 0.999, 0.001, 0.9893, 0.0107, 0.9588, 0.0412, 0.6221, 0.3779, 0.2716, 0.7284, 0.0779, 0.9221, 0.6336, 0.3664, 0.9995, 0.0005, 0.9969, 0.0031, 0.9953, 0.0047, 0.9358, 0.0642, 0.8234, 0.1766, 0.5986, 0.4014, 0.7685, 0.2315, 0.9989, 0.0011, 0.9984, 0.0016, 0.9984, 0.0016, 0.9972, 0.0028, 0.9965, 0.0035, 0.9956, 0.0044, 0.9857, 0.0143, 0.9363, 0.0637, 0.8403, 0.1597, 0.6534, 0.3466, 0.4719, 0.5281, 0.3174, 0.6826, 0.1948, 0.8052, 0.5681, 0.4319);
		};
	};

	node R_AXIL_DCV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_AXIL_DCV;
			NAME = "R_AXIL_DCV";
		};
		PARENTS = (R_AXIL_DIFSLOW_ED, R_DELT_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1136, 0.8864, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0764, 0.8866, 0.0364, 0, 0, 0, 0, 0, 0, 0, 0.0655, 0.9299, 0.0046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.1523, 0.2904, 0.3678, 0.1726, 0.0169, 0, 0, 0, 0, 0.008, 0.168, 0.7407, 0.0833, 0, 0, 0, 0, 0, 0.00089991, 0.0367963, 0.557644, 0.40246, 0.00219978, 0, 0, 0, 0, 0, 0.00070007, 0.0525053, 0.571257, 0.375238, 0.00030003, 0, 0, 0, 0, 0, 0.0007, 0.0745, 0.8859, 0.0389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0168, 0.0618, 0.2223, 0.4015, 0.2803, 0.0172, 0.0001, 0, 0, 0.00069986, 0.00589882, 0.0614877, 0.30064, 0.552589, 0.0781844, 0.0004999, 0, 0, 0.0002, 0.0018, 0.0263, 0.1887, 0.5884, 0.1916, 0.003, 0, 0, 0, 0.0001, 0.0024, 0.0358, 0.316, 0.5741, 0.0716, 0, 0, 0, 0, 9.999e-05, 0.00319968, 0.0780922, 0.594641, 0.323568, 0.00039996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0009999, 0.00469953, 0.0279972, 0.118388, 0.364664, 0.392261, 0.0906909, 0.00029997, 0, 0.0001, 0.0003, 0.0018, 0.011, 0.067, 0.2945, 0.5047, 0.1206, 0, 0, 0.00010001, 0.00090009, 0.00590059, 0.0422042, 0.235624, 0.522552, 0.192719, 0, 0, 0, 0.0001, 0.0012, 0.0121, 0.1131, 0.4415, 0.432, 0, 0, 0, 0, 0.00020002, 0.00280028, 0.0439044, 0.291729, 0.661366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0011, 0.0057, 0.0332, 0.1704, 0.4424, 0.347, 0);
		};
	};

	node R_AXIL_DEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_AXIL_DEL;
			NAME = "R_AXIL_DEL";
		};
		PARENTS = (R_AXIL_DCV, R_AXIL_RD_ED);
		DEFINITION =
		{
			NAMESTATES = (MS0_0, MS0_4, MS0_8, MS1_6, MS3_2, MS6_4, MS12_8, MS25_6, INFIN);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0003, 0.0006, 0.0027, 0.021, 0.2666, 0.7086, 0, 0, 0, 0.0001, 0.0001, 0.0004, 0.0021, 0.0232, 0.4307, 0.5434, 0, 0.6514, 0.3486, 0, 0, 0, 0, 0, 0, 0, 0.00010002, 0.00020004, 0.0005001, 0.00220044, 0.0178036, 0.242248, 0.736947, 0, 0, 0, 0, 0.00010001, 0.00030003, 0.00180018, 0.0210021, 0.408641, 0.568157, 0, 0.0003, 0.9337, 0.066, 0, 0, 0, 0, 0, 0, 0.0001, 0.0002, 0.0004, 0.0016, 0.0137, 0.2066, 0.7774, 0, 0, 0, 0, 0.0001, 0.0003, 0.0015, 0.0178, 0.3739, 0.6064, 0, 0, 0.00380038, 0.9962, 0, 0, 0, 0, 0, 0, 0.0001, 0.0001, 0.0002, 0.0011, 0.0095, 0.165, 0.824, 0, 0, 0, 0, 9.999e-05, 0.00019998, 0.00109989, 0.0141986, 0.329267, 0.655134, 0, 0, 0, 0.0106011, 0.989399, 0, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00050005, 0.00540054, 0.114911, 0.879088, 0, 0, 0, 0, 0, 0.00010002, 0.00070014, 0.00980196, 0.266153, 0.723245, 0, 0, 0.00020002, 0.00260026, 0.135614, 0.861586, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.002, 0.058, 0.9396, 0.0002, 0, 0, 0, 0, 0, 0.00030003, 0.00480048, 0.169717, 0.825182, 0, 0, 0, 0, 0.0005, 0.8212, 0.1783, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0184, 0.9779, 0.0033, 0, 0, 0, 0, 0, 0.0001, 0.0014, 0.0771, 0.9214, 0, 0, 0, 0, 0.00040004, 0.0113011, 0.59806, 0.390239, 0, 0, 0, 0, 0, 0, 0, 0.0021, 0.401, 0.5969, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0144014, 0.985499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_AXIL_LAT_ED
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_AXIL_LAT_ED;
			NAME = "R_AXIL_LAT_ED";
		};
		PARENTS = (R_AXIL_DEL);
		DEFINITION =
		{
			NAMESTATES = (MS3_1, MS3_5, MS3_9, MS4_3, MS4_7, MS5_3, MS5_9, MS6_5, MS7_1, MS8_0, MS9_0, MS10_0, MS12_0, MS14_0, MS16_0, MS18_0, INFIN);
			PROBABILITIES = (0.00990099, 0.0715071, 0.233923, 0.347235, 0.292429, 0.0441044, 0.00090009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0017, 0.0166, 0.0866, 0.233, 0.4051, 0.2314, 0.025, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0017, 0.0169, 0.0882, 0.2965, 0.4557, 0.1322, 0.0087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00110011, 0.00810081, 0.0477048, 0.253925, 0.417242, 0.253925, 0.0163016, 0.00160016, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00059994, 0.00189981, 0.00659934, 0.0274973, 0.0709929, 0.135786, 0.274273, 0.309069, 0.134587, 0.0382962, 0.00019998, 0, 0, 0, 0, 9.999e-05, 0.00019998, 0.00029997, 0.00059994, 0.00129987, 0.00359964, 0.00749925, 0.0141986, 0.0456954, 0.0810919, 0.136786, 0.273073, 0.315668, 0.105589, 0.0135986, 0.00069993, 0, 9.999e-05, 0.00019998, 0.00029997, 0.00039996, 0.00059994, 0.00119988, 0.00179982, 0.00269973, 0.00679932, 0.0112989, 0.0191981, 0.0459954, 0.130187, 0.215978, 0.279872, 0.283372, 0, 0.0009, 0.001, 0.0012, 0.0014, 0.0021, 0.0031, 0.0039, 0.0049, 0.0093, 0.0138, 0.0193, 0.0398, 0.0956, 0.1618, 0.2573, 0.3846, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_DELT_MUSIZE;
			NAME = "L_DIFFN_DELT_MUSIZE";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_PROX);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_LNLPC5_DIFFN_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNLPC5_DIFFN_DELT_MUSIZE;
			NAME = "L_LNLPC5_DIFFN_DELT_MUSIZE";
		};
		PARENTS = (L_LNLPC5_DELT_MUSIZE, L_DIFFN_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_DELT_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MUSIZE;
			NAME = "L_DELT_MUSIZE";
		};
		PARENTS = (L_LNLPC5_DIFFN_DELT_MUSIZE, L_MUSCLE_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0.979398, 0.00050005, 0.00010001, 0, 0, 0.020002, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0, 0.9781, 0.0019, 0, 0, 0.02, 0, 0, 0.0019, 0.9781, 0, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0, 0.0019, 0.9781, 0, 0, 0.02, 0, 0, 0, 0.98, 0, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.98, 0, 0, 0, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0.98, 0, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0.98, 0, 0, 0, 0, 0, 0.02, 0, 0.979398, 0.00050005, 0.00010001, 0, 0, 0.020002, 0, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node L_DELT_MUSCLE_VOL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MUSCLE_VOL;
			NAME = "L_DELT_MUSCLE_VOL";
		};
		PARENTS = (L_DELT_MALOSS, L_DELT_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (ATROPHIC, NORMAL);
			PROBABILITIES = (0.9896, 0.0104, 0.8137, 0.1863, 0.0209, 0.9791, 0.0209, 0.9791, 0.003, 0.997, 0.0004, 0.9996, 0.4212, 0.5788, 0.9976, 0.0024, 0.9603, 0.0397, 0.5185, 0.4815, 0.1492, 0.8508, 0.0278, 0.9722, 0.0046, 0.9954, 0.5185, 0.4815, 0.999, 0.001, 0.9893, 0.0107, 0.9588, 0.0412, 0.6221, 0.3779, 0.2716, 0.7284, 0.0779, 0.9221, 0.6336, 0.3664, 0.9995, 0.0005, 0.9969, 0.0031, 0.9953, 0.0047, 0.9358, 0.0642, 0.8234, 0.1766, 0.5986, 0.4014, 0.7685, 0.2315, 0.9989, 0.0011, 0.9984, 0.0016, 0.9984, 0.0016, 0.9972, 0.0028, 0.9965, 0.0035, 0.9956, 0.0044, 0.9857, 0.0143, 0.9363, 0.0637, 0.8403, 0.1597, 0.6534, 0.3466, 0.4719, 0.5281, 0.3174, 0.6826, 0.1948, 0.8052, 0.5681, 0.4319);
		};
	};

	node L_DELT_EFFMUS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_EFFMUS;
			NAME = "L_DELT_EFFMUS";
		};
		PARENTS = (L_DELT_MUSIZE, L_DELT_NMT);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9683, 0.0117, 0, 0, 0, 0, 0.02, 0.9794, 0.0006, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.9742, 0.0058, 0, 0, 0, 0, 0.02, 0.9789, 0.0011, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.7927, 0.1721, 0.0135, 0.0016, 0.0001, 0, 0.02, 0.0164, 0.9421, 0.0215, 0, 0, 0, 0.02, 0.8182, 0.1616, 0.0002, 0, 0, 0, 0.02, 0.9738, 0.0062, 0, 0, 0, 0, 0.02, 0.0329, 0.9359, 0.0112, 0, 0, 0, 0.02, 0.3885, 0.59, 0.0015, 0, 0, 0, 0.02, 0.9362, 0.0438, 0, 0, 0, 0, 0.02, 0.492951, 0.370363, 0.0905909, 0.0216978, 0.00389961, 0.00049995, 0.019998, 0, 0, 0.973697, 0.00630063, 0, 0, 0.020002, 0.00070007, 0.940394, 0.0389039, 0, 0, 0, 0.020002, 0.7833, 0.1966, 0.0001, 0, 0, 0, 0.02, 0, 9.999e-05, 0.978302, 0.00159984, 0, 0, 0.019998, 0, 0.3781, 0.6016, 0.0003, 0, 0, 0.02, 0.0114988, 0.965303, 0.00319968, 0, 0, 0, 0.019998, 0.150515, 0.39774, 0.271527, 0.117212, 0.0361036, 0.00690069, 0.020002, 0, 0, 0.0082, 0.9646, 0.0072, 0, 0.02, 0, 0.0571, 0.8829, 0.04, 0, 0, 0.02, 0.0541, 0.9055, 0.0203, 0.0001, 0, 0, 0.02, 0, 0, 0.0326033, 0.945695, 0.00170017, 0, 0.020002, 0, 0, 0.7931, 0.1868, 0.0001, 0, 0.02, 0, 0.439, 0.5362, 0.0048, 0, 0, 0.02, 0.0391, 0.2318, 0.3318, 0.2294, 0.1131, 0.0348, 0.02, 0, 0, 0, 0.0072, 0.9656, 0.0072, 0.02, 0, 0.0001, 0.3198, 0.6276, 0.0325, 0, 0.02, 0.0004, 0.4664, 0.4912, 0.0219, 0.0001, 0, 0.02, 0, 0, 0, 0.0287, 0.9496, 0.0017, 0.02, 0, 0, 0.0071, 0.7665, 0.2063, 0.0001, 0.02, 0, 0.00150015, 0.70187, 0.273827, 0.00280028, 0, 0.020002, 0.0065, 0.0866, 0.2598, 0.2877, 0.2273, 0.1121, 0.02, 0, 0, 0, 0, 0.0072, 0.9728, 0.02, 0, 0, 0.0034, 0.2908, 0.6521, 0.0337, 0.02, 0, 0.0126975, 0.626375, 0.324235, 0.0165967, 9.998e-05, 0.019996, 0, 0, 0, 0, 0.0287, 0.9513, 0.02, 0, 0, 0, 0.0062, 0.7673, 0.2065, 0.02, 0, 0, 0.0383962, 0.649135, 0.289471, 0.0029997, 0.019998, 0.00079984, 0.0223955, 0.140872, 0.24985, 0.316237, 0.24985, 0.019996, 0.1111, 0.2284, 0.2388, 0.1875, 0.1354, 0.0788, 0.02, 0.242676, 0.30487, 0.206879, 0.124588, 0.069493, 0.0314968, 0.019998, 0.4236, 0.3196, 0.1381, 0.0628, 0.0267, 0.0092, 0.02, 0.1227, 0.2392, 0.2382, 0.1813, 0.127, 0.0716, 0.02, 0.177682, 0.277672, 0.227477, 0.153485, 0.0955904, 0.0480952, 0.019998, 0.2958, 0.3186, 0.1878, 0.1033, 0.0527, 0.0218, 0.02, 0.219722, 0.264926, 0.20142, 0.140614, 0.0964096, 0.0569057, 0.020002);
		};
	};

	node L_DELT_TA_CONCL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_TA_CONCL;
			NAME = "L_DELT_TA_CONCL";
		};
		PARENTS = (L_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (x_5ABOVE, x2_5ABOVE, NORMAL, x2_5BELOW, x_5BELOW);
			PROBABILITIES = (0, 0, 0.005, 0.045, 0.95, 0, 0, 0.05, 0.9, 0.05, 0, 0.03, 0.94, 0.03, 0, 0.195, 0.6, 0.2, 0.005, 0, 0.48, 0.5, 0.02, 0, 0, 0.8, 0.195, 0.005, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2);
		};
	};

	node L_DELT_QUAN_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_QUAN_MUPPOLY;
			NAME = "L_DELT_QUAN_MUPPOLY";
		};
		PARENTS = (L_DELT_EFFMUS, L_DELT_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (x_12_, x12_24_, x_24_);
			PROBABILITIES = (0.109, 0.548, 0.343, 0.004, 0.122, 0.874, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.925, 0.075, 0, 0.091, 0.526, 0.383, 0.796, 0.201, 0.003, 0.061, 0.465, 0.474, 0.637, 0.348, 0.015, 0.039, 0.396, 0.565, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724);
		};
	};

	node L_DELT_QUAL_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_QUAL_MUPPOLY;
			NAME = "L_DELT_QUAL_MUPPOLY";
		};
		PARENTS = (L_DELT_QUAN_MUPPOLY);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.95, 0.05, 0.3, 0.7, 0.05, 0.95);
		};
	};

	node L_DELT_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MUPDUR;
			NAME = "L_DELT_MUPDUR";
		};
		PARENTS = (L_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9388, 0.0412, 0, 0, 0, 0, 0.02, 0.0396, 0.9008, 0.0396, 0, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0396, 0.9008, 0.0396, 0, 0.02, 0, 0, 0, 0.0412, 0.938, 0.0008, 0.02, 0, 0, 0, 0.0039, 0.2546, 0.7215, 0.02, 0.09, 0.235, 0.3236, 0.235, 0.09, 0.0064, 0.02);
		};
	};

	node L_DELT_QUAN_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_QUAN_MUPDUR;
			NAME = "L_DELT_QUAN_MUPDUR";
		};
		PARENTS = (L_DELT_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (MS3, MS4, MS5, MS6, MS7, MS8, MS9, MS10, MS11, MS12, MS13, MS14, MS15, MS16, MS17, MS18, MS19, MS20, MS_20);
			PROBABILITIES = (0.010201, 0.0369037, 0.0951095, 0.174717, 0.228923, 0.214021, 0.142614, 0.0678068, 0.0230023, 0.00560056, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0025, 0.0177, 0.0739, 0.1852, 0.2785, 0.2515, 0.1363, 0.0444, 0.0087, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.00029994, 0.0019996, 0.010198, 0.0368926, 0.094981, 0.174465, 0.228554, 0.213657, 0.142472, 0.0677864, 0.0229954, 0.00559888, 9.998e-05, 0, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00040004, 0.00180018, 0.00730073, 0.0229023, 0.0564056, 0.109711, 0.168317, 0.20352, 0.194119, 0.145915, 0.089509, 0.00520104, 0.0107021, 0.019804, 0.0336067, 0.0521104, 0.0737147, 0.095119, 0.112122, 0.120624, 0.118424, 0.106221, 0.0868174, 0.064913, 0.0442088, 0.0275055, 0.0156031, 0.00810162, 0.00380076, 0.00140028);
		};
	};

	node L_DELT_QUAL_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_QUAL_MUPDUR;
			NAME = "L_DELT_QUAL_MUPDUR";
		};
		PARENTS = (L_DELT_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (SMALL, NORMAL, INCR);
			PROBABILITIES = (0.8309, 0.1677, 0.0014, 0.49, 0.49, 0.02, 0.1065, 0.787, 0.1065, 0.02, 0.49, 0.49, 0.0014, 0.1677, 0.8309, 0.0001, 0.0392, 0.9607, 0.2597, 0.4806, 0.2597);
		};
	};

	node L_DELT_MVA_AMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MVA_AMP;
			NAME = "L_DELT_MVA_AMP";
		};
		PARENTS = (L_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (INCR, NORMAL, REDUCED);
			PROBABILITIES = (0, 0.04, 0.96, 0.01, 0.15, 0.84, 0.05, 0.9, 0.05, 0.5, 0.49, 0.01, 0.85, 0.15, 0, 0.96, 0.04, 0, 0.33, 0.34, 0.33);
		};
	};

	node L_DELT_ALLAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_ALLAMP;
			NAME = "L_DELT_ALLAMP";
		};
		PARENTS = (L_DELT_MULOSS, L_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00, A2_00, A4_00, A8_00);
			PROBABILITIES = (0.00260026, 0.368737, 0.607561, 0.0208021, 0.00030003, 0, 0, 0, 0, 0, 0.0002, 0.4149, 0.4809, 0.0802, 0.0218, 0.002, 0, 0, 0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0, 0, 0, 0, 0.0018, 0.0536, 0.8696, 0.075, 0, 0, 0, 0, 0, 0, 0, 0.0736, 0.8528, 0.0736, 0, 0, 0, 0, 0, 0, 0.0001, 0.0794, 0.9205, 0.0003, 0.006, 0.105, 0.205, 0.1633, 0.141, 0.1771, 0.1279, 0.0744, 0.0409, 0.8924, 0.0661, 0.0006, 0, 0, 0, 0, 0, 0, 0.01, 0.77, 0.2049, 0.0128, 0.0022, 0.0001, 0, 0, 0, 0, 0, 0.2489, 0.7398, 0.0113, 0, 0, 0, 0, 0, 0, 0.00420042, 0.346835, 0.534854, 0.113711, 0.00040004, 0, 0, 0, 0, 0, 0.0064, 0.0855, 0.788, 0.1197, 0.0004, 0, 0, 0, 0, 0, 0.00029997, 0.116488, 0.766723, 0.116488, 0.00190019, 0.0230023, 0.190019, 0.262326, 0.162916, 0.124412, 0.126413, 0.0740074, 0.0350035, 0.2926, 0.7043, 0.0031, 0, 0, 0, 0, 0, 0, 0.0091, 0.4203, 0.5312, 0.038, 0.0012, 0.0002, 0, 0, 0, 0, 0, 0.309469, 0.680732, 0.00949905, 0.00029997, 0, 0, 0, 0, 0, 0.018, 0.6298, 0.2744, 0.0746, 0.0032, 0, 0, 0, 0, 0.00010001, 0.10461, 0.428143, 0.356836, 0.107111, 0.00320032, 0, 0, 0, 0, 0.00250025, 0.0978098, 0.249825, 0.532353, 0.114111, 0.00340034, 0.0144014, 0.0993099, 0.30283, 0.270227, 0.124312, 0.0821082, 0.0652065, 0.030203, 0.0114011, 0.781, 0.2189, 0.0001, 0, 0, 0, 0, 0, 0, 0.266927, 0.716172, 0.0166017, 0.00030003, 0, 0, 0, 0, 0, 9.999e-05, 0.10279, 0.879212, 0.0177982, 9.999e-05, 0, 0, 0, 0, 0, 0.00440044, 0.811181, 0.176218, 0.00730073, 0.00090009, 0, 0, 0, 0, 9.999e-05, 0.412959, 0.49655, 0.0718928, 0.0172983, 0.00119988, 0, 0, 0, 0, 0.0781078, 0.519652, 0.261026, 0.116712, 0.0234023, 0.00110011, 0, 0.1169, 0.3697, 0.2867, 0.1411, 0.0431, 0.0234, 0.0133, 0.0045, 0.0013, 0.9907, 0.0093, 0, 0, 0, 0, 0, 0, 0, 0.9858, 0.0142, 0, 0, 0, 0, 0, 0, 0, 0.9865, 0.0135, 0, 0, 0, 0, 0, 0, 0, 0.982, 0.018, 0, 0, 0, 0, 0, 0, 0, 0.9779, 0.0221, 0, 0, 0, 0, 0, 0, 0, 0.973, 0.027, 0, 0, 0, 0, 0, 0, 0, 0.937006, 0.0628937, 9.999e-05, 0, 0, 0, 0, 0, 0, 0.359564, 0.514749, 0.0940906, 0.0239976, 0.00459954, 0.0019998, 0.00079992, 0.00019998, 0, 0.133587, 0.385461, 0.269773, 0.130787, 0.040096, 0.0218978, 0.0126987, 0.00439956, 0.00129987, 0.0096, 0.0788, 0.2992, 0.2816, 0.1319, 0.0873, 0.0689, 0.0313, 0.0114, 0.00260052, 0.0289058, 0.204041, 0.265753, 0.159432, 0.119924, 0.119024, 0.0684137, 0.0319064, 0.00049995, 0.00839916, 0.118188, 0.213879, 0.162984, 0.138186, 0.169083, 0.119888, 0.0688931, 0.0001, 0.0021, 0.0586, 0.1473, 0.1427, 0.1363, 0.2057, 0.1798, 0.1274, 0.0521052, 0.160816, 0.227223, 0.20132, 0.106611, 0.0792079, 0.0831083, 0.0559056, 0.0337034);
		};
	};

	node L_DELT_REPSTIM_CMAPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_REPSTIM_CMAPAMP;
			NAME = "L_DELT_REPSTIM_CMAPAMP";
		};
		PARENTS = (L_DELT_ALLAMP);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_032, MV_044, MV_063, MV_088, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0008, 0.0838, 0.0981, 0.1087, 0.114, 0.1131, 0.1062, 0.0944, 0.0794, 0.0632, 0.0476, 0.034, 0.0229, 0.0146, 0.0089, 0.0051, 0.0027, 0.0014, 0.0007, 0.0003, 0.0001, 0, 0.00029994, 0.0009998, 0.00279944, 0.0069986, 0.0153969, 0.030194, 0.0523895, 0.0805839, 0.109378, 0.131474, 0.139672, 0.131374, 0.109278, 0.0804839, 0.0523895, 0.030194, 0.0153969, 0.00689862, 0.00279944, 0.0009998, 0, 0, 0, 0, 0, 0.00020004, 0.00070014, 0.0025005, 0.00730146, 0.0184037, 0.0393079, 0.0714143, 0.110122, 0.144529, 0.161232, 0.152831, 0.123225, 0.0844169, 0.0492098, 0.0244049, 0.010202, 0, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00059994, 0.00239976, 0.00839916, 0.0234977, 0.0535946, 0.0991901, 0.149585, 0.183282, 0.182582, 0.147785, 0.0972903, 0.0516948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019996, 0.0009998, 0.00439912, 0.0153969, 0.0422915, 0.0913817, 0.154069, 0.203559, 0.210358, 0.170166, 0.107179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0012, 0.0045, 0.0139, 0.0361, 0.0776, 0.1391, 0.2072, 0.2564, 0.2637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0024, 0.0092, 0.0286, 0.0745, 0.1612, 0.2895, 0.434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0003, 0.0019, 0.0086, 0.0327, 0.1028, 0.268, 0.5856);
		};
	};

	node L_AXIL_AMP_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_AXIL_AMP_E;
			NAME = "L_AXIL_AMP_E";
		};
		PARENTS = (L_DELT_ALLAMP);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.215322, 0.19872, 0.170917, 0.136914, 0.10221, 0.0711071, 0.0460046, 0.0278028, 0.0156016, 0.00820082, 0.0040004, 0.00180018, 0.00080008, 0.00030003, 0.00010001, 0, 0, 0.0087, 0.0213, 0.0441, 0.0778, 0.1167, 0.1489, 0.1614, 0.1488, 0.1166, 0.0777, 0.044, 0.0212, 0.0087, 0.003, 0.0009, 0.0002, 0, 0, 0.00019998, 0.00089991, 0.00349965, 0.0113989, 0.029997, 0.0641936, 0.111589, 0.157784, 0.181282, 0.169383, 0.128787, 0.079492, 0.039896, 0.0162984, 0.00529947, 0, 0, 0, 0, 0.0001, 0.0003, 0.0017, 0.0065, 0.0201, 0.0495, 0.0972, 0.1523, 0.1901, 0.1893, 0.1502, 0.0951, 0.0476, 0, 0, 0, 0, 0, 0, 0.00019996, 0.0009998, 0.00439912, 0.0153969, 0.0422915, 0.0913817, 0.154069, 0.203559, 0.210358, 0.170166, 0.107179, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0006, 0.0028, 0.0102, 0.0296, 0.0699, 0.1345, 0.2102, 0.2668, 0.2753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0014, 0.0061, 0.0219, 0.064, 0.152, 0.293, 0.4613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.001, 0.0055, 0.0245, 0.0884, 0.2588, 0.6216);
		};
	};

	node L_DELT_FORCE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_FORCE;
			NAME = "L_DELT_FORCE";
		};
		PARENTS = (L_DELT_ALLAMP, L_DELT_VOL_ACT);
		DEFINITION =
		{
			NAMESTATES = (x5, x4, x3, x2, x1, x0);
			PROBABILITIES = (0, 0, 0, 0.00409959, 0.190781, 0.80512, 0, 0, 0, 0.001, 0.0578, 0.9412, 0, 0, 0, 9.999e-05, 0.0125987, 0.987301, 0, 0, 0, 0, 0.00590059, 0.994099, 9.999e-05, 0.00429957, 0.0521948, 0.266873, 0.433057, 0.243476, 0, 0.0005, 0.0084, 0.0849, 0.3219, 0.5843, 0, 0, 0.0007, 0.0167, 0.1576, 0.825, 0, 0, 0, 0.00260026, 0.0586059, 0.938794, 0.0149015, 0.235424, 0.533153, 0.20152, 0.0149015, 0.00010001, 0.0009, 0.0256, 0.18, 0.4308, 0.3036, 0.0591, 0, 0.0005, 0.0128, 0.1328, 0.4061, 0.4478, 0, 0, 0.0003, 0.0091, 0.1181, 0.8725, 0.1538, 0.6493, 0.1936, 0.0033, 0, 0, 0.0098, 0.1589, 0.4714, 0.3101, 0.0485, 0.0013, 0.0001, 0.0049, 0.0751, 0.3632, 0.429, 0.1277, 0, 0, 0.0008, 0.0215, 0.1873, 0.7904, 0.6667, 0.3291, 0.0042, 0, 0, 0, 0.0537054, 0.420442, 0.454845, 0.0690069, 0.0020002, 0, 0.00050005, 0.0273027, 0.243324, 0.50135, 0.211821, 0.0157016, 0, 9.999e-05, 0.00249975, 0.0471953, 0.275572, 0.674633, 0.946895, 0.0531053, 0, 0, 0, 0, 0.117312, 0.565857, 0.30103, 0.0157016, 0.00010001, 0, 0.00120012, 0.060206, 0.386239, 0.454245, 0.0954095, 0.00270027, 0, 0.0001, 0.0044, 0.0713, 0.3326, 0.5916, 0.9782, 0.0218, 0, 0, 0, 0, 0.410159, 0.479352, 0.106989, 0.00349965, 0, 0, 0.0256026, 0.247025, 0.483848, 0.217422, 0.0256026, 0.00050005, 0, 0.0020002, 0.0279028, 0.181218, 0.411241, 0.377638, 0.9971, 0.0029, 0, 0, 0, 0, 0.7017, 0.2755, 0.0226, 0.0002, 0, 0, 0.1171, 0.4443, 0.3699, 0.0654, 0.0033, 0, 0.0004, 0.0107, 0.0847, 0.3035, 0.3988, 0.2019, 0.9996, 0.0004, 0, 0, 0, 0, 0.8804, 0.1161, 0.0035, 0, 0, 0, 0.327067, 0.487951, 0.172683, 0.0119988, 0.00029997, 0, 0.0030003, 0.0426043, 0.194819, 0.384938, 0.292929, 0.0817082);
		};
	};

	node L_DELT_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_MUPAMP;
			NAME = "L_DELT_MUPAMP";
		};
		PARENTS = (L_DELT_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.782, 0.195, 0.003, 0, 0, 0, 0.02, 0.10431, 0.771077, 0.10431, 0.00030003, 0, 0, 0.020002, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0.00029997, 0.10109, 0.747125, 0.131487, 0, 0.019998, 0, 0, 0.0024, 0.1528, 0.7968, 0.028, 0.02, 0, 0, 0, 0.0028, 0.0968, 0.8804, 0.02, 0.1328, 0.1932, 0.2189, 0.1932, 0.1726, 0.0693, 0.02);
		};
	};

	node L_DELT_QUAL_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_QUAL_MUPAMP;
			NAME = "L_DELT_QUAL_MUPAMP";
		};
		PARENTS = (L_DELT_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (V_RED, REDUCED, NORMAL, INCR, V_INCR);
			PROBABILITIES = (0.4289, 0.5209, 0.0499, 0.0003, 0, 0.0647, 0.5494, 0.3679, 0.018, 0, 0, 0.0479048, 0.875388, 0.0767077, 0, 0, 0.00869913, 0.283772, 0.677932, 0.029597, 0, 0.0002, 0.0376, 0.6283, 0.3339, 0, 0, 0.001, 0.0788, 0.9202, 0.096, 0.1884, 0.283, 0.3014, 0.1312);
		};
	};

	node L_DELT_QUAN_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DELT_QUAN_MUPAMP;
			NAME = "L_DELT_QUAN_MUPAMP";
		};
		PARENTS = (L_DELT_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (UV34, UV44, UV58, UV74, UV94, UV122, UV156, UV200, UV260, UV330, UV420, UV540, UV700, UV900, UV1150, UV1480, UV1900, UV2440, UV3130, UV4020);
			PROBABILITIES = (0.0418042, 0.089709, 0.150215, 0.19572, 0.19872, 0.157116, 0.0967097, 0.0464046, 0.0173017, 0.0050005, 0.00110011, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0.00420042, 0.0148015, 0.0410041, 0.0880088, 0.147315, 0.192019, 0.194919, 0.154115, 0.0949095, 0.0455046, 0.0170017, 0.00490049, 0.00110011, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0006, 0.0043, 0.021, 0.0693, 0.155, 0.2345, 0.2401, 0.1663, 0.0779, 0.0247, 0.0053, 0.0008, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.00090009, 0.00420042, 0.0148015, 0.0409041, 0.0879088, 0.147215, 0.191819, 0.194719, 0.153915, 0.0948095, 0.0454045, 0.0170017, 0.00490049, 0.00110011, 0.00020002, 0, 0, 0, 0, 0, 0, 0.00020002, 0.00090009, 0.00420042, 0.0148015, 0.0409041, 0.0879088, 0.147215, 0.191819, 0.194719, 0.153915, 0.0948095, 0.0454045, 0.0170017, 0.00490049, 0.00110011, 0.00020002, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0021, 0.007, 0.0196, 0.0451, 0.0853, 0.1326, 0.1696, 0.1784, 0.1544, 0.1099, 0.0644, 0.031, 0.0204979, 0.029997, 0.0415958, 0.0546945, 0.0680932, 0.080292, 0.089691, 0.0949905, 0.0952905, 0.0905909, 0.0815918, 0.069593, 0.0562944, 0.0431957, 0.0312969, 0.0215978, 0.0140986, 0.00869913, 0.00509949, 0.00279972);
		};
	};

	node DIFFN_M_SEV_DIST
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_M_SEV_DIST;
			NAME = "DIFFN_M_SEV_DIST";
		};
		PARENTS = (DIFFN_DISTR, DIFFN_MOT_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0.25, 0.45, 0.25, 0.05, 0.1, 0.4, 0.4, 0.1, 0.05, 0.15, 0.4, 0.4);
		};
	};

	node R_DIFFN_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_APB_MUSIZE;
			NAME = "R_DIFFN_APB_MUSIZE";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.7, 0.2, 0.1, 0, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.7, 0.2, 0.1, 0, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ADM_MALOSS;
			NAME = "L_DIFFN_ADM_MALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_DIFFN_LNLW_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ADM_MALOSS;
			NAME = "L_DIFFN_LNLW_ADM_MALOSS";
		};
		PARENTS = (L_DIFFN_ADM_MALOSS, L_LNLW_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_LNL_DIFFN_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_ADM_MALOSS;
			NAME = "L_LNL_DIFFN_ADM_MALOSS";
		};
		PARENTS = (L_DIFFN_LNLW_ADM_MALOSS, L_LNLC8_LP_E_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0001, 0.9998, 0.0001, 0, 0, 0, 0.0382, 0.9586, 0.0032, 0, 0, 0.0002, 0.042, 0.9578, 0, 0, 0, 0, 0, 1, 0.0001, 0.9998, 0.0001, 0, 0, 0, 0.0292, 0.9708, 0, 0, 0, 0.00110011, 0.39954, 0.59936, 0, 0, 0, 0.0049, 0.9951, 0, 0, 0, 0, 0, 1, 0, 0.0382, 0.9586, 0.0032, 0, 0, 0.00110011, 0.39954, 0.59936, 0, 0, 0, 0.0128013, 0.987199, 0, 0, 0, 0.0014, 0.9986, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.042, 0.9578, 0, 0, 0, 0.0049, 0.9951, 0, 0, 0, 0.0014, 0.9986, 0, 0, 0, 0.0005, 0.9995, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MALOSS;
			NAME = "L_ADM_MALOSS";
		};
		PARENTS = (L_LNL_DIFFN_ADM_MALOSS, L_OTHER_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0, 0.0361, 0.9439, 0, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.013, 0.967, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0.0005, 0.9795, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node R_DIFFN_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_APB_DE_REGEN;
			NAME = "R_DIFFN_APB_DE_REGEN";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_DIFFN_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_APB_MUSIZE;
			NAME = "L_DIFFN_APB_MUSIZE";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.7, 0.2, 0.1, 0, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.7, 0.2, 0.1, 0, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_LNLW_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_APB_MUSIZE;
			NAME = "L_DIFFN_LNLW_APB_MUSIZE";
		};
		PARENTS = (L_DIFFN_APB_MUSIZE, L_LNLW_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.9981, 0.0019, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_LNL_DIFFN_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_APB_MUSIZE;
			NAME = "L_LNL_DIFFN_APB_MUSIZE";
		};
		PARENTS = (L_LNLT1_LP_BE_APB_MUSIZE, L_DIFFN_LNLW_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.9981, 0.0019, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MUSIZE;
			NAME = "L_APB_MUSIZE";
		};
		PARENTS = (L_LNL_DIFFN_APB_MUSIZE, L_MYOP_MYDY_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9791, 0.0009, 0, 0, 0, 0, 0.02, 0.9637, 0.0163, 0, 0, 0, 0, 0.02, 0.922192, 0.0578058, 0, 0, 0, 0, 0.020002, 0.39794, 0.566357, 0.0155016, 0.00020002, 0, 0, 0.020002, 0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02, 0.00120012, 0.231723, 0.588259, 0.147415, 0.0112011, 0.00020002, 0.020002, 0.9637, 0.0163, 0, 0, 0, 0, 0.02, 0.7493, 0.2257, 0.0049, 0.0001, 0, 0, 0.02, 0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02, 0.00389961, 0.381062, 0.506549, 0.0840916, 0.00429957, 9.999e-05, 0.019998, 0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02, 0, 0.00110011, 0.135714, 0.40254, 0.363136, 0.0775077, 0.020002, 0.922192, 0.0578058, 0, 0, 0, 0, 0.020002, 0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0908091, 0.818582, 0.0706071, 0, 0.020002, 0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02, 0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02, 0.39794, 0.566357, 0.0155016, 0.00020002, 0, 0, 0.020002, 0.00389961, 0.381062, 0.506549, 0.0840916, 0.00429957, 9.999e-05, 0.019998, 0, 0, 0.0908091, 0.818582, 0.0706071, 0, 0.020002, 0, 0, 0.00359964, 0.165483, 0.645435, 0.165483, 0.019998, 0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02, 0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02, 0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02, 0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0, 0, 0, 0, 0.0011, 0.9789, 0.02, 0.00120012, 0.231723, 0.588259, 0.147415, 0.0112011, 0.00020002, 0.020002, 0, 0.00110011, 0.135714, 0.40254, 0.363136, 0.0775077, 0.020002, 0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0, 0, 0, 0, 0.0011, 0.9789, 0.02, 0, 0, 0, 0, 0.0001, 0.9799, 0.02);
		};
	};

	node L_DIFFN_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ADM_DE_REGEN;
			NAME = "L_DIFFN_ADM_DE_REGEN";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_DIFFN_LNLW_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ADM_DE_REGEN;
			NAME = "L_DIFFN_LNLW_ADM_DE_REGEN";
		};
		PARENTS = (L_LNLW_ADM_DE_REGEN, L_DIFFN_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_LNL_DIFFN_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_ADM_DE_REGEN;
			NAME = "L_LNL_DIFFN_ADM_DE_REGEN";
		};
		PARENTS = (L_DIFFN_LNLW_ADM_DE_REGEN, L_LNLC8_LP_E_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_DE_REGEN;
			NAME = "L_ADM_DE_REGEN";
		};
		PARENTS = (L_MUSCLE_ADM_DE_REGEN, L_LNL_DIFFN_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_ADM_MUPSATEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MUPSATEL;
			NAME = "L_ADM_MUPSATEL";
		};
		PARENTS = (L_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.2, 0.8);
		};
	};

	node L_DE_REGEN_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DE_REGEN_ADM_NMT;
			NAME = "L_DE_REGEN_ADM_NMT";
		};
		PARENTS = (L_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0.949, 0.003, 0.001, 0.04, 0.003, 0.001, 0.003);
		};
	};

	node L_MYAS_DE_REGEN_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MYAS_DE_REGEN_ADM_NMT;
			NAME = "L_MYAS_DE_REGEN_ADM_NMT";
		};
		PARENTS = (L_MYAS_ADM_NMT, L_DE_REGEN_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_NMT;
			NAME = "L_ADM_NMT";
		};
		PARENTS = (L_MYAS_DE_REGEN_ADM_NMT, L_OTHER_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ADM_REPSTIM_POST_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_REPSTIM_POST_DECR;
			NAME = "L_ADM_REPSTIM_POST_DECR";
		};
		PARENTS = (L_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.25, 0.61, 0.1, 0.02, 0.02, 0.01, 0.1, 0.8, 0.07, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.23, 0.23, 0.22, 0.22, 0.1);
		};
	};

	node L_NMT_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_NMT_ADM_DENERV;
			NAME = "L_NMT_ADM_DENERV";
		};
		PARENTS = (L_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.4, 0.45, 0.15, 0, 0.15, 0.35, 0.35, 0.15, 0.85, 0.15, 0, 0, 0.3, 0.45, 0.2, 0.05, 0.15, 0.35, 0.35, 0.15, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node L_OTHER_NMT_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_OTHER_NMT_ADM_DENERV;
			NAME = "L_OTHER_NMT_ADM_DENERV";
		};
		PARENTS = (L_NMT_ADM_DENERV, L_OTHER_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_MUSCLE_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_ADM_DENERV;
			NAME = "L_MUSCLE_ADM_DENERV";
		};
		PARENTS = (L_OTHER_NMT_ADM_DENERV, L_MYOP_MYDY_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_ADM_REPSTIM_FACILI
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_REPSTIM_FACILI;
			NAME = "L_ADM_REPSTIM_FACILI";
		};
		PARENTS = (L_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV, REDUCED);
			PROBABILITIES = (0.95, 0.02, 0.01, 0.02, 0.01, 0.889, 0.1, 0.001, 0.01, 0.08, 0.909, 0.001, 0.89, 0.08, 0.01, 0.02, 0.48, 0.5, 0.01, 0.01, 0.02, 0.949, 0.03, 0.001, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node L_ADM_MUPINSTAB
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MUPINSTAB;
			NAME = "L_ADM_MUPINSTAB";
		};
		PARENTS = (L_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.1, 0.9, 0.03, 0.97, 0.2, 0.8, 0.1, 0.9, 0.03, 0.97, 0.1, 0.9);
		};
	};

	node L_ADM_SF_JITTER
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_SF_JITTER;
			NAME = "L_ADM_SF_JITTER";
		};
		PARENTS = (L_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, x2_5, x5_10, x_10);
			PROBABILITIES = (0.95, 0.05, 0, 0, 0.02, 0.2, 0.7, 0.08, 0, 0.1, 0.4, 0.5, 0.05, 0.7, 0.2, 0.05, 0.01, 0.19, 0.7, 0.1, 0, 0.1, 0.4, 0.5, 0.1, 0.3, 0.3, 0.3);
		};
	};

	node L_ADM_REPSTIM_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_REPSTIM_DECR;
			NAME = "L_ADM_REPSTIM_DECR";
		};
		PARENTS = (L_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.04, 0.2, 0.7, 0.04, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.35, 0.57, 0.05, 0.01, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.245, 0.245, 0.245, 0.245, 0.02);
		};
	};

	node L_DIFFN_ULN_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ULN_DIFSLOW;
			NAME = "L_DIFFN_ULN_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.2, 0.6, 0.2, 1, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node L_ULN_DIFSLOW_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_DIFSLOW_WA;
			NAME = "L_ULN_DIFSLOW_WA";
		};
		PARENTS = (L_DIFFN_ULN_DIFSLOW, L_LNLE_ULN_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0131987, 0.986201, 0.00059994, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0003, 0.0252, 0.9745, 0.0131987, 0.986201, 0.00059994, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.00440044, 0.9956, 0, 0.0181018, 0.981898, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.002, 0.998, 0, 0, 0.0006, 0.9994, 0, 0.0003, 0.0252, 0.9745, 0, 0, 0.00440044, 0.9956, 0, 0, 0.0006, 0.9994, 0, 0, 0.0005, 0.9995);
		};
	};

	node L_ULN_DCV_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_DCV_WA;
			NAME = "L_ULN_DCV_WA";
		};
		PARENTS = (L_ULN_DIFSLOW_WA, L_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1136, 0.8864, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0764, 0.8866, 0.0364, 0, 0, 0, 0, 0, 0, 0, 0.0655, 0.9299, 0.0046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.1523, 0.2904, 0.3678, 0.1726, 0.0169, 0, 0, 0, 0, 0.008, 0.168, 0.7407, 0.0833, 0, 0, 0, 0, 0, 0.00089991, 0.0367963, 0.557644, 0.40246, 0.00219978, 0, 0, 0, 0, 0, 0.00070007, 0.0525053, 0.571257, 0.375238, 0.00030003, 0, 0, 0, 0, 0, 0.0007, 0.0745, 0.8859, 0.0389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0168, 0.0618, 0.2223, 0.4015, 0.2803, 0.0172, 0.0001, 0, 0, 0.00069986, 0.00589882, 0.0614877, 0.30064, 0.552589, 0.0781844, 0.0004999, 0, 0, 0.0002, 0.0018, 0.0263, 0.1887, 0.5884, 0.1916, 0.003, 0, 0, 0, 0.0001, 0.0024, 0.0358, 0.316, 0.5741, 0.0716, 0, 0, 0, 0, 9.999e-05, 0.00319968, 0.0780922, 0.594641, 0.323568, 0.00039996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0009999, 0.00469953, 0.0279972, 0.118388, 0.364664, 0.392261, 0.0906909, 0.00029997, 0, 0.0001, 0.0003, 0.0018, 0.011, 0.067, 0.2945, 0.5047, 0.1206, 0, 0, 0.00010001, 0.00090009, 0.00590059, 0.0422042, 0.235624, 0.522552, 0.192719, 0, 0, 0, 0.0001, 0.0012, 0.0121, 0.1131, 0.4415, 0.432, 0, 0, 0, 0, 0.00020002, 0.00280028, 0.0439044, 0.291729, 0.661366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0011, 0.0057, 0.0332, 0.1704, 0.4424, 0.347, 0);
		};
	};

	node L_ULN_ALLDEL_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_ALLDEL_WA;
			NAME = "L_ULN_ALLDEL_WA";
		};
		PARENTS = (L_ULN_DCV_WA, L_ULN_RDLDDEL);
		DEFINITION =
		{
			NAMESTATES = (MS0_0, MS0_4, MS0_8, MS1_6, MS3_2, MS6_4, MS12_8, MS25_6, INFIN);
			PROBABILITIES = (0.9996, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0.0511949, 0.229077, 0.566243, 0.153485, 0, 0, 0, 0, 0, 0.0001, 0.0035, 0.0632, 0.9326, 0.0006, 0, 0, 0, 0, 0.00129987, 0.0019998, 0.00439956, 0.0186981, 0.121288, 0.747925, 0.10439, 0, 0, 0.00010001, 0.00010001, 0.00030003, 0.00090009, 0.00450045, 0.0434043, 0.576758, 0.373937, 0, 0.5607, 0.4393, 0, 0, 0, 0, 0, 0, 0, 0.0192981, 0.128687, 0.492851, 0.359164, 0, 0, 0, 0, 0, 0, 0.0011, 0.0283, 0.9651, 0.0055, 0, 0, 0, 0, 0.0010001, 0.00160016, 0.00370037, 0.0161016, 0.109311, 0.742174, 0.126113, 0, 0, 0.0001, 0.0001, 0.0002, 0.0008, 0.0041, 0.0399, 0.5568, 0.398, 0, 0.0069, 0.7963, 0.1968, 0, 0, 0, 0, 0, 0, 0.0027, 0.0328, 0.2398, 0.7246, 0.0001, 0, 0, 0, 0, 0, 0.0002, 0.0075, 0.8889, 0.1034, 0, 0, 0, 0, 0.00079992, 0.00119988, 0.00279972, 0.0124988, 0.0915908, 0.723528, 0.167583, 0, 0, 0.0001, 0.0001, 0.0002, 0.0007, 0.0034, 0.0348, 0.5239, 0.4368, 0, 0, 0.0184, 0.9806, 0.001, 0, 0, 0, 0, 0, 0.00010001, 0.00330033, 0.0547055, 0.938194, 0.00370037, 0, 0, 0, 0, 0, 0, 0.00030003, 0.185018, 0.814681, 0, 0, 0, 0, 0.00049995, 0.00079992, 0.00179982, 0.00869913, 0.070293, 0.680232, 0.237676, 0, 0, 0.0001, 0.0001, 0.0001, 0.0005, 0.0027, 0.0287, 0.4783, 0.4895, 0, 0, 0.0001, 0.0179, 0.982, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00479952, 0.50395, 0.491051, 0, 0, 0, 0, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0, 0.0002, 0.0004, 0.0009, 0.0047, 0.044, 0.5737, 0.3761, 0, 0, 0, 0, 0.00010001, 0.00030003, 0.00180018, 0.0210021, 0.407241, 0.569557, 0, 0, 0.0002, 0.003, 0.1393, 0.8575, 0, 0, 0, 0, 0, 0, 0.0003, 0.0188, 0.9804, 0.0005, 0, 0, 0, 0, 0, 0, 0.00150015, 0.931393, 0.0671067, 0, 0, 0, 0.0001, 0.0001, 0.0002, 0.0013, 0.015, 0.3152, 0.6681, 0, 0, 0, 0, 0, 0.00010002, 0.00080016, 0.0111022, 0.280456, 0.707542, 0, 0, 0, 0, 0.0006, 0.8145, 0.1849, 0, 0, 0, 0, 0, 0, 0, 0.0494, 0.9506, 0, 0, 0, 0, 0, 0, 0, 0.001, 0.999, 0, 0, 0, 0, 0, 0, 0.0001, 0.0017, 0.0786, 0.9196, 0, 0, 0, 0, 0, 0, 0.0002, 0.0035, 0.138, 0.8583, 0, 0, 0, 0, 0.00040004, 0.0113011, 0.59736, 0.390939, 0, 0, 0, 0, 0, 0.00010001, 0.00340034, 0.29903, 0.69747, 0, 0, 0, 0, 0, 0, 0.0007, 0.1112, 0.8881, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00940094, 0.959396, 0.0311031, 0, 0, 0, 0, 0, 0, 0.00030003, 0.0253025, 0.974397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULN_LAT_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_LAT_WA;
			NAME = "L_ULN_LAT_WA";
		};
		PARENTS = (L_ULN_ALLDEL_WA);
		DEFINITION =
		{
			NAMESTATES = (MS2_3, MS2_7, MS3_1, MS3_5, MS3_9, MS4_3, MS4_7, MS5_3, MS5_9, MS6_5, MS7_1, MS8_0, MS9_0, MS10_0, MS12_0, MS14_0, MS16_0, MS18_0, INFIN);
			PROBABILITIES = (0.2221, 0.5402, 0.2221, 0.0154, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0378038, 0.239624, 0.443444, 0.239624, 0.0378038, 0.00170017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00170017, 0.0377038, 0.239124, 0.442444, 0.239124, 0.0377038, 0.00220022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0019, 0.0176, 0.0873, 0.2279, 0.3138, 0.2849, 0.0637, 0.0028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0015, 0.0044, 0.0114, 0.0255, 0.0495, 0.1033, 0.2035, 0.24, 0.2035, 0.0989, 0.0529, 0.0049, 0.0003, 0, 0, 0, 0, 0, 0.00030003, 0.00050005, 0.00090009, 0.00160016, 0.00280028, 0.00450045, 0.00890089, 0.019502, 0.0325033, 0.049805, 0.111011, 0.163616, 0.189419, 0.257726, 0.135714, 0.020102, 0.00110011, 0, 0, 0.00020002, 0.00030003, 0.00040004, 0.00060006, 0.00070007, 0.0010001, 0.00160016, 0.00290029, 0.00420042, 0.00590059, 0.0134013, 0.0214021, 0.0330033, 0.0719072, 0.167817, 0.228923, 0.243624, 0.20212, 0, 0.00079992, 0.0009999, 0.00119988, 0.00139986, 0.00159984, 0.00179982, 0.00269973, 0.0039996, 0.00489951, 0.0059994, 0.0111989, 0.0164983, 0.0223978, 0.0450955, 0.10309, 0.166283, 0.251775, 0.358264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULN_DIFSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_DIFSLOW_EW;
			NAME = "L_ULN_DIFSLOW_EW";
		};
		PARENTS = (L_DIFFN_ULN_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0126, 0.9869, 0.0005, 0, 0, 0.0179, 0.9821, 0, 0, 0.0003, 0.0252, 0.9745);
		};
	};

	node L_ULN_DCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_DCV_EW;
			NAME = "L_ULN_DCV_EW";
		};
		PARENTS = (L_ULN_DIFSLOW_EW, L_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.109, 0.8903, 0.0007, 0, 0, 0, 0, 0, 0, 0, 0.0039996, 0.114389, 0.862114, 0.0194981, 0, 0, 0, 0, 0, 0, 0.0001, 0.0028, 0.064, 0.9243, 0.0088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0835, 0.1153, 0.2417, 0.3746, 0.1682, 0.0167, 0, 0, 0, 0, 0.00410041, 0.0247025, 0.154615, 0.738974, 0.0776078, 0, 0, 0, 0, 0, 0.0011, 0.0082, 0.0683, 0.7087, 0.2135, 0.0002, 0, 0, 0, 0, 9.999e-05, 0.00079992, 0.0089991, 0.30297, 0.665433, 0.0216978, 0, 0, 0, 0, 0, 0, 0.0006, 0.0547, 0.6199, 0.3247, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00929907, 0.0180982, 0.0545945, 0.227677, 0.393361, 0.277572, 0.0192981, 9.999e-05, 0, 0, 0.0004, 0.0012, 0.0055, 0.0628, 0.295, 0.5485, 0.0861, 0.0005, 0, 0, 0.00020002, 0.00050005, 0.00280028, 0.0389039, 0.230923, 0.582958, 0.142214, 0.00150015, 0, 0, 0, 0.00010001, 0.00060006, 0.0123012, 0.112911, 0.527253, 0.335534, 0.0113011, 0, 0, 0, 0, 9.999e-05, 0.00249975, 0.0359964, 0.324068, 0.571043, 0.0662934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00059994, 0.00119988, 0.00419958, 0.0283972, 0.114889, 0.357564, 0.39636, 0.0963904, 0.00039996, 0, 0, 9.999e-05, 0.00019998, 0.00189981, 0.0106989, 0.0657934, 0.284572, 0.505449, 0.131287, 0, 0, 0, 0.00010001, 0.00120012, 0.00750075, 0.0510051, 0.252425, 0.518552, 0.169217, 0, 0, 0, 0, 0.0005, 0.0034, 0.028, 0.1822, 0.5098, 0.2761, 0, 0, 0, 0, 0.00010001, 0.00120012, 0.0125013, 0.111811, 0.445245, 0.429143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.0002, 0.0011, 0.0056, 0.033, 0.1653, 0.4414, 0.3534, 0);
		};
	};

	node L_ULN_ALLCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_ALLCV_EW;
			NAME = "L_ULN_ALLCV_EW";
		};
		PARENTS = (L_ULN_DCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0558, 0.8486, 0.0956, 0, 0, 0, 0, 0, 0, 0, 0, 0.0369, 0.9631, 0, 0, 0, 0, 0, 0, 0, 0.0008, 0.0087, 0.0873, 0.8226, 0.0806, 0, 0, 0, 0, 0, 0, 0, 0.0005, 0.0994, 0.8508, 0.0493, 0, 0, 0, 0, 0, 0, 0, 0.0005, 0.0781, 0.9017, 0.0197, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0728, 0.8406, 0.086, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0942, 0.8952, 0.0103, 0, 0, 0, 0, 0, 0, 0, 0.002, 0.093, 0.905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999);
		};
	};

	node L_ULN_CV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_CV_EW;
			NAME = "L_ULN_CV_EW";
		};
		PARENTS = (L_ULN_ALLCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00419958, 0.0487951, 0.193681, 0.324968, 0.269673, 0.123188, 0.0353965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0042, 0.0505, 0.1995, 0.3255, 0.2622, 0.1185, 0.0332, 0.0063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00079992, 0.0207979, 0.138786, 0.316868, 0.311469, 0.156384, 0.0452955, 0.00839916, 0.00109989, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00739926, 0.134087, 0.19748, 0.275472, 0.219078, 0.111589, 0.040396, 0.0111989, 0.00249975, 0.00049995, 9.999e-05, 0, 0, 0, 0, 0, 0, 0.002, 0.0467, 0.2191, 0.3382, 0.2525, 0.105, 0.0294, 0.006, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0261, 0.2225, 0.4086, 0.2726, 0.0468, 0.0197, 0.0031, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0095, 0.2235, 0.4483, 0.2397, 0.0663, 0.0119, 0.0006, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0149, 0.4662, 0.4182, 0.0903, 0.0095, 0.0008, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.090209, 0.774177, 0.124912, 0.010001, 0.00070007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_ULN_DIFSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_DIFSLOW_E;
			NAME = "L_ULN_DIFSLOW_E";
		};
		PARENTS = (L_DIFFN_ULN_DIFSLOW, L_LNLE_ULN_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0131987, 0.986201, 0.00059994, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0003, 0.0252, 0.9745, 0.0131987, 0.986201, 0.00059994, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.00440044, 0.9956, 0, 0.0181018, 0.981898, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.002, 0.998, 0, 0, 0.0006, 0.9994, 0, 0.0003, 0.0252, 0.9745, 0, 0, 0.00440044, 0.9956, 0, 0, 0.0006, 0.9994, 0, 0, 0.0005, 0.9995);
		};
	};

	node L_ULN_DCV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_DCV_E;
			NAME = "L_ULN_DCV_E";
		};
		PARENTS = (L_ULN_DIFSLOW_E, L_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.109, 0.8903, 0.0007, 0, 0, 0, 0, 0, 0, 0, 0.0039996, 0.114389, 0.862114, 0.0194981, 0, 0, 0, 0, 0, 0, 0.0001, 0.0028, 0.064, 0.9243, 0.0088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0835, 0.1153, 0.2417, 0.3746, 0.1682, 0.0167, 0, 0, 0, 0, 0.00410041, 0.0247025, 0.154615, 0.738974, 0.0776078, 0, 0, 0, 0, 0, 0.0011, 0.0082, 0.0683, 0.7087, 0.2135, 0.0002, 0, 0, 0, 0, 9.999e-05, 0.00079992, 0.0089991, 0.30297, 0.665433, 0.0216978, 0, 0, 0, 0, 0, 0, 0.0006, 0.0547, 0.6199, 0.3247, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00929907, 0.0180982, 0.0545945, 0.227677, 0.393361, 0.277572, 0.0192981, 9.999e-05, 0, 0, 0.0004, 0.0012, 0.0055, 0.0628, 0.295, 0.5485, 0.0861, 0.0005, 0, 0, 0.00020002, 0.00050005, 0.00280028, 0.0389039, 0.230923, 0.582958, 0.142214, 0.00150015, 0, 0, 0, 0.00010001, 0.00060006, 0.0123012, 0.112911, 0.527253, 0.335534, 0.0113011, 0, 0, 0, 0, 9.999e-05, 0.00249975, 0.0359964, 0.324068, 0.571043, 0.0662934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00059994, 0.00119988, 0.00419958, 0.0283972, 0.114889, 0.357564, 0.39636, 0.0963904, 0.00039996, 0, 0, 9.999e-05, 0.00019998, 0.00189981, 0.0106989, 0.0657934, 0.284572, 0.505449, 0.131287, 0, 0, 0, 0.00010001, 0.00120012, 0.00750075, 0.0510051, 0.252425, 0.518552, 0.169217, 0, 0, 0, 0, 0.0005, 0.0034, 0.028, 0.1822, 0.5098, 0.2761, 0, 0, 0, 0, 0.00010001, 0.00120012, 0.0125013, 0.111811, 0.445245, 0.429143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.0002, 0.0011, 0.0056, 0.033, 0.1653, 0.4414, 0.3534, 0);
		};
	};

	node L_ULN_ALLCV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_ALLCV_E;
			NAME = "L_ULN_ALLCV_E";
		};
		PARENTS = (L_ULN_RDLDCV_E, L_ULN_DCV_E);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.3684, 0.6316, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0.00089991, 0.089591, 0.826017, 0.0834917, 0, 0, 0, 0, 0, 0, 0.0005, 0.1011, 0.8478, 0.0506, 0, 0, 0, 0, 0, 0, 0.00050005, 0.0791079, 0.90019, 0.020202, 0, 0, 0, 0, 0, 0, 0.0006, 0.0734, 0.8393, 0.0867, 0, 0, 0, 0, 0, 0, 0.00030003, 0.0947095, 0.894589, 0.010401, 0, 0, 0, 0, 0, 0, 0.002, 0.0932, 0.9048, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0.0077, 0.9808, 0.0115, 0, 0, 0, 0, 0, 0, 0.0005, 0.4476, 0.5519, 0, 0, 0, 0, 0, 0, 0, 0.0239, 0.9751, 0.001, 0, 0, 0, 0, 0, 0, 0.0036, 0.2468, 0.734, 0.0156, 0, 0, 0, 0, 0, 0, 0.005, 0.3134, 0.6811, 0.0005, 0, 0, 0, 0, 0, 0, 0.00710071, 0.549355, 0.443344, 0.00020002, 0, 0, 0, 0, 0, 0, 0.00910091, 0.528353, 0.462546, 0, 0, 0, 0, 0, 0, 0, 0.0216, 0.8359, 0.1425, 0, 0, 0, 0, 0, 0, 0.0004, 0.0355, 0.9641, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.0047, 0.9951, 0.0002, 0, 0, 0, 0, 0, 0, 0.0004, 0.9005, 0.0991, 0, 0, 0, 0, 0, 0, 0, 0.1288, 0.8712, 0, 0, 0, 0, 0, 0, 0, 0.0113011, 0.571157, 0.417542, 0, 0, 0, 0, 0, 0, 0, 0.0214, 0.9354, 0.0432, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.0564944, 0.932307, 0.0110989, 0, 0, 0, 0, 0, 0, 0.0004, 0.143, 0.8551, 0.0015, 0, 0, 0, 0, 0, 0, 0.0019998, 0.354865, 0.643136, 0, 0, 0, 0, 0, 0, 0.0001, 0.0122, 0.9877, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.997, 0.003, 0, 0, 0, 0, 0, 0, 0, 0.2336, 0.7664, 0, 0, 0, 0, 0, 0, 0, 0.00259974, 0.993401, 0.0039996, 0, 0, 0, 0, 0, 0, 0, 0.2469, 0.7531, 0, 0, 0, 0, 0, 0, 0, 0.002, 0.9939, 0.0041, 0, 0, 0, 0, 0, 0, 0, 0.0314, 0.9686, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.0012, 0.1305, 0.8445, 0.0238, 0, 0, 0, 0, 0, 0.0004, 0.074, 0.8589, 0.0667, 0, 0, 0, 0, 0, 0.00010001, 0.0373037, 0.80288, 0.159716, 0, 0, 0, 0, 0, 0, 0.007, 0.3517, 0.6413, 0, 0, 0, 0, 0, 0, 0.0003, 0.0581, 0.9416, 0, 0, 0, 0, 0, 0, 0, 0.006, 0.994, 0, 0, 0, 0, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0002, 0.0321, 0.9677, 0, 0, 0, 0, 0, 0, 0.0001, 0.0184, 0.9815, 0, 0, 0, 0, 0, 0, 0, 0.010101, 0.989899, 0, 0, 0, 0, 0, 0, 0, 0.0042, 0.9958, 0, 0, 0, 0, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULN_CV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_CV_E;
			NAME = "L_ULN_CV_E";
		};
		PARENTS = (L_ULN_ALLCV_E);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00389961, 0.0276972, 0.0974903, 0.194781, 0.247875, 0.218378, 0.138986, 0.0706929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.003, 0.01, 0.0587, 0.1638, 0.2511, 0.2403, 0.1583, 0.0769, 0.0289, 0.009, 0, 0, 0, 0, 0, 0, 0, 0.00150015, 0.0194019, 0.150015, 0.192119, 0.236424, 0.19572, 0.117812, 0.0555056, 0.0216022, 0.00720072, 0.00210021, 0.00060006, 0, 0, 0, 0, 0, 0.0001, 0.0071, 0.0718, 0.2193, 0.2934, 0.2297, 0.1165, 0.0443, 0.0134, 0.0034, 0.0008, 0.0002, 0, 0, 0, 0, 0, 0, 0.00110011, 0.0450045, 0.231223, 0.362736, 0.257226, 0.0629063, 0.0311031, 0.00710071, 0.00140014, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0.0169017, 0.236724, 0.413641, 0.235524, 0.0776078, 0.0177018, 0.00130013, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0241024, 0.457346, 0.40054, 0.10241, 0.0140014, 0.00150015, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1031, 0.7506, 0.1328, 0.0124, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_APB_NEUR_ACT;
			NAME = "R_DIFFN_APB_NEUR_ACT";
		};
		PARENTS = (DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_MED_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_MED_BLOCK;
			NAME = "L_DIFFN_MED_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_MED_BLOCK_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_BLOCK_WA;
			NAME = "L_MED_BLOCK_WA";
		};
		PARENTS = (L_LNLW_MED_BLOCK, L_DIFFN_MED_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_MED_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_BLOCK_EW;
			NAME = "L_MED_BLOCK_EW";
		};
		PARENTS = (L_LNLBE_MED_BLOCK, L_DIFFN_MED_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_MED_AMPR_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_AMPR_EW;
			NAME = "L_MED_AMPR_EW";
		};
		PARENTS = (L_MED_BLOCK_EW);
		DEFINITION =
		{
			NAMESTATES = (R_1_1, R1_0, R0_9, R0_8, R0_7, R0_6, R0_5, R0_4, R0_3, R0_2, R0_1, R0_0);
			PROBABILITIES = (0.0879, 0.4192, 0.4232, 0.0693, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0.00189981, 0.0343966, 0.256674, 0.529147, 0.173483, 0.00439956, 0, 0, 0, 0, 0, 0, 0.0001, 0.001, 0.0076, 0.0403, 0.172, 0.373, 0.342, 0.0633, 0.0007, 0, 0, 0, 0.00090009, 0.00150015, 0.00260026, 0.00490049, 0.00950095, 0.0176018, 0.0347035, 0.0768077, 0.166817, 0.341434, 0.343234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_MED_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_MED_DIFSLOW;
			NAME = "L_DIFFN_MED_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.2, 0.6, 0.2, 1, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node L_MED_DIFSLOW_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_DIFSLOW_WA;
			NAME = "L_MED_DIFSLOW_WA";
		};
		PARENTS = (L_DIFFN_MED_DIFSLOW, L_LNLBE_MED_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0131987, 0.986201, 0.00059994, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0003, 0.0252, 0.9745, 0.0131987, 0.986201, 0.00059994, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.00440044, 0.9956, 0, 0.0181018, 0.981898, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.002, 0.998, 0, 0, 0.0006, 0.9994, 0, 0.0003, 0.0252, 0.9745, 0, 0, 0.00440044, 0.9956, 0, 0, 0.0006, 0.9994, 0, 0, 0.0005, 0.9995);
		};
	};

	node L_MED_DIFSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_DIFSLOW_EW;
			NAME = "L_MED_DIFSLOW_EW";
		};
		PARENTS = (L_DIFFN_MED_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0126, 0.9869, 0.0005, 0, 0, 0.0179, 0.9821, 0, 0, 0.0003, 0.0252, 0.9745);
		};
	};

	node L_DIFFN_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_APB_DE_REGEN;
			NAME = "L_DIFFN_APB_DE_REGEN";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_DIFFN_LNLW_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_APB_DE_REGEN;
			NAME = "L_DIFFN_LNLW_APB_DE_REGEN";
		};
		PARENTS = (L_LNLW_APB_DE_REGEN, L_DIFFN_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_LNL_DIFFN_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_APB_DE_REGEN;
			NAME = "L_LNL_DIFFN_APB_DE_REGEN";
		};
		PARENTS = (L_DIFFN_LNLW_APB_DE_REGEN, L_LNLT1_LP_BE_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_DE_REGEN;
			NAME = "L_APB_DE_REGEN";
		};
		PARENTS = (L_MYOP_MYDY_APB_DE_REGEN, L_LNL_DIFFN_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node L_APB_MUPSATEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MUPSATEL;
			NAME = "L_APB_MUPSATEL";
		};
		PARENTS = (L_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.2, 0.8);
		};
	};

	node L_DE_REGEN_APB_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DE_REGEN_APB_NMT;
			NAME = "L_DE_REGEN_APB_NMT";
		};
		PARENTS = (L_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0.949, 0.003, 0.001, 0.04, 0.003, 0.001, 0.003);
		};
	};

	node L_APB_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_NMT;
			NAME = "L_APB_NMT";
		};
		PARENTS = (L_MYAS_APB_NMT, L_DE_REGEN_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_APB_REPSTIM_POST_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_REPSTIM_POST_DECR;
			NAME = "L_APB_REPSTIM_POST_DECR";
		};
		PARENTS = (L_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.25, 0.61, 0.1, 0.02, 0.02, 0.01, 0.1, 0.8, 0.07, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.23, 0.23, 0.22, 0.22, 0.1);
		};
	};

	node L_NMT_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_NMT_APB_DENERV;
			NAME = "L_NMT_APB_DENERV";
		};
		PARENTS = (L_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.4, 0.45, 0.15, 0, 0.15, 0.35, 0.35, 0.15, 0.85, 0.15, 0, 0, 0.3, 0.45, 0.2, 0.05, 0.15, 0.35, 0.35, 0.15, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node L_MUSCLE_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MUSCLE_APB_DENERV;
			NAME = "L_MUSCLE_APB_DENERV";
		};
		PARENTS = (L_NMT_APB_DENERV, L_MYOP_MYDY_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_APB_REPSTIM_FACILI
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_REPSTIM_FACILI;
			NAME = "L_APB_REPSTIM_FACILI";
		};
		PARENTS = (L_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV, REDUCED);
			PROBABILITIES = (0.95, 0.02, 0.01, 0.02, 0.01, 0.889, 0.1, 0.001, 0.01, 0.08, 0.909, 0.001, 0.89, 0.08, 0.01, 0.02, 0.48, 0.5, 0.01, 0.01, 0.02, 0.949, 0.03, 0.001, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node L_APB_MUPINSTAB
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MUPINSTAB;
			NAME = "L_APB_MUPINSTAB";
		};
		PARENTS = (L_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.1, 0.9, 0.03, 0.97, 0.2, 0.8, 0.1, 0.9, 0.03, 0.97, 0.1, 0.9);
		};
	};

	node L_APB_SF_JITTER
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_SF_JITTER;
			NAME = "L_APB_SF_JITTER";
		};
		PARENTS = (L_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, x2_5, x5_10, x_10);
			PROBABILITIES = (0.95, 0.05, 0, 0, 0.02, 0.2, 0.7, 0.08, 0, 0.1, 0.4, 0.5, 0.05, 0.7, 0.2, 0.05, 0.01, 0.19, 0.7, 0.1, 0, 0.1, 0.4, 0.5, 0.1, 0.3, 0.3, 0.3);
		};
	};

	node L_APB_REPSTIM_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_REPSTIM_DECR;
			NAME = "L_APB_REPSTIM_DECR";
		};
		PARENTS = (L_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.04, 0.2, 0.7, 0.04, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.35, 0.57, 0.05, 0.01, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.245, 0.245, 0.245, 0.245, 0.02);
		};
	};

	node L_APB_EFFMUS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_EFFMUS;
			NAME = "L_APB_EFFMUS";
		};
		PARENTS = (L_APB_MUSIZE, L_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9683, 0.0117, 0, 0, 0, 0, 0.02, 0.9794, 0.0006, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.9742, 0.0058, 0, 0, 0, 0, 0.02, 0.9789, 0.0011, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.7927, 0.1721, 0.0135, 0.0016, 0.0001, 0, 0.02, 0.0164, 0.9421, 0.0215, 0, 0, 0, 0.02, 0.8182, 0.1616, 0.0002, 0, 0, 0, 0.02, 0.9738, 0.0062, 0, 0, 0, 0, 0.02, 0.0329, 0.9359, 0.0112, 0, 0, 0, 0.02, 0.3885, 0.59, 0.0015, 0, 0, 0, 0.02, 0.9362, 0.0438, 0, 0, 0, 0, 0.02, 0.492951, 0.370363, 0.0905909, 0.0216978, 0.00389961, 0.00049995, 0.019998, 0, 0, 0.973697, 0.00630063, 0, 0, 0.020002, 0.00070007, 0.940394, 0.0389039, 0, 0, 0, 0.020002, 0.7833, 0.1966, 0.0001, 0, 0, 0, 0.02, 0, 9.999e-05, 0.978302, 0.00159984, 0, 0, 0.019998, 0, 0.3781, 0.6016, 0.0003, 0, 0, 0.02, 0.0114988, 0.965303, 0.00319968, 0, 0, 0, 0.019998, 0.150515, 0.39774, 0.271527, 0.117212, 0.0361036, 0.00690069, 0.020002, 0, 0, 0.0082, 0.9646, 0.0072, 0, 0.02, 0, 0.0571, 0.8829, 0.04, 0, 0, 0.02, 0.0541, 0.9055, 0.0203, 0.0001, 0, 0, 0.02, 0, 0, 0.0326033, 0.945695, 0.00170017, 0, 0.020002, 0, 0, 0.7931, 0.1868, 0.0001, 0, 0.02, 0, 0.439, 0.5362, 0.0048, 0, 0, 0.02, 0.0391, 0.2318, 0.3318, 0.2294, 0.1131, 0.0348, 0.02, 0, 0, 0, 0.0072, 0.9656, 0.0072, 0.02, 0, 0.0001, 0.3198, 0.6276, 0.0325, 0, 0.02, 0.0004, 0.4664, 0.4912, 0.0219, 0.0001, 0, 0.02, 0, 0, 0, 0.0287, 0.9496, 0.0017, 0.02, 0, 0, 0.0071, 0.7665, 0.2063, 0.0001, 0.02, 0, 0.00150015, 0.70187, 0.273827, 0.00280028, 0, 0.020002, 0.0065, 0.0866, 0.2598, 0.2877, 0.2273, 0.1121, 0.02, 0, 0, 0, 0, 0.0072, 0.9728, 0.02, 0, 0, 0.0034, 0.2908, 0.6521, 0.0337, 0.02, 0, 0.0126975, 0.626375, 0.324235, 0.0165967, 9.998e-05, 0.019996, 0, 0, 0, 0, 0.0287, 0.9513, 0.02, 0, 0, 0, 0.0062, 0.7673, 0.2065, 0.02, 0, 0, 0.0383962, 0.649135, 0.289471, 0.0029997, 0.019998, 0.00079984, 0.0223955, 0.140872, 0.24985, 0.316237, 0.24985, 0.019996, 0.1111, 0.2284, 0.2388, 0.1875, 0.1354, 0.0788, 0.02, 0.242676, 0.30487, 0.206879, 0.124588, 0.069493, 0.0314968, 0.019998, 0.4236, 0.3196, 0.1381, 0.0628, 0.0267, 0.0092, 0.02, 0.1227, 0.2392, 0.2382, 0.1813, 0.127, 0.0716, 0.02, 0.177682, 0.277672, 0.227477, 0.153485, 0.0955904, 0.0480952, 0.019998, 0.2958, 0.3186, 0.1878, 0.1033, 0.0527, 0.0218, 0.02, 0.219722, 0.264926, 0.20142, 0.140614, 0.0964096, 0.0569057, 0.020002);
		};
	};

	node L_APB_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MUPDUR;
			NAME = "L_APB_MUPDUR";
		};
		PARENTS = (L_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9388, 0.0412, 0, 0, 0, 0, 0.02, 0.0396, 0.9008, 0.0396, 0, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0396, 0.9008, 0.0396, 0, 0.02, 0, 0, 0, 0.0412, 0.938, 0.0008, 0.02, 0, 0, 0, 0.0039, 0.2546, 0.7215, 0.02, 0.09, 0.235, 0.3236, 0.235, 0.09, 0.0064, 0.02);
		};
	};

	node L_APB_QUAL_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_QUAL_MUPDUR;
			NAME = "L_APB_QUAL_MUPDUR";
		};
		PARENTS = (L_APB_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (SMALL, NORMAL, INCR);
			PROBABILITIES = (0.8309, 0.1677, 0.0014, 0.49, 0.49, 0.02, 0.1065, 0.787, 0.1065, 0.02, 0.49, 0.49, 0.0014, 0.1677, 0.8309, 0.0001, 0.0392, 0.9607, 0.2597, 0.4806, 0.2597);
		};
	};

	node L_APB_QUAN_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_QUAN_MUPDUR;
			NAME = "L_APB_QUAN_MUPDUR";
		};
		PARENTS = (L_APB_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (MS3, MS4, MS5, MS6, MS7, MS8, MS9, MS10, MS11, MS12, MS13, MS14, MS15, MS16, MS17, MS18, MS19, MS20, MS_20);
			PROBABILITIES = (0.09982, 0.183337, 0.240248, 0.224545, 0.14973, 0.0712142, 0.0242048, 0.00580116, 0.0010002, 0.00010002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.010201, 0.0369037, 0.0951095, 0.174717, 0.228923, 0.214021, 0.142614, 0.0678068, 0.0230023, 0.00560056, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0025, 0.0177, 0.0739, 0.1852, 0.2785, 0.2515, 0.1363, 0.0444, 0.0087, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00039996, 0.00179982, 0.0069993, 0.0218978, 0.0540946, 0.105189, 0.161284, 0.194981, 0.185981, 0.139886, 0.0828917, 0.0387961, 0.00569943, 0.0201, 0.0341, 0.0529, 0.0748, 0.0966, 0.1138, 0.1224, 0.1202, 0.1078, 0.0882, 0.0658, 0.0449, 0.0279, 0.0159, 0.0082, 0.0039, 0.0017, 0.0007, 0.0001);
		};
	};

	node L_APB_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MUPAMP;
			NAME = "L_APB_MUPAMP";
		};
		PARENTS = (L_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.782, 0.195, 0.003, 0, 0, 0, 0.02, 0.10431, 0.771077, 0.10431, 0.00030003, 0, 0, 0.020002, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0.00029997, 0.10109, 0.747125, 0.131487, 0, 0.019998, 0, 0, 0.0024, 0.1528, 0.7968, 0.028, 0.02, 0, 0, 0, 0.0028, 0.0968, 0.8804, 0.02, 0.1328, 0.1932, 0.2189, 0.1932, 0.1726, 0.0693, 0.02);
		};
	};

	node L_APB_QUAL_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_QUAL_MUPAMP;
			NAME = "L_APB_QUAL_MUPAMP";
		};
		PARENTS = (L_APB_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (V_RED, REDUCED, NORMAL, INCR, V_INCR);
			PROBABILITIES = (0.4289, 0.5209, 0.0499, 0.0003, 0, 0.0647, 0.5494, 0.3679, 0.018, 0, 0, 0.0479048, 0.875388, 0.0767077, 0, 0, 0.00869913, 0.283772, 0.677932, 0.029597, 0, 0.0002, 0.0376, 0.6283, 0.3339, 0, 0, 0.001, 0.0788, 0.9202, 0.096, 0.1884, 0.283, 0.3014, 0.1312);
		};
	};

	node L_APB_QUAN_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_QUAN_MUPAMP;
			NAME = "L_APB_QUAN_MUPAMP";
		};
		PARENTS = (L_APB_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (UV34, UV44, UV58, UV74, UV94, UV122, UV156, UV200, UV260, UV330, UV420, UV540, UV700, UV900, UV1150, UV1480, UV1900, UV2440, UV3130, UV4020);
			PROBABILITIES = (0.00080024, 0.00370111, 0.013504, 0.0381114, 0.0835251, 0.142543, 0.189557, 0.196359, 0.158348, 0.0994298, 0.0486146, 0.0185056, 0.00550165, 0.00130039, 0.00020006, 0, 0, 0, 0, 0, 0, 0.00010002, 0.00080016, 0.00370074, 0.0135027, 0.0381076, 0.0835167, 0.142529, 0.189538, 0.196339, 0.158332, 0.0994199, 0.0486097, 0.0185037, 0.0055011, 0.00130026, 0.00020004, 0, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.00370037, 0.0187019, 0.0639064, 0.147515, 0.230223, 0.243124, 0.173717, 0.0840084, 0.0275027, 0.00610061, 0.00090009, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0037, 0.0135, 0.0381, 0.0835, 0.1426, 0.1896, 0.1963, 0.1583, 0.0995, 0.0487, 0.0185, 0.0055, 0.0013, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0038, 0.0136, 0.0383, 0.0841, 0.1435, 0.1909, 0.1977, 0.1594, 0.1001, 0.049, 0.0187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0006, 0.0024, 0.0082, 0.0232, 0.0542, 0.1041, 0.1645, 0.2137, 0.2283, 0.2007, 0.0045, 0.0078, 0.0127, 0.0197, 0.0289, 0.0403, 0.0531, 0.0664, 0.0787, 0.0883, 0.0939, 0.0946, 0.0903, 0.0817, 0.07, 0.0569, 0.0438, 0.0319, 0.0221, 0.0144);
		};
	};

	node L_APB_TA_CONCL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_TA_CONCL;
			NAME = "L_APB_TA_CONCL";
		};
		PARENTS = (L_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (x_5ABOVE, x2_5ABOVE, NORMAL, x2_5BELOW, x_5BELOW);
			PROBABILITIES = (0, 0, 0.005, 0.045, 0.95, 0, 0, 0.05, 0.9, 0.05, 0, 0.03, 0.94, 0.03, 0, 0.195, 0.6, 0.2, 0.005, 0, 0.48, 0.5, 0.02, 0, 0, 0.8, 0.195, 0.005, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2);
		};
	};

	node L_APB_QUAN_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_QUAN_MUPPOLY;
			NAME = "L_APB_QUAN_MUPPOLY";
		};
		PARENTS = (L_APB_EFFMUS, L_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (x_12_, x12_24_, x_24_);
			PROBABILITIES = (0.109, 0.548, 0.343, 0.004, 0.122, 0.874, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.925, 0.075, 0, 0.091, 0.526, 0.383, 0.796, 0.201, 0.003, 0.061, 0.465, 0.474, 0.637, 0.348, 0.015, 0.039, 0.396, 0.565, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724);
		};
	};

	node L_APB_QUAL_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_QUAL_MUPPOLY;
			NAME = "L_APB_QUAL_MUPPOLY";
		};
		PARENTS = (L_APB_QUAN_MUPPOLY);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.95, 0.05, 0.3, 0.7, 0.05, 0.95);
		};
	};

	node L_APB_MVA_AMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MVA_AMP;
			NAME = "L_APB_MVA_AMP";
		};
		PARENTS = (L_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (INCR, NORMAL, REDUCED);
			PROBABILITIES = (0, 0.04, 0.96, 0.01, 0.15, 0.84, 0.05, 0.9, 0.05, 0.5, 0.49, 0.01, 0.85, 0.15, 0, 0.96, 0.04, 0, 0.33, 0.34, 0.33);
		};
	};

	node L_DIFFN_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ADM_DENERV;
			NAME = "L_DIFFN_ADM_DENERV";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node L_DIFFN_LNLW_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ADM_DENERV;
			NAME = "L_DIFFN_LNLW_ADM_DENERV";
		};
		PARENTS = (L_LNLW_ADM_DENERV, L_DIFFN_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_LNL_DIFFN_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_ADM_DENERV;
			NAME = "L_LNL_DIFFN_ADM_DENERV";
		};
		PARENTS = (L_DIFFN_LNLW_ADM_DENERV, L_LNLC8_LP_E_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_DENERV;
			NAME = "L_ADM_DENERV";
		};
		PARENTS = (L_LNL_DIFFN_ADM_DENERV, L_MUSCLE_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_ADM_SPONT_HF_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_SPONT_HF_DISCH;
			NAME = "L_ADM_SPONT_HF_DISCH";
		};
		PARENTS = (L_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.99, 0.01, 0.97, 0.03, 0.95, 0.05, 0.93, 0.07);
		};
	};

	node L_ADM_SPONT_INS_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_SPONT_INS_ACT;
			NAME = "L_ADM_SPONT_INS_ACT";
		};
		PARENTS = (L_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.98, 0.02, 0.1, 0.9, 0.05, 0.95, 0.05, 0.95);
		};
	};

	node L_ADM_SPONT_DENERV_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_SPONT_DENERV_ACT;
			NAME = "L_ADM_SPONT_DENERV_ACT";
		};
		PARENTS = (L_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, SOME, MOD, ABUNDANT);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0.07, 0.85, 0.08, 0, 0.01, 0.07, 0.85, 0.07, 0, 0.01, 0.07, 0.92);
		};
	};

	node L_DIFFN_ULN_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ULN_BLOCK;
			NAME = "L_DIFFN_ULN_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_LNLW_ULN_BLOCK_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ULN_BLOCK_WA;
			NAME = "L_DIFFN_LNLW_ULN_BLOCK_WA";
		};
		PARENTS = (L_LNLW_ULN_BLOCK, L_DIFFN_ULN_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ULN_BLOCK_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_BLOCK_WA;
			NAME = "L_ULN_BLOCK_WA";
		};
		PARENTS = (L_DIFFN_LNLW_ULN_BLOCK_WA, L_OTHER_ULN_BLOCK_WA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ADM_MULOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MULOSS;
			NAME = "L_ADM_MULOSS";
		};
		PARENTS = (L_ADM_MALOSS, L_ULN_BLOCK_WA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.9746, 0.0054, 0, 0, 0, 0.02, 0.0664, 0.9136, 0, 0, 0, 0.02, 0.016, 0.1801, 0.7138, 0.0701, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0167, 0.9613, 0.002, 0, 0, 0.02, 0.00340034, 0.952995, 0.0236024, 0, 0, 0.020002, 0.0002, 0.2725, 0.7073, 0, 0, 0.02, 0.0009, 0.0263, 0.4192, 0.5336, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00019998, 0.0534947, 0.923708, 0.00259974, 0, 0.019998, 0, 0.0234023, 0.945095, 0.0115012, 0, 0.020002, 0, 0.0048, 0.7523, 0.2229, 0, 0.02, 0, 0.00130013, 0.0637064, 0.914991, 0, 0.020002, 0, 0, 0, 0, 0.98, 0.02, 0, 0.00030003, 0.0481048, 0.931593, 0, 0.020002, 0, 0.00010001, 0.0270027, 0.952895, 0, 0.020002, 0, 0, 0.0091, 0.9709, 0, 0.02, 0, 0.0001, 0.0087, 0.9712, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.1427, 0.2958, 0.4254, 0.1161, 0, 0.02, 0.1157, 0.2677, 0.4444, 0.1522, 0, 0.02, 0.0693931, 0.20108, 0.452655, 0.256874, 0, 0.019998, 0.0173, 0.0696, 0.2854, 0.6077, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node L_ADM_MVA_RECRUIT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MVA_RECRUIT;
			NAME = "L_ADM_MVA_RECRUIT";
		};
		PARENTS = (L_ADM_VOL_ACT, L_ADM_MULOSS);
		DEFINITION =
		{
			NAMESTATES = (FULL, REDUCED, DISCRETE, NO_UNITS);
			PROBABILITIES = (0.9295, 0.0705, 0, 0, 0.4821, 0.5165, 0.0014, 0, 0.0661, 0.7993, 0.1346, 0, 0.00149985, 0.136586, 0.861914, 0, 0, 0, 0, 1, 0.263974, 0.434357, 0.30167, 0, 0.1707, 0.7, 0.1293, 0, 0.0366, 0.5168, 0.4466, 0, 0.0043, 0.1788, 0.8169, 0, 0.00029997, 0.0347965, 0.964904, 0, 0, 0, 0, 1, 0.1146, 0.3465, 0.5389, 0, 0.0038, 0.174, 0.8222, 0, 0.0005, 0.0594, 0.9401, 0, 0.0001, 0.0205, 0.9794, 0, 0, 0.0061, 0.9939, 0, 0, 0, 0, 1, 0.036, 0.2144, 0.7496, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_ULN_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_BLOCK_EW;
			NAME = "L_ULN_BLOCK_EW";
		};
		PARENTS = (L_DIFFN_ULN_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0007, 0.0223, 0.977, 0, 0, 0.0019, 0.006, 0.0587, 0.9334, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULN_AMPR_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_AMPR_EW;
			NAME = "L_ULN_AMPR_EW";
		};
		PARENTS = (L_ULN_BLOCK_EW);
		DEFINITION =
		{
			NAMESTATES = (R_1_1, R1_0, R0_9, R0_8, R0_7, R0_6, R0_5, R0_4, R0_3, R0_2, R0_1, R0_0);
			PROBABILITIES = (0.0289, 0.2833, 0.517, 0.1684, 0.0024, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0135, 0.1503, 0.5078, 0.3123, 0.0157, 0, 0, 0, 0, 0, 0, 0, 0.0005001, 0.0040008, 0.0246049, 0.127425, 0.340068, 0.40008, 0.10172, 0.00160032, 0, 0, 0, 0.00079992, 0.00139986, 0.00219978, 0.00419958, 0.00819918, 0.0154985, 0.0311969, 0.0707929, 0.158584, 0.339266, 0.367863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ULN_BLOCK_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_BLOCK_E;
			NAME = "L_ULN_BLOCK_E";
		};
		PARENTS = (L_LNLE_ULN_BLOCK, L_DIFFN_ULN_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_ULN_AMPR_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_AMPR_E;
			NAME = "L_ULN_AMPR_E";
		};
		PARENTS = (L_ULN_BLOCK_E);
		DEFINITION =
		{
			NAMESTATES = (R_1_1, R1_0, R0_9, R0_8, R0_7, R0_6, R0_5, R0_4, R0_3, R0_2, R0_1, R0_0);
			PROBABILITIES = (0.09979, 0.561544, 0.320368, 0.0182982, 0, 0, 0, 0, 0, 0, 0, 0, 0.00150015, 0.0426043, 0.317132, 0.543454, 0.0946095, 0.00070007, 0, 0, 0, 0, 0, 0, 0.0001, 0.0013, 0.0088, 0.0471, 0.1949, 0.3924, 0.3113, 0.0438, 0.0003, 0, 0, 0, 0.001, 0.0018, 0.0028, 0.0052, 0.0101, 0.0186, 0.0365, 0.0797, 0.171, 0.3425, 0.3308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_APB_MUDENS;
			NAME = "R_DIFFN_APB_MUDENS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node L_DIFFN_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_APB_NEUR_ACT;
			NAME = "L_DIFFN_APB_NEUR_ACT";
		};
		PARENTS = (DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_LNLW_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_APB_NEUR_ACT;
			NAME = "L_DIFFN_LNLW_APB_NEUR_ACT";
		};
		PARENTS = (L_LNLW_APB_NEUR_ACT, L_DIFFN_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_NEUR_ACT;
			NAME = "L_APB_NEUR_ACT";
		};
		PARENTS = (L_DIFFN_LNLW_APB_NEUR_ACT, L_LNLT1_LP_BE_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_APB_SPONT_NEUR_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_SPONT_NEUR_DISCH;
			NAME = "L_APB_SPONT_NEUR_DISCH";
		};
		PARENTS = (L_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.01, 0.04, 0.75, 0.05, 0.05, 0.1, 0.01, 0.04, 0.05, 0.75, 0.05, 0.1, 0.01, 0.04, 0.05, 0.05, 0.75, 0.1, 0.01, 0.05, 0.05, 0.05, 0.05, 0.79);
		};
	};

	node L_DIFFN_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_APB_MALOSS;
			NAME = "L_DIFFN_APB_MALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node L_DIFFN_LNLW_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_APB_MALOSS;
			NAME = "L_DIFFN_LNLW_APB_MALOSS";
		};
		PARENTS = (L_DIFFN_APB_MALOSS, L_LNLW_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node L_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MALOSS;
			NAME = "L_APB_MALOSS";
		};
		PARENTS = (L_DIFFN_LNLW_APB_MALOSS, L_LNLT1_LP_BE_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0, 0.0361, 0.9439, 0, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.013, 0.967, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0.0005, 0.9795, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node L_APB_MUSCLE_VOL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MUSCLE_VOL;
			NAME = "L_APB_MUSCLE_VOL";
		};
		PARENTS = (L_APB_MALOSS, L_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (ATROPHIC, NORMAL);
			PROBABILITIES = (0.9896, 0.0104, 0.8137, 0.1863, 0.0209, 0.9791, 0.009, 0.991, 0.003, 0.997, 0.0004, 0.9996, 0.4212, 0.5788, 0.9976, 0.0024, 0.9603, 0.0397, 0.5185, 0.4815, 0.1087, 0.8913, 0.0278, 0.9722, 0.0046, 0.9954, 0.5185, 0.4815, 0.999, 0.001, 0.9893, 0.0107, 0.9588, 0.0412, 0.6377, 0.3623, 0.2716, 0.7284, 0.0779, 0.9221, 0.6336, 0.3664, 0.9995, 0.0005, 0.9969, 0.0031, 0.9953, 0.0047, 0.9518, 0.0482, 0.8234, 0.1766, 0.5986, 0.4014, 0.7685, 0.2315, 0.9989, 0.0011, 0.9984, 0.0016, 0.9984, 0.0016, 0.9975, 0.0025, 0.9965, 0.0035, 0.9956, 0.0044, 0.9857, 0.0143, 0.9363, 0.0637, 0.8403, 0.1597, 0.6534, 0.3466, 0.4689, 0.5311, 0.3174, 0.6826, 0.1948, 0.8052, 0.5681, 0.4319);
		};
	};

	node L_MED_DCV_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_DCV_WA;
			NAME = "L_MED_DCV_WA";
		};
		PARENTS = (L_MED_DIFSLOW_WA, L_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1136, 0.8864, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0764, 0.8866, 0.0364, 0, 0, 0, 0, 0, 0, 0, 0.0655, 0.9299, 0.0046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.1523, 0.2904, 0.3678, 0.1726, 0.0169, 0, 0, 0, 0, 0.008, 0.168, 0.7407, 0.0833, 0, 0, 0, 0, 0, 0.00089991, 0.0367963, 0.557644, 0.40246, 0.00219978, 0, 0, 0, 0, 0, 0.00070007, 0.0525053, 0.571257, 0.375238, 0.00030003, 0, 0, 0, 0, 0, 0.0007, 0.0745, 0.8859, 0.0389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0168, 0.0618, 0.2223, 0.4015, 0.2803, 0.0172, 0.0001, 0, 0, 0.00069986, 0.00589882, 0.0614877, 0.30064, 0.552589, 0.0781844, 0.0004999, 0, 0, 0.0002, 0.0018, 0.0263, 0.1887, 0.5884, 0.1916, 0.003, 0, 0, 0, 0.0001, 0.0024, 0.0358, 0.316, 0.5741, 0.0716, 0, 0, 0, 0, 9.999e-05, 0.00319968, 0.0780922, 0.594641, 0.323568, 0.00039996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0009999, 0.00469953, 0.0279972, 0.118388, 0.364664, 0.392261, 0.0906909, 0.00029997, 0, 0.0001, 0.0003, 0.0018, 0.011, 0.067, 0.2945, 0.5047, 0.1206, 0, 0, 0.00010001, 0.00090009, 0.00590059, 0.0422042, 0.235624, 0.522552, 0.192719, 0, 0, 0, 0.0001, 0.0012, 0.0121, 0.1131, 0.4415, 0.432, 0, 0, 0, 0, 0.00020002, 0.00280028, 0.0439044, 0.291729, 0.661366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0011, 0.0057, 0.0332, 0.1704, 0.4424, 0.347, 0);
		};
	};

	node L_MED_ALLDEL_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_ALLDEL_WA;
			NAME = "L_MED_ALLDEL_WA";
		};
		PARENTS = (L_MED_DCV_WA, L_MED_RDLDDEL);
		DEFINITION =
		{
			NAMESTATES = (MS0_0, MS0_4, MS0_8, MS1_6, MS3_2, MS6_4, MS12_8, MS25_6, INFIN);
			PROBABILITIES = (0.9996, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0.0511949, 0.229077, 0.566243, 0.153485, 0, 0, 0, 0, 0, 0.0001, 0.0035, 0.0632, 0.9326, 0.0006, 0, 0, 0, 0, 0.00129987, 0.0019998, 0.00439956, 0.0186981, 0.121288, 0.747925, 0.10439, 0, 0, 0.00010001, 0.00010001, 0.00030003, 0.00090009, 0.00450045, 0.0434043, 0.576758, 0.373937, 0, 0.5607, 0.4393, 0, 0, 0, 0, 0, 0, 0, 0.0192981, 0.128687, 0.492851, 0.359164, 0, 0, 0, 0, 0, 0, 0.0011, 0.0283, 0.9651, 0.0055, 0, 0, 0, 0, 0.0010001, 0.00160016, 0.00370037, 0.0161016, 0.109311, 0.742174, 0.126113, 0, 0, 0.0001, 0.0001, 0.0002, 0.0008, 0.0041, 0.0399, 0.5568, 0.398, 0, 0.0069, 0.7963, 0.1968, 0, 0, 0, 0, 0, 0, 0.0027, 0.0328, 0.2398, 0.7246, 0.0001, 0, 0, 0, 0, 0, 0.0002, 0.0075, 0.8889, 0.1034, 0, 0, 0, 0, 0.00079992, 0.00119988, 0.00279972, 0.0124988, 0.0915908, 0.723528, 0.167583, 0, 0, 0.0001, 0.0001, 0.0002, 0.0007, 0.0034, 0.0348, 0.5239, 0.4368, 0, 0, 0.0184, 0.9806, 0.001, 0, 0, 0, 0, 0, 0.00010001, 0.00330033, 0.0547055, 0.938194, 0.00370037, 0, 0, 0, 0, 0, 0, 0.00030003, 0.185018, 0.814681, 0, 0, 0, 0, 0.00049995, 0.00079992, 0.00179982, 0.00869913, 0.070293, 0.680232, 0.237676, 0, 0, 0.0001, 0.0001, 0.0001, 0.0005, 0.0027, 0.0287, 0.4783, 0.4895, 0, 0, 0.0001, 0.0179, 0.982, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00479952, 0.50395, 0.491051, 0, 0, 0, 0, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0, 0.0002, 0.0004, 0.0009, 0.0047, 0.044, 0.5737, 0.3761, 0, 0, 0, 0, 0.00010001, 0.00030003, 0.00180018, 0.0210021, 0.407241, 0.569557, 0, 0, 0.0002, 0.003, 0.1393, 0.8575, 0, 0, 0, 0, 0, 0, 0.0003, 0.0188, 0.9804, 0.0005, 0, 0, 0, 0, 0, 0, 0.00150015, 0.931393, 0.0671067, 0, 0, 0, 0.0001, 0.0001, 0.0002, 0.0013, 0.015, 0.3152, 0.6681, 0, 0, 0, 0, 0, 0.00010002, 0.00080016, 0.0111022, 0.280456, 0.707542, 0, 0, 0, 0, 0.0006, 0.8145, 0.1849, 0, 0, 0, 0, 0, 0, 0, 0.0494, 0.9506, 0, 0, 0, 0, 0, 0, 0, 0.001, 0.999, 0, 0, 0, 0, 0, 0, 0.0001, 0.0017, 0.0786, 0.9196, 0, 0, 0, 0, 0, 0, 0.0002, 0.0035, 0.138, 0.8583, 0, 0, 0, 0, 0.00040004, 0.0113011, 0.59736, 0.390939, 0, 0, 0, 0, 0, 0.00010001, 0.00340034, 0.29903, 0.69747, 0, 0, 0, 0, 0, 0, 0.0007, 0.1112, 0.8881, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00940094, 0.959396, 0.0311031, 0, 0, 0, 0, 0, 0, 0.00030003, 0.0253025, 0.974397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MED_LAT_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_LAT_WA;
			NAME = "L_MED_LAT_WA";
		};
		PARENTS = (L_MED_ALLDEL_WA);
		DEFINITION =
		{
			NAMESTATES = (MS2_3, MS2_7, MS3_1, MS3_5, MS3_9, MS4_3, MS4_7, MS5_3, MS5_9, MS6_5, MS7_1, MS8_0, MS9_0, MS10_0, MS12_0, MS14_0, MS16_0, MS18_0, INFIN);
			PROBABILITIES = (0.00590059, 0.132613, 0.50325, 0.322632, 0.0350035, 0.00060006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00069993, 0.019598, 0.168983, 0.425457, 0.312769, 0.0671933, 0.00529947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0007, 0.0194, 0.1669, 0.4202, 0.3089, 0.0829, 0.001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0010001, 0.0109011, 0.0635063, 0.194719, 0.393439, 0.292129, 0.0428043, 0.00150015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0003, 0.0011, 0.0034, 0.009, 0.021, 0.0528, 0.137, 0.2128, 0.2375, 0.1826, 0.1229, 0.0179, 0.0016, 0, 0, 0, 0, 0, 9.999e-05, 0.00019998, 0.00039996, 0.00079992, 0.00139986, 0.00249975, 0.00509949, 0.0119988, 0.0214978, 0.0353965, 0.0891911, 0.139786, 0.182882, 0.281172, 0.188981, 0.0358964, 0.00259974, 9.999e-05, 0, 0.0002, 0.0002, 0.0003, 0.0004, 0.0005, 0.0007, 0.0012, 0.0022, 0.0032, 0.0047, 0.0109, 0.0176, 0.028, 0.0629, 0.1563, 0.2269, 0.2569, 0.2269, 0, 0.00079992, 0.00089991, 0.00109989, 0.00119988, 0.00139986, 0.00169983, 0.00249975, 0.00369963, 0.00459954, 0.00559944, 0.0105989, 0.0155984, 0.0213979, 0.0432957, 0.10069, 0.164884, 0.253575, 0.366463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_APB_MULOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MULOSS;
			NAME = "L_APB_MULOSS";
		};
		PARENTS = (L_APB_MALOSS, L_MED_BLOCK_WA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.9746, 0.0054, 0, 0, 0, 0.02, 0.0664, 0.9136, 0, 0, 0, 0.02, 0.016, 0.1801, 0.7138, 0.0701, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0167, 0.9613, 0.002, 0, 0, 0.02, 0.00340034, 0.952995, 0.0236024, 0, 0, 0.020002, 0.0002, 0.2725, 0.7073, 0, 0, 0.02, 0.0009, 0.0263, 0.4192, 0.5336, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00019998, 0.0534947, 0.923708, 0.00259974, 0, 0.019998, 0, 0.0234023, 0.945095, 0.0115012, 0, 0.020002, 0, 0.0048, 0.7523, 0.2229, 0, 0.02, 0, 0.00130013, 0.0637064, 0.914991, 0, 0.020002, 0, 0, 0, 0, 0.98, 0.02, 0, 0.00030003, 0.0481048, 0.931593, 0, 0.020002, 0, 0.00010001, 0.0270027, 0.952895, 0, 0.020002, 0, 0, 0.0091, 0.9709, 0, 0.02, 0, 0.0001, 0.0087, 0.9712, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.1427, 0.2958, 0.4254, 0.1161, 0, 0.02, 0.1157, 0.2677, 0.4444, 0.1522, 0, 0.02, 0.0693931, 0.20108, 0.452655, 0.256874, 0, 0.019998, 0.0173, 0.0696, 0.2854, 0.6077, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node L_APB_MVA_RECRUIT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MVA_RECRUIT;
			NAME = "L_APB_MVA_RECRUIT";
		};
		PARENTS = (L_APB_VOL_ACT, L_APB_MULOSS);
		DEFINITION =
		{
			NAMESTATES = (FULL, REDUCED, DISCRETE, NO_UNITS);
			PROBABILITIES = (0.9295, 0.0705, 0, 0, 0.4821, 0.5165, 0.0014, 0, 0.0661, 0.7993, 0.1346, 0, 0.00149985, 0.136586, 0.861914, 0, 0, 0, 0, 1, 0.263974, 0.434357, 0.30167, 0, 0.1707, 0.7, 0.1293, 0, 0.0366, 0.5168, 0.4466, 0, 0.0043, 0.1788, 0.8169, 0, 0.00029997, 0.0347965, 0.964904, 0, 0, 0, 0, 1, 0.1146, 0.3465, 0.5389, 0, 0.0038, 0.174, 0.8222, 0, 0.0005, 0.0594, 0.9401, 0, 0.0001, 0.0205, 0.9794, 0, 0, 0.0061, 0.9939, 0, 0, 0, 0, 1, 0.036, 0.2144, 0.7496, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_APB_ALLAMP_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_ALLAMP_WA;
			NAME = "L_APB_ALLAMP_WA";
		};
		PARENTS = (L_APB_MULOSS, L_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00, A2_00, A4_00, A8_00);
			PROBABILITIES = (0.00260026, 0.368737, 0.607561, 0.0208021, 0.00030003, 0, 0, 0, 0, 0, 0.0002, 0.4149, 0.4809, 0.0802, 0.0218, 0.002, 0, 0, 0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0, 0, 0, 0, 0.0018, 0.0536, 0.8696, 0.075, 0, 0, 0, 0, 0, 0, 0, 0.0736, 0.8528, 0.0736, 0, 0, 0, 0, 0, 0, 0.0001, 0.0794, 0.9205, 0.0003, 0.006, 0.105, 0.205, 0.1633, 0.141, 0.1771, 0.1279, 0.0744, 0.0409, 0.8924, 0.0661, 0.0006, 0, 0, 0, 0, 0, 0, 0.01, 0.77, 0.2049, 0.0128, 0.0022, 0.0001, 0, 0, 0, 0, 0, 0.2489, 0.7398, 0.0113, 0, 0, 0, 0, 0, 0, 0.00420042, 0.346835, 0.534854, 0.113711, 0.00040004, 0, 0, 0, 0, 0, 0.0064, 0.0855, 0.788, 0.1197, 0.0004, 0, 0, 0, 0, 0, 0.00029997, 0.116488, 0.766723, 0.116488, 0.00190019, 0.0230023, 0.190019, 0.262326, 0.162916, 0.124412, 0.126413, 0.0740074, 0.0350035, 0.2926, 0.7043, 0.0031, 0, 0, 0, 0, 0, 0, 0.0091, 0.4203, 0.5312, 0.038, 0.0012, 0.0002, 0, 0, 0, 0, 0, 0.309469, 0.680732, 0.00949905, 0.00029997, 0, 0, 0, 0, 0, 0.018, 0.6298, 0.2744, 0.0746, 0.0032, 0, 0, 0, 0, 0.00010001, 0.10461, 0.428143, 0.356836, 0.107111, 0.00320032, 0, 0, 0, 0, 0.00250025, 0.0978098, 0.249825, 0.532353, 0.114111, 0.00340034, 0.0144014, 0.0993099, 0.30283, 0.270227, 0.124312, 0.0821082, 0.0652065, 0.030203, 0.0114011, 0.781, 0.2189, 0.0001, 0, 0, 0, 0, 0, 0, 0.266927, 0.716172, 0.0166017, 0.00030003, 0, 0, 0, 0, 0, 9.999e-05, 0.10279, 0.879212, 0.0177982, 9.999e-05, 0, 0, 0, 0, 0, 0.00440044, 0.811181, 0.176218, 0.00730073, 0.00090009, 0, 0, 0, 0, 9.999e-05, 0.412959, 0.49655, 0.0718928, 0.0172983, 0.00119988, 0, 0, 0, 0, 0.0781078, 0.519652, 0.261026, 0.116712, 0.0234023, 0.00110011, 0, 0.1169, 0.3697, 0.2867, 0.1411, 0.0431, 0.0234, 0.0133, 0.0045, 0.0013, 0.9907, 0.0093, 0, 0, 0, 0, 0, 0, 0, 0.9858, 0.0142, 0, 0, 0, 0, 0, 0, 0, 0.9865, 0.0135, 0, 0, 0, 0, 0, 0, 0, 0.982, 0.018, 0, 0, 0, 0, 0, 0, 0, 0.9779, 0.0221, 0, 0, 0, 0, 0, 0, 0, 0.973, 0.027, 0, 0, 0, 0, 0, 0, 0, 0.937006, 0.0628937, 9.999e-05, 0, 0, 0, 0, 0, 0, 0.359564, 0.514749, 0.0940906, 0.0239976, 0.00459954, 0.0019998, 0.00079992, 0.00019998, 0, 0.133587, 0.385461, 0.269773, 0.130787, 0.040096, 0.0218978, 0.0126987, 0.00439956, 0.00129987, 0.0096, 0.0788, 0.2992, 0.2816, 0.1319, 0.0873, 0.0689, 0.0313, 0.0114, 0.00260052, 0.0289058, 0.204041, 0.265753, 0.159432, 0.119924, 0.119024, 0.0684137, 0.0319064, 0.00049995, 0.00839916, 0.118188, 0.213879, 0.162984, 0.138186, 0.169083, 0.119888, 0.0688931, 0.0001, 0.0021, 0.0586, 0.1473, 0.1427, 0.1363, 0.2057, 0.1798, 0.1274, 0.0521052, 0.160816, 0.227223, 0.20132, 0.106611, 0.0792079, 0.0831083, 0.0559056, 0.0337034);
		};
	};

	node L_APB_FORCE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_FORCE;
			NAME = "L_APB_FORCE";
		};
		PARENTS = (L_APB_ALLAMP_WA, L_APB_VOL_ACT);
		DEFINITION =
		{
			NAMESTATES = (x5, x4, x3, x2, x1, x0);
			PROBABILITIES = (0, 0, 0, 0.00409959, 0.190781, 0.80512, 0, 0, 0, 0.001, 0.0578, 0.9412, 0, 0, 0, 9.999e-05, 0.0125987, 0.987301, 0, 0, 0, 0, 0.00590059, 0.994099, 0.00159984, 0.0185981, 0.0935906, 0.267873, 0.365863, 0.252475, 0.0002, 0.0034, 0.026, 0.1312, 0.3333, 0.5059, 0, 0.0003, 0.0044, 0.0446, 0.2226, 0.7281, 0, 0, 0.0005, 0.0098, 0.1058, 0.8839, 0.0149015, 0.235424, 0.533153, 0.20152, 0.0149015, 0.00010001, 0.0009, 0.0256, 0.18, 0.4308, 0.3036, 0.0591, 0, 0.0005, 0.0128, 0.1328, 0.4061, 0.4478, 0, 0, 0.0003, 0.0091, 0.1181, 0.8725, 0.1538, 0.6493, 0.1936, 0.0033, 0, 0, 0.0098, 0.1589, 0.4714, 0.3101, 0.0485, 0.0013, 0.0001, 0.0049, 0.0751, 0.3632, 0.429, 0.1277, 0, 0, 0.0008, 0.0215, 0.1873, 0.7904, 0.6667, 0.3291, 0.0042, 0, 0, 0, 0.0537054, 0.420442, 0.454845, 0.0690069, 0.0020002, 0, 0.00050005, 0.0273027, 0.243324, 0.50135, 0.211821, 0.0157016, 0, 9.999e-05, 0.00249975, 0.0471953, 0.275572, 0.674633, 0.946895, 0.0531053, 0, 0, 0, 0, 0.117312, 0.565857, 0.30103, 0.0157016, 0.00010001, 0, 0.00120012, 0.060206, 0.386239, 0.454245, 0.0954095, 0.00270027, 0, 0.0001, 0.0044, 0.0713, 0.3326, 0.5916, 0.9782, 0.0218, 0, 0, 0, 0, 0.410159, 0.479352, 0.106989, 0.00349965, 0, 0, 0.0256026, 0.247025, 0.483848, 0.217422, 0.0256026, 0.00050005, 0, 0.0020002, 0.0279028, 0.181218, 0.411241, 0.377638, 0.9971, 0.0029, 0, 0, 0, 0, 0.7017, 0.2755, 0.0226, 0.0002, 0, 0, 0.1171, 0.4443, 0.3699, 0.0654, 0.0033, 0, 0.0004, 0.0107, 0.0847, 0.3035, 0.3988, 0.2019, 0.9996, 0.0004, 0, 0, 0, 0, 0.8804, 0.1161, 0.0035, 0, 0, 0, 0.327067, 0.487951, 0.172683, 0.0119988, 0.00029997, 0, 0.0030003, 0.0426043, 0.194819, 0.384938, 0.292929, 0.0817082);
		};
	};

	node L_APB_REPSTIM_CMAPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_REPSTIM_CMAPAMP;
			NAME = "L_APB_REPSTIM_CMAPAMP";
		};
		PARENTS = (L_APB_ALLAMP_WA);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_032, MV_044, MV_063, MV_088, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00130013, 0.115912, 0.128013, 0.133013, 0.130013, 0.119412, 0.10311, 0.0838084, 0.0639064, 0.0459046, 0.0310031, 0.019702, 0.0117012, 0.00660066, 0.00350035, 0.00170017, 0.00080008, 0.00040004, 0.00010001, 0.00010001, 0, 0, 0.00029997, 0.00129987, 0.00409959, 0.0111989, 0.0260974, 0.0515948, 0.0867913, 0.124688, 0.152485, 0.158884, 0.141086, 0.106789, 0.0687931, 0.0377962, 0.0176982, 0.00709929, 0.00239976, 0.00069993, 0.00019998, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00069993, 0.00309969, 0.0110989, 0.0312969, 0.070393, 0.124788, 0.174783, 0.193481, 0.169283, 0.116988, 0.0639936, 0.0275972, 0.00939906, 0.00249975, 0.00049995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00210021, 0.0107011, 0.0386039, 0.0990099, 0.179618, 0.231623, 0.211921, 0.137514, 0.0632063, 0.0207021, 0.00470047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00310031, 0.0190019, 0.0723072, 0.173617, 0.262226, 0.249725, 0.149715, 0.0567057, 0.0133013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0007, 0.0037, 0.0151, 0.0464, 0.1065, 0.1843, 0.2393, 0.2335, 0.1704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.00110011, 0.00610061, 0.0249025, 0.0768077, 0.177918, 0.308931, 0.40404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0038, 0.0208, 0.086, 0.2659, 0.6229);
		};
	};

	node L_MED_AMP_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_AMP_WA;
			NAME = "L_MED_AMP_WA";
		};
		PARENTS = (L_APB_ALLAMP_WA);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.285028, 0.234623, 0.178118, 0.124512, 0.080308, 0.0476048, 0.0261026, 0.0132013, 0.00610061, 0.00260026, 0.0010001, 0.00040004, 0.00010001, 0, 0, 0, 0, 0.0135013, 0.0369037, 0.0794079, 0.135314, 0.181818, 0.193219, 0.162216, 0.107711, 0.0564056, 0.0234023, 0.00760076, 0.0020002, 0.00040004, 0.00010001, 0, 0, 0, 0, 9.999e-05, 0.00059994, 0.00359964, 0.0164983, 0.0534947, 0.123288, 0.20128, 0.233477, 0.192181, 0.112089, 0.0464953, 0.0136986, 0.00279972, 0.00039996, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0010001, 0.00690069, 0.0309031, 0.0926093, 0.185519, 0.249625, 0.225022, 0.135814, 0.0549055, 0.0149015, 0.00270027, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00310031, 0.0190019, 0.0723072, 0.173617, 0.262226, 0.249725, 0.149715, 0.0567057, 0.0133013, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0017, 0.0093, 0.0355, 0.0964, 0.186, 0.2545, 0.2471, 0.1693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0029, 0.0155, 0.0599, 0.1641, 0.3182, 0.439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00150015, 0.0115012, 0.0631063, 0.244524, 0.679268);
		};
	};

	node L_MED_DCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_DCV_EW;
			NAME = "L_MED_DCV_EW";
		};
		PARENTS = (L_MED_DIFSLOW_EW, L_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.109, 0.8903, 0.0007, 0, 0, 0, 0, 0, 0, 0, 0.0039996, 0.114389, 0.862114, 0.0194981, 0, 0, 0, 0, 0, 0, 0.0001, 0.0028, 0.064, 0.9243, 0.0088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0835, 0.1153, 0.2417, 0.3746, 0.1682, 0.0167, 0, 0, 0, 0, 0.00410041, 0.0247025, 0.154615, 0.738974, 0.0776078, 0, 0, 0, 0, 0, 0.0011, 0.0082, 0.0683, 0.7087, 0.2135, 0.0002, 0, 0, 0, 0, 9.999e-05, 0.00079992, 0.0089991, 0.30297, 0.665433, 0.0216978, 0, 0, 0, 0, 0, 0, 0.0006, 0.0547, 0.6199, 0.3247, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00929907, 0.0180982, 0.0545945, 0.227677, 0.393361, 0.277572, 0.0192981, 9.999e-05, 0, 0, 0.0004, 0.0012, 0.0055, 0.0628, 0.295, 0.5485, 0.0861, 0.0005, 0, 0, 0.00020002, 0.00050005, 0.00280028, 0.0389039, 0.230923, 0.582958, 0.142214, 0.00150015, 0, 0, 0, 0.00010001, 0.00060006, 0.0123012, 0.112911, 0.527253, 0.335534, 0.0113011, 0, 0, 0, 0, 9.999e-05, 0.00249975, 0.0359964, 0.324068, 0.571043, 0.0662934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00059994, 0.00119988, 0.00419958, 0.0283972, 0.114889, 0.357564, 0.39636, 0.0963904, 0.00039996, 0, 0, 9.999e-05, 0.00019998, 0.00189981, 0.0106989, 0.0657934, 0.284572, 0.505449, 0.131287, 0, 0, 0, 0.00010001, 0.00120012, 0.00750075, 0.0510051, 0.252425, 0.518552, 0.169217, 0, 0, 0, 0, 0.0005, 0.0034, 0.028, 0.1822, 0.5098, 0.2761, 0, 0, 0, 0, 0.00010001, 0.00120012, 0.0125013, 0.111811, 0.445245, 0.429143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.0002, 0.0011, 0.0056, 0.033, 0.1653, 0.4414, 0.3534, 0);
		};
	};

	node L_MED_ALLCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_ALLCV_EW;
			NAME = "L_MED_ALLCV_EW";
		};
		PARENTS = (L_MED_RDLDCV_EW, L_MED_DCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0699, 0.8102, 0.1199, 0, 0, 0, 0, 0, 0, 0, 0, 0.0479048, 0.952095, 0, 0, 0, 0, 0, 0, 0, 0.00089991, 0.0089991, 0.0887911, 0.818618, 0.0826917, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.10111, 0.847785, 0.0506051, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.0791079, 0.90019, 0.020202, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0734, 0.8393, 0.0867, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.0947095, 0.894589, 0.010401, 0, 0, 0, 0, 0, 0, 0, 0.002, 0.0932, 0.9048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0.00660066, 0.145515, 0.838084, 0.00980098, 0, 0, 0, 0, 0, 0, 0.0005, 0.0239, 0.4369, 0.5387, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0239, 0.9748, 0.001, 0, 0, 0, 0, 0, 0, 0.0002, 0.0036, 0.2467, 0.7339, 0.0156, 0, 0, 0, 0, 0, 0, 0, 0.005, 0.3134, 0.6811, 0.0005, 0, 0, 0, 0, 0, 0, 0, 0.00710071, 0.549355, 0.443344, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0.00910091, 0.528353, 0.462546, 0, 0, 0, 0, 0, 0, 0, 0, 0.0216, 0.8359, 0.1425, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0355, 0.9641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0.0047, 0.9951, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.9005, 0.0991, 0, 0, 0, 0, 0, 0, 0, 0, 0.1288, 0.8712, 0, 0, 0, 0, 0, 0, 0, 0, 0.0113011, 0.571157, 0.417542, 0, 0, 0, 0, 0, 0, 0, 0, 0.0214, 0.9354, 0.0432, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.0564944, 0.932307, 0.0110989, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.143, 0.8551, 0.0015, 0, 0, 0, 0, 0, 0, 0, 0.0019998, 0.354865, 0.643136, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0122, 0.9877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.997, 0.003, 0, 0, 0, 0, 0, 0, 0, 0, 0.2336, 0.7664, 0, 0, 0, 0, 0, 0, 0, 0, 0.00259974, 0.993401, 0.0039996, 0, 0, 0, 0, 0, 0, 0, 0, 0.2469, 0.7531, 0, 0, 0, 0, 0, 0, 0, 0, 0.002, 0.9939, 0.0041, 0, 0, 0, 0, 0, 0, 0, 0, 0.0314, 0.9686, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0012, 0.1305, 0.8445, 0.0238, 0, 0, 0, 0, 0, 0, 0.0004, 0.074, 0.8589, 0.0667, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0373037, 0.80288, 0.159716, 0, 0, 0, 0, 0, 0, 0, 0.007, 0.3517, 0.6413, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0581, 0.9416, 0, 0, 0, 0, 0, 0, 0, 0, 0.006, 0.994, 0, 0, 0, 0, 0, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0002, 0.0321, 0.9677, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0184, 0.9815, 0, 0, 0, 0, 0, 0, 0, 0, 0.010101, 0.989899, 0, 0, 0, 0, 0, 0, 0, 0, 0.0042, 0.9958, 0, 0, 0, 0, 0, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_MED_CV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_MED_CV_EW;
			NAME = "L_MED_CV_EW";
		};
		PARENTS = (L_MED_ALLCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0168, 0.1184, 0.296, 0.3227, 0.1783, 0.056, 0.0112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0155, 0.1165, 0.2969, 0.3229, 0.1782, 0.0564, 0.0114, 0.0016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0039, 0.0589, 0.2434, 0.3586, 0.235, 0.0808, 0.0164, 0.0022, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0.0007, 0.0176, 0.1966, 0.2515, 0.2699, 0.1688, 0.069, 0.0203, 0.0046, 0.0009, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.00560056, 0.090009, 0.305631, 0.309331, 0.20392, 0.0673067, 0.0152015, 0.00260026, 0.00040004, 0, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0496, 0.2972, 0.4059, 0.2097, 0.0258, 0.0098, 0.0013, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0178982, 0.294571, 0.446955, 0.190181, 0.0433957, 0.00659934, 0.00029997, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0265, 0.5431, 0.3624, 0.0622, 0.0054, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.126513, 0.765477, 0.10061, 0.0070007, 0.00040004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ADM_MUDENS;
			NAME = "L_DIFFN_ADM_MUDENS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node L_DIFFN_LNLW_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ADM_MUDENS;
			NAME = "L_DIFFN_LNLW_ADM_MUDENS";
		};
		PARENTS = (L_LNLW_ADM_MUDENS, L_DIFFN_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_LNL_DIFFN_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_ADM_MUDENS;
			NAME = "L_LNL_DIFFN_ADM_MUDENS";
		};
		PARENTS = (L_DIFFN_LNLW_ADM_MUDENS, L_LNLC8_LP_E_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MUDENS;
			NAME = "L_ADM_MUDENS";
		};
		PARENTS = (L_MUSCLE_ADM_MUDENS, L_LNL_DIFFN_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_ADM_SF_DENSITY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_SF_DENSITY;
			NAME = "L_ADM_SF_DENSITY";
		};
		PARENTS = (L_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (x_2SD, x2_4SD, x_4SD);
			PROBABILITIES = (0.97, 0.03, 0, 0.05, 0.9, 0.05, 0.01, 0.04, 0.95);
		};
	};

	node R_DIFFN_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ADM_MALOSS;
			NAME = "R_DIFFN_ADM_MALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_DIFFN_LNLW_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ADM_MALOSS;
			NAME = "R_DIFFN_LNLW_ADM_MALOSS";
		};
		PARENTS = (R_DIFFN_ADM_MALOSS, R_LNLW_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_LNL_DIFFN_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_ADM_MALOSS;
			NAME = "R_LNL_DIFFN_ADM_MALOSS";
		};
		PARENTS = (R_DIFFN_LNLW_ADM_MALOSS, R_LNLC8_LP_E_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0001, 0.9998, 0.0001, 0, 0, 0, 0.0382, 0.9586, 0.0032, 0, 0, 0.0002, 0.042, 0.9578, 0, 0, 0, 0, 0, 1, 0.0001, 0.9998, 0.0001, 0, 0, 0, 0.0292, 0.9708, 0, 0, 0, 0.00110011, 0.39954, 0.59936, 0, 0, 0, 0.0049, 0.9951, 0, 0, 0, 0, 0, 1, 0, 0.0382, 0.9586, 0.0032, 0, 0, 0.00110011, 0.39954, 0.59936, 0, 0, 0, 0.0128013, 0.987199, 0, 0, 0, 0.0014, 0.9986, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.042, 0.9578, 0, 0, 0, 0.0049, 0.9951, 0, 0, 0, 0.0014, 0.9986, 0, 0, 0, 0.0005, 0.9995, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_ADM_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MALOSS;
			NAME = "R_ADM_MALOSS";
		};
		PARENTS = (R_LNL_DIFFN_ADM_MALOSS, R_OTHER_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0, 0.0361, 0.9439, 0, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.013, 0.967, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0.0005, 0.9795, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node R_DIFFN_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_APB_DENERV;
			NAME = "R_DIFFN_APB_DENERV";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node R_DIFFN_MED_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_MED_DIFSLOW;
			NAME = "R_DIFFN_MED_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.2, 0.6, 0.2, 1, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node R_MED_DIFSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_DIFSLOW_EW;
			NAME = "R_MED_DIFSLOW_EW";
		};
		PARENTS = (R_DIFFN_MED_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0126, 0.9869, 0.0005, 0, 0, 0.0179, 0.9821, 0, 0, 0.0003, 0.0252, 0.9745);
		};
	};

	node R_MED_DIFSLOW_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_DIFSLOW_WA;
			NAME = "R_MED_DIFSLOW_WA";
		};
		PARENTS = (R_DIFFN_MED_DIFSLOW, R_LNLBE_MED_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0131987, 0.986201, 0.00059994, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0003, 0.0252, 0.9745, 0.0131987, 0.986201, 0.00059994, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.00440044, 0.9956, 0, 0.0181018, 0.981898, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.002, 0.998, 0, 0, 0.0006, 0.9994, 0, 0.0003, 0.0252, 0.9745, 0, 0, 0.00440044, 0.9956, 0, 0, 0.0006, 0.9994, 0, 0, 0.0005, 0.9995);
		};
	};

	node R_DIFFN_MED_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_MED_BLOCK;
			NAME = "R_DIFFN_MED_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_MED_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_BLOCK_EW;
			NAME = "R_MED_BLOCK_EW";
		};
		PARENTS = (R_LNLBE_MED_BLOCK, R_DIFFN_MED_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_MED_AMPR_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_AMPR_EW;
			NAME = "R_MED_AMPR_EW";
		};
		PARENTS = (R_MED_BLOCK_EW);
		DEFINITION =
		{
			NAMESTATES = (R_1_1, R1_0, R0_9, R0_8, R0_7, R0_6, R0_5, R0_4, R0_3, R0_2, R0_1, R0_0);
			PROBABILITIES = (0.0879, 0.4192, 0.4232, 0.0693, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0.00189981, 0.0343966, 0.256674, 0.529147, 0.173483, 0.00439956, 0, 0, 0, 0, 0, 0, 0.0001, 0.001, 0.0076, 0.0403, 0.172, 0.373, 0.342, 0.0633, 0.0007, 0, 0, 0, 0.00090009, 0.00150015, 0.00260026, 0.00490049, 0.00950095, 0.0176018, 0.0347035, 0.0768077, 0.166817, 0.341434, 0.343234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_DIFFN_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_APB_MUDENS;
			NAME = "L_DIFFN_APB_MUDENS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node L_DIFFN_LNLW_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_APB_MUDENS;
			NAME = "L_DIFFN_LNLW_APB_MUDENS";
		};
		PARENTS = (L_LNLW_APB_MUDENS, L_DIFFN_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_LNL_DIFFN_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_APB_MUDENS;
			NAME = "L_LNL_DIFFN_APB_MUDENS";
		};
		PARENTS = (L_DIFFN_LNLW_APB_MUDENS, L_LNLT1_LP_BE_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_MUDENS;
			NAME = "L_APB_MUDENS";
		};
		PARENTS = (L_MUSCLE_APB_MUDENS, L_LNL_DIFFN_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node L_APB_SF_DENSITY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_SF_DENSITY;
			NAME = "L_APB_SF_DENSITY";
		};
		PARENTS = (L_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (x_2SD, x2_4SD, x_4SD);
			PROBABILITIES = (0.97, 0.03, 0, 0.05, 0.9, 0.05, 0.01, 0.04, 0.95);
		};
	};

	node R_DIFFN_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ADM_DE_REGEN;
			NAME = "R_DIFFN_ADM_DE_REGEN";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_DIFFN_LNLW_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ADM_DE_REGEN;
			NAME = "R_DIFFN_LNLW_ADM_DE_REGEN";
		};
		PARENTS = (R_LNLW_ADM_DE_REGEN, R_DIFFN_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_LNL_DIFFN_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_ADM_DE_REGEN;
			NAME = "R_LNL_DIFFN_ADM_DE_REGEN";
		};
		PARENTS = (R_DIFFN_LNLW_ADM_DE_REGEN, R_LNLC8_LP_E_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_ADM_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_DE_REGEN;
			NAME = "R_ADM_DE_REGEN";
		};
		PARENTS = (R_MUSCLE_ADM_DE_REGEN, R_LNL_DIFFN_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_ADM_MUPSATEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MUPSATEL;
			NAME = "R_ADM_MUPSATEL";
		};
		PARENTS = (R_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.2, 0.8);
		};
	};

	node R_DE_REGEN_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DE_REGEN_ADM_NMT;
			NAME = "R_DE_REGEN_ADM_NMT";
		};
		PARENTS = (R_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0.949, 0.003, 0.001, 0.04, 0.003, 0.001, 0.003);
		};
	};

	node R_MYAS_DE_REGEN_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MYAS_DE_REGEN_ADM_NMT;
			NAME = "R_MYAS_DE_REGEN_ADM_NMT";
		};
		PARENTS = (R_MYAS_ADM_NMT, R_DE_REGEN_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ADM_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_NMT;
			NAME = "R_ADM_NMT";
		};
		PARENTS = (R_MYAS_DE_REGEN_ADM_NMT, R_OTHER_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ADM_SF_JITTER
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_SF_JITTER;
			NAME = "R_ADM_SF_JITTER";
		};
		PARENTS = (R_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, x2_5, x5_10, x_10);
			PROBABILITIES = (0.95, 0.05, 0, 0, 0.02, 0.2, 0.7, 0.08, 0, 0.1, 0.4, 0.5, 0.05, 0.7, 0.2, 0.05, 0.01, 0.19, 0.7, 0.1, 0, 0.1, 0.4, 0.5, 0.1, 0.3, 0.3, 0.3);
		};
	};

	node R_ADM_MUPINSTAB
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MUPINSTAB;
			NAME = "R_ADM_MUPINSTAB";
		};
		PARENTS = (R_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.1, 0.9, 0.03, 0.97, 0.2, 0.8, 0.1, 0.9, 0.03, 0.97, 0.1, 0.9);
		};
	};

	node R_ADM_REPSTIM_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_REPSTIM_DECR;
			NAME = "R_ADM_REPSTIM_DECR";
		};
		PARENTS = (R_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.04, 0.2, 0.7, 0.04, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.35, 0.57, 0.05, 0.01, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.245, 0.245, 0.245, 0.245, 0.02);
		};
	};

	node R_ADM_REPSTIM_POST_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_REPSTIM_POST_DECR;
			NAME = "R_ADM_REPSTIM_POST_DECR";
		};
		PARENTS = (R_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.25, 0.61, 0.1, 0.02, 0.02, 0.01, 0.1, 0.8, 0.07, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.23, 0.23, 0.22, 0.22, 0.1);
		};
	};

	node R_NMT_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_NMT_ADM_DENERV;
			NAME = "R_NMT_ADM_DENERV";
		};
		PARENTS = (R_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.4, 0.45, 0.15, 0, 0.15, 0.35, 0.35, 0.15, 0.85, 0.15, 0, 0, 0.3, 0.45, 0.2, 0.05, 0.15, 0.35, 0.35, 0.15, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node R_OTHER_NMT_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_OTHER_NMT_ADM_DENERV;
			NAME = "R_OTHER_NMT_ADM_DENERV";
		};
		PARENTS = (R_NMT_ADM_DENERV, R_OTHER_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_MUSCLE_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_ADM_DENERV;
			NAME = "R_MUSCLE_ADM_DENERV";
		};
		PARENTS = (R_OTHER_NMT_ADM_DENERV, R_MYOP_MYDY_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_ADM_REPSTIM_FACILI
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_REPSTIM_FACILI;
			NAME = "R_ADM_REPSTIM_FACILI";
		};
		PARENTS = (R_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV, REDUCED);
			PROBABILITIES = (0.95, 0.02, 0.01, 0.02, 0.01, 0.889, 0.1, 0.001, 0.01, 0.08, 0.909, 0.001, 0.89, 0.08, 0.01, 0.02, 0.48, 0.5, 0.01, 0.01, 0.02, 0.949, 0.03, 0.001, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node L_DIFFN_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ADM_NEUR_ACT;
			NAME = "L_DIFFN_ADM_NEUR_ACT";
		};
		PARENTS = (DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_LNLW_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ADM_NEUR_ACT;
			NAME = "L_DIFFN_LNLW_ADM_NEUR_ACT";
		};
		PARENTS = (L_LNLW_ADM_NEUR_ACT, L_DIFFN_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_LNL_DIFFN_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_ADM_NEUR_ACT;
			NAME = "L_LNL_DIFFN_ADM_NEUR_ACT";
		};
		PARENTS = (L_DIFFN_LNLW_ADM_NEUR_ACT, L_LNLC8_LP_E_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_NEUR_ACT;
			NAME = "L_ADM_NEUR_ACT";
		};
		PARENTS = (L_OTHER_ADM_NEUR_ACT, L_LNL_DIFFN_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ADM_SPONT_NEUR_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_SPONT_NEUR_DISCH;
			NAME = "L_ADM_SPONT_NEUR_DISCH";
		};
		PARENTS = (L_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.01, 0.04, 0.75, 0.05, 0.05, 0.1, 0.01, 0.04, 0.05, 0.75, 0.05, 0.1, 0.01, 0.04, 0.05, 0.05, 0.75, 0.1, 0.01, 0.05, 0.05, 0.05, 0.05, 0.79);
		};
	};

	node L_DIFFN_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_ADM_MUSIZE;
			NAME = "L_DIFFN_ADM_MUSIZE";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.7, 0.2, 0.1, 0, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.7, 0.2, 0.1, 0, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node L_DIFFN_LNLW_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_ADM_MUSIZE;
			NAME = "L_DIFFN_LNLW_ADM_MUSIZE";
		};
		PARENTS = (L_DIFFN_ADM_MUSIZE, L_LNLW_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.9981, 0.0019, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_LNL_DIFFN_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_ADM_MUSIZE;
			NAME = "L_LNL_DIFFN_ADM_MUSIZE";
		};
		PARENTS = (L_LNLC8_LP_E_ADM_MUSIZE, L_DIFFN_LNLW_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.9981, 0.0019, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node L_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MUSIZE;
			NAME = "L_ADM_MUSIZE";
		};
		PARENTS = (L_LNL_DIFFN_ADM_MUSIZE, L_MUSCLE_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9791, 0.0009, 0, 0, 0, 0, 0.02, 0.9637, 0.0163, 0, 0, 0, 0, 0.02, 0.922192, 0.0578058, 0, 0, 0, 0, 0.020002, 0.39794, 0.566357, 0.0155016, 0.00020002, 0, 0, 0.020002, 0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02, 0.00120012, 0.231723, 0.588259, 0.147415, 0.0112011, 0.00020002, 0.020002, 0.9637, 0.0163, 0, 0, 0, 0, 0.02, 0.7493, 0.2257, 0.0049, 0.0001, 0, 0, 0.02, 0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02, 0.00389961, 0.381062, 0.506549, 0.0840916, 0.00429957, 9.999e-05, 0.019998, 0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02, 0, 0.00110011, 0.135714, 0.40254, 0.363136, 0.0775077, 0.020002, 0.922192, 0.0578058, 0, 0, 0, 0, 0.020002, 0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0908091, 0.818582, 0.0706071, 0, 0.020002, 0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02, 0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02, 0.39794, 0.566357, 0.0155016, 0.00020002, 0, 0, 0.020002, 0.00389961, 0.381062, 0.506549, 0.0840916, 0.00429957, 9.999e-05, 0.019998, 0, 0, 0.0908091, 0.818582, 0.0706071, 0, 0.020002, 0, 0, 0.00359964, 0.165483, 0.645435, 0.165483, 0.019998, 0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02, 0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02, 0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02, 0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0, 0, 0, 0, 0.0011, 0.9789, 0.02, 0.00120012, 0.231723, 0.588259, 0.147415, 0.0112011, 0.00020002, 0.020002, 0, 0.00110011, 0.135714, 0.40254, 0.363136, 0.0775077, 0.020002, 0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0, 0, 0, 0, 0.0011, 0.9789, 0.02, 0, 0, 0, 0, 0.0001, 0.9799, 0.02);
		};
	};

	node L_ADM_EFFMUS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_EFFMUS;
			NAME = "L_ADM_EFFMUS";
		};
		PARENTS = (L_ADM_MUSIZE, L_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9683, 0.0117, 0, 0, 0, 0, 0.02, 0.9794, 0.0006, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.9742, 0.0058, 0, 0, 0, 0, 0.02, 0.9789, 0.0011, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.7927, 0.1721, 0.0135, 0.0016, 0.0001, 0, 0.02, 0.0164, 0.9421, 0.0215, 0, 0, 0, 0.02, 0.8182, 0.1616, 0.0002, 0, 0, 0, 0.02, 0.9738, 0.0062, 0, 0, 0, 0, 0.02, 0.0329, 0.9359, 0.0112, 0, 0, 0, 0.02, 0.3885, 0.59, 0.0015, 0, 0, 0, 0.02, 0.9362, 0.0438, 0, 0, 0, 0, 0.02, 0.492951, 0.370363, 0.0905909, 0.0216978, 0.00389961, 0.00049995, 0.019998, 0, 0, 0.973697, 0.00630063, 0, 0, 0.020002, 0.00070007, 0.940394, 0.0389039, 0, 0, 0, 0.020002, 0.7833, 0.1966, 0.0001, 0, 0, 0, 0.02, 0, 9.999e-05, 0.978302, 0.00159984, 0, 0, 0.019998, 0, 0.3781, 0.6016, 0.0003, 0, 0, 0.02, 0.0114988, 0.965303, 0.00319968, 0, 0, 0, 0.019998, 0.150515, 0.39774, 0.271527, 0.117212, 0.0361036, 0.00690069, 0.020002, 0, 0, 0.0082, 0.9646, 0.0072, 0, 0.02, 0, 0.0571, 0.8829, 0.04, 0, 0, 0.02, 0.0541, 0.9055, 0.0203, 0.0001, 0, 0, 0.02, 0, 0, 0.0326033, 0.945695, 0.00170017, 0, 0.020002, 0, 0, 0.7931, 0.1868, 0.0001, 0, 0.02, 0, 0.439, 0.5362, 0.0048, 0, 0, 0.02, 0.0391, 0.2318, 0.3318, 0.2294, 0.1131, 0.0348, 0.02, 0, 0, 0, 0.0072, 0.9656, 0.0072, 0.02, 0, 0.0001, 0.3198, 0.6276, 0.0325, 0, 0.02, 0.0004, 0.4664, 0.4912, 0.0219, 0.0001, 0, 0.02, 0, 0, 0, 0.0287, 0.9496, 0.0017, 0.02, 0, 0, 0.0071, 0.7665, 0.2063, 0.0001, 0.02, 0, 0.00150015, 0.70187, 0.273827, 0.00280028, 0, 0.020002, 0.0065, 0.0866, 0.2598, 0.2877, 0.2273, 0.1121, 0.02, 0, 0, 0, 0, 0.0072, 0.9728, 0.02, 0, 0, 0.0034, 0.2908, 0.6521, 0.0337, 0.02, 0, 0.0126975, 0.626375, 0.324235, 0.0165967, 9.998e-05, 0.019996, 0, 0, 0, 0, 0.0287, 0.9513, 0.02, 0, 0, 0, 0.0062, 0.7673, 0.2065, 0.02, 0, 0, 0.0383962, 0.649135, 0.289471, 0.0029997, 0.019998, 0.00079984, 0.0223955, 0.140872, 0.24985, 0.316237, 0.24985, 0.019996, 0.1111, 0.2284, 0.2388, 0.1875, 0.1354, 0.0788, 0.02, 0.242676, 0.30487, 0.206879, 0.124588, 0.069493, 0.0314968, 0.019998, 0.4236, 0.3196, 0.1381, 0.0628, 0.0267, 0.0092, 0.02, 0.1227, 0.2392, 0.2382, 0.1813, 0.127, 0.0716, 0.02, 0.177682, 0.277672, 0.227477, 0.153485, 0.0955904, 0.0480952, 0.019998, 0.2958, 0.3186, 0.1878, 0.1033, 0.0527, 0.0218, 0.02, 0.219722, 0.264926, 0.20142, 0.140614, 0.0964096, 0.0569057, 0.020002);
		};
	};

	node L_ADM_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MUPDUR;
			NAME = "L_ADM_MUPDUR";
		};
		PARENTS = (L_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9388, 0.0412, 0, 0, 0, 0, 0.02, 0.0396, 0.9008, 0.0396, 0, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0396, 0.9008, 0.0396, 0, 0.02, 0, 0, 0, 0.0412, 0.938, 0.0008, 0.02, 0, 0, 0, 0.0039, 0.2546, 0.7215, 0.02, 0.09, 0.235, 0.3236, 0.235, 0.09, 0.0064, 0.02);
		};
	};

	node L_ADM_QUAL_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_QUAL_MUPDUR;
			NAME = "L_ADM_QUAL_MUPDUR";
		};
		PARENTS = (L_ADM_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (SMALL, NORMAL, INCR);
			PROBABILITIES = (0.8309, 0.1677, 0.0014, 0.49, 0.49, 0.02, 0.1065, 0.787, 0.1065, 0.02, 0.49, 0.49, 0.0014, 0.1677, 0.8309, 0.0001, 0.0392, 0.9607, 0.2597, 0.4806, 0.2597);
		};
	};

	node L_ADM_QUAN_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_QUAN_MUPDUR;
			NAME = "L_ADM_QUAN_MUPDUR";
		};
		PARENTS = (L_ADM_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (MS3, MS4, MS5, MS6, MS7, MS8, MS9, MS10, MS11, MS12, MS13, MS14, MS15, MS16, MS17, MS18, MS19, MS20, MS_20);
			PROBABILITIES = (0.09982, 0.183337, 0.240248, 0.224545, 0.14973, 0.0712142, 0.0242048, 0.00580116, 0.0010002, 0.00010002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.010201, 0.0369037, 0.0951095, 0.174717, 0.228923, 0.214021, 0.142614, 0.0678068, 0.0230023, 0.00560056, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0025, 0.0177, 0.0739, 0.1852, 0.2785, 0.2515, 0.1363, 0.0444, 0.0087, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00039996, 0.00179982, 0.0069993, 0.0218978, 0.0540946, 0.105189, 0.161284, 0.194981, 0.185981, 0.139886, 0.0828917, 0.0387961, 0.00569943, 0.0201, 0.0341, 0.0529, 0.0748, 0.0966, 0.1138, 0.1224, 0.1202, 0.1078, 0.0882, 0.0658, 0.0449, 0.0279, 0.0159, 0.0082, 0.0039, 0.0017, 0.0007, 0.0001);
		};
	};

	node L_ADM_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MUPAMP;
			NAME = "L_ADM_MUPAMP";
		};
		PARENTS = (L_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.782, 0.195, 0.003, 0, 0, 0, 0.02, 0.10431, 0.771077, 0.10431, 0.00030003, 0, 0, 0.020002, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0.00029997, 0.10109, 0.747125, 0.131487, 0, 0.019998, 0, 0, 0.0024, 0.1528, 0.7968, 0.028, 0.02, 0, 0, 0, 0.0028, 0.0968, 0.8804, 0.02, 0.1328, 0.1932, 0.2189, 0.1932, 0.1726, 0.0693, 0.02);
		};
	};

	node L_ADM_QUAL_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_QUAL_MUPAMP;
			NAME = "L_ADM_QUAL_MUPAMP";
		};
		PARENTS = (L_ADM_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (V_RED, REDUCED, NORMAL, INCR, V_INCR);
			PROBABILITIES = (0.4289, 0.5209, 0.0499, 0.0003, 0, 0.0647, 0.5494, 0.3679, 0.018, 0, 0, 0.0479048, 0.875388, 0.0767077, 0, 0, 0.00869913, 0.283772, 0.677932, 0.029597, 0, 0.0002, 0.0376, 0.6283, 0.3339, 0, 0, 0.001, 0.0788, 0.9202, 0.096, 0.1884, 0.283, 0.3014, 0.1312);
		};
	};

	node L_ADM_QUAN_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_QUAN_MUPAMP;
			NAME = "L_ADM_QUAN_MUPAMP";
		};
		PARENTS = (L_ADM_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (UV34, UV44, UV58, UV74, UV94, UV122, UV156, UV200, UV260, UV330, UV420, UV540, UV700, UV900, UV1150, UV1480, UV1900, UV2440, UV3130, UV4020);
			PROBABILITIES = (0.00080024, 0.00370111, 0.013504, 0.0381114, 0.0835251, 0.142543, 0.189557, 0.196359, 0.158348, 0.0994298, 0.0486146, 0.0185056, 0.00550165, 0.00130039, 0.00020006, 0, 0, 0, 0, 0, 0, 0.00010002, 0.00080016, 0.00370074, 0.0135027, 0.0381076, 0.0835167, 0.142529, 0.189538, 0.196339, 0.158332, 0.0994199, 0.0486097, 0.0185037, 0.0055011, 0.00130026, 0.00020004, 0, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.00370037, 0.0187019, 0.0639064, 0.147515, 0.230223, 0.243124, 0.173717, 0.0840084, 0.0275027, 0.00610061, 0.00090009, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0037, 0.0135, 0.0381, 0.0835, 0.1426, 0.1896, 0.1963, 0.1583, 0.0995, 0.0487, 0.0185, 0.0055, 0.0013, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0038, 0.0136, 0.0383, 0.0841, 0.1435, 0.1909, 0.1977, 0.1594, 0.1001, 0.049, 0.0187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0006, 0.0024, 0.0082, 0.0232, 0.0542, 0.1041, 0.1645, 0.2137, 0.2283, 0.2007, 0.0045, 0.0078, 0.0127, 0.0197, 0.0289, 0.0403, 0.0531, 0.0664, 0.0787, 0.0883, 0.0939, 0.0946, 0.0903, 0.0817, 0.07, 0.0569, 0.0438, 0.0319, 0.0221, 0.0144);
		};
	};

	node L_ADM_TA_CONCL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_TA_CONCL;
			NAME = "L_ADM_TA_CONCL";
		};
		PARENTS = (L_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (x_5ABOVE, x2_5ABOVE, NORMAL, x2_5BELOW, x_5BELOW);
			PROBABILITIES = (0, 0, 0.005, 0.045, 0.95, 0, 0, 0.05, 0.9, 0.05, 0, 0.03, 0.94, 0.03, 0, 0.195, 0.6, 0.2, 0.005, 0, 0.48, 0.5, 0.02, 0, 0, 0.8, 0.195, 0.005, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2);
		};
	};

	node L_ADM_QUAN_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_QUAN_MUPPOLY;
			NAME = "L_ADM_QUAN_MUPPOLY";
		};
		PARENTS = (L_ADM_EFFMUS, L_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (x_12_, x12_24_, x_24_);
			PROBABILITIES = (0.109, 0.548, 0.343, 0.004, 0.122, 0.874, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.925, 0.075, 0, 0.091, 0.526, 0.383, 0.796, 0.201, 0.003, 0.061, 0.465, 0.474, 0.637, 0.348, 0.015, 0.039, 0.396, 0.565, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724);
		};
	};

	node L_ADM_QUAL_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_QUAL_MUPPOLY;
			NAME = "L_ADM_QUAL_MUPPOLY";
		};
		PARENTS = (L_ADM_QUAN_MUPPOLY);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.95, 0.05, 0.3, 0.7, 0.05, 0.95);
		};
	};

	node L_ADM_MVA_AMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MVA_AMP;
			NAME = "L_ADM_MVA_AMP";
		};
		PARENTS = (L_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (INCR, NORMAL, REDUCED);
			PROBABILITIES = (0, 0.04, 0.96, 0.01, 0.15, 0.84, 0.05, 0.9, 0.05, 0.5, 0.49, 0.01, 0.85, 0.15, 0, 0.96, 0.04, 0, 0.33, 0.34, 0.33);
		};
	};

	node L_ADM_ALLAMP_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_ALLAMP_WA;
			NAME = "L_ADM_ALLAMP_WA";
		};
		PARENTS = (L_ADM_MULOSS, L_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00, A2_00, A4_00, A8_00);
			PROBABILITIES = (0.00260026, 0.368737, 0.607561, 0.0208021, 0.00030003, 0, 0, 0, 0, 0, 0.0002, 0.4149, 0.4809, 0.0802, 0.0218, 0.002, 0, 0, 0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0, 0, 0, 0, 0.0018, 0.0536, 0.8696, 0.075, 0, 0, 0, 0, 0, 0, 0, 0.0736, 0.8528, 0.0736, 0, 0, 0, 0, 0, 0, 0.0001, 0.0794, 0.9205, 0.0003, 0.006, 0.105, 0.205, 0.1633, 0.141, 0.1771, 0.1279, 0.0744, 0.0409, 0.8924, 0.0661, 0.0006, 0, 0, 0, 0, 0, 0, 0.01, 0.77, 0.2049, 0.0128, 0.0022, 0.0001, 0, 0, 0, 0, 0, 0.2489, 0.7398, 0.0113, 0, 0, 0, 0, 0, 0, 0.00420042, 0.346835, 0.534854, 0.113711, 0.00040004, 0, 0, 0, 0, 0, 0.0064, 0.0855, 0.788, 0.1197, 0.0004, 0, 0, 0, 0, 0, 0.00029997, 0.116488, 0.766723, 0.116488, 0.00190019, 0.0230023, 0.190019, 0.262326, 0.162916, 0.124412, 0.126413, 0.0740074, 0.0350035, 0.2926, 0.7043, 0.0031, 0, 0, 0, 0, 0, 0, 0.0091, 0.4203, 0.5312, 0.038, 0.0012, 0.0002, 0, 0, 0, 0, 0, 0.309469, 0.680732, 0.00949905, 0.00029997, 0, 0, 0, 0, 0, 0.018, 0.6298, 0.2744, 0.0746, 0.0032, 0, 0, 0, 0, 0.00010001, 0.10461, 0.428143, 0.356836, 0.107111, 0.00320032, 0, 0, 0, 0, 0.00250025, 0.0978098, 0.249825, 0.532353, 0.114111, 0.00340034, 0.0144014, 0.0993099, 0.30283, 0.270227, 0.124312, 0.0821082, 0.0652065, 0.030203, 0.0114011, 0.781, 0.2189, 0.0001, 0, 0, 0, 0, 0, 0, 0.266927, 0.716172, 0.0166017, 0.00030003, 0, 0, 0, 0, 0, 9.999e-05, 0.10279, 0.879212, 0.0177982, 9.999e-05, 0, 0, 0, 0, 0, 0.00440044, 0.811181, 0.176218, 0.00730073, 0.00090009, 0, 0, 0, 0, 9.999e-05, 0.412959, 0.49655, 0.0718928, 0.0172983, 0.00119988, 0, 0, 0, 0, 0.0781078, 0.519652, 0.261026, 0.116712, 0.0234023, 0.00110011, 0, 0.1169, 0.3697, 0.2867, 0.1411, 0.0431, 0.0234, 0.0133, 0.0045, 0.0013, 0.9907, 0.0093, 0, 0, 0, 0, 0, 0, 0, 0.9858, 0.0142, 0, 0, 0, 0, 0, 0, 0, 0.9865, 0.0135, 0, 0, 0, 0, 0, 0, 0, 0.982, 0.018, 0, 0, 0, 0, 0, 0, 0, 0.9779, 0.0221, 0, 0, 0, 0, 0, 0, 0, 0.973, 0.027, 0, 0, 0, 0, 0, 0, 0, 0.937006, 0.0628937, 9.999e-05, 0, 0, 0, 0, 0, 0, 0.359564, 0.514749, 0.0940906, 0.0239976, 0.00459954, 0.0019998, 0.00079992, 0.00019998, 0, 0.133587, 0.385461, 0.269773, 0.130787, 0.040096, 0.0218978, 0.0126987, 0.00439956, 0.00129987, 0.0096, 0.0788, 0.2992, 0.2816, 0.1319, 0.0873, 0.0689, 0.0313, 0.0114, 0.00260052, 0.0289058, 0.204041, 0.265753, 0.159432, 0.119924, 0.119024, 0.0684137, 0.0319064, 0.00049995, 0.00839916, 0.118188, 0.213879, 0.162984, 0.138186, 0.169083, 0.119888, 0.0688931, 0.0001, 0.0021, 0.0586, 0.1473, 0.1427, 0.1363, 0.2057, 0.1798, 0.1274, 0.0521052, 0.160816, 0.227223, 0.20132, 0.106611, 0.0792079, 0.0831083, 0.0559056, 0.0337034);
		};
	};

	node L_ADM_FORCE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_FORCE;
			NAME = "L_ADM_FORCE";
		};
		PARENTS = (L_ADM_ALLAMP_WA, L_ADM_VOL_ACT);
		DEFINITION =
		{
			NAMESTATES = (x5, x4, x3, x2, x1, x0);
			PROBABILITIES = (0, 0, 0, 0.00409959, 0.190781, 0.80512, 0, 0, 0, 0.001, 0.0578, 0.9412, 0, 0, 0, 9.999e-05, 0.0125987, 0.987301, 0, 0, 0, 0, 0.00590059, 0.994099, 9.999e-05, 0.00429957, 0.0521948, 0.266873, 0.433057, 0.243476, 0, 0.0005, 0.0084, 0.0849, 0.3219, 0.5843, 0, 0, 0.0007, 0.0167, 0.1576, 0.825, 0, 0, 0, 0.00260026, 0.0586059, 0.938794, 0.0149015, 0.235424, 0.533153, 0.20152, 0.0149015, 0.00010001, 0.0009, 0.0256, 0.18, 0.4308, 0.3036, 0.0591, 0, 0.0005, 0.0128, 0.1328, 0.4061, 0.4478, 0, 0, 0.0003, 0.0091, 0.1181, 0.8725, 0.1538, 0.6493, 0.1936, 0.0033, 0, 0, 0.0098, 0.1589, 0.4714, 0.3101, 0.0485, 0.0013, 0.0001, 0.0049, 0.0751, 0.3632, 0.429, 0.1277, 0, 0, 0.0008, 0.0215, 0.1873, 0.7904, 0.6667, 0.3291, 0.0042, 0, 0, 0, 0.0537054, 0.420442, 0.454845, 0.0690069, 0.0020002, 0, 0.00050005, 0.0273027, 0.243324, 0.50135, 0.211821, 0.0157016, 0, 9.999e-05, 0.00249975, 0.0471953, 0.275572, 0.674633, 0.946895, 0.0531053, 0, 0, 0, 0, 0.117312, 0.565857, 0.30103, 0.0157016, 0.00010001, 0, 0.00120012, 0.060206, 0.386239, 0.454245, 0.0954095, 0.00270027, 0, 0.0001, 0.0044, 0.0713, 0.3326, 0.5916, 0.9782, 0.0218, 0, 0, 0, 0, 0.410159, 0.479352, 0.106989, 0.00349965, 0, 0, 0.0256026, 0.247025, 0.483848, 0.217422, 0.0256026, 0.00050005, 0, 0.0020002, 0.0279028, 0.181218, 0.411241, 0.377638, 0.9971, 0.0029, 0, 0, 0, 0, 0.7017, 0.2755, 0.0226, 0.0002, 0, 0, 0.1171, 0.4443, 0.3699, 0.0654, 0.0033, 0, 0.0004, 0.0107, 0.0847, 0.3035, 0.3988, 0.2019, 0.9996, 0.0004, 0, 0, 0, 0, 0.8804, 0.1161, 0.0035, 0, 0, 0, 0.327067, 0.487951, 0.172683, 0.0119988, 0.00029997, 0, 0.0030003, 0.0426043, 0.194819, 0.384938, 0.292929, 0.0817082);
		};
	};

	node L_ADM_REPSTIM_CMAPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_REPSTIM_CMAPAMP;
			NAME = "L_ADM_REPSTIM_CMAPAMP";
		};
		PARENTS = (L_ADM_ALLAMP_WA);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_032, MV_044, MV_063, MV_088, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00029988, 0.0961615, 0.113355, 0.12485, 0.128349, 0.123151, 0.110256, 0.0922631, 0.0720712, 0.052579, 0.0357857, 0.0226909, 0.0134946, 0.007497, 0.00389844, 0.00189924, 0.00079968, 0.00039984, 9.996e-05, 9.996e-05, 0, 0, 0, 9.998e-05, 0.00039992, 0.00169966, 0.0064987, 0.0195961, 0.0473905, 0.0922815, 0.144171, 0.180964, 0.182464, 0.14777, 0.0959808, 0.05019, 0.0209958, 0.00709858, 0.00189962, 0.00039992, 9.998e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00040004, 0.00330033, 0.0169017, 0.059506, 0.140714, 0.225923, 0.245225, 0.180118, 0.089709, 0.030103, 0.00690069, 0.00110011, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0005, 0.0088, 0.0684, 0.236, 0.3599, 0.2433, 0.0728, 0.0097, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0042, 0.1369, 0.5589, 0.2821, 0.0178, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0028, 0.0211, 0.0937, 0.2387, 0.3496, 0.2939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.00749925, 0.0582942, 0.259974, 0.673633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00810081, 0.110311, 0.881288);
		};
	};

	node L_ULN_AMP_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ULN_AMP_WA;
			NAME = "L_ULN_AMP_WA";
		};
		PARENTS = (L_ADM_ALLAMP_WA);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.271927, 0.233623, 0.182718, 0.129813, 0.0840084, 0.0494049, 0.0264026, 0.0129013, 0.00570057, 0.00230023, 0.00080008, 0.00030003, 0.00010001, 0, 0, 0, 0, 0.0006, 0.0045, 0.0217, 0.071, 0.1571, 0.2357, 0.2391, 0.1642, 0.0762, 0.024, 0.0051, 0.0007, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00130013, 0.0182018, 0.109311, 0.293129, 0.347835, 0.182918, 0.0427043, 0.00440044, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0016, 0.036, 0.2338, 0.4425, 0.2448, 0.0394, 0.0019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0042, 0.1369, 0.5589, 0.2821, 0.0178, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00640064, 0.0573057, 0.227523, 0.39934, 0.309131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0010001, 0.0213021, 0.192819, 0.784878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.001, 0.0446, 0.9544);
		};
	};

	node L_ADM_MUSCLE_VOL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_ADM_MUSCLE_VOL;
			NAME = "L_ADM_MUSCLE_VOL";
		};
		PARENTS = (L_ADM_MALOSS, L_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (ATROPHIC, NORMAL);
			PROBABILITIES = (0.9896, 0.0104, 0.8137, 0.1863, 0.0209, 0.9791, 0.009, 0.991, 0.003, 0.997, 0.0004, 0.9996, 0.4212, 0.5788, 0.9976, 0.0024, 0.9603, 0.0397, 0.5185, 0.4815, 0.1087, 0.8913, 0.0278, 0.9722, 0.0046, 0.9954, 0.5185, 0.4815, 0.999, 0.001, 0.9893, 0.0107, 0.9588, 0.0412, 0.6377, 0.3623, 0.2716, 0.7284, 0.0779, 0.9221, 0.6336, 0.3664, 0.9995, 0.0005, 0.9969, 0.0031, 0.9953, 0.0047, 0.9518, 0.0482, 0.8234, 0.1766, 0.5986, 0.4014, 0.7685, 0.2315, 0.9989, 0.0011, 0.9984, 0.0016, 0.9984, 0.0016, 0.9975, 0.0025, 0.9965, 0.0035, 0.9956, 0.0044, 0.9857, 0.0143, 0.9363, 0.0637, 0.8403, 0.1597, 0.6534, 0.3466, 0.4689, 0.5311, 0.3174, 0.6826, 0.1948, 0.8052, 0.5681, 0.4319);
		};
	};

	node L_DIFFN_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_APB_DENERV;
			NAME = "L_DIFFN_APB_DENERV";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node L_DIFFN_LNLW_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_DIFFN_LNLW_APB_DENERV;
			NAME = "L_DIFFN_LNLW_APB_DENERV";
		};
		PARENTS = (L_LNLW_APB_DENERV, L_DIFFN_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_LNL_DIFFN_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_LNL_DIFFN_APB_DENERV;
			NAME = "L_LNL_DIFFN_APB_DENERV";
		};
		PARENTS = (L_DIFFN_LNLW_APB_DENERV, L_LNLT1_LP_BE_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_DENERV;
			NAME = "L_APB_DENERV";
		};
		PARENTS = (L_LNL_DIFFN_APB_DENERV, L_MUSCLE_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node L_APB_SPONT_INS_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_SPONT_INS_ACT;
			NAME = "L_APB_SPONT_INS_ACT";
		};
		PARENTS = (L_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.98, 0.02, 0.1, 0.9, 0.05, 0.95, 0.05, 0.95);
		};
	};

	node L_APB_SPONT_HF_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_SPONT_HF_DISCH;
			NAME = "L_APB_SPONT_HF_DISCH";
		};
		PARENTS = (L_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.99, 0.01, 0.97, 0.03, 0.95, 0.05, 0.93, 0.07);
		};
	};

	node L_APB_SPONT_DENERV_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = L_APB_SPONT_DENERV_ACT;
			NAME = "L_APB_SPONT_DENERV_ACT";
		};
		PARENTS = (L_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, SOME, MOD, ABUNDANT);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0.07, 0.85, 0.08, 0, 0.01, 0.07, 0.85, 0.07, 0, 0.01, 0.07, 0.92);
		};
	};

	node R_DIFFN_ULN_DIFSLOW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ULN_DIFSLOW;
			NAME = "R_DIFFN_ULN_DIFSLOW";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.2, 0.6, 0.2, 0, 0.2, 0.6, 0.2, 1, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0.2, 0.4, 0.3, 0.1, 0.2, 0.4, 0.3, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3, 0, 0, 0.7, 0.3);
		};
	};

	node R_ULN_DIFSLOW_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_DIFSLOW_WA;
			NAME = "R_ULN_DIFSLOW_WA";
		};
		PARENTS = (R_DIFFN_ULN_DIFSLOW, R_LNLE_ULN_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0131987, 0.986201, 0.00059994, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0003, 0.0252, 0.9745, 0.0131987, 0.986201, 0.00059994, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.00440044, 0.9956, 0, 0.0181018, 0.981898, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.002, 0.998, 0, 0, 0.0006, 0.9994, 0, 0.0003, 0.0252, 0.9745, 0, 0, 0.00440044, 0.9956, 0, 0, 0.0006, 0.9994, 0, 0, 0.0005, 0.9995);
		};
	};

	node R_ULN_DCV_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_DCV_WA;
			NAME = "R_ULN_DCV_WA";
		};
		PARENTS = (R_ULN_DIFSLOW_WA, R_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1136, 0.8864, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0764, 0.8866, 0.0364, 0, 0, 0, 0, 0, 0, 0, 0.0655, 0.9299, 0.0046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.1523, 0.2904, 0.3678, 0.1726, 0.0169, 0, 0, 0, 0, 0.008, 0.168, 0.7407, 0.0833, 0, 0, 0, 0, 0, 0.00089991, 0.0367963, 0.557644, 0.40246, 0.00219978, 0, 0, 0, 0, 0, 0.00070007, 0.0525053, 0.571257, 0.375238, 0.00030003, 0, 0, 0, 0, 0, 0.0007, 0.0745, 0.8859, 0.0389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0168, 0.0618, 0.2223, 0.4015, 0.2803, 0.0172, 0.0001, 0, 0, 0.00069986, 0.00589882, 0.0614877, 0.30064, 0.552589, 0.0781844, 0.0004999, 0, 0, 0.0002, 0.0018, 0.0263, 0.1887, 0.5884, 0.1916, 0.003, 0, 0, 0, 0.0001, 0.0024, 0.0358, 0.316, 0.5741, 0.0716, 0, 0, 0, 0, 9.999e-05, 0.00319968, 0.0780922, 0.594641, 0.323568, 0.00039996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0009999, 0.00469953, 0.0279972, 0.118388, 0.364664, 0.392261, 0.0906909, 0.00029997, 0, 0.0001, 0.0003, 0.0018, 0.011, 0.067, 0.2945, 0.5047, 0.1206, 0, 0, 0.00010001, 0.00090009, 0.00590059, 0.0422042, 0.235624, 0.522552, 0.192719, 0, 0, 0, 0.0001, 0.0012, 0.0121, 0.1131, 0.4415, 0.432, 0, 0, 0, 0, 0.00020002, 0.00280028, 0.0439044, 0.291729, 0.661366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0011, 0.0057, 0.0332, 0.1704, 0.4424, 0.347, 0);
		};
	};

	node R_ULN_ALLDEL_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_ALLDEL_WA;
			NAME = "R_ULN_ALLDEL_WA";
		};
		PARENTS = (R_ULN_DCV_WA, R_ULN_RDLDDEL);
		DEFINITION =
		{
			NAMESTATES = (MS0_0, MS0_4, MS0_8, MS1_6, MS3_2, MS6_4, MS12_8, MS25_6, INFIN);
			PROBABILITIES = (0.9996, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0.0511949, 0.229077, 0.566243, 0.153485, 0, 0, 0, 0, 0, 0.0001, 0.0035, 0.0632, 0.9326, 0.0006, 0, 0, 0, 0, 0.00129987, 0.0019998, 0.00439956, 0.0186981, 0.121288, 0.747925, 0.10439, 0, 0, 0.00010001, 0.00010001, 0.00030003, 0.00090009, 0.00450045, 0.0434043, 0.576758, 0.373937, 0, 0.5607, 0.4393, 0, 0, 0, 0, 0, 0, 0, 0.0192981, 0.128687, 0.492851, 0.359164, 0, 0, 0, 0, 0, 0, 0.0011, 0.0283, 0.9651, 0.0055, 0, 0, 0, 0, 0.0010001, 0.00160016, 0.00370037, 0.0161016, 0.109311, 0.742174, 0.126113, 0, 0, 0.0001, 0.0001, 0.0002, 0.0008, 0.0041, 0.0399, 0.5568, 0.398, 0, 0.0069, 0.7963, 0.1968, 0, 0, 0, 0, 0, 0, 0.0027, 0.0328, 0.2398, 0.7246, 0.0001, 0, 0, 0, 0, 0, 0.0002, 0.0075, 0.8889, 0.1034, 0, 0, 0, 0, 0.00079992, 0.00119988, 0.00279972, 0.0124988, 0.0915908, 0.723528, 0.167583, 0, 0, 0.0001, 0.0001, 0.0002, 0.0007, 0.0034, 0.0348, 0.5239, 0.4368, 0, 0, 0.0184, 0.9806, 0.001, 0, 0, 0, 0, 0, 0.00010001, 0.00330033, 0.0547055, 0.938194, 0.00370037, 0, 0, 0, 0, 0, 0, 0.00030003, 0.185018, 0.814681, 0, 0, 0, 0, 0.00049995, 0.00079992, 0.00179982, 0.00869913, 0.070293, 0.680232, 0.237676, 0, 0, 0.0001, 0.0001, 0.0001, 0.0005, 0.0027, 0.0287, 0.4783, 0.4895, 0, 0, 0.0001, 0.0179, 0.982, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00479952, 0.50395, 0.491051, 0, 0, 0, 0, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0, 0.0002, 0.0004, 0.0009, 0.0047, 0.044, 0.5737, 0.3761, 0, 0, 0, 0, 0.00010001, 0.00030003, 0.00180018, 0.0210021, 0.407241, 0.569557, 0, 0, 0.0002, 0.003, 0.1393, 0.8575, 0, 0, 0, 0, 0, 0, 0.0003, 0.0188, 0.9804, 0.0005, 0, 0, 0, 0, 0, 0, 0.00150015, 0.931393, 0.0671067, 0, 0, 0, 0.0001, 0.0001, 0.0002, 0.0013, 0.015, 0.3152, 0.6681, 0, 0, 0, 0, 0, 0.00010002, 0.00080016, 0.0111022, 0.280456, 0.707542, 0, 0, 0, 0, 0.0006, 0.8145, 0.1849, 0, 0, 0, 0, 0, 0, 0, 0.0494, 0.9506, 0, 0, 0, 0, 0, 0, 0, 0.001, 0.999, 0, 0, 0, 0, 0, 0, 0.0001, 0.0017, 0.0786, 0.9196, 0, 0, 0, 0, 0, 0, 0.0002, 0.0035, 0.138, 0.8583, 0, 0, 0, 0, 0.00040004, 0.0113011, 0.59736, 0.390939, 0, 0, 0, 0, 0, 0.00010001, 0.00340034, 0.29903, 0.69747, 0, 0, 0, 0, 0, 0, 0.0007, 0.1112, 0.8881, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00940094, 0.959396, 0.0311031, 0, 0, 0, 0, 0, 0, 0.00030003, 0.0253025, 0.974397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULN_LAT_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_LAT_WA;
			NAME = "R_ULN_LAT_WA";
		};
		PARENTS = (R_ULN_ALLDEL_WA);
		DEFINITION =
		{
			NAMESTATES = (MS2_3, MS2_7, MS3_1, MS3_5, MS3_9, MS4_3, MS4_7, MS5_3, MS5_9, MS6_5, MS7_1, MS8_0, MS9_0, MS10_0, MS12_0, MS14_0, MS16_0, MS18_0, INFIN);
			PROBABILITIES = (0.2221, 0.5402, 0.2221, 0.0154, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0378038, 0.239624, 0.443444, 0.239624, 0.0378038, 0.00170017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00170017, 0.0377038, 0.239124, 0.442444, 0.239124, 0.0377038, 0.00220022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0019, 0.0176, 0.0873, 0.2279, 0.3138, 0.2849, 0.0637, 0.0028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0015, 0.0044, 0.0114, 0.0255, 0.0495, 0.1033, 0.2035, 0.24, 0.2035, 0.0989, 0.0529, 0.0049, 0.0003, 0, 0, 0, 0, 0, 0.00030003, 0.00050005, 0.00090009, 0.00160016, 0.00280028, 0.00450045, 0.00890089, 0.019502, 0.0325033, 0.049805, 0.111011, 0.163616, 0.189419, 0.257726, 0.135714, 0.020102, 0.00110011, 0, 0, 0.00020002, 0.00030003, 0.00040004, 0.00060006, 0.00070007, 0.0010001, 0.00160016, 0.00290029, 0.00420042, 0.00590059, 0.0134013, 0.0214021, 0.0330033, 0.0719072, 0.167817, 0.228923, 0.243624, 0.20212, 0, 0.00079992, 0.0009999, 0.00119988, 0.00139986, 0.00159984, 0.00179982, 0.00269973, 0.0039996, 0.00489951, 0.0059994, 0.0111989, 0.0164983, 0.0223978, 0.0450955, 0.10309, 0.166283, 0.251775, 0.358264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULN_DIFSLOW_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_DIFSLOW_E;
			NAME = "R_ULN_DIFSLOW_E";
		};
		PARENTS = (R_DIFFN_ULN_DIFSLOW, R_LNLE_ULN_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0131987, 0.986201, 0.00059994, 0, 0, 0.0181018, 0.981898, 0, 0, 0.0003, 0.0252, 0.9745, 0.0131987, 0.986201, 0.00059994, 0, 0.0001, 0.0952, 0.9047, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.00440044, 0.9956, 0, 0.0181018, 0.981898, 0, 0, 0.0009, 0.588, 0.4111, 0, 0, 0.002, 0.998, 0, 0, 0.0006, 0.9994, 0, 0.0003, 0.0252, 0.9745, 0, 0, 0.00440044, 0.9956, 0, 0, 0.0006, 0.9994, 0, 0, 0.0005, 0.9995);
		};
	};

	node R_ULN_DCV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_DCV_E;
			NAME = "R_ULN_DCV_E";
		};
		PARENTS = (R_ULN_DIFSLOW_E, R_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.109, 0.8903, 0.0007, 0, 0, 0, 0, 0, 0, 0, 0.0039996, 0.114389, 0.862114, 0.0194981, 0, 0, 0, 0, 0, 0, 0.0001, 0.0028, 0.064, 0.9243, 0.0088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0835, 0.1153, 0.2417, 0.3746, 0.1682, 0.0167, 0, 0, 0, 0, 0.00410041, 0.0247025, 0.154615, 0.738974, 0.0776078, 0, 0, 0, 0, 0, 0.0011, 0.0082, 0.0683, 0.7087, 0.2135, 0.0002, 0, 0, 0, 0, 9.999e-05, 0.00079992, 0.0089991, 0.30297, 0.665433, 0.0216978, 0, 0, 0, 0, 0, 0, 0.0006, 0.0547, 0.6199, 0.3247, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00929907, 0.0180982, 0.0545945, 0.227677, 0.393361, 0.277572, 0.0192981, 9.999e-05, 0, 0, 0.0004, 0.0012, 0.0055, 0.0628, 0.295, 0.5485, 0.0861, 0.0005, 0, 0, 0.00020002, 0.00050005, 0.00280028, 0.0389039, 0.230923, 0.582958, 0.142214, 0.00150015, 0, 0, 0, 0.00010001, 0.00060006, 0.0123012, 0.112911, 0.527253, 0.335534, 0.0113011, 0, 0, 0, 0, 9.999e-05, 0.00249975, 0.0359964, 0.324068, 0.571043, 0.0662934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00059994, 0.00119988, 0.00419958, 0.0283972, 0.114889, 0.357564, 0.39636, 0.0963904, 0.00039996, 0, 0, 9.999e-05, 0.00019998, 0.00189981, 0.0106989, 0.0657934, 0.284572, 0.505449, 0.131287, 0, 0, 0, 0.00010001, 0.00120012, 0.00750075, 0.0510051, 0.252425, 0.518552, 0.169217, 0, 0, 0, 0, 0.0005, 0.0034, 0.028, 0.1822, 0.5098, 0.2761, 0, 0, 0, 0, 0.00010001, 0.00120012, 0.0125013, 0.111811, 0.445245, 0.429143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.0002, 0.0011, 0.0056, 0.033, 0.1653, 0.4414, 0.3534, 0);
		};
	};

	node R_ULN_ALLCV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_ALLCV_E;
			NAME = "R_ULN_ALLCV_E";
		};
		PARENTS = (R_ULN_RDLDCV_E, R_ULN_DCV_E);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.3684, 0.6316, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0.00089991, 0.089591, 0.826017, 0.0834917, 0, 0, 0, 0, 0, 0, 0.0005, 0.1011, 0.8478, 0.0506, 0, 0, 0, 0, 0, 0, 0.00050005, 0.0791079, 0.90019, 0.020202, 0, 0, 0, 0, 0, 0, 0.0006, 0.0734, 0.8393, 0.0867, 0, 0, 0, 0, 0, 0, 0.00030003, 0.0947095, 0.894589, 0.010401, 0, 0, 0, 0, 0, 0, 0.002, 0.0932, 0.9048, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0.0077, 0.9808, 0.0115, 0, 0, 0, 0, 0, 0, 0.0005, 0.4476, 0.5519, 0, 0, 0, 0, 0, 0, 0, 0.0239, 0.9751, 0.001, 0, 0, 0, 0, 0, 0, 0.0036, 0.2468, 0.734, 0.0156, 0, 0, 0, 0, 0, 0, 0.005, 0.3134, 0.6811, 0.0005, 0, 0, 0, 0, 0, 0, 0.00710071, 0.549355, 0.443344, 0.00020002, 0, 0, 0, 0, 0, 0, 0.00910091, 0.528353, 0.462546, 0, 0, 0, 0, 0, 0, 0, 0.0216, 0.8359, 0.1425, 0, 0, 0, 0, 0, 0, 0.0004, 0.0355, 0.9641, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0.0047, 0.9951, 0.0002, 0, 0, 0, 0, 0, 0, 0.0004, 0.9005, 0.0991, 0, 0, 0, 0, 0, 0, 0, 0.1288, 0.8712, 0, 0, 0, 0, 0, 0, 0, 0.0113011, 0.571157, 0.417542, 0, 0, 0, 0, 0, 0, 0, 0.0214, 0.9354, 0.0432, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.0564944, 0.932307, 0.0110989, 0, 0, 0, 0, 0, 0, 0.0004, 0.143, 0.8551, 0.0015, 0, 0, 0, 0, 0, 0, 0.0019998, 0.354865, 0.643136, 0, 0, 0, 0, 0, 0, 0.0001, 0.0122, 0.9877, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.997, 0.003, 0, 0, 0, 0, 0, 0, 0, 0.2336, 0.7664, 0, 0, 0, 0, 0, 0, 0, 0.00259974, 0.993401, 0.0039996, 0, 0, 0, 0, 0, 0, 0, 0.2469, 0.7531, 0, 0, 0, 0, 0, 0, 0, 0.002, 0.9939, 0.0041, 0, 0, 0, 0, 0, 0, 0, 0.0314, 0.9686, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.0012, 0.1305, 0.8445, 0.0238, 0, 0, 0, 0, 0, 0.0004, 0.074, 0.8589, 0.0667, 0, 0, 0, 0, 0, 0.00010001, 0.0373037, 0.80288, 0.159716, 0, 0, 0, 0, 0, 0, 0.007, 0.3517, 0.6413, 0, 0, 0, 0, 0, 0, 0.0003, 0.0581, 0.9416, 0, 0, 0, 0, 0, 0, 0, 0.006, 0.994, 0, 0, 0, 0, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0002, 0.0321, 0.9677, 0, 0, 0, 0, 0, 0, 0.0001, 0.0184, 0.9815, 0, 0, 0, 0, 0, 0, 0, 0.010101, 0.989899, 0, 0, 0, 0, 0, 0, 0, 0.0042, 0.9958, 0, 0, 0, 0, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULN_CV_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_CV_E;
			NAME = "R_ULN_CV_E";
		};
		PARENTS = (R_ULN_ALLCV_E);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00389961, 0.0276972, 0.0974903, 0.194781, 0.247875, 0.218378, 0.138986, 0.0706929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.003, 0.01, 0.0587, 0.1638, 0.2511, 0.2403, 0.1583, 0.0769, 0.0289, 0.009, 0, 0, 0, 0, 0, 0, 0, 0.00150015, 0.0194019, 0.150015, 0.192119, 0.236424, 0.19572, 0.117812, 0.0555056, 0.0216022, 0.00720072, 0.00210021, 0.00060006, 0, 0, 0, 0, 0, 0.0001, 0.0071, 0.0718, 0.2193, 0.2934, 0.2297, 0.1165, 0.0443, 0.0134, 0.0034, 0.0008, 0.0002, 0, 0, 0, 0, 0, 0, 0.00110011, 0.0450045, 0.231223, 0.362736, 0.257226, 0.0629063, 0.0311031, 0.00710071, 0.00140014, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0.0169017, 0.236724, 0.413641, 0.235524, 0.0776078, 0.0177018, 0.00130013, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0241024, 0.457346, 0.40054, 0.10241, 0.0140014, 0.00150015, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1031, 0.7506, 0.1328, 0.0124, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_ULN_DIFSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_DIFSLOW_EW;
			NAME = "R_ULN_DIFSLOW_EW";
		};
		PARENTS = (R_DIFFN_ULN_DIFSLOW);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0126, 0.9869, 0.0005, 0, 0, 0.0179, 0.9821, 0, 0, 0.0003, 0.0252, 0.9745);
		};
	};

	node R_ULN_DCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_DCV_EW;
			NAME = "R_ULN_DCV_EW";
		};
		PARENTS = (R_ULN_DIFSLOW_EW, R_ADM_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.109, 0.8903, 0.0007, 0, 0, 0, 0, 0, 0, 0, 0.0039996, 0.114389, 0.862114, 0.0194981, 0, 0, 0, 0, 0, 0, 0.0001, 0.0028, 0.064, 0.9243, 0.0088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0835, 0.1153, 0.2417, 0.3746, 0.1682, 0.0167, 0, 0, 0, 0, 0.00410041, 0.0247025, 0.154615, 0.738974, 0.0776078, 0, 0, 0, 0, 0, 0.0011, 0.0082, 0.0683, 0.7087, 0.2135, 0.0002, 0, 0, 0, 0, 9.999e-05, 0.00079992, 0.0089991, 0.30297, 0.665433, 0.0216978, 0, 0, 0, 0, 0, 0, 0.0006, 0.0547, 0.6199, 0.3247, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00929907, 0.0180982, 0.0545945, 0.227677, 0.393361, 0.277572, 0.0192981, 9.999e-05, 0, 0, 0.0004, 0.0012, 0.0055, 0.0628, 0.295, 0.5485, 0.0861, 0.0005, 0, 0, 0.00020002, 0.00050005, 0.00280028, 0.0389039, 0.230923, 0.582958, 0.142214, 0.00150015, 0, 0, 0, 0.00010001, 0.00060006, 0.0123012, 0.112911, 0.527253, 0.335534, 0.0113011, 0, 0, 0, 0, 9.999e-05, 0.00249975, 0.0359964, 0.324068, 0.571043, 0.0662934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00059994, 0.00119988, 0.00419958, 0.0283972, 0.114889, 0.357564, 0.39636, 0.0963904, 0.00039996, 0, 0, 9.999e-05, 0.00019998, 0.00189981, 0.0106989, 0.0657934, 0.284572, 0.505449, 0.131287, 0, 0, 0, 0.00010001, 0.00120012, 0.00750075, 0.0510051, 0.252425, 0.518552, 0.169217, 0, 0, 0, 0, 0.0005, 0.0034, 0.028, 0.1822, 0.5098, 0.2761, 0, 0, 0, 0, 0.00010001, 0.00120012, 0.0125013, 0.111811, 0.445245, 0.429143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.0002, 0.0011, 0.0056, 0.033, 0.1653, 0.4414, 0.3534, 0);
		};
	};

	node R_ULN_ALLCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_ALLCV_EW;
			NAME = "R_ULN_ALLCV_EW";
		};
		PARENTS = (R_ULN_DCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0558, 0.8486, 0.0956, 0, 0, 0, 0, 0, 0, 0, 0, 0.0369, 0.9631, 0, 0, 0, 0, 0, 0, 0, 0.0008, 0.0087, 0.0873, 0.8226, 0.0806, 0, 0, 0, 0, 0, 0, 0, 0.0005, 0.0994, 0.8508, 0.0493, 0, 0, 0, 0, 0, 0, 0, 0.0005, 0.0781, 0.9017, 0.0197, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0728, 0.8406, 0.086, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0942, 0.8952, 0.0103, 0, 0, 0, 0, 0, 0, 0, 0.002, 0.093, 0.905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999);
		};
	};

	node R_ULN_CV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_CV_EW;
			NAME = "R_ULN_CV_EW";
		};
		PARENTS = (R_ULN_ALLCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00419958, 0.0487951, 0.193681, 0.324968, 0.269673, 0.123188, 0.0353965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0042, 0.0505, 0.1995, 0.3255, 0.2622, 0.1185, 0.0332, 0.0063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00079992, 0.0207979, 0.138786, 0.316868, 0.311469, 0.156384, 0.0452955, 0.00839916, 0.00109989, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00739926, 0.134087, 0.19748, 0.275472, 0.219078, 0.111589, 0.040396, 0.0111989, 0.00249975, 0.00049995, 9.999e-05, 0, 0, 0, 0, 0, 0, 0.002, 0.0467, 0.2191, 0.3382, 0.2525, 0.105, 0.0294, 0.006, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0261, 0.2225, 0.4086, 0.2726, 0.0468, 0.0197, 0.0031, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0095, 0.2235, 0.4483, 0.2397, 0.0663, 0.0119, 0.0006, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0149, 0.4662, 0.4182, 0.0903, 0.0095, 0.0008, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.090209, 0.774177, 0.124912, 0.010001, 0.00070007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_ULN_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ULN_BLOCK;
			NAME = "R_DIFFN_ULN_BLOCK";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_LNLW_ULN_BLOCK_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ULN_BLOCK_WA;
			NAME = "R_DIFFN_LNLW_ULN_BLOCK_WA";
		};
		PARENTS = (R_LNLW_ULN_BLOCK, R_DIFFN_ULN_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_ULN_BLOCK_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_BLOCK_WA;
			NAME = "R_ULN_BLOCK_WA";
		};
		PARENTS = (R_DIFFN_LNLW_ULN_BLOCK_WA, R_OTHER_ULN_BLOCK_WA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_ADM_MULOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MULOSS;
			NAME = "R_ADM_MULOSS";
		};
		PARENTS = (R_ADM_MALOSS, R_ULN_BLOCK_WA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.9746, 0.0054, 0, 0, 0, 0.02, 0.0664, 0.9136, 0, 0, 0, 0.02, 0.016, 0.1801, 0.7138, 0.0701, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0167, 0.9613, 0.002, 0, 0, 0.02, 0.00340034, 0.952995, 0.0236024, 0, 0, 0.020002, 0.0002, 0.2725, 0.7073, 0, 0, 0.02, 0.0009, 0.0263, 0.4192, 0.5336, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00019998, 0.0534947, 0.923708, 0.00259974, 0, 0.019998, 0, 0.0234023, 0.945095, 0.0115012, 0, 0.020002, 0, 0.0048, 0.7523, 0.2229, 0, 0.02, 0, 0.00130013, 0.0637064, 0.914991, 0, 0.020002, 0, 0, 0, 0, 0.98, 0.02, 0, 0.00030003, 0.0481048, 0.931593, 0, 0.020002, 0, 0.00010001, 0.0270027, 0.952895, 0, 0.020002, 0, 0, 0.0091, 0.9709, 0, 0.02, 0, 0.0001, 0.0087, 0.9712, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.1427, 0.2958, 0.4254, 0.1161, 0, 0.02, 0.1157, 0.2677, 0.4444, 0.1522, 0, 0.02, 0.0693931, 0.20108, 0.452655, 0.256874, 0, 0.019998, 0.0173, 0.0696, 0.2854, 0.6077, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node R_ADM_MVA_RECRUIT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MVA_RECRUIT;
			NAME = "R_ADM_MVA_RECRUIT";
		};
		PARENTS = (R_ADM_VOL_ACT, R_ADM_MULOSS);
		DEFINITION =
		{
			NAMESTATES = (FULL, REDUCED, DISCRETE, NO_UNITS);
			PROBABILITIES = (0.9295, 0.0705, 0, 0, 0.4821, 0.5165, 0.0014, 0, 0.0661, 0.7993, 0.1346, 0, 0.00149985, 0.136586, 0.861914, 0, 0, 0, 0, 1, 0.263974, 0.434357, 0.30167, 0, 0.1707, 0.7, 0.1293, 0, 0.0366, 0.5168, 0.4466, 0, 0.0043, 0.1788, 0.8169, 0, 0.00029997, 0.0347965, 0.964904, 0, 0, 0, 0, 1, 0.1146, 0.3465, 0.5389, 0, 0.0038, 0.174, 0.8222, 0, 0.0005, 0.0594, 0.9401, 0, 0.0001, 0.0205, 0.9794, 0, 0, 0.0061, 0.9939, 0, 0, 0, 0, 1, 0.036, 0.2144, 0.7496, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_ULN_BLOCK_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_BLOCK_EW;
			NAME = "R_ULN_BLOCK_EW";
		};
		PARENTS = (R_DIFFN_ULN_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0007, 0.0223, 0.977, 0, 0, 0.0019, 0.006, 0.0587, 0.9334, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULN_AMPR_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_AMPR_EW;
			NAME = "R_ULN_AMPR_EW";
		};
		PARENTS = (R_ULN_BLOCK_EW);
		DEFINITION =
		{
			NAMESTATES = (R_1_1, R1_0, R0_9, R0_8, R0_7, R0_6, R0_5, R0_4, R0_3, R0_2, R0_1, R0_0);
			PROBABILITIES = (0.0289, 0.2833, 0.517, 0.1684, 0.0024, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0135, 0.1503, 0.5078, 0.3123, 0.0157, 0, 0, 0, 0, 0, 0, 0, 0.0005001, 0.0040008, 0.0246049, 0.127425, 0.340068, 0.40008, 0.10172, 0.00160032, 0, 0, 0, 0.00079992, 0.00139986, 0.00219978, 0.00419958, 0.00819918, 0.0154985, 0.0311969, 0.0707929, 0.158584, 0.339266, 0.367863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ULN_BLOCK_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_BLOCK_E;
			NAME = "R_ULN_BLOCK_E";
		};
		PARENTS = (R_LNLE_ULN_BLOCK, R_DIFFN_ULN_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_ULN_AMPR_E
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_AMPR_E;
			NAME = "R_ULN_AMPR_E";
		};
		PARENTS = (R_ULN_BLOCK_E);
		DEFINITION =
		{
			NAMESTATES = (R_1_1, R1_0, R0_9, R0_8, R0_7, R0_6, R0_5, R0_4, R0_3, R0_2, R0_1, R0_0);
			PROBABILITIES = (0.09979, 0.561544, 0.320368, 0.0182982, 0, 0, 0, 0, 0, 0, 0, 0, 0.00150015, 0.0426043, 0.317132, 0.543454, 0.0946095, 0.00070007, 0, 0, 0, 0, 0, 0, 0.0001, 0.0013, 0.0088, 0.0471, 0.1949, 0.3924, 0.3113, 0.0438, 0.0003, 0, 0, 0, 0.001, 0.0018, 0.0028, 0.0052, 0.0101, 0.0186, 0.0365, 0.0797, 0.171, 0.3425, 0.3308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node DIFFN_DUMMY_2
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DIFFN_DUMMY_2;
			NAME = "DIFFN_DUMMY_2";
		};
		PARENTS = (DIFFN_TIME, DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (dummy, State1);
			PROBABILITIES = (0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5);
		};
	};

	node R_DIFFN_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_APB_MALOSS;
			NAME = "R_DIFFN_APB_MALOSS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 0, 0, 0, 0.4, 0.6, 0, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_DIFFN_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ADM_DENERV;
			NAME = "R_DIFFN_ADM_DENERV";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node R_DIFFN_LNLW_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ADM_DENERV;
			NAME = "R_DIFFN_LNLW_ADM_DENERV";
		};
		PARENTS = (R_LNLW_ADM_DENERV, R_DIFFN_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNL_DIFFN_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_ADM_DENERV;
			NAME = "R_LNL_DIFFN_ADM_DENERV";
		};
		PARENTS = (R_DIFFN_LNLW_ADM_DENERV, R_LNLC8_LP_E_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_ADM_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_DENERV;
			NAME = "R_ADM_DENERV";
		};
		PARENTS = (R_LNL_DIFFN_ADM_DENERV, R_MUSCLE_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_ADM_SPONT_INS_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_SPONT_INS_ACT;
			NAME = "R_ADM_SPONT_INS_ACT";
		};
		PARENTS = (R_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.98, 0.02, 0.1, 0.9, 0.05, 0.95, 0.05, 0.95);
		};
	};

	node R_ADM_SPONT_HF_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_SPONT_HF_DISCH;
			NAME = "R_ADM_SPONT_HF_DISCH";
		};
		PARENTS = (R_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.99, 0.01, 0.97, 0.03, 0.95, 0.05, 0.93, 0.07);
		};
	};

	node R_ADM_SPONT_DENERV_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_SPONT_DENERV_ACT;
			NAME = "R_ADM_SPONT_DENERV_ACT";
		};
		PARENTS = (R_ADM_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, SOME, MOD, ABUNDANT);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0.07, 0.85, 0.08, 0, 0.01, 0.07, 0.85, 0.07, 0, 0.01, 0.07, 0.92);
		};
	};

	node R_DIFFN_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ADM_MUDENS;
			NAME = "R_DIFFN_ADM_MUDENS";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node R_DIFFN_LNLW_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ADM_MUDENS;
			NAME = "R_DIFFN_LNLW_ADM_MUDENS";
		};
		PARENTS = (R_LNLW_ADM_MUDENS, R_DIFFN_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_LNL_DIFFN_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_ADM_MUDENS;
			NAME = "R_LNL_DIFFN_ADM_MUDENS";
		};
		PARENTS = (R_DIFFN_LNLW_ADM_MUDENS, R_LNLC8_LP_E_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_ADM_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MUDENS;
			NAME = "R_ADM_MUDENS";
		};
		PARENTS = (R_MUSCLE_ADM_MUDENS, R_LNL_DIFFN_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_ADM_SF_DENSITY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_SF_DENSITY;
			NAME = "R_ADM_SF_DENSITY";
		};
		PARENTS = (R_ADM_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (x_2SD, x2_4SD, x_4SD);
			PROBABILITIES = (0.97, 0.03, 0, 0.05, 0.9, 0.05, 0.01, 0.04, 0.95);
		};
	};

	node R_DIFFN_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ADM_MUSIZE;
			NAME = "R_DIFFN_ADM_MUSIZE";
		};
		PARENTS = (DIFFN_PATHO, DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.7, 0.2, 0.1, 0, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.7, 0.2, 0.1, 0, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_LNLW_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ADM_MUSIZE;
			NAME = "R_DIFFN_LNLW_ADM_MUSIZE";
		};
		PARENTS = (R_DIFFN_ADM_MUSIZE, R_LNLW_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.9981, 0.0019, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_LNL_DIFFN_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_ADM_MUSIZE;
			NAME = "R_LNL_DIFFN_ADM_MUSIZE";
		};
		PARENTS = (R_LNLC8_LP_E_ADM_MUSIZE, R_DIFFN_LNLW_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.9981, 0.0019, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ADM_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MUSIZE;
			NAME = "R_ADM_MUSIZE";
		};
		PARENTS = (R_LNL_DIFFN_ADM_MUSIZE, R_MUSCLE_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9791, 0.0009, 0, 0, 0, 0, 0.02, 0.9637, 0.0163, 0, 0, 0, 0, 0.02, 0.922192, 0.0578058, 0, 0, 0, 0, 0.020002, 0.39794, 0.566357, 0.0155016, 0.00020002, 0, 0, 0.020002, 0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02, 0.00120012, 0.231723, 0.588259, 0.147415, 0.0112011, 0.00020002, 0.020002, 0.9637, 0.0163, 0, 0, 0, 0, 0.02, 0.7493, 0.2257, 0.0049, 0.0001, 0, 0, 0.02, 0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02, 0.00389961, 0.381062, 0.506549, 0.0840916, 0.00429957, 9.999e-05, 0.019998, 0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02, 0, 0.00110011, 0.135714, 0.40254, 0.363136, 0.0775077, 0.020002, 0.922192, 0.0578058, 0, 0, 0, 0, 0.020002, 0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0908091, 0.818582, 0.0706071, 0, 0.020002, 0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02, 0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02, 0.39794, 0.566357, 0.0155016, 0.00020002, 0, 0, 0.020002, 0.00389961, 0.381062, 0.506549, 0.0840916, 0.00429957, 9.999e-05, 0.019998, 0, 0, 0.0908091, 0.818582, 0.0706071, 0, 0.020002, 0, 0, 0.00359964, 0.165483, 0.645435, 0.165483, 0.019998, 0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02, 0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02, 0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02, 0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0, 0, 0, 0, 0.0011, 0.9789, 0.02, 0.00120012, 0.231723, 0.588259, 0.147415, 0.0112011, 0.00020002, 0.020002, 0, 0.00110011, 0.135714, 0.40254, 0.363136, 0.0775077, 0.020002, 0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0, 0, 0, 0, 0.0011, 0.9789, 0.02, 0, 0, 0, 0, 0.0001, 0.9799, 0.02);
		};
	};

	node R_ADM_MUSCLE_VOL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MUSCLE_VOL;
			NAME = "R_ADM_MUSCLE_VOL";
		};
		PARENTS = (R_ADM_MALOSS, R_ADM_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (ATROPHIC, NORMAL);
			PROBABILITIES = (0.9896, 0.0104, 0.8137, 0.1863, 0.0209, 0.9791, 0.009, 0.991, 0.003, 0.997, 0.0004, 0.9996, 0.4212, 0.5788, 0.9976, 0.0024, 0.9603, 0.0397, 0.5185, 0.4815, 0.1087, 0.8913, 0.0278, 0.9722, 0.0046, 0.9954, 0.5185, 0.4815, 0.999, 0.001, 0.9893, 0.0107, 0.9588, 0.0412, 0.6377, 0.3623, 0.2716, 0.7284, 0.0779, 0.9221, 0.6336, 0.3664, 0.9995, 0.0005, 0.9969, 0.0031, 0.9953, 0.0047, 0.9518, 0.0482, 0.8234, 0.1766, 0.5986, 0.4014, 0.7685, 0.2315, 0.9989, 0.0011, 0.9984, 0.0016, 0.9984, 0.0016, 0.9975, 0.0025, 0.9965, 0.0035, 0.9956, 0.0044, 0.9857, 0.0143, 0.9363, 0.0637, 0.8403, 0.1597, 0.6534, 0.3466, 0.4689, 0.5311, 0.3174, 0.6826, 0.1948, 0.8052, 0.5681, 0.4319);
		};
	};

	node R_ADM_EFFMUS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_EFFMUS;
			NAME = "R_ADM_EFFMUS";
		};
		PARENTS = (R_ADM_MUSIZE, R_ADM_NMT);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9683, 0.0117, 0, 0, 0, 0, 0.02, 0.9794, 0.0006, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.9742, 0.0058, 0, 0, 0, 0, 0.02, 0.9789, 0.0011, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.7927, 0.1721, 0.0135, 0.0016, 0.0001, 0, 0.02, 0.0164, 0.9421, 0.0215, 0, 0, 0, 0.02, 0.8182, 0.1616, 0.0002, 0, 0, 0, 0.02, 0.9738, 0.0062, 0, 0, 0, 0, 0.02, 0.0329, 0.9359, 0.0112, 0, 0, 0, 0.02, 0.3885, 0.59, 0.0015, 0, 0, 0, 0.02, 0.9362, 0.0438, 0, 0, 0, 0, 0.02, 0.492951, 0.370363, 0.0905909, 0.0216978, 0.00389961, 0.00049995, 0.019998, 0, 0, 0.973697, 0.00630063, 0, 0, 0.020002, 0.00070007, 0.940394, 0.0389039, 0, 0, 0, 0.020002, 0.7833, 0.1966, 0.0001, 0, 0, 0, 0.02, 0, 9.999e-05, 0.978302, 0.00159984, 0, 0, 0.019998, 0, 0.3781, 0.6016, 0.0003, 0, 0, 0.02, 0.0114988, 0.965303, 0.00319968, 0, 0, 0, 0.019998, 0.150515, 0.39774, 0.271527, 0.117212, 0.0361036, 0.00690069, 0.020002, 0, 0, 0.0082, 0.9646, 0.0072, 0, 0.02, 0, 0.0571, 0.8829, 0.04, 0, 0, 0.02, 0.0541, 0.9055, 0.0203, 0.0001, 0, 0, 0.02, 0, 0, 0.0326033, 0.945695, 0.00170017, 0, 0.020002, 0, 0, 0.7931, 0.1868, 0.0001, 0, 0.02, 0, 0.439, 0.5362, 0.0048, 0, 0, 0.02, 0.0391, 0.2318, 0.3318, 0.2294, 0.1131, 0.0348, 0.02, 0, 0, 0, 0.0072, 0.9656, 0.0072, 0.02, 0, 0.0001, 0.3198, 0.6276, 0.0325, 0, 0.02, 0.0004, 0.4664, 0.4912, 0.0219, 0.0001, 0, 0.02, 0, 0, 0, 0.0287, 0.9496, 0.0017, 0.02, 0, 0, 0.0071, 0.7665, 0.2063, 0.0001, 0.02, 0, 0.00150015, 0.70187, 0.273827, 0.00280028, 0, 0.020002, 0.0065, 0.0866, 0.2598, 0.2877, 0.2273, 0.1121, 0.02, 0, 0, 0, 0, 0.0072, 0.9728, 0.02, 0, 0, 0.0034, 0.2908, 0.6521, 0.0337, 0.02, 0, 0.0126975, 0.626375, 0.324235, 0.0165967, 9.998e-05, 0.019996, 0, 0, 0, 0, 0.0287, 0.9513, 0.02, 0, 0, 0, 0.0062, 0.7673, 0.2065, 0.02, 0, 0, 0.0383962, 0.649135, 0.289471, 0.0029997, 0.019998, 0.00079984, 0.0223955, 0.140872, 0.24985, 0.316237, 0.24985, 0.019996, 0.1111, 0.2284, 0.2388, 0.1875, 0.1354, 0.0788, 0.02, 0.242676, 0.30487, 0.206879, 0.124588, 0.069493, 0.0314968, 0.019998, 0.4236, 0.3196, 0.1381, 0.0628, 0.0267, 0.0092, 0.02, 0.1227, 0.2392, 0.2382, 0.1813, 0.127, 0.0716, 0.02, 0.177682, 0.277672, 0.227477, 0.153485, 0.0955904, 0.0480952, 0.019998, 0.2958, 0.3186, 0.1878, 0.1033, 0.0527, 0.0218, 0.02, 0.219722, 0.264926, 0.20142, 0.140614, 0.0964096, 0.0569057, 0.020002);
		};
	};

	node R_ADM_QUAN_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_QUAN_MUPPOLY;
			NAME = "R_ADM_QUAN_MUPPOLY";
		};
		PARENTS = (R_ADM_EFFMUS, R_ADM_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (x_12_, x12_24_, x_24_);
			PROBABILITIES = (0.109, 0.548, 0.343, 0.004, 0.122, 0.874, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.925, 0.075, 0, 0.091, 0.526, 0.383, 0.796, 0.201, 0.003, 0.061, 0.465, 0.474, 0.637, 0.348, 0.015, 0.039, 0.396, 0.565, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724);
		};
	};

	node R_ADM_QUAL_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_QUAL_MUPPOLY;
			NAME = "R_ADM_QUAL_MUPPOLY";
		};
		PARENTS = (R_ADM_QUAN_MUPPOLY);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.95, 0.05, 0.3, 0.7, 0.05, 0.95);
		};
	};

	node R_ADM_ALLAMP_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_ALLAMP_WA;
			NAME = "R_ADM_ALLAMP_WA";
		};
		PARENTS = (R_ADM_MULOSS, R_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00, A2_00, A4_00, A8_00);
			PROBABILITIES = (0.00260026, 0.368737, 0.607561, 0.0208021, 0.00030003, 0, 0, 0, 0, 0, 0.0002, 0.4149, 0.4809, 0.0802, 0.0218, 0.002, 0, 0, 0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0, 0, 0, 0, 0.0018, 0.0536, 0.8696, 0.075, 0, 0, 0, 0, 0, 0, 0, 0.0736, 0.8528, 0.0736, 0, 0, 0, 0, 0, 0, 0.0001, 0.0794, 0.9205, 0.0003, 0.006, 0.105, 0.205, 0.1633, 0.141, 0.1771, 0.1279, 0.0744, 0.0409, 0.8924, 0.0661, 0.0006, 0, 0, 0, 0, 0, 0, 0.01, 0.77, 0.2049, 0.0128, 0.0022, 0.0001, 0, 0, 0, 0, 0, 0.2489, 0.7398, 0.0113, 0, 0, 0, 0, 0, 0, 0.00420042, 0.346835, 0.534854, 0.113711, 0.00040004, 0, 0, 0, 0, 0, 0.0064, 0.0855, 0.788, 0.1197, 0.0004, 0, 0, 0, 0, 0, 0.00029997, 0.116488, 0.766723, 0.116488, 0.00190019, 0.0230023, 0.190019, 0.262326, 0.162916, 0.124412, 0.126413, 0.0740074, 0.0350035, 0.2926, 0.7043, 0.0031, 0, 0, 0, 0, 0, 0, 0.0091, 0.4203, 0.5312, 0.038, 0.0012, 0.0002, 0, 0, 0, 0, 0, 0.309469, 0.680732, 0.00949905, 0.00029997, 0, 0, 0, 0, 0, 0.018, 0.6298, 0.2744, 0.0746, 0.0032, 0, 0, 0, 0, 0.00010001, 0.10461, 0.428143, 0.356836, 0.107111, 0.00320032, 0, 0, 0, 0, 0.00250025, 0.0978098, 0.249825, 0.532353, 0.114111, 0.00340034, 0.0144014, 0.0993099, 0.30283, 0.270227, 0.124312, 0.0821082, 0.0652065, 0.030203, 0.0114011, 0.781, 0.2189, 0.0001, 0, 0, 0, 0, 0, 0, 0.266927, 0.716172, 0.0166017, 0.00030003, 0, 0, 0, 0, 0, 9.999e-05, 0.10279, 0.879212, 0.0177982, 9.999e-05, 0, 0, 0, 0, 0, 0.00440044, 0.811181, 0.176218, 0.00730073, 0.00090009, 0, 0, 0, 0, 9.999e-05, 0.412959, 0.49655, 0.0718928, 0.0172983, 0.00119988, 0, 0, 0, 0, 0.0781078, 0.519652, 0.261026, 0.116712, 0.0234023, 0.00110011, 0, 0.1169, 0.3697, 0.2867, 0.1411, 0.0431, 0.0234, 0.0133, 0.0045, 0.0013, 0.9907, 0.0093, 0, 0, 0, 0, 0, 0, 0, 0.9858, 0.0142, 0, 0, 0, 0, 0, 0, 0, 0.9865, 0.0135, 0, 0, 0, 0, 0, 0, 0, 0.982, 0.018, 0, 0, 0, 0, 0, 0, 0, 0.9779, 0.0221, 0, 0, 0, 0, 0, 0, 0, 0.973, 0.027, 0, 0, 0, 0, 0, 0, 0, 0.937006, 0.0628937, 9.999e-05, 0, 0, 0, 0, 0, 0, 0.359564, 0.514749, 0.0940906, 0.0239976, 0.00459954, 0.0019998, 0.00079992, 0.00019998, 0, 0.133587, 0.385461, 0.269773, 0.130787, 0.040096, 0.0218978, 0.0126987, 0.00439956, 0.00129987, 0.0096, 0.0788, 0.2992, 0.2816, 0.1319, 0.0873, 0.0689, 0.0313, 0.0114, 0.00260052, 0.0289058, 0.204041, 0.265753, 0.159432, 0.119924, 0.119024, 0.0684137, 0.0319064, 0.00049995, 0.00839916, 0.118188, 0.213879, 0.162984, 0.138186, 0.169083, 0.119888, 0.0688931, 0.0001, 0.0021, 0.0586, 0.1473, 0.1427, 0.1363, 0.2057, 0.1798, 0.1274, 0.0521052, 0.160816, 0.227223, 0.20132, 0.106611, 0.0792079, 0.0831083, 0.0559056, 0.0337034);
		};
	};

	node R_ADM_FORCE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_FORCE;
			NAME = "R_ADM_FORCE";
		};
		PARENTS = (R_ADM_ALLAMP_WA, R_ADM_VOL_ACT);
		DEFINITION =
		{
			NAMESTATES = (x5, x4, x3, x2, x1, x0);
			PROBABILITIES = (0, 0, 0, 0.00409959, 0.190781, 0.80512, 0, 0, 0, 0.001, 0.0578, 0.9412, 0, 0, 0, 9.999e-05, 0.0125987, 0.987301, 0, 0, 0, 0, 0.00590059, 0.994099, 9.999e-05, 0.00429957, 0.0521948, 0.266873, 0.433057, 0.243476, 0, 0.0005, 0.0084, 0.0849, 0.3219, 0.5843, 0, 0, 0.0007, 0.0167, 0.1576, 0.825, 0, 0, 0, 0.00260026, 0.0586059, 0.938794, 0.0149015, 0.235424, 0.533153, 0.20152, 0.0149015, 0.00010001, 0.0009, 0.0256, 0.18, 0.4308, 0.3036, 0.0591, 0, 0.0005, 0.0128, 0.1328, 0.4061, 0.4478, 0, 0, 0.0003, 0.0091, 0.1181, 0.8725, 0.1538, 0.6493, 0.1936, 0.0033, 0, 0, 0.0098, 0.1589, 0.4714, 0.3101, 0.0485, 0.0013, 0.0001, 0.0049, 0.0751, 0.3632, 0.429, 0.1277, 0, 0, 0.0008, 0.0215, 0.1873, 0.7904, 0.6667, 0.3291, 0.0042, 0, 0, 0, 0.0537054, 0.420442, 0.454845, 0.0690069, 0.0020002, 0, 0.00050005, 0.0273027, 0.243324, 0.50135, 0.211821, 0.0157016, 0, 9.999e-05, 0.00249975, 0.0471953, 0.275572, 0.674633, 0.946895, 0.0531053, 0, 0, 0, 0, 0.117312, 0.565857, 0.30103, 0.0157016, 0.00010001, 0, 0.00120012, 0.060206, 0.386239, 0.454245, 0.0954095, 0.00270027, 0, 0.0001, 0.0044, 0.0713, 0.3326, 0.5916, 0.9782, 0.0218, 0, 0, 0, 0, 0.410159, 0.479352, 0.106989, 0.00349965, 0, 0, 0.0256026, 0.247025, 0.483848, 0.217422, 0.0256026, 0.00050005, 0, 0.0020002, 0.0279028, 0.181218, 0.411241, 0.377638, 0.9971, 0.0029, 0, 0, 0, 0, 0.7017, 0.2755, 0.0226, 0.0002, 0, 0, 0.1171, 0.4443, 0.3699, 0.0654, 0.0033, 0, 0.0004, 0.0107, 0.0847, 0.3035, 0.3988, 0.2019, 0.9996, 0.0004, 0, 0, 0, 0, 0.8804, 0.1161, 0.0035, 0, 0, 0, 0.327067, 0.487951, 0.172683, 0.0119988, 0.00029997, 0, 0.0030003, 0.0426043, 0.194819, 0.384938, 0.292929, 0.0817082);
		};
	};

	node R_ADM_REPSTIM_CMAPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_REPSTIM_CMAPAMP;
			NAME = "R_ADM_REPSTIM_CMAPAMP";
		};
		PARENTS = (R_ADM_ALLAMP_WA);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_032, MV_044, MV_063, MV_088, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00029988, 0.0961615, 0.113355, 0.12485, 0.128349, 0.123151, 0.110256, 0.0922631, 0.0720712, 0.052579, 0.0357857, 0.0226909, 0.0134946, 0.007497, 0.00389844, 0.00189924, 0.00079968, 0.00039984, 9.996e-05, 9.996e-05, 0, 0, 0, 9.998e-05, 0.00039992, 0.00169966, 0.0064987, 0.0195961, 0.0473905, 0.0922815, 0.144171, 0.180964, 0.182464, 0.14777, 0.0959808, 0.05019, 0.0209958, 0.00709858, 0.00189962, 0.00039992, 9.998e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00040004, 0.00330033, 0.0169017, 0.059506, 0.140714, 0.225923, 0.245225, 0.180118, 0.089709, 0.030103, 0.00690069, 0.00110011, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0005, 0.0088, 0.0684, 0.236, 0.3599, 0.2433, 0.0728, 0.0097, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0042, 0.1369, 0.5589, 0.2821, 0.0178, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0028, 0.0211, 0.0937, 0.2387, 0.3496, 0.2939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.00749925, 0.0582942, 0.259974, 0.673633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00810081, 0.110311, 0.881288);
		};
	};

	node R_ULN_AMP_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ULN_AMP_WA;
			NAME = "R_ULN_AMP_WA";
		};
		PARENTS = (R_ADM_ALLAMP_WA);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.271927, 0.233623, 0.182718, 0.129813, 0.0840084, 0.0494049, 0.0264026, 0.0129013, 0.00570057, 0.00230023, 0.00080008, 0.00030003, 0.00010001, 0, 0, 0, 0, 0.0006, 0.0045, 0.0217, 0.071, 0.1571, 0.2357, 0.2391, 0.1642, 0.0762, 0.024, 0.0051, 0.0007, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00130013, 0.0182018, 0.109311, 0.293129, 0.347835, 0.182918, 0.0427043, 0.00440044, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0016, 0.036, 0.2338, 0.4425, 0.2448, 0.0394, 0.0019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0042, 0.1369, 0.5589, 0.2821, 0.0178, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00640064, 0.0573057, 0.227523, 0.39934, 0.309131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0010001, 0.0213021, 0.192819, 0.784878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.001, 0.0446, 0.9544);
		};
	};

	node R_ADM_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MUPDUR;
			NAME = "R_ADM_MUPDUR";
		};
		PARENTS = (R_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9388, 0.0412, 0, 0, 0, 0, 0.02, 0.0396, 0.9008, 0.0396, 0, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0396, 0.9008, 0.0396, 0, 0.02, 0, 0, 0, 0.0412, 0.938, 0.0008, 0.02, 0, 0, 0, 0.0039, 0.2546, 0.7215, 0.02, 0.09, 0.235, 0.3236, 0.235, 0.09, 0.0064, 0.02);
		};
	};

	node R_ADM_QUAL_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_QUAL_MUPDUR;
			NAME = "R_ADM_QUAL_MUPDUR";
		};
		PARENTS = (R_ADM_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (SMALL, NORMAL, INCR);
			PROBABILITIES = (0.8309, 0.1677, 0.0014, 0.49, 0.49, 0.02, 0.1065, 0.787, 0.1065, 0.02, 0.49, 0.49, 0.0014, 0.1677, 0.8309, 0.0001, 0.0392, 0.9607, 0.2597, 0.4806, 0.2597);
		};
	};

	node R_ADM_QUAN_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_QUAN_MUPDUR;
			NAME = "R_ADM_QUAN_MUPDUR";
		};
		PARENTS = (R_ADM_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (MS3, MS4, MS5, MS6, MS7, MS8, MS9, MS10, MS11, MS12, MS13, MS14, MS15, MS16, MS17, MS18, MS19, MS20, MS_20);
			PROBABILITIES = (0.09982, 0.183337, 0.240248, 0.224545, 0.14973, 0.0712142, 0.0242048, 0.00580116, 0.0010002, 0.00010002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.010201, 0.0369037, 0.0951095, 0.174717, 0.228923, 0.214021, 0.142614, 0.0678068, 0.0230023, 0.00560056, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0025, 0.0177, 0.0739, 0.1852, 0.2785, 0.2515, 0.1363, 0.0444, 0.0087, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00039996, 0.00179982, 0.0069993, 0.0218978, 0.0540946, 0.105189, 0.161284, 0.194981, 0.185981, 0.139886, 0.0828917, 0.0387961, 0.00569943, 0.0201, 0.0341, 0.0529, 0.0748, 0.0966, 0.1138, 0.1224, 0.1202, 0.1078, 0.0882, 0.0658, 0.0449, 0.0279, 0.0159, 0.0082, 0.0039, 0.0017, 0.0007, 0.0001);
		};
	};

	node R_ADM_MVA_AMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MVA_AMP;
			NAME = "R_ADM_MVA_AMP";
		};
		PARENTS = (R_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (INCR, NORMAL, REDUCED);
			PROBABILITIES = (0, 0.04, 0.96, 0.01, 0.15, 0.84, 0.05, 0.9, 0.05, 0.5, 0.49, 0.01, 0.85, 0.15, 0, 0.96, 0.04, 0, 0.33, 0.34, 0.33);
		};
	};

	node R_ADM_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_MUPAMP;
			NAME = "R_ADM_MUPAMP";
		};
		PARENTS = (R_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.782, 0.195, 0.003, 0, 0, 0, 0.02, 0.10431, 0.771077, 0.10431, 0.00030003, 0, 0, 0.020002, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0.00029997, 0.10109, 0.747125, 0.131487, 0, 0.019998, 0, 0, 0.0024, 0.1528, 0.7968, 0.028, 0.02, 0, 0, 0, 0.0028, 0.0968, 0.8804, 0.02, 0.1328, 0.1932, 0.2189, 0.1932, 0.1726, 0.0693, 0.02);
		};
	};

	node R_ADM_QUAN_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_QUAN_MUPAMP;
			NAME = "R_ADM_QUAN_MUPAMP";
		};
		PARENTS = (R_ADM_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (UV34, UV44, UV58, UV74, UV94, UV122, UV156, UV200, UV260, UV330, UV420, UV540, UV700, UV900, UV1150, UV1480, UV1900, UV2440, UV3130, UV4020);
			PROBABILITIES = (0.00080024, 0.00370111, 0.013504, 0.0381114, 0.0835251, 0.142543, 0.189557, 0.196359, 0.158348, 0.0994298, 0.0486146, 0.0185056, 0.00550165, 0.00130039, 0.00020006, 0, 0, 0, 0, 0, 0, 0.00010002, 0.00080016, 0.00370074, 0.0135027, 0.0381076, 0.0835167, 0.142529, 0.189538, 0.196339, 0.158332, 0.0994199, 0.0486097, 0.0185037, 0.0055011, 0.00130026, 0.00020004, 0, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.00370037, 0.0187019, 0.0639064, 0.147515, 0.230223, 0.243124, 0.173717, 0.0840084, 0.0275027, 0.00610061, 0.00090009, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0037, 0.0135, 0.0381, 0.0835, 0.1426, 0.1896, 0.1963, 0.1583, 0.0995, 0.0487, 0.0185, 0.0055, 0.0013, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0038, 0.0136, 0.0383, 0.0841, 0.1435, 0.1909, 0.1977, 0.1594, 0.1001, 0.049, 0.0187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0006, 0.0024, 0.0082, 0.0232, 0.0542, 0.1041, 0.1645, 0.2137, 0.2283, 0.2007, 0.0045, 0.0078, 0.0127, 0.0197, 0.0289, 0.0403, 0.0531, 0.0664, 0.0787, 0.0883, 0.0939, 0.0946, 0.0903, 0.0817, 0.07, 0.0569, 0.0438, 0.0319, 0.0221, 0.0144);
		};
	};

	node R_ADM_QUAL_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_QUAL_MUPAMP;
			NAME = "R_ADM_QUAL_MUPAMP";
		};
		PARENTS = (R_ADM_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (V_RED, REDUCED, NORMAL, INCR, V_INCR);
			PROBABILITIES = (0.4289, 0.5209, 0.0499, 0.0003, 0, 0.0647, 0.5494, 0.3679, 0.018, 0, 0, 0.0479048, 0.875388, 0.0767077, 0, 0, 0.00869913, 0.283772, 0.677932, 0.029597, 0, 0.0002, 0.0376, 0.6283, 0.3339, 0, 0, 0.001, 0.0788, 0.9202, 0.096, 0.1884, 0.283, 0.3014, 0.1312);
		};
	};

	node R_ADM_TA_CONCL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_TA_CONCL;
			NAME = "R_ADM_TA_CONCL";
		};
		PARENTS = (R_ADM_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (x_5ABOVE, x2_5ABOVE, NORMAL, x2_5BELOW, x_5BELOW);
			PROBABILITIES = (0, 0, 0.005, 0.045, 0.95, 0, 0, 0.05, 0.9, 0.05, 0, 0.03, 0.94, 0.03, 0, 0.195, 0.6, 0.2, 0.005, 0, 0.48, 0.5, 0.02, 0, 0, 0.8, 0.195, 0.005, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2);
		};
	};

	node R_DIFFN_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_ADM_NEUR_ACT;
			NAME = "R_DIFFN_ADM_NEUR_ACT";
		};
		PARENTS = (DIFFN_TIME, DIFFN_M_SEV_DIST);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_LNLW_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_ADM_NEUR_ACT;
			NAME = "R_DIFFN_LNLW_ADM_NEUR_ACT";
		};
		PARENTS = (R_LNLW_ADM_NEUR_ACT, R_DIFFN_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_LNL_DIFFN_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_ADM_NEUR_ACT;
			NAME = "R_LNL_DIFFN_ADM_NEUR_ACT";
		};
		PARENTS = (R_DIFFN_LNLW_ADM_NEUR_ACT, R_LNLC8_LP_E_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ADM_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_NEUR_ACT;
			NAME = "R_ADM_NEUR_ACT";
		};
		PARENTS = (R_OTHER_ADM_NEUR_ACT, R_LNL_DIFFN_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_ADM_SPONT_NEUR_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_ADM_SPONT_NEUR_DISCH;
			NAME = "R_ADM_SPONT_NEUR_DISCH";
		};
		PARENTS = (R_ADM_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.01, 0.04, 0.75, 0.05, 0.05, 0.1, 0.01, 0.04, 0.05, 0.75, 0.05, 0.1, 0.01, 0.04, 0.05, 0.05, 0.75, 0.1, 0.01, 0.05, 0.05, 0.05, 0.05, 0.79);
		};
	};

	node R_LNLW_MED_PATHO
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_MED_PATHO;
			NAME = "R_LNLW_MED_PATHO";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (DEMY, BLOCK, AXONAL, V_E_REIN, E_REIN);
			PROBABILITIES = (0.8, 0.12, 0.07, 0.005, 0.005);
		};
	};

	node R_LNLW_MEDD2_RD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_MEDD2_RD_WD;
			NAME = "R_LNLW_MEDD2_RD_WD";
		};
		PARENTS = (R_LNLW_MED_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node R_MEDD2_RD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_RD_WD;
			NAME = "R_MEDD2_RD_WD";
		};
		PARENTS = (R_LNLW_MEDD2_RD_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_MED_RD_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_RD_WA;
			NAME = "R_MED_RD_WA";
		};
		PARENTS = (R_LNLW_MED_PATHO);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};

	node R_LNLW_MED_SEV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_MED_SEV;
			NAME = "R_LNLW_MED_SEV";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (0.895, 0.06, 0.03, 0.01, 0.005);
		};
	};

	node R_LNLW_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_APB_DENERV;
			NAME = "R_LNLW_APB_DENERV";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_TIME, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.3, 0.5, 0.2, 0, 0.1, 0.5, 0.4, 0, 0, 0.4, 0.4, 0.2, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.4, 0.1, 0, 0.1, 0.6, 0.25, 0.05, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.4, 0, 0, 0.4, 0.5, 0.1, 0, 0.3, 0.4, 0.3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 1, 0, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 0.8, 0.2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0.9, 0.1, 0, 0, 0.6, 0.3, 0.1, 0, 0.45, 0.45, 0.1, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 1, 0, 0, 0, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05, 0.05, 0.4, 0.5, 0.05);
		};
	};

	node R_DIFFN_LNLW_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_APB_DENERV;
			NAME = "R_DIFFN_LNLW_APB_DENERV";
		};
		PARENTS = (R_LNLW_APB_DENERV, R_DIFFN_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNL_DIFFN_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_APB_DENERV;
			NAME = "R_LNL_DIFFN_APB_DENERV";
		};
		PARENTS = (R_DIFFN_LNLW_APB_DENERV, R_LNLT1_LP_BE_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNLW_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_APB_MALOSS;
			NAME = "R_LNLW_APB_MALOSS";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.1, 0.9, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.4, 0.3, 0.3, 0, 0, 0, 0, 0.5, 0.5, 0, 0.25, 0.25, 0.25, 0.25, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_DIFFN_LNLW_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_APB_MALOSS;
			NAME = "R_DIFFN_LNLW_APB_MALOSS";
		};
		PARENTS = (R_DIFFN_APB_MALOSS, R_LNLW_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0022, 0.9977, 0.0001, 0, 0, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0, 0, 1, 0.0022, 0.9977, 0.0001, 0, 0, 0, 0.0282, 0.9718, 0, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0, 0, 1, 0.00019998, 0.0368963, 0.958804, 0.00409959, 0, 0, 0.0009, 0.3409, 0.6582, 0, 0, 0, 0.01, 0.99, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0329, 0.9669, 0, 0, 0, 0.0038, 0.9962, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0.0004, 0.9996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_APB_MALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MALOSS;
			NAME = "R_APB_MALOSS";
		};
		PARENTS = (R_DIFFN_LNLW_APB_MALOSS, R_LNLT1_LP_BE_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00219978, 0.977702, 9.999e-05, 0, 0, 0.019998, 0, 0.0361, 0.9439, 0, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0002, 0.0471, 0.9297, 0.003, 0, 0.02, 0, 0.0014, 0.3987, 0.5799, 0, 0.02, 0, 0, 0.013, 0.967, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0.0003, 0.0424, 0.9373, 0, 0.02, 0, 0, 0.005, 0.975, 0, 0.02, 0, 0, 0.0014, 0.9786, 0, 0.02, 0, 0, 0.0005, 0.9795, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node R_MED_DCV_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_DCV_WA;
			NAME = "R_MED_DCV_WA";
		};
		PARENTS = (R_MED_DIFSLOW_WA, R_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1136, 0.8864, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0764, 0.8866, 0.0364, 0, 0, 0, 0, 0, 0, 0, 0.0655, 0.9299, 0.0046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.1523, 0.2904, 0.3678, 0.1726, 0.0169, 0, 0, 0, 0, 0.008, 0.168, 0.7407, 0.0833, 0, 0, 0, 0, 0, 0.00089991, 0.0367963, 0.557644, 0.40246, 0.00219978, 0, 0, 0, 0, 0, 0.00070007, 0.0525053, 0.571257, 0.375238, 0.00030003, 0, 0, 0, 0, 0, 0.0007, 0.0745, 0.8859, 0.0389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0168, 0.0618, 0.2223, 0.4015, 0.2803, 0.0172, 0.0001, 0, 0, 0.00069986, 0.00589882, 0.0614877, 0.30064, 0.552589, 0.0781844, 0.0004999, 0, 0, 0.0002, 0.0018, 0.0263, 0.1887, 0.5884, 0.1916, 0.003, 0, 0, 0, 0.0001, 0.0024, 0.0358, 0.316, 0.5741, 0.0716, 0, 0, 0, 0, 9.999e-05, 0.00319968, 0.0780922, 0.594641, 0.323568, 0.00039996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0009999, 0.00469953, 0.0279972, 0.118388, 0.364664, 0.392261, 0.0906909, 0.00029997, 0, 0.0001, 0.0003, 0.0018, 0.011, 0.067, 0.2945, 0.5047, 0.1206, 0, 0, 0.00010001, 0.00090009, 0.00590059, 0.0422042, 0.235624, 0.522552, 0.192719, 0, 0, 0, 0.0001, 0.0012, 0.0121, 0.1131, 0.4415, 0.432, 0, 0, 0, 0, 0.00020002, 0.00280028, 0.0439044, 0.291729, 0.661366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0.0002, 0.0011, 0.0057, 0.0332, 0.1704, 0.4424, 0.347, 0);
		};
	};

	node R_MED_DCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_DCV_EW;
			NAME = "R_MED_DCV_EW";
		};
		PARENTS = (R_MED_DIFSLOW_EW, R_APB_MALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.109, 0.8903, 0.0007, 0, 0, 0, 0, 0, 0, 0, 0.0039996, 0.114389, 0.862114, 0.0194981, 0, 0, 0, 0, 0, 0, 0.0001, 0.0028, 0.064, 0.9243, 0.0088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0835, 0.1153, 0.2417, 0.3746, 0.1682, 0.0167, 0, 0, 0, 0, 0.00410041, 0.0247025, 0.154615, 0.738974, 0.0776078, 0, 0, 0, 0, 0, 0.0011, 0.0082, 0.0683, 0.7087, 0.2135, 0.0002, 0, 0, 0, 0, 9.999e-05, 0.00079992, 0.0089991, 0.30297, 0.665433, 0.0216978, 0, 0, 0, 0, 0, 0, 0.0006, 0.0547, 0.6199, 0.3247, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00929907, 0.0180982, 0.0545945, 0.227677, 0.393361, 0.277572, 0.0192981, 9.999e-05, 0, 0, 0.0004, 0.0012, 0.0055, 0.0628, 0.295, 0.5485, 0.0861, 0.0005, 0, 0, 0.00020002, 0.00050005, 0.00280028, 0.0389039, 0.230923, 0.582958, 0.142214, 0.00150015, 0, 0, 0, 0.00010001, 0.00060006, 0.0123012, 0.112911, 0.527253, 0.335534, 0.0113011, 0, 0, 0, 0, 9.999e-05, 0.00249975, 0.0359964, 0.324068, 0.571043, 0.0662934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.00059994, 0.00119988, 0.00419958, 0.0283972, 0.114889, 0.357564, 0.39636, 0.0963904, 0.00039996, 0, 0, 9.999e-05, 0.00019998, 0.00189981, 0.0106989, 0.0657934, 0.284572, 0.505449, 0.131287, 0, 0, 0, 0.00010001, 0.00120012, 0.00750075, 0.0510051, 0.252425, 0.518552, 0.169217, 0, 0, 0, 0, 0.0005, 0.0034, 0.028, 0.1822, 0.5098, 0.2761, 0, 0, 0, 0, 0.00010001, 0.00120012, 0.0125013, 0.111811, 0.445245, 0.429143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.0002, 0.0011, 0.0056, 0.033, 0.1653, 0.4414, 0.3534, 0);
		};
	};

	node R_MED_ALLCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_ALLCV_EW;
			NAME = "R_MED_ALLCV_EW";
		};
		PARENTS = (R_MED_RDLDCV_EW, R_MED_DCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S56, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0699, 0.8102, 0.1199, 0, 0, 0, 0, 0, 0, 0, 0, 0.0479048, 0.952095, 0, 0, 0, 0, 0, 0, 0, 0.00089991, 0.0089991, 0.0887911, 0.818618, 0.0826917, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.10111, 0.847785, 0.0506051, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.0791079, 0.90019, 0.020202, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0734, 0.8393, 0.0867, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.0947095, 0.894589, 0.010401, 0, 0, 0, 0, 0, 0, 0, 0.002, 0.0932, 0.9048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0.00660066, 0.145515, 0.838084, 0.00980098, 0, 0, 0, 0, 0, 0, 0.0005, 0.0239, 0.4369, 0.5387, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0239, 0.9748, 0.001, 0, 0, 0, 0, 0, 0, 0.0002, 0.0036, 0.2467, 0.7339, 0.0156, 0, 0, 0, 0, 0, 0, 0, 0.005, 0.3134, 0.6811, 0.0005, 0, 0, 0, 0, 0, 0, 0, 0.00710071, 0.549355, 0.443344, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0.00910091, 0.528353, 0.462546, 0, 0, 0, 0, 0, 0, 0, 0, 0.0216, 0.8359, 0.1425, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0355, 0.9641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0.0047, 0.9951, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.9005, 0.0991, 0, 0, 0, 0, 0, 0, 0, 0, 0.1288, 0.8712, 0, 0, 0, 0, 0, 0, 0, 0, 0.0113011, 0.571157, 0.417542, 0, 0, 0, 0, 0, 0, 0, 0, 0.0214, 0.9354, 0.0432, 0, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.0564944, 0.932307, 0.0110989, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.143, 0.8551, 0.0015, 0, 0, 0, 0, 0, 0, 0, 0.0019998, 0.354865, 0.643136, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0122, 0.9877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.997, 0.003, 0, 0, 0, 0, 0, 0, 0, 0, 0.2336, 0.7664, 0, 0, 0, 0, 0, 0, 0, 0, 0.00259974, 0.993401, 0.0039996, 0, 0, 0, 0, 0, 0, 0, 0, 0.2469, 0.7531, 0, 0, 0, 0, 0, 0, 0, 0, 0.002, 0.9939, 0.0041, 0, 0, 0, 0, 0, 0, 0, 0, 0.0314, 0.9686, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.0012, 0.1305, 0.8445, 0.0238, 0, 0, 0, 0, 0, 0, 0.0004, 0.074, 0.8589, 0.0667, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0373037, 0.80288, 0.159716, 0, 0, 0, 0, 0, 0, 0, 0.007, 0.3517, 0.6413, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0581, 0.9416, 0, 0, 0, 0, 0, 0, 0, 0, 0.006, 0.994, 0, 0, 0, 0, 0, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0002, 0.0321, 0.9677, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0184, 0.9815, 0, 0, 0, 0, 0, 0, 0, 0, 0.010101, 0.989899, 0, 0, 0, 0, 0, 0, 0, 0, 0.0042, 0.9958, 0, 0, 0, 0, 0, 0, 0, 0, 0.0011, 0.9989, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MED_CV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_CV_EW;
			NAME = "R_MED_CV_EW";
		};
		PARENTS = (R_MED_ALLCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0168, 0.1184, 0.296, 0.3227, 0.1783, 0.056, 0.0112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0155, 0.1165, 0.2969, 0.3229, 0.1782, 0.0564, 0.0114, 0.0016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0039, 0.0589, 0.2434, 0.3586, 0.235, 0.0808, 0.0164, 0.0022, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0.0007, 0.0176, 0.1966, 0.2515, 0.2699, 0.1688, 0.069, 0.0203, 0.0046, 0.0009, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0.00560056, 0.090009, 0.305631, 0.309331, 0.20392, 0.0673067, 0.0152015, 0.00260026, 0.00040004, 0, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0496, 0.2972, 0.4059, 0.2097, 0.0258, 0.0098, 0.0013, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0178982, 0.294571, 0.446955, 0.190181, 0.0433957, 0.00659934, 0.00029997, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0265, 0.5431, 0.3624, 0.0622, 0.0054, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.126513, 0.765477, 0.10061, 0.0070007, 0.00040004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_LNLW_MEDD2_LD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_MEDD2_LD_WD;
			NAME = "R_LNLW_MEDD2_LD_WD";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.25, 0.5, 0.25, 0, 0.05, 0.3, 0.5, 0.15, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);
		};
	};

	node R_MEDD2_LD_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_LD_WD;
			NAME = "R_MEDD2_LD_WD";
		};
		PARENTS = (R_LNLW_MEDD2_LD_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_LSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_LSLOW_WD;
			NAME = "R_MEDD2_LSLOW_WD";
		};
		PARENTS = (R_MEDD2_RD_WD, R_MEDD2_LD_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, V_SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0185, 0.9561, 0.0254, 0, 0, 0, 0.0166, 0.9834, 0, 0, 0.0007, 0.002, 0.0219, 0.9754, 0, 0.0021, 0.0042, 0.0295, 0.9642, 0, 0.0012, 0.0025, 0.0194, 0.9769, 0, 0.00069993, 0.00149985, 0.0119988, 0.985801, 0, 0.00020002, 0.00050005, 0.00460046, 0.994499, 0.00020002, 0.0001, 0.0002, 0.0014, 0.083, 0.9153, 0.0001, 0.0001, 0.0008, 0.0533, 0.9457, 0, 0.0001, 0.0004, 0.0319, 0.9676, 0, 0, 0, 0.00350035, 0.9965);
		};
	};

	node R_LNLW_MEDD2_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_MEDD2_BLOCK_WD;
			NAME = "R_LNLW_MEDD2_BLOCK_WD";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0.3, 0.6, 0.1, 0, 0, 0.1, 0.5, 0.3, 0.1, 0, 0, 0.05, 0.2, 0.55, 0.2, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.6, 0.2, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_MEDD2_BLOCK_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_BLOCK_WD;
			NAME = "R_MEDD2_BLOCK_WD";
		};
		PARENTS = (R_DIFFN_MEDD2_BLOCK, R_LNLW_MEDD2_BLOCK_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLW_MEDD2_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_MEDD2_DISP_WD;
			NAME = "R_LNLW_MEDD2_DISP_WD";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0.1, 0.5, 0.4, 0, 0, 0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.3, 0.5, 0.2, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_DIFFN_LNLW_MEDD2_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_MEDD2_DISP_WD;
			NAME = "R_DIFFN_LNLW_MEDD2_DISP_WD";
		};
		PARENTS = (R_DIFFN_MEDD2_DISP, R_LNLW_MEDD2_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.0749, 0.8229, 0.1022, 0, 0, 0.0626063, 0.937394, 0, 0, 0, 0, 1, 0.0749, 0.8229, 0.1022, 0, 0.0047, 0.1786, 0.8167, 0, 0, 0.019, 0.9795, 0.0015, 0, 0, 0, 1, 0, 0.0626063, 0.937394, 0, 0, 0.019, 0.9795, 0.0015, 0, 0.0001, 0.0833, 0.9166, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_DISP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_DISP_WD;
			NAME = "R_MEDD2_DISP_WD";
		};
		PARENTS = (R_DIFFN_LNLW_MEDD2_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_DISP_EWD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_DISP_EWD;
			NAME = "R_MEDD2_DISP_EWD";
		};
		PARENTS = (R_MEDD2_DISP_EW, R_MEDD2_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (R0_15, R0_25, R0_35, R0_45, R0_55, R0_65, R0_75, R0_85, R0_95);
			PROBABILITIES = (0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0, 0, 0, 0, 0, 0, 0, 0.133, 0.867, 0.0001, 0.2215, 0.7732, 0.0052, 0, 0, 0, 0, 0, 0, 0, 0, 0.131513, 0.857686, 0.0108011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315, 0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315, 0.1315, 0.8577, 0.0108, 0, 0, 0, 0, 0, 0, 0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001, 0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001, 0.9933, 0.0067, 0, 0, 0, 0, 0, 0, 0, 0.0404, 0.9192, 0.0404, 0, 0, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0, 0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0);
		};
	};

	node R_MEDD2_AMPR_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_AMPR_EW;
			NAME = "R_MEDD2_AMPR_EW";
		};
		PARENTS = (R_MEDD2_BLOCK_EW, R_MEDD2_DISP_EWD);
		DEFINITION =
		{
			NAMESTATES = (R0_0, R0_1, R0_2, R0_3, R0_4, R0_5, R0_6, R0_7, R0_8, R0_9, R1_0, R_1_1);
			PROBABILITIES = (0, 0.282672, 0.716428, 0.00089991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.5547, 0.4268, 0.0183, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0.0090009, 0.512751, 0.415242, 0.0589059, 0.00390039, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0.0635, 0.4459, 0.3732, 0.0995, 0.0162, 0.0015, 0.0002, 0, 0, 0, 0, 0, 0.00290029, 0.114111, 0.39514, 0.319832, 0.131513, 0.029803, 0.00580058, 0.00090009, 0, 0, 0, 0, 0.0001, 0.0136, 0.1578, 0.3285, 0.2966, 0.1404, 0.0483, 0.0135, 0.0012, 0, 0, 0, 0, 0.00120024, 0.0385077, 0.174635, 0.30156, 0.261352, 0.144729, 0.065113, 0.0129026, 0, 0, 0, 0, 0.0001, 0.0062, 0.058, 0.1828, 0.2779, 0.2392, 0.1675, 0.0683, 0, 0, 0, 0, 0, 0.0009, 0.0157, 0.0823, 0.2012, 0.2516, 0.2559, 0.1924, 0, 0.9103, 0.0897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.8945, 0.1036, 0.0015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.114011, 0.716972, 0.159816, 0.00890089, 0.00030003, 0, 0, 0, 0, 0, 0, 0, 0.0026, 0.3111, 0.5155, 0.1499, 0.019, 0.0018, 0.0001, 0, 0, 0, 0, 0, 0, 0.0451, 0.3717, 0.4039, 0.1433, 0.0313, 0.0041, 0.0005, 0.0001, 0, 0, 0, 0, 0.0035, 0.1122, 0.3738, 0.3186, 0.1444, 0.0376, 0.0083, 0.0015, 0.0001, 0, 0, 0, 0.00020002, 0.0226023, 0.189019, 0.331733, 0.274427, 0.125213, 0.0431043, 0.0124012, 0.00130013, 0, 0, 0, 0, 0.00310031, 0.0615061, 0.210921, 0.305131, 0.234423, 0.121712, 0.0528053, 0.010401, 0, 0, 0, 0, 0.0004, 0.0166, 0.1002, 0.2325, 0.2777, 0.2039, 0.1251, 0.0436, 0, 0.9974, 0.0026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.3856, 0.6048, 0.0095, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.0073, 0.8191, 0.1638, 0.0095, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.386, 0.4993, 0.1036, 0.0101, 0.0008, 0.0001, 0, 0, 0, 0, 0, 0, 0.0913, 0.5259, 0.3027, 0.0681, 0.0104, 0.0014, 0.0002, 0, 0, 0, 0, 0, 0.0149985, 0.306869, 0.420358, 0.192881, 0.0511949, 0.0113989, 0.00189981, 0.00029997, 9.999e-05, 0, 0, 0, 0.0023, 0.1333, 0.3728, 0.3075, 0.1292, 0.0421, 0.0099, 0.0024, 0.0005, 0, 0, 0, 0.00030003, 0.0444044, 0.241324, 0.343134, 0.220822, 0.10251, 0.0337034, 0.010401, 0.0030003, 0.00040004, 0, 0, 0, 0.0138, 0.1311, 0.2956, 0.2729, 0.1711, 0.0745, 0.0286, 0.0104, 0.002, 0, 0.946705, 0.0491951, 0.00349965, 0.00049995, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.872113, 0.110989, 0.0134986, 0.00249975, 0.00059994, 0.00019998, 9.999e-05, 0, 0, 0, 0, 0, 0.778256, 0.180136, 0.0312062, 0.0075015, 0.0020004, 0.00060012, 0.00020004, 0.00010002, 0, 0, 0, 0, 0.678, 0.2436, 0.0548, 0.0156, 0.005, 0.0018, 0.0007, 0.0003, 0.0001, 0.0001, 0, 0, 0.5789, 0.2957, 0.082, 0.027, 0.0096, 0.0037, 0.0017, 0.0007, 0.0004, 0.0002, 0.0001, 0, 0.485, 0.334, 0.1106, 0.0411, 0.0162, 0.0068, 0.0033, 0.0015, 0.0008, 0.0004, 0.0003, 0, 0.40484, 0.356636, 0.136714, 0.0562056, 0.0240024, 0.0108011, 0.00540054, 0.00270027, 0.00140014, 0.00080008, 0.00050005, 0, 0.331634, 0.367127, 0.161268, 0.0726855, 0.0334933, 0.0159968, 0.0084983, 0.00439912, 0.00239952, 0.0014997, 0.0009998, 0, 0.2731, 0.3669, 0.1808, 0.0881, 0.0434, 0.0217, 0.012, 0.0064, 0.0036, 0.0023, 0.0017, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_MED_LD_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_LD_WA;
			NAME = "R_MED_LD_WA";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0.25, 0.5, 0.25, 0, 0.05, 0.3, 0.5, 0.15, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 1, 0, 0, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.25, 0.25, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node R_MED_RDLDDEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_RDLDDEL;
			NAME = "R_MED_RDLDDEL";
		};
		PARENTS = (R_MED_RD_WA, R_MED_LD_WA);
		DEFINITION =
		{
			NAMESTATES = (MS3_1, MS3_9, MS4_7, MS10_1, MS20_1);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0964, 0.7981, 0.1055, 0, 0, 0.0032, 0.127, 0.8698, 0, 0, 0.00090009, 0.00280028, 0.0147015, 0.981598, 0, 0.0019, 0.5257, 0.4724, 0, 0, 0.00019998, 0.0414958, 0.958304, 0, 0, 0.0001, 0.0144, 0.9855, 0, 0, 0.00019998, 0.00059994, 0.00369963, 0.9955, 0, 0.0002, 0.0304, 0.9694, 0, 0, 0.0001, 0.0142, 0.9857, 0, 0, 0, 0.009, 0.9808, 0.0102, 0, 0, 0.0002, 0.0012, 0.9984, 0.0002);
		};
	};

	node R_MED_ALLDEL_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_ALLDEL_WA;
			NAME = "R_MED_ALLDEL_WA";
		};
		PARENTS = (R_MED_DCV_WA, R_MED_RDLDDEL);
		DEFINITION =
		{
			NAMESTATES = (MS0_0, MS0_4, MS0_8, MS1_6, MS3_2, MS6_4, MS12_8, MS25_6, INFIN);
			PROBABILITIES = (0.9996, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0.0511949, 0.229077, 0.566243, 0.153485, 0, 0, 0, 0, 0, 0.0001, 0.0035, 0.0632, 0.9326, 0.0006, 0, 0, 0, 0, 0.00129987, 0.0019998, 0.00439956, 0.0186981, 0.121288, 0.747925, 0.10439, 0, 0, 0.00010001, 0.00010001, 0.00030003, 0.00090009, 0.00450045, 0.0434043, 0.576758, 0.373937, 0, 0.5607, 0.4393, 0, 0, 0, 0, 0, 0, 0, 0.0192981, 0.128687, 0.492851, 0.359164, 0, 0, 0, 0, 0, 0, 0.0011, 0.0283, 0.9651, 0.0055, 0, 0, 0, 0, 0.0010001, 0.00160016, 0.00370037, 0.0161016, 0.109311, 0.742174, 0.126113, 0, 0, 0.0001, 0.0001, 0.0002, 0.0008, 0.0041, 0.0399, 0.5568, 0.398, 0, 0.0069, 0.7963, 0.1968, 0, 0, 0, 0, 0, 0, 0.0027, 0.0328, 0.2398, 0.7246, 0.0001, 0, 0, 0, 0, 0, 0.0002, 0.0075, 0.8889, 0.1034, 0, 0, 0, 0, 0.00079992, 0.00119988, 0.00279972, 0.0124988, 0.0915908, 0.723528, 0.167583, 0, 0, 0.0001, 0.0001, 0.0002, 0.0007, 0.0034, 0.0348, 0.5239, 0.4368, 0, 0, 0.0184, 0.9806, 0.001, 0, 0, 0, 0, 0, 0.00010001, 0.00330033, 0.0547055, 0.938194, 0.00370037, 0, 0, 0, 0, 0, 0, 0.00030003, 0.185018, 0.814681, 0, 0, 0, 0, 0.00049995, 0.00079992, 0.00179982, 0.00869913, 0.070293, 0.680232, 0.237676, 0, 0, 0.0001, 0.0001, 0.0001, 0.0005, 0.0027, 0.0287, 0.4783, 0.4895, 0, 0, 0.0001, 0.0179, 0.982, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00479952, 0.50395, 0.491051, 0, 0, 0, 0, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0, 0.0002, 0.0004, 0.0009, 0.0047, 0.044, 0.5737, 0.3761, 0, 0, 0, 0, 0.00010001, 0.00030003, 0.00180018, 0.0210021, 0.407241, 0.569557, 0, 0, 0.0002, 0.003, 0.1393, 0.8575, 0, 0, 0, 0, 0, 0, 0.0003, 0.0188, 0.9804, 0.0005, 0, 0, 0, 0, 0, 0, 0.00150015, 0.931393, 0.0671067, 0, 0, 0, 0.0001, 0.0001, 0.0002, 0.0013, 0.015, 0.3152, 0.6681, 0, 0, 0, 0, 0, 0.00010002, 0.00080016, 0.0111022, 0.280456, 0.707542, 0, 0, 0, 0, 0.0006, 0.8145, 0.1849, 0, 0, 0, 0, 0, 0, 0, 0.0494, 0.9506, 0, 0, 0, 0, 0, 0, 0, 0.001, 0.999, 0, 0, 0, 0, 0, 0, 0.0001, 0.0017, 0.0786, 0.9196, 0, 0, 0, 0, 0, 0, 0.0002, 0.0035, 0.138, 0.8583, 0, 0, 0, 0, 0.00040004, 0.0113011, 0.59736, 0.390939, 0, 0, 0, 0, 0, 0.00010001, 0.00340034, 0.29903, 0.69747, 0, 0, 0, 0, 0, 0, 0.0007, 0.1112, 0.8881, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00940094, 0.959396, 0.0311031, 0, 0, 0, 0, 0, 0, 0.00030003, 0.0253025, 0.974397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MED_LAT_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_LAT_WA;
			NAME = "R_MED_LAT_WA";
		};
		PARENTS = (R_MED_ALLDEL_WA);
		DEFINITION =
		{
			NAMESTATES = (MS2_3, MS2_7, MS3_1, MS3_5, MS3_9, MS4_3, MS4_7, MS5_3, MS5_9, MS6_5, MS7_1, MS8_0, MS9_0, MS10_0, MS12_0, MS14_0, MS16_0, MS18_0, INFIN);
			PROBABILITIES = (0.00590059, 0.132613, 0.50325, 0.322632, 0.0350035, 0.00060006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00069993, 0.019598, 0.168983, 0.425457, 0.312769, 0.0671933, 0.00529947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0007, 0.0194, 0.1669, 0.4202, 0.3089, 0.0829, 0.001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0010001, 0.0109011, 0.0635063, 0.194719, 0.393439, 0.292129, 0.0428043, 0.00150015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0003, 0.0011, 0.0034, 0.009, 0.021, 0.0528, 0.137, 0.2128, 0.2375, 0.1826, 0.1229, 0.0179, 0.0016, 0, 0, 0, 0, 0, 9.999e-05, 0.00019998, 0.00039996, 0.00079992, 0.00139986, 0.00249975, 0.00509949, 0.0119988, 0.0214978, 0.0353965, 0.0891911, 0.139786, 0.182882, 0.281172, 0.188981, 0.0358964, 0.00259974, 9.999e-05, 0, 0.0002, 0.0002, 0.0003, 0.0004, 0.0005, 0.0007, 0.0012, 0.0022, 0.0032, 0.0047, 0.0109, 0.0176, 0.028, 0.0629, 0.1563, 0.2269, 0.2569, 0.2269, 0, 0.00079992, 0.00089991, 0.00109989, 0.00119988, 0.00139986, 0.00169983, 0.00249975, 0.00369963, 0.00459954, 0.00559944, 0.0105989, 0.0155984, 0.0213979, 0.0432957, 0.10069, 0.164884, 0.253575, 0.366463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_LNLW_MED_BLOCK
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_MED_BLOCK;
			NAME = "R_LNLW_MED_BLOCK";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.6, 0.4, 0, 0, 0, 0.25, 0.5, 0.25, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.5, 0.1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_MED_BLOCK_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_BLOCK_WA;
			NAME = "R_MED_BLOCK_WA";
		};
		PARENTS = (R_LNLW_MED_BLOCK, R_DIFFN_MED_BLOCK);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0077, 0.9923, 0, 0, 0, 0.0007, 0.0234, 0.9759, 0, 0, 0.0019, 0.006, 0.0588, 0.9333, 0, 0, 0, 0, 0, 1, 0.0077, 0.9923, 0, 0, 0, 0.0001, 0.498, 0.5019, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0, 0, 0, 0, 1, 0.0007, 0.0234, 0.9759, 0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0.0007, 0.4328, 0.5665, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0, 0, 0, 0, 1, 0.0019, 0.006, 0.0588, 0.9333, 0, 0.001, 0.0033, 0.0376, 0.9581, 0, 0.0003, 0.0011, 0.0159, 0.9827, 0, 0.00030003, 0.00110011, 0.0125013, 0.986099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_APB_MULOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MULOSS;
			NAME = "R_APB_MULOSS";
		};
		PARENTS = (R_APB_MALOSS, R_MED_BLOCK_WA);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL, OTHER);
			PROBABILITIES = (0.98, 0, 0, 0, 0, 0.02, 0.9746, 0.0054, 0, 0, 0, 0.02, 0.0664, 0.9136, 0, 0, 0, 0.02, 0.016, 0.1801, 0.7138, 0.0701, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.0167, 0.9613, 0.002, 0, 0, 0.02, 0.00340034, 0.952995, 0.0236024, 0, 0, 0.020002, 0.0002, 0.2725, 0.7073, 0, 0, 0.02, 0.0009, 0.0263, 0.4192, 0.5336, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.00019998, 0.0534947, 0.923708, 0.00259974, 0, 0.019998, 0, 0.0234023, 0.945095, 0.0115012, 0, 0.020002, 0, 0.0048, 0.7523, 0.2229, 0, 0.02, 0, 0.00130013, 0.0637064, 0.914991, 0, 0.020002, 0, 0, 0, 0, 0.98, 0.02, 0, 0.00030003, 0.0481048, 0.931593, 0, 0.020002, 0, 0.00010001, 0.0270027, 0.952895, 0, 0.020002, 0, 0, 0.0091, 0.9709, 0, 0.02, 0, 0.0001, 0.0087, 0.9712, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0, 0, 0, 0, 0.98, 0.02, 0.1427, 0.2958, 0.4254, 0.1161, 0, 0.02, 0.1157, 0.2677, 0.4444, 0.1522, 0, 0.02, 0.0693931, 0.20108, 0.452655, 0.256874, 0, 0.019998, 0.0173, 0.0696, 0.2854, 0.6077, 0, 0.02, 0, 0, 0, 0, 0.98, 0.02);
		};
	};

	node R_APB_MVA_RECRUIT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MVA_RECRUIT;
			NAME = "R_APB_MVA_RECRUIT";
		};
		PARENTS = (R_APB_VOL_ACT, R_APB_MULOSS);
		DEFINITION =
		{
			NAMESTATES = (FULL, REDUCED, DISCRETE, NO_UNITS);
			PROBABILITIES = (0.9295, 0.0705, 0, 0, 0.4821, 0.5165, 0.0014, 0, 0.0661, 0.7993, 0.1346, 0, 0.00149985, 0.136586, 0.861914, 0, 0, 0, 0, 1, 0.263974, 0.434357, 0.30167, 0, 0.1707, 0.7, 0.1293, 0, 0.0366, 0.5168, 0.4466, 0, 0.0043, 0.1788, 0.8169, 0, 0.00029997, 0.0347965, 0.964904, 0, 0, 0, 0, 1, 0.1146, 0.3465, 0.5389, 0, 0.0038, 0.174, 0.8222, 0, 0.0005, 0.0594, 0.9401, 0, 0.0001, 0.0205, 0.9794, 0, 0, 0.0061, 0.9939, 0, 0, 0, 0, 1, 0.036, 0.2144, 0.7496, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_LNLW_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_APB_MUSIZE;
			NAME = "R_LNLW_APB_MUSIZE";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_TIME, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 0, 0.2, 0.7, 0.1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 0.95, 0.05, 0, 0, 0, 0, 0.7, 0.25, 0.05, 0, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 0, 0.25, 0.7, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 1, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0.1, 0.6, 0.3, 0, 0, 0, 0.1, 0.6, 0.3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_LNLW_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_APB_MUSIZE;
			NAME = "R_DIFFN_LNLW_APB_MUSIZE";
		};
		PARENTS = (R_DIFFN_APB_MUSIZE, R_LNLW_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.9981, 0.0019, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_LNL_DIFFN_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_APB_MUSIZE;
			NAME = "R_LNL_DIFFN_APB_MUSIZE";
		};
		PARENTS = (R_LNLT1_LP_BE_APB_MUSIZE, R_DIFFN_LNLW_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.9981, 0.0019, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0019, 0.9981, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0.9994, 0.00050005, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_APB_MUSIZE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MUSIZE;
			NAME = "R_APB_MUSIZE";
		};
		PARENTS = (R_LNL_DIFFN_APB_MUSIZE, R_MYOP_MYDY_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9791, 0.0009, 0, 0, 0, 0, 0.02, 0.9637, 0.0163, 0, 0, 0, 0, 0.02, 0.922192, 0.0578058, 0, 0, 0, 0, 0.020002, 0.39794, 0.566357, 0.0155016, 0.00020002, 0, 0, 0.020002, 0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02, 0.00120012, 0.231723, 0.588259, 0.147415, 0.0112011, 0.00020002, 0.020002, 0.9637, 0.0163, 0, 0, 0, 0, 0.02, 0.7493, 0.2257, 0.0049, 0.0001, 0, 0, 0.02, 0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02, 0.00389961, 0.381062, 0.506549, 0.0840916, 0.00429957, 9.999e-05, 0.019998, 0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02, 0, 0.00110011, 0.135714, 0.40254, 0.363136, 0.0775077, 0.020002, 0.922192, 0.0578058, 0, 0, 0, 0, 0.020002, 0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0908091, 0.818582, 0.0706071, 0, 0.020002, 0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02, 0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02, 0.39794, 0.566357, 0.0155016, 0.00020002, 0, 0, 0.020002, 0.00389961, 0.381062, 0.506549, 0.0840916, 0.00429957, 9.999e-05, 0.019998, 0, 0, 0.0908091, 0.818582, 0.0706071, 0, 0.020002, 0, 0, 0.00359964, 0.165483, 0.645435, 0.165483, 0.019998, 0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02, 0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02, 0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02, 0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0, 0, 0, 0, 0.0011, 0.9789, 0.02, 0.00120012, 0.231723, 0.588259, 0.147415, 0.0112011, 0.00020002, 0.020002, 0, 0.00110011, 0.135714, 0.40254, 0.363136, 0.0775077, 0.020002, 0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02, 0, 0, 0, 0, 0.0162016, 0.963796, 0.020002, 0, 0, 0, 0, 0.0011, 0.9789, 0.02, 0, 0, 0, 0, 0.0001, 0.9799, 0.02);
		};
	};

	node R_APB_MUSCLE_VOL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MUSCLE_VOL;
			NAME = "R_APB_MUSCLE_VOL";
		};
		PARENTS = (R_APB_MALOSS, R_APB_MUSIZE);
		DEFINITION =
		{
			NAMESTATES = (ATROPHIC, NORMAL);
			PROBABILITIES = (0.9896, 0.0104, 0.8137, 0.1863, 0.0209, 0.9791, 0.009, 0.991, 0.003, 0.997, 0.0004, 0.9996, 0.4212, 0.5788, 0.9976, 0.0024, 0.9603, 0.0397, 0.5185, 0.4815, 0.1087, 0.8913, 0.0278, 0.9722, 0.0046, 0.9954, 0.5185, 0.4815, 0.999, 0.001, 0.9893, 0.0107, 0.9588, 0.0412, 0.6377, 0.3623, 0.2716, 0.7284, 0.0779, 0.9221, 0.6336, 0.3664, 0.9995, 0.0005, 0.9969, 0.0031, 0.9953, 0.0047, 0.9518, 0.0482, 0.8234, 0.1766, 0.5986, 0.4014, 0.7685, 0.2315, 0.9989, 0.0011, 0.9984, 0.0016, 0.9984, 0.0016, 0.9975, 0.0025, 0.9965, 0.0035, 0.9956, 0.0044, 0.9857, 0.0143, 0.9363, 0.0637, 0.8403, 0.1597, 0.6534, 0.3466, 0.4689, 0.5311, 0.3174, 0.6826, 0.1948, 0.8052, 0.5681, 0.4319);
		};
	};

	node R_LNLW_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_APB_DE_REGEN;
			NAME = "R_LNLW_APB_DE_REGEN";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_TIME, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 0.8, 0.2, 0.2, 0.8, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 0.5, 0.5, 0.2, 0.8, 0.1, 0.9, 1, 0, 1, 0, 1, 0, 0.8, 0.2, 0.4, 0.6, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_DIFFN_LNLW_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_APB_DE_REGEN;
			NAME = "R_DIFFN_LNLW_APB_DE_REGEN";
		};
		PARENTS = (R_LNLW_APB_DE_REGEN, R_DIFFN_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_LNL_DIFFN_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_APB_DE_REGEN;
			NAME = "R_LNL_DIFFN_APB_DE_REGEN";
		};
		PARENTS = (R_DIFFN_LNLW_APB_DE_REGEN, R_LNLT1_LP_BE_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_APB_DE_REGEN
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_DE_REGEN;
			NAME = "R_APB_DE_REGEN";
		};
		PARENTS = (R_MYOP_MYDY_APB_DE_REGEN, R_LNL_DIFFN_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (1, 0, 0, 1, 0, 1, 0, 1);
		};
	};

	node R_APB_MUPSATEL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MUPSATEL;
			NAME = "R_APB_MUPSATEL";
		};
		PARENTS = (R_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.2, 0.8);
		};
	};

	node R_DE_REGEN_APB_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DE_REGEN_APB_NMT;
			NAME = "R_DE_REGEN_APB_NMT";
		};
		PARENTS = (R_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0.949, 0.003, 0.001, 0.04, 0.003, 0.001, 0.003);
		};
	};

	node R_APB_NMT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_NMT;
			NAME = "R_APB_NMT";
		};
		PARENTS = (R_MYAS_APB_NMT, R_DE_REGEN_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD_PRE, SEV_PRE, MLD_POST, MOD_POST, SEV_POST, MIXED);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_NMT_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_NMT_APB_DENERV;
			NAME = "R_NMT_APB_DENERV";
		};
		PARENTS = (R_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0.4, 0.45, 0.15, 0, 0.15, 0.35, 0.35, 0.15, 0.85, 0.15, 0, 0, 0.3, 0.45, 0.2, 0.05, 0.15, 0.35, 0.35, 0.15, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node R_MUSCLE_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MUSCLE_APB_DENERV;
			NAME = "R_MUSCLE_APB_DENERV";
		};
		PARENTS = (R_NMT_APB_DENERV, R_MYOP_MYDY_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_APB_DENERV
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_DENERV;
			NAME = "R_APB_DENERV";
		};
		PARENTS = (R_LNL_DIFFN_APB_DENERV, R_MUSCLE_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV);
			PROBABILITIES = (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};

	node R_APB_SPONT_HF_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_SPONT_HF_DISCH;
			NAME = "R_APB_SPONT_HF_DISCH";
		};
		PARENTS = (R_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.99, 0.01, 0.97, 0.03, 0.95, 0.05, 0.93, 0.07);
		};
	};

	node R_APB_SPONT_DENERV_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_SPONT_DENERV_ACT;
			NAME = "R_APB_SPONT_DENERV_ACT";
		};
		PARENTS = (R_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NO, SOME, MOD, ABUNDANT);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0.07, 0.85, 0.08, 0, 0.01, 0.07, 0.85, 0.07, 0, 0.01, 0.07, 0.92);
		};
	};

	node R_APB_SPONT_INS_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_SPONT_INS_ACT;
			NAME = "R_APB_SPONT_INS_ACT";
		};
		PARENTS = (R_APB_DENERV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.98, 0.02, 0.1, 0.9, 0.05, 0.95, 0.05, 0.95);
		};
	};

	node R_APB_REPSTIM_POST_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_REPSTIM_POST_DECR;
			NAME = "R_APB_REPSTIM_POST_DECR";
		};
		PARENTS = (R_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.25, 0.61, 0.1, 0.02, 0.02, 0.01, 0.1, 0.8, 0.07, 0.02, 0.001, 0.01, 0.02, 0.949, 0.02, 0.23, 0.23, 0.22, 0.22, 0.1);
		};
	};

	node R_APB_REPSTIM_FACILI
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_REPSTIM_FACILI;
			NAME = "R_APB_REPSTIM_FACILI";
		};
		PARENTS = (R_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MOD, SEV, REDUCED);
			PROBABILITIES = (0.95, 0.02, 0.01, 0.02, 0.01, 0.889, 0.1, 0.001, 0.01, 0.08, 0.909, 0.001, 0.89, 0.08, 0.01, 0.02, 0.48, 0.5, 0.01, 0.01, 0.02, 0.949, 0.03, 0.001, 0.25, 0.25, 0.25, 0.25);
		};
	};

	node R_APB_SF_JITTER
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_SF_JITTER;
			NAME = "R_APB_SF_JITTER";
		};
		PARENTS = (R_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, x2_5, x5_10, x_10);
			PROBABILITIES = (0.95, 0.05, 0, 0, 0.02, 0.2, 0.7, 0.08, 0, 0.1, 0.4, 0.5, 0.05, 0.7, 0.2, 0.05, 0.01, 0.19, 0.7, 0.1, 0, 0.1, 0.4, 0.5, 0.1, 0.3, 0.3, 0.3);
		};
	};

	node R_APB_MUPINSTAB
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MUPINSTAB;
			NAME = "R_APB_MUPINSTAB";
		};
		PARENTS = (R_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, YES);
			PROBABILITIES = (0.95, 0.05, 0.1, 0.9, 0.03, 0.97, 0.2, 0.8, 0.1, 0.9, 0.03, 0.97, 0.1, 0.9);
		};
	};

	node R_APB_EFFMUS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_EFFMUS;
			NAME = "R_APB_EFFMUS";
		};
		PARENTS = (R_APB_MUSIZE, R_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9683, 0.0117, 0, 0, 0, 0, 0.02, 0.9794, 0.0006, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.9742, 0.0058, 0, 0, 0, 0, 0.02, 0.9789, 0.0011, 0, 0, 0, 0, 0.02, 0.9799, 0.0001, 0, 0, 0, 0, 0.02, 0.7927, 0.1721, 0.0135, 0.0016, 0.0001, 0, 0.02, 0.0164, 0.9421, 0.0215, 0, 0, 0, 0.02, 0.8182, 0.1616, 0.0002, 0, 0, 0, 0.02, 0.9738, 0.0062, 0, 0, 0, 0, 0.02, 0.0329, 0.9359, 0.0112, 0, 0, 0, 0.02, 0.3885, 0.59, 0.0015, 0, 0, 0, 0.02, 0.9362, 0.0438, 0, 0, 0, 0, 0.02, 0.492951, 0.370363, 0.0905909, 0.0216978, 0.00389961, 0.00049995, 0.019998, 0, 0, 0.973697, 0.00630063, 0, 0, 0.020002, 0.00070007, 0.940394, 0.0389039, 0, 0, 0, 0.020002, 0.7833, 0.1966, 0.0001, 0, 0, 0, 0.02, 0, 9.999e-05, 0.978302, 0.00159984, 0, 0, 0.019998, 0, 0.3781, 0.6016, 0.0003, 0, 0, 0.02, 0.0114988, 0.965303, 0.00319968, 0, 0, 0, 0.019998, 0.150515, 0.39774, 0.271527, 0.117212, 0.0361036, 0.00690069, 0.020002, 0, 0, 0.0082, 0.9646, 0.0072, 0, 0.02, 0, 0.0571, 0.8829, 0.04, 0, 0, 0.02, 0.0541, 0.9055, 0.0203, 0.0001, 0, 0, 0.02, 0, 0, 0.0326033, 0.945695, 0.00170017, 0, 0.020002, 0, 0, 0.7931, 0.1868, 0.0001, 0, 0.02, 0, 0.439, 0.5362, 0.0048, 0, 0, 0.02, 0.0391, 0.2318, 0.3318, 0.2294, 0.1131, 0.0348, 0.02, 0, 0, 0, 0.0072, 0.9656, 0.0072, 0.02, 0, 0.0001, 0.3198, 0.6276, 0.0325, 0, 0.02, 0.0004, 0.4664, 0.4912, 0.0219, 0.0001, 0, 0.02, 0, 0, 0, 0.0287, 0.9496, 0.0017, 0.02, 0, 0, 0.0071, 0.7665, 0.2063, 0.0001, 0.02, 0, 0.00150015, 0.70187, 0.273827, 0.00280028, 0, 0.020002, 0.0065, 0.0866, 0.2598, 0.2877, 0.2273, 0.1121, 0.02, 0, 0, 0, 0, 0.0072, 0.9728, 0.02, 0, 0, 0.0034, 0.2908, 0.6521, 0.0337, 0.02, 0, 0.0126975, 0.626375, 0.324235, 0.0165967, 9.998e-05, 0.019996, 0, 0, 0, 0, 0.0287, 0.9513, 0.02, 0, 0, 0, 0.0062, 0.7673, 0.2065, 0.02, 0, 0, 0.0383962, 0.649135, 0.289471, 0.0029997, 0.019998, 0.00079984, 0.0223955, 0.140872, 0.24985, 0.316237, 0.24985, 0.019996, 0.1111, 0.2284, 0.2388, 0.1875, 0.1354, 0.0788, 0.02, 0.242676, 0.30487, 0.206879, 0.124588, 0.069493, 0.0314968, 0.019998, 0.4236, 0.3196, 0.1381, 0.0628, 0.0267, 0.0092, 0.02, 0.1227, 0.2392, 0.2382, 0.1813, 0.127, 0.0716, 0.02, 0.177682, 0.277672, 0.227477, 0.153485, 0.0955904, 0.0480952, 0.019998, 0.2958, 0.3186, 0.1878, 0.1033, 0.0527, 0.0218, 0.02, 0.219722, 0.264926, 0.20142, 0.140614, 0.0964096, 0.0569057, 0.020002);
		};
	};

	node R_APB_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MUPAMP;
			NAME = "R_APB_MUPAMP";
		};
		PARENTS = (R_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.782, 0.195, 0.003, 0, 0, 0, 0.02, 0.10431, 0.771077, 0.10431, 0.00030003, 0, 0, 0.020002, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0.00029997, 0.10109, 0.747125, 0.131487, 0, 0.019998, 0, 0, 0.0024, 0.1528, 0.7968, 0.028, 0.02, 0, 0, 0, 0.0028, 0.0968, 0.8804, 0.02, 0.1328, 0.1932, 0.2189, 0.1932, 0.1726, 0.0693, 0.02);
		};
	};

	node R_APB_QUAL_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_QUAL_MUPAMP;
			NAME = "R_APB_QUAL_MUPAMP";
		};
		PARENTS = (R_APB_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (V_RED, REDUCED, NORMAL, INCR, V_INCR);
			PROBABILITIES = (0.4289, 0.5209, 0.0499, 0.0003, 0, 0.0647, 0.5494, 0.3679, 0.018, 0, 0, 0.0479048, 0.875388, 0.0767077, 0, 0, 0.00869913, 0.283772, 0.677932, 0.029597, 0, 0.0002, 0.0376, 0.6283, 0.3339, 0, 0, 0.001, 0.0788, 0.9202, 0.096, 0.1884, 0.283, 0.3014, 0.1312);
		};
	};

	node R_APB_QUAN_MUPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_QUAN_MUPAMP;
			NAME = "R_APB_QUAN_MUPAMP";
		};
		PARENTS = (R_APB_MUPAMP);
		DEFINITION =
		{
			NAMESTATES = (UV34, UV44, UV58, UV74, UV94, UV122, UV156, UV200, UV260, UV330, UV420, UV540, UV700, UV900, UV1150, UV1480, UV1900, UV2440, UV3130, UV4020);
			PROBABILITIES = (0.00080024, 0.00370111, 0.013504, 0.0381114, 0.0835251, 0.142543, 0.189557, 0.196359, 0.158348, 0.0994298, 0.0486146, 0.0185056, 0.00550165, 0.00130039, 0.00020006, 0, 0, 0, 0, 0, 0, 0.00010002, 0.00080016, 0.00370074, 0.0135027, 0.0381076, 0.0835167, 0.142529, 0.189538, 0.196339, 0.158332, 0.0994199, 0.0486097, 0.0185037, 0.0055011, 0.00130026, 0.00020004, 0, 0, 0, 0, 0, 0, 0, 0, 0.00050005, 0.00370037, 0.0187019, 0.0639064, 0.147515, 0.230223, 0.243124, 0.173717, 0.0840084, 0.0275027, 0.00610061, 0.00090009, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0037, 0.0135, 0.0381, 0.0835, 0.1426, 0.1896, 0.1963, 0.1583, 0.0995, 0.0487, 0.0185, 0.0055, 0.0013, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0038, 0.0136, 0.0383, 0.0841, 0.1435, 0.1909, 0.1977, 0.1594, 0.1001, 0.049, 0.0187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0006, 0.0024, 0.0082, 0.0232, 0.0542, 0.1041, 0.1645, 0.2137, 0.2283, 0.2007, 0.0045, 0.0078, 0.0127, 0.0197, 0.0289, 0.0403, 0.0531, 0.0664, 0.0787, 0.0883, 0.0939, 0.0946, 0.0903, 0.0817, 0.07, 0.0569, 0.0438, 0.0319, 0.0221, 0.0144);
		};
	};

	node R_APB_ALLAMP_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_ALLAMP_WA;
			NAME = "R_APB_ALLAMP_WA";
		};
		PARENTS = (R_APB_MULOSS, R_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00, A2_00, A4_00, A8_00);
			PROBABILITIES = (0.00260026, 0.368737, 0.607561, 0.0208021, 0.00030003, 0, 0, 0, 0, 0, 0.0002, 0.4149, 0.4809, 0.0802, 0.0218, 0.002, 0, 0, 0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0, 0, 0, 0, 0.0018, 0.0536, 0.8696, 0.075, 0, 0, 0, 0, 0, 0, 0, 0.0736, 0.8528, 0.0736, 0, 0, 0, 0, 0, 0, 0.0001, 0.0794, 0.9205, 0.0003, 0.006, 0.105, 0.205, 0.1633, 0.141, 0.1771, 0.1279, 0.0744, 0.0409, 0.8924, 0.0661, 0.0006, 0, 0, 0, 0, 0, 0, 0.01, 0.77, 0.2049, 0.0128, 0.0022, 0.0001, 0, 0, 0, 0, 0, 0.2489, 0.7398, 0.0113, 0, 0, 0, 0, 0, 0, 0.00420042, 0.346835, 0.534854, 0.113711, 0.00040004, 0, 0, 0, 0, 0, 0.0064, 0.0855, 0.788, 0.1197, 0.0004, 0, 0, 0, 0, 0, 0.00029997, 0.116488, 0.766723, 0.116488, 0.00190019, 0.0230023, 0.190019, 0.262326, 0.162916, 0.124412, 0.126413, 0.0740074, 0.0350035, 0.2926, 0.7043, 0.0031, 0, 0, 0, 0, 0, 0, 0.0091, 0.4203, 0.5312, 0.038, 0.0012, 0.0002, 0, 0, 0, 0, 0, 0.309469, 0.680732, 0.00949905, 0.00029997, 0, 0, 0, 0, 0, 0.018, 0.6298, 0.2744, 0.0746, 0.0032, 0, 0, 0, 0, 0.00010001, 0.10461, 0.428143, 0.356836, 0.107111, 0.00320032, 0, 0, 0, 0, 0.00250025, 0.0978098, 0.249825, 0.532353, 0.114111, 0.00340034, 0.0144014, 0.0993099, 0.30283, 0.270227, 0.124312, 0.0821082, 0.0652065, 0.030203, 0.0114011, 0.781, 0.2189, 0.0001, 0, 0, 0, 0, 0, 0, 0.266927, 0.716172, 0.0166017, 0.00030003, 0, 0, 0, 0, 0, 9.999e-05, 0.10279, 0.879212, 0.0177982, 9.999e-05, 0, 0, 0, 0, 0, 0.00440044, 0.811181, 0.176218, 0.00730073, 0.00090009, 0, 0, 0, 0, 9.999e-05, 0.412959, 0.49655, 0.0718928, 0.0172983, 0.00119988, 0, 0, 0, 0, 0.0781078, 0.519652, 0.261026, 0.116712, 0.0234023, 0.00110011, 0, 0.1169, 0.3697, 0.2867, 0.1411, 0.0431, 0.0234, 0.0133, 0.0045, 0.0013, 0.9907, 0.0093, 0, 0, 0, 0, 0, 0, 0, 0.9858, 0.0142, 0, 0, 0, 0, 0, 0, 0, 0.9865, 0.0135, 0, 0, 0, 0, 0, 0, 0, 0.982, 0.018, 0, 0, 0, 0, 0, 0, 0, 0.9779, 0.0221, 0, 0, 0, 0, 0, 0, 0, 0.973, 0.027, 0, 0, 0, 0, 0, 0, 0, 0.937006, 0.0628937, 9.999e-05, 0, 0, 0, 0, 0, 0, 0.359564, 0.514749, 0.0940906, 0.0239976, 0.00459954, 0.0019998, 0.00079992, 0.00019998, 0, 0.133587, 0.385461, 0.269773, 0.130787, 0.040096, 0.0218978, 0.0126987, 0.00439956, 0.00129987, 0.0096, 0.0788, 0.2992, 0.2816, 0.1319, 0.0873, 0.0689, 0.0313, 0.0114, 0.00260052, 0.0289058, 0.204041, 0.265753, 0.159432, 0.119924, 0.119024, 0.0684137, 0.0319064, 0.00049995, 0.00839916, 0.118188, 0.213879, 0.162984, 0.138186, 0.169083, 0.119888, 0.0688931, 0.0001, 0.0021, 0.0586, 0.1473, 0.1427, 0.1363, 0.2057, 0.1798, 0.1274, 0.0521052, 0.160816, 0.227223, 0.20132, 0.106611, 0.0792079, 0.0831083, 0.0559056, 0.0337034);
		};
	};

	node R_APB_REPSTIM_CMAPAMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_REPSTIM_CMAPAMP;
			NAME = "R_APB_REPSTIM_CMAPAMP";
		};
		PARENTS = (R_APB_ALLAMP_WA);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_032, MV_044, MV_063, MV_088, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00130013, 0.115912, 0.128013, 0.133013, 0.130013, 0.119412, 0.10311, 0.0838084, 0.0639064, 0.0459046, 0.0310031, 0.019702, 0.0117012, 0.00660066, 0.00350035, 0.00170017, 0.00080008, 0.00040004, 0.00010001, 0.00010001, 0, 0, 0.00029997, 0.00129987, 0.00409959, 0.0111989, 0.0260974, 0.0515948, 0.0867913, 0.124688, 0.152485, 0.158884, 0.141086, 0.106789, 0.0687931, 0.0377962, 0.0176982, 0.00709929, 0.00239976, 0.00069993, 0.00019998, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00069993, 0.00309969, 0.0110989, 0.0312969, 0.070393, 0.124788, 0.174783, 0.193481, 0.169283, 0.116988, 0.0639936, 0.0275972, 0.00939906, 0.00249975, 0.00049995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00210021, 0.0107011, 0.0386039, 0.0990099, 0.179618, 0.231623, 0.211921, 0.137514, 0.0632063, 0.0207021, 0.00470047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00310031, 0.0190019, 0.0723072, 0.173617, 0.262226, 0.249725, 0.149715, 0.0567057, 0.0133013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0007, 0.0037, 0.0151, 0.0464, 0.1065, 0.1843, 0.2393, 0.2335, 0.1704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.00110011, 0.00610061, 0.0249025, 0.0768077, 0.177918, 0.308931, 0.40404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0038, 0.0208, 0.086, 0.2659, 0.6229);
		};
	};

	node R_MED_AMP_WA
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MED_AMP_WA;
			NAME = "R_MED_AMP_WA";
		};
		PARENTS = (R_APB_ALLAMP_WA);
		DEFINITION =
		{
			NAMESTATES = (MV_000, MV_13, MV_18, MV_25, MV_35, MV_5, MV_71, MV1, MV1_4, MV2, MV2_8, MV4, MV5_6, MV8, MV11_3, MV16, MV22_6);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.285028, 0.234623, 0.178118, 0.124512, 0.080308, 0.0476048, 0.0261026, 0.0132013, 0.00610061, 0.00260026, 0.0010001, 0.00040004, 0.00010001, 0, 0, 0, 0, 0.0135013, 0.0369037, 0.0794079, 0.135314, 0.181818, 0.193219, 0.162216, 0.107711, 0.0564056, 0.0234023, 0.00760076, 0.0020002, 0.00040004, 0.00010001, 0, 0, 0, 0, 9.999e-05, 0.00059994, 0.00359964, 0.0164983, 0.0534947, 0.123288, 0.20128, 0.233477, 0.192181, 0.112089, 0.0464953, 0.0136986, 0.00279972, 0.00039996, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0010001, 0.00690069, 0.0309031, 0.0926093, 0.185519, 0.249625, 0.225022, 0.135814, 0.0549055, 0.0149015, 0.00270027, 0, 0, 0, 0, 0, 0, 0, 0.00030003, 0.00310031, 0.0190019, 0.0723072, 0.173617, 0.262226, 0.249725, 0.149715, 0.0567057, 0.0133013, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0017, 0.0093, 0.0355, 0.0964, 0.186, 0.2545, 0.2471, 0.1693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0029, 0.0155, 0.0599, 0.1641, 0.3182, 0.439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00010001, 0.00150015, 0.0115012, 0.0631063, 0.244524, 0.679268);
		};
	};

	node R_APB_FORCE
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_FORCE;
			NAME = "R_APB_FORCE";
		};
		PARENTS = (R_APB_ALLAMP_WA, R_APB_VOL_ACT);
		DEFINITION =
		{
			NAMESTATES = (x5, x4, x3, x2, x1, x0);
			PROBABILITIES = (0, 0, 0, 0.00409959, 0.190781, 0.80512, 0, 0, 0, 0.001, 0.0578, 0.9412, 0, 0, 0, 9.999e-05, 0.0125987, 0.987301, 0, 0, 0, 0, 0.00590059, 0.994099, 0.00159984, 0.0185981, 0.0935906, 0.267873, 0.365863, 0.252475, 0.0002, 0.0034, 0.026, 0.1312, 0.3333, 0.5059, 0, 0.0003, 0.0044, 0.0446, 0.2226, 0.7281, 0, 0, 0.0005, 0.0098, 0.1058, 0.8839, 0.0149015, 0.235424, 0.533153, 0.20152, 0.0149015, 0.00010001, 0.0009, 0.0256, 0.18, 0.4308, 0.3036, 0.0591, 0, 0.0005, 0.0128, 0.1328, 0.4061, 0.4478, 0, 0, 0.0003, 0.0091, 0.1181, 0.8725, 0.1538, 0.6493, 0.1936, 0.0033, 0, 0, 0.0098, 0.1589, 0.4714, 0.3101, 0.0485, 0.0013, 0.0001, 0.0049, 0.0751, 0.3632, 0.429, 0.1277, 0, 0, 0.0008, 0.0215, 0.1873, 0.7904, 0.6667, 0.3291, 0.0042, 0, 0, 0, 0.0537054, 0.420442, 0.454845, 0.0690069, 0.0020002, 0, 0.00050005, 0.0273027, 0.243324, 0.50135, 0.211821, 0.0157016, 0, 9.999e-05, 0.00249975, 0.0471953, 0.275572, 0.674633, 0.946895, 0.0531053, 0, 0, 0, 0, 0.117312, 0.565857, 0.30103, 0.0157016, 0.00010001, 0, 0.00120012, 0.060206, 0.386239, 0.454245, 0.0954095, 0.00270027, 0, 0.0001, 0.0044, 0.0713, 0.3326, 0.5916, 0.9782, 0.0218, 0, 0, 0, 0, 0.410159, 0.479352, 0.106989, 0.00349965, 0, 0, 0.0256026, 0.247025, 0.483848, 0.217422, 0.0256026, 0.00050005, 0, 0.0020002, 0.0279028, 0.181218, 0.411241, 0.377638, 0.9971, 0.0029, 0, 0, 0, 0, 0.7017, 0.2755, 0.0226, 0.0002, 0, 0, 0.1171, 0.4443, 0.3699, 0.0654, 0.0033, 0, 0.0004, 0.0107, 0.0847, 0.3035, 0.3988, 0.2019, 0.9996, 0.0004, 0, 0, 0, 0, 0.8804, 0.1161, 0.0035, 0, 0, 0, 0.327067, 0.487951, 0.172683, 0.0119988, 0.00029997, 0, 0.0030003, 0.0426043, 0.194819, 0.384938, 0.292929, 0.0817082);
		};
	};

	node R_APB_TA_CONCL
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_TA_CONCL;
			NAME = "R_APB_TA_CONCL";
		};
		PARENTS = (R_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (x_5ABOVE, x2_5ABOVE, NORMAL, x2_5BELOW, x_5BELOW);
			PROBABILITIES = (0, 0, 0.005, 0.045, 0.95, 0, 0, 0.05, 0.9, 0.05, 0, 0.03, 0.94, 0.03, 0, 0.195, 0.6, 0.2, 0.005, 0, 0.48, 0.5, 0.02, 0, 0, 0.8, 0.195, 0.005, 0, 0, 0.2, 0.2, 0.2, 0.2, 0.2);
		};
	};

	node R_APB_QUAN_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_QUAN_MUPPOLY;
			NAME = "R_APB_QUAN_MUPPOLY";
		};
		PARENTS = (R_APB_EFFMUS, R_APB_DE_REGEN);
		DEFINITION =
		{
			NAMESTATES = (x_12_, x12_24_, x_24_);
			PROBABILITIES = (0.109, 0.548, 0.343, 0.004, 0.122, 0.874, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.925, 0.075, 0, 0.091, 0.526, 0.383, 0.796, 0.201, 0.003, 0.061, 0.465, 0.474, 0.637, 0.348, 0.015, 0.039, 0.396, 0.565, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724, 0.34, 0.564, 0.096, 0.015, 0.261, 0.724);
		};
	};

	node R_APB_QUAL_MUPPOLY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_QUAL_MUPPOLY;
			NAME = "R_APB_QUAL_MUPPOLY";
		};
		PARENTS = (R_APB_QUAN_MUPPOLY);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR);
			PROBABILITIES = (0.95, 0.05, 0.3, 0.7, 0.05, 0.95);
		};
	};

	node R_APB_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MUPDUR;
			NAME = "R_APB_MUPDUR";
		};
		PARENTS = (R_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (V_SMALL, SMALL, NORMAL, INCR, LARGE, V_LARGE, OTHER);
			PROBABILITIES = (0.9388, 0.0412, 0, 0, 0, 0, 0.02, 0.0396, 0.9008, 0.0396, 0, 0, 0, 0.02, 0, 0, 0.98, 0, 0, 0, 0.02, 0, 0, 0.0396, 0.9008, 0.0396, 0, 0.02, 0, 0, 0, 0.0412, 0.938, 0.0008, 0.02, 0, 0, 0, 0.0039, 0.2546, 0.7215, 0.02, 0.09, 0.235, 0.3236, 0.235, 0.09, 0.0064, 0.02);
		};
	};

	node R_APB_QUAL_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_QUAL_MUPDUR;
			NAME = "R_APB_QUAL_MUPDUR";
		};
		PARENTS = (R_APB_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (SMALL, NORMAL, INCR);
			PROBABILITIES = (0.8309, 0.1677, 0.0014, 0.49, 0.49, 0.02, 0.1065, 0.787, 0.1065, 0.02, 0.49, 0.49, 0.0014, 0.1677, 0.8309, 0.0001, 0.0392, 0.9607, 0.2597, 0.4806, 0.2597);
		};
	};

	node R_APB_QUAN_MUPDUR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_QUAN_MUPDUR;
			NAME = "R_APB_QUAN_MUPDUR";
		};
		PARENTS = (R_APB_MUPDUR);
		DEFINITION =
		{
			NAMESTATES = (MS3, MS4, MS5, MS6, MS7, MS8, MS9, MS10, MS11, MS12, MS13, MS14, MS15, MS16, MS17, MS18, MS19, MS20, MS_20);
			PROBABILITIES = (0.09982, 0.183337, 0.240248, 0.224545, 0.14973, 0.0712142, 0.0242048, 0.00580116, 0.0010002, 0.00010002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.010201, 0.0369037, 0.0951095, 0.174717, 0.228923, 0.214021, 0.142614, 0.0678068, 0.0230023, 0.00560056, 0.0010001, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0025, 0.0177, 0.0739, 0.1852, 0.2785, 0.2515, 0.1363, 0.0444, 0.0087, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0.00029997, 0.0019998, 0.010199, 0.0367963, 0.0948905, 0.174283, 0.228377, 0.213479, 0.142286, 0.0676932, 0.0229977, 0.00559944, 0.0009999, 9.999e-05, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00039996, 0.00179982, 0.0069993, 0.0218978, 0.0540946, 0.105189, 0.161284, 0.194981, 0.185981, 0.139886, 0.0828917, 0.0387961, 0.00569943, 0.0201, 0.0341, 0.0529, 0.0748, 0.0966, 0.1138, 0.1224, 0.1202, 0.1078, 0.0882, 0.0658, 0.0449, 0.0279, 0.0159, 0.0082, 0.0039, 0.0017, 0.0007, 0.0001);
		};
	};

	node R_APB_MVA_AMP
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MVA_AMP;
			NAME = "R_APB_MVA_AMP";
		};
		PARENTS = (R_APB_EFFMUS);
		DEFINITION =
		{
			NAMESTATES = (INCR, NORMAL, REDUCED);
			PROBABILITIES = (0, 0.04, 0.96, 0.01, 0.15, 0.84, 0.05, 0.9, 0.05, 0.5, 0.49, 0.01, 0.85, 0.15, 0, 0.96, 0.04, 0, 0.33, 0.34, 0.33);
		};
	};

	node R_APB_REPSTIM_DECR
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_REPSTIM_DECR;
			NAME = "R_APB_REPSTIM_DECR";
		};
		PARENTS = (R_APB_NMT);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, INCON);
			PROBABILITIES = (0.949, 0.02, 0.01, 0.001, 0.02, 0.04, 0.2, 0.7, 0.04, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.35, 0.57, 0.05, 0.01, 0.02, 0.02, 0.1, 0.8, 0.06, 0.02, 0.001, 0.01, 0.04, 0.929, 0.02, 0.245, 0.245, 0.245, 0.245, 0.02);
		};
	};

	node R_LNLW_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_APB_NEUR_ACT;
			NAME = "R_LNLW_APB_NEUR_ACT";
		};
		PARENTS = (R_LNLW_MED_TIME, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 0.9, 0.1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.7, 0.3, 0, 0, 0, 0, 0.3, 0.7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node R_DIFFN_LNLW_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_APB_NEUR_ACT;
			NAME = "R_DIFFN_LNLW_APB_NEUR_ACT";
		};
		PARENTS = (R_LNLW_APB_NEUR_ACT, R_DIFFN_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_APB_NEUR_ACT
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_NEUR_ACT;
			NAME = "R_APB_NEUR_ACT";
		};
		PARENTS = (R_DIFFN_LNLW_APB_NEUR_ACT, R_LNLT1_LP_BE_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_APB_SPONT_NEUR_DISCH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_SPONT_NEUR_DISCH;
			NAME = "R_APB_SPONT_NEUR_DISCH";
		};
		PARENTS = (R_APB_NEUR_ACT);
		DEFINITION =
		{
			NAMESTATES = (NO, FASCIC, NEUROMYO, MYOKYMIA, TETANUS, OTHER);
			PROBABILITIES = (0.98, 0.02, 0, 0, 0, 0, 0.1, 0.9, 0, 0, 0, 0, 0.01, 0.04, 0.75, 0.05, 0.05, 0.1, 0.01, 0.04, 0.05, 0.75, 0.05, 0.1, 0.01, 0.04, 0.05, 0.05, 0.75, 0.1, 0.01, 0.05, 0.05, 0.05, 0.05, 0.79);
		};
	};

	node R_LNLW_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_APB_MUDENS;
			NAME = "R_LNLW_APB_MUDENS";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_TIME, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.9, 0.1, 0, 0.8, 0.2, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 0.8, 0.2, 0, 0.7, 0.3, 0, 0.6, 0.4, 0, 0.6, 0.4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.6, 0.4, 0, 0.5, 0.5, 0, 0.5, 0.4, 0.1, 0.3, 0.6, 0.1, 1, 0, 0, 0.7, 0.3, 0, 0.1, 0.6, 0.3, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 0.5, 0.5, 0, 0.15, 0.7, 0.15, 0, 0.5, 0.5, 0, 0.5, 0.5, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 0.05, 0.5, 0.45, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 1, 0, 0, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3, 0.2, 0.5, 0.3);
		};
	};

	node R_DIFFN_LNLW_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_APB_MUDENS;
			NAME = "R_DIFFN_LNLW_APB_MUDENS";
		};
		PARENTS = (R_LNLW_APB_MUDENS, R_DIFFN_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_LNL_DIFFN_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNL_DIFFN_APB_MUDENS;
			NAME = "R_LNL_DIFFN_APB_MUDENS";
		};
		PARENTS = (R_DIFFN_LNLW_APB_MUDENS, R_LNLT1_LP_BE_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_APB_MUDENS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_MUDENS;
			NAME = "R_APB_MUDENS";
		};
		PARENTS = (R_MUSCLE_APB_MUDENS, R_LNL_DIFFN_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (NORMAL, INCR, V_INCR);
			PROBABILITIES = (1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1);
		};
	};

	node R_APB_SF_DENSITY
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_APB_SF_DENSITY;
			NAME = "R_APB_SF_DENSITY";
		};
		PARENTS = (R_APB_MUDENS);
		DEFINITION =
		{
			NAMESTATES = (x_2SD, x2_4SD, x_4SD);
			PROBABILITIES = (0.97, 0.03, 0, 0.05, 0.9, 0.05, 0.01, 0.04, 0.95);
		};
	};

	node R_LNLW_MEDD2_SALOSS_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_LNLW_MEDD2_SALOSS_WD;
			NAME = "R_LNLW_MEDD2_SALOSS_WD";
		};
		PARENTS = (R_LNLW_MED_PATHO, R_LNLW_MED_SEV);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0.4, 0.6, 1, 0, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0, 0.2, 0.5, 0.3, 0, 0, 0.1, 0.4, 0.4, 0.1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0);
		};
	};

	node R_DIFFN_LNLW_MEDD2_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_DIFFN_LNLW_MEDD2_SALOSS;
			NAME = "R_DIFFN_LNLW_MEDD2_SALOSS";
		};
		PARENTS = (R_DIFFN_MEDD2_SALOSS, R_LNLW_MEDD2_SALOSS_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_SALOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_SALOSS;
			NAME = "R_MEDD2_SALOSS";
		};
		PARENTS = (R_LNLBE_MEDD2_SALOSS_EW, R_DIFFN_LNLW_MEDD2_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_EFFAXLOSS
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_EFFAXLOSS;
			NAME = "R_MEDD2_EFFAXLOSS";
		};
		PARENTS = (R_MEDD2_SALOSS, R_MEDD2_BLOCK_WD);
		DEFINITION =
		{
			NAMESTATES = (NO, MILD, MOD, SEV, TOTAL);
			PROBABILITIES = (1, 0, 0, 0, 0, 0.0073, 0.9812, 0.0115, 0, 0, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0, 0, 1, 0.0073, 0.9812, 0.0115, 0, 0, 0, 0.0289, 0.9711, 0, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0, 0, 1, 0.0017, 0.1306, 0.867, 0.0007, 0, 0, 0.0097, 0.5989, 0.3914, 0, 0, 0.00049995, 0.0330967, 0.966403, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0, 0, 1, 0, 0.0003, 0.0212, 0.9785, 0, 0, 0, 0.0017, 0.9983, 0, 0, 0, 0.0008, 0.9992, 0, 0, 0, 0.0001, 0.9999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_ALLAMP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_ALLAMP_WD;
			NAME = "R_MEDD2_ALLAMP_WD";
		};
		PARENTS = (R_MEDD2_EFFAXLOSS, R_MEDD2_DISP_WD);
		DEFINITION =
		{
			NAMESTATES = (ZERO, A0_01, A0_10, A0_30, A0_70, A1_00);
			PROBABILITIES = (0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0, 0.3192, 0.6448, 0.036, 0, 0, 0.0051, 0.994, 0.0009, 0, 0, 0, 0.9945, 0.0055, 0, 0, 0, 0, 0, 0.3443, 0.6228, 0.0329, 0, 0, 0.0474047, 0.939494, 0.0129013, 0.00020002, 0, 0, 0.9599, 0.0401, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 0, 0.0248, 0.9704, 0.0048, 0, 0, 0, 0.933093, 0.0669067, 0, 0, 0, 0.0001, 0.9994, 0.0005, 0, 0, 0, 0.7508, 0.2492, 0, 0, 0, 0, 0.1028, 0.8793, 0.0178, 0.0001, 0, 0, 0.8756, 0.1237, 0.0007, 0, 0, 0, 0.9969, 0.0031, 0, 0, 0, 0, 0.9999, 0.0001, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
		};
	};

	node R_MEDD2_AMP_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_AMP_WD;
			NAME = "R_MEDD2_AMP_WD";
		};
		PARENTS = (R_MEDD2_ALLAMP_WD);
		DEFINITION =
		{
			NAMESTATES = (UV_0_63, UV0_88, UV1_25, UV1_77, UV2_50, UV3_50, UV5_00, UV7_10, UV10_0, UV14_0, UV20_0, UV28_0, UV40_0, UV57_0, UV_80_0);
			PROBABILITIES = (0.750075, 0.187819, 0.0476048, 0.0112011, 0.00260026, 0.00060006, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.3184, 0.2478, 0.178, 0.1158, 0.0688, 0.038, 0.0189, 0.0086, 0.0036, 0.0014, 0.0005, 0.0002, 0, 0, 0, 0.0117012, 0.0392039, 0.0935094, 0.167617, 0.218922, 0.209521, 0.146515, 0.0747075, 0.0287029, 0.00780078, 0.00160016, 0.00020002, 0, 0, 0, 0, 0, 9.999e-05, 0.00129987, 0.0108989, 0.0526947, 0.156284, 0.270173, 0.274273, 0.163584, 0.0568943, 0.0121988, 0.00149985, 9.999e-05, 0, 0, 0, 0, 0, 0, 9.999e-05, 0.00219978, 0.0217978, 0.10329, 0.259174, 0.325467, 0.209179, 0.0670933, 0.0107989, 0.00089991, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0072, 0.0656, 0.2449, 0.3735, 0.2388, 0.0624, 0.0072);
		};
	};

	node R_MEDD2_DSLOW_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_DSLOW_EW;
			NAME = "R_MEDD2_DSLOW_EW";
		};
		PARENTS = (R_MEDD2_DIFSLOW_EW, R_MEDD2_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_ALLCV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_ALLCV_EW;
			NAME = "R_MEDD2_ALLCV_EW";
		};
		PARENTS = (R_MEDD2_DSLOW_EW, R_MEDD2_LSLOW_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0264, 0.9149, 0.0587, 0, 0, 0, 0, 0, 0, 0, 0.0218, 0.9469, 0.0313, 0, 0, 0, 0, 0, 0.00030003, 0.00190019, 0.0140014, 0.0788079, 0.323832, 0.459646, 0.121212, 0.00030003, 0, 0, 0, 0.00010001, 0.00050005, 0.00410041, 0.0384038, 0.214521, 0.742374, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0006, 0.0944, 0.8841, 0.0209, 0, 0, 0, 0, 0, 0, 0.0007, 0.2183, 0.779, 0.002, 0, 0, 0, 0, 9.999e-05, 0.00039996, 0.00429957, 0.0320968, 0.19558, 0.504849, 0.260374, 0.00229977, 0, 0, 0, 0, 0.00020002, 0.00210021, 0.0239024, 0.164816, 0.808981, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.0018, 0.1956, 0.786, 0.0166, 0, 0, 0, 0, 0, 0, 0.0077, 0.4577, 0.5345, 0.0001, 0, 0, 0, 0, 0.0001, 0.0007, 0.0074, 0.0735, 0.4044, 0.4938, 0.0201, 0, 0, 0, 0, 0.0001, 0.0008, 0.0123, 0.1119, 0.8749, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.0026, 0.2655, 0.7316, 0.0003, 0, 0, 0, 0, 0, 0, 0.0166, 0.9182, 0.0652, 0, 0, 0, 0, 0, 0.0001, 0.001, 0.0172, 0.2179, 0.6479, 0.1159, 0, 0, 0, 0, 0, 0.0003, 0.0055, 0.0699, 0.9243, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.0044, 0.5355, 0.46, 0.0001, 0, 0, 0, 0, 0, 0, 0.0398, 0.946, 0.0142, 0, 0, 0, 0, 0, 9.999e-05, 0.00179982, 0.0558944, 0.460054, 0.482152, 0, 0, 0, 0, 0, 0.0001, 0.0021, 0.039, 0.9588, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.0047, 0.5053, 0.49, 0, 0, 0, 0, 0, 0, 0.0002, 0.1104, 0.8881, 0.0013, 0, 0, 0, 0, 0, 0.0001, 0.0041, 0.1033, 0.8925, 0, 0, 0, 0, 0, 0, 0.00069993, 0.0188981, 0.980402, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.0218, 0.8352, 0.143, 0, 0, 0, 0, 0, 0, 0.002, 0.3203, 0.6777, 0, 0, 0, 0, 0, 0, 0.0003, 0.0194, 0.9803, 0, 0, 0, 0, 0, 0, 0.0002, 0.0093, 0.9905, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0003, 0.001, 0.0036, 0.0154, 0.0712, 0.2467, 0.6617, 0, 0, 0.00010001, 0.00050005, 0.00190019, 0.00930093, 0.050405, 0.207221, 0.730573, 0, 0, 0, 0.0001, 0.0004, 0.0026, 0.019, 0.1153, 0.8626, 0, 0, 0, 0, 0.0001, 0.0006, 0.0062, 0.0562, 0.9369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_CV_EW
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_CV_EW;
			NAME = "R_MEDD2_CV_EW";
		};
		PARENTS = (R_MEDD2_ALLCV_EW);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S72, M_S_76);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0012, 0.0172, 0.1126, 0.2484, 0.321, 0.1935, 0.0803, 0.0258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0009999, 0.0148985, 0.09959, 0.226177, 0.293371, 0.226177, 0.10199, 0.0288971, 0.00649935, 0.00139986, 0, 0, 0, 0, 0, 0, 0, 0, 0.00250025, 0.0317032, 0.144514, 0.263926, 0.292529, 0.167017, 0.0669067, 0.0245025, 0.00540054, 0.00090009, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0.0005, 0.0189, 0.1567, 0.3371, 0.2862, 0.1429, 0.0465, 0.0095, 0.0014, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.010499, 0.156484, 0.377862, 0.30067, 0.125187, 0.0244975, 0.00419958, 0.00049995, 9.999e-05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0045, 0.1674, 0.4536, 0.2834, 0.0774, 0.0118, 0.0017, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0109011, 0.422842, 0.444644, 0.106611, 0.0137014, 0.00120012, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0199, 0.8041, 0.1629, 0.0125, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

	node R_MEDD2_DSLOW_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_DSLOW_WD;
			NAME = "R_MEDD2_DSLOW_WD";
		};
		PARENTS = (R_MEDD2_DIFSLOW_WD, R_MEDD2_SALOSS);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0, 0.00059994, 0.9973, 0.00209979, 0, 0, 0, 0, 0, 0, 0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0, 0.0178018, 0.119012, 0.448145, 0.385439, 0.029603, 0, 0, 0, 0, 0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0, 0.00060006, 0.00920092, 0.116012, 0.485749, 0.383538, 0.00490049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0, 0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0, 0, 0.00060006, 0.0114011, 0.114711, 0.544554, 0.319632, 0.00910091, 0, 0, 0, 0.00010001, 0.00240024, 0.0374037, 0.332733, 0.567057, 0.060306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0, 0.00010001, 0.00030003, 0.00170017, 0.00830083, 0.0447045, 0.20312, 0.463246, 0.278528, 0, 0, 0.00010001, 0.00070007, 0.00380038, 0.0243024, 0.141614, 0.424042, 0.405441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_ALLCV_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_ALLCV_WD;
			NAME = "R_MEDD2_ALLCV_WD";
		};
		PARENTS = (R_MEDD2_DSLOW_WD, R_MEDD2_LSLOW_WD);
		DEFINITION =
		{
			NAMESTATES = (M_S60, M_S52, M_S44, M_S36, M_S28, M_S20, M_S14, M_S08, M_S00);
			PROBABILITIES = (1, 0, 0, 0, 0, 0, 0, 0, 0, 0.0235976, 0.257874, 0.640336, 0.0780922, 9.999e-05, 0, 0, 0, 0, 0, 0.0021, 0.1149, 0.7277, 0.1553, 0, 0, 0, 0, 0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0, 0, 0, 9.999e-05, 0.00029997, 0.00219978, 0.0191981, 0.125187, 0.853015, 0, 0.0304969, 0.967203, 0.00229977, 0, 0, 0, 0, 0, 0, 0.0017, 0.0421, 0.4597, 0.4852, 0.0113, 0, 0, 0, 0, 0, 0.0001, 0.0146, 0.3403, 0.6424, 0.0026, 0, 0, 0, 0.00010002, 0.00040008, 0.00210042, 0.010102, 0.0516103, 0.218444, 0.464693, 0.252551, 0, 0, 0, 0, 0.00019998, 0.00139986, 0.0136986, 0.10289, 0.881812, 0, 0.00039996, 0.0618938, 0.888111, 0.049595, 0, 0, 0, 0, 0, 0, 0.00190019, 0.0749075, 0.569457, 0.353235, 0.00050005, 0, 0, 0, 0, 0, 0.0007, 0.0498, 0.764, 0.1854, 0.0001, 0, 0, 0, 0.00010001, 0.00060006, 0.00340034, 0.0223022, 0.133613, 0.414541, 0.425443, 0, 0, 0, 0, 0.00010001, 0.00070007, 0.00860086, 0.0782078, 0.912391, 0, 0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0, 0, 0, 0.00220022, 0.105111, 0.825182, 0.0675068, 0, 0, 0, 0, 0, 0, 0.0012, 0.137, 0.8421, 0.0197, 0, 0, 0, 0, 0.0001, 0.0008, 0.0073, 0.0649, 0.3063, 0.6206, 0, 0, 0, 0, 0, 0.00030003, 0.0050005, 0.0564056, 0.938294, 0, 0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0, 0, 0, 0, 0.00220022, 0.170017, 0.806281, 0.0215022, 0, 0, 0, 0, 0, 0, 0.0034, 0.4375, 0.5591, 0, 0, 0, 0, 0, 0.00010001, 0.00160016, 0.0226023, 0.174717, 0.80098, 0, 0, 0, 0, 0, 0.0001, 0.0026, 0.0379, 0.9594, 0, 0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0, 0, 0, 0, 0, 0.00219978, 0.233777, 0.762024, 0.0019998, 0, 0, 0, 0, 0, 0, 0.0208021, 0.809481, 0.169717, 0, 0, 0, 0, 0, 0.00020002, 0.00520052, 0.0726073, 0.921992, 0, 0, 0, 0, 0, 0, 0.0012, 0.023, 0.9758, 0, 0, 0, 0, 0, 0.00029997, 0.0955904, 0.89661, 0.00749925, 0, 0, 0, 0, 0, 0, 0.010099, 0.489451, 0.50045, 0, 0, 0, 0, 0, 0, 0.00010001, 0.0392039, 0.960696, 0, 0, 0, 0, 0, 0, 0.00120012, 0.029603, 0.969197, 0, 0, 0, 0, 0, 0, 0.0005, 0.014, 0.9855, 0, 0.00020002, 0.00060006, 0.00190019, 0.00640064, 0.0247025, 0.0974097, 0.285529, 0.583258, 0, 0.0001, 0.0002, 0.0007, 0.0026, 0.0117, 0.0585, 0.2222, 0.704, 0, 0, 0.0001, 0.0002, 0.0009, 0.0051, 0.0329, 0.1636, 0.7972, 0, 0, 0, 0.0001, 0.0004, 0.0022, 0.0159, 0.0994, 0.882, 0, 0, 0, 0, 0.0001, 0.0006, 0.0058, 0.0523, 0.9412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);
		};
	};

	node R_MEDD2_CV_WD
	{
		TYPE = CPT;
		HEADER =
		{
			ID = R_MEDD2_CV_WD;
			NAME = "R_MEDD2_CV_WD";
		};
		PARENTS = (R_MEDD2_ALLCV_WD);
		DEFINITION =
		{
			NAMESTATES = (M_S00, M_S04, M_S08, M_S12, M_S16, M_S20, M_S24, M_S28, M_S32, M_S36, M_S40, M_S44, M_S48, M_S52, M_S56, M_S60, M_S64, M_S68, M_S_72);
			PROBABILITIES = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.0108989, 0.0983902, 0.316568, 0.353165, 0.174883, 0.040296, 0.00559944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.00849915, 0.0767923, 0.281072, 0.332267, 0.20118, 0.0815918, 0.0160984, 0.00209979, 0.00019998, 0, 0, 0, 0, 0, 0, 0, 0.00020002, 0.0139014, 0.112011, 0.291829, 0.313431, 0.191519, 0.0610061, 0.0130013, 0.00280028, 0.00030003, 0, 0, 0, 0, 0, 0, 0, 0, 0.00290029, 0.0706071, 0.315132, 0.383638, 0.170917, 0.0476048, 0.00820082, 0.00090009, 0.00010001, 0, 0, 0, 0, 0, 0, 0, 0, 0.00019998, 0.0393961, 0.318468, 0.419458, 0.175582, 0.0418958, 0.00449955, 0.00049995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0156984, 0.314469, 0.466053, 0.171583, 0.0290971, 0.00279972, 0.00029997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0308031, 0.576958, 0.339834, 0.0482048, 0.0040004, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0465047, 0.848285, 0.09991, 0.00510051, 0.00020002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		};
	};

};