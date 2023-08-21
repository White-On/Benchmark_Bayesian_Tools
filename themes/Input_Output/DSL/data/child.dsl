net Child
{
// property softwar aGrUM 1.9.0

	node BirthAsphyxia
	{
		TYPE = CPT;
		HEADER =
		{
			ID = BirthAsphyxia;
			NAME = "BirthAsphyxia";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.1, 0.9);
		};
	};

	node Disease
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Disease;
			NAME = "Disease";
		};
		PARENTS = (BirthAsphyxia);
		DEFINITION =
		{
			NAMESTATES = (PFC, TGA, Fallot, PAIVS, TAPVD, Lung);
			PROBABILITIES = (0.2, 0.3, 0.25, 0.15, 0.05, 0.05, 0.0306122, 0.336735, 0.295918, 0.234694, 0.0510204, 0.0510204);
		};
	};

	node LungFlow
	{
		TYPE = CPT;
		HEADER =
		{
			ID = LungFlow;
			NAME = "LungFlow";
		};
		PARENTS = (Disease);
		DEFINITION =
		{
			NAMESTATES = (Normal, Low, High);
			PROBABILITIES = (0.3, 0.65, 0.05, 0.2, 0.05, 0.75, 0.15, 0.8, 0.05, 0.1, 0.85, 0.05, 0.3, 0.1, 0.6, 0.7, 0.1, 0.2);
		};
	};

	node DuctFlow
	{
		TYPE = CPT;
		HEADER =
		{
			ID = DuctFlow;
			NAME = "DuctFlow";
		};
		PARENTS = (Disease);
		DEFINITION =
		{
			NAMESTATES = (Lt_to_Rt, None, Rt_to_Lt);
			PROBABILITIES = (0.15, 0.05, 0.8, 0.1, 0.8, 0.1, 0.8, 0.2, 0, 1, 0, 0, 0.33, 0.33, 0.34, 0.2, 0.4, 0.4);
		};
	};

	node Sick
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Sick;
			NAME = "Sick";
		};
		PARENTS = (Disease);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.4, 0.6, 0.3, 0.7, 0.2, 0.8, 0.3, 0.7, 0.7, 0.3, 0.7, 0.3);
		};
	};

	node Age
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Age;
			NAME = "Age";
		};
		PARENTS = (Sick, Disease);
		DEFINITION =
		{
			NAMESTATES = (_0_3_days, _4_10_days, _11_30_days);
			PROBABILITIES = (0.95, 0.03, 0.02, 0.8, 0.15, 0.05, 0.7, 0.15, 0.15, 0.8, 0.15, 0.05, 0.8, 0.15, 0.05, 0.9, 0.08, 0.02, 0.85, 0.1, 0.05, 0.7, 0.2, 0.1, 0.25, 0.25, 0.5, 0.8, 0.15, 0.05, 0.7, 0.2, 0.1, 0.8, 0.15, 0.05);
		};
	};

	node LungParench
	{
		TYPE = CPT;
		HEADER =
		{
			ID = LungParench;
			NAME = "LungParench";
		};
		PARENTS = (Disease);
		DEFINITION =
		{
			NAMESTATES = (Normal, Congested, Abnormal);
			PROBABILITIES = (0.6, 0.1, 0.3, 0.8, 0.05, 0.15, 0.8, 0.05, 0.15, 0.8, 0.05, 0.15, 0.1, 0.6, 0.3, 0.03, 0.25, 0.72);
		};
	};

	node Grunting
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Grunting;
			NAME = "Grunting";
		};
		PARENTS = (Sick, LungParench);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.2, 0.8, 0.4, 0.6, 0.8, 0.2, 0.05, 0.95, 0.2, 0.8, 0.6, 0.4);
		};
	};

	node GruntingReport
	{
		TYPE = CPT;
		HEADER =
		{
			ID = GruntingReport;
			NAME = "GruntingReport";
		};
		PARENTS = (Grunting);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.8, 0.2, 0.1, 0.9);
		};
	};

	node ChestXray
	{
		TYPE = CPT;
		HEADER =
		{
			ID = ChestXray;
			NAME = "ChestXray";
		};
		PARENTS = (LungFlow, LungParench);
		DEFINITION =
		{
			NAMESTATES = (Normal, Oligaemic, Plethoric, Grd_Glass, AsyPatch);
			PROBABILITIES = (0.9, 0.03, 0.03, 0.01, 0.03, 0.05, 0.02, 0.15, 0.7, 0.08, 0.05, 0.05, 0.05, 0.05, 0.8, 0.14, 0.8, 0.02, 0.02, 0.02, 0.05, 0.22, 0.08, 0.5, 0.15, 0.05, 0.15, 0.05, 0.05, 0.7, 0.15, 0.01, 0.79, 0.04, 0.01, 0.05, 0.02, 0.4, 0.4, 0.13, 0.24, 0.33, 0.03, 0.34, 0.06);
		};
	};

	node XrayReport
	{
		TYPE = CPT;
		HEADER =
		{
			ID = XrayReport;
			NAME = "XrayReport";
		};
		PARENTS = (ChestXray);
		DEFINITION =
		{
			NAMESTATES = (Normal, Oligaemic, Plethoric, Grd_Glass, AsyPatchy);
			PROBABILITIES = (0.8, 0.06, 0.06, 0.02, 0.06, 0.1, 0.8, 0.02, 0.02, 0.06, 0.1, 0.02, 0.8, 0.02, 0.06, 0.08, 0.02, 0.1, 0.6, 0.2, 0.08, 0.02, 0.1, 0.1, 0.7);
		};
	};

	node CO2
	{
		TYPE = CPT;
		HEADER =
		{
			ID = CO2;
			NAME = "CO2";
		};
		PARENTS = (LungParench);
		DEFINITION =
		{
			NAMESTATES = (Normal, Low, High);
			PROBABILITIES = (0.8, 0.1, 0.1, 0.65, 0.05, 0.3, 0.45, 0.05, 0.5);
		};
	};

	node CO2Report
	{
		TYPE = CPT;
		HEADER =
		{
			ID = CO2Report;
			NAME = "CO2Report";
		};
		PARENTS = (CO2);
		DEFINITION =
		{
			NAMESTATES = (_7_5, _7_5_);
			PROBABILITIES = (0.9, 0.1, 0.9, 0.1, 0.1, 0.9);
		};
	};

	node LVH
	{
		TYPE = CPT;
		HEADER =
		{
			ID = LVH;
			NAME = "LVH";
		};
		PARENTS = (Disease);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.1, 0.9, 0.1, 0.9, 0.1, 0.9, 0.9, 0.1, 0.05, 0.95, 0.1, 0.9);
		};
	};

	node LVHreport
	{
		TYPE = CPT;
		HEADER =
		{
			ID = LVHreport;
			NAME = "LVHreport";
		};
		PARENTS = (LVH);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.9, 0.1, 0.05, 0.95);
		};
	};

	node CardiacMixing
	{
		TYPE = CPT;
		HEADER =
		{
			ID = CardiacMixing;
			NAME = "CardiacMixing";
		};
		PARENTS = (Disease);
		DEFINITION =
		{
			NAMESTATES = (None, Mild, Complete, Transp_);
			PROBABILITIES = (0.4, 0.43, 0.15, 0.02, 0.02, 0.09, 0.09, 0.8, 0.02, 0.16, 0.8, 0.02, 0.01, 0.02, 0.95, 0.02, 0.01, 0.03, 0.95, 0.01, 0.4, 0.53, 0.05, 0.02);
		};
	};

	node HypoxiaInO2
	{
		TYPE = CPT;
		HEADER =
		{
			ID = HypoxiaInO2;
			NAME = "HypoxiaInO2";
		};
		PARENTS = (LungParench, CardiacMixing);
		DEFINITION =
		{
			NAMESTATES = (Mild, Moderate, Severe);
			PROBABILITIES = (0.93, 0.05, 0.02, 0.1, 0.8, 0.1, 0.1, 0.7, 0.2, 0.02, 0.18, 0.8, 0.15, 0.8, 0.05, 0.1, 0.75, 0.15, 0.05, 0.65, 0.3, 0.1, 0.3, 0.6, 0.7, 0.2, 0.1, 0.1, 0.65, 0.25, 0.1, 0.5, 0.4, 0.02, 0.18, 0.8);
		};
	};

	node RUQO2
	{
		TYPE = CPT;
		HEADER =
		{
			ID = RUQO2;
			NAME = "RUQO2";
		};
		PARENTS = (HypoxiaInO2);
		DEFINITION =
		{
			NAMESTATES = (_5, _5_12, _12_);
			PROBABILITIES = (0.1, 0.3, 0.6, 0.3, 0.6, 0.1, 0.5, 0.4, 0.1);
		};
	};

	node HypDistrib
	{
		TYPE = CPT;
		HEADER =
		{
			ID = HypDistrib;
			NAME = "HypDistrib";
		};
		PARENTS = (CardiacMixing, DuctFlow);
		DEFINITION =
		{
			NAMESTATES = (Equal, Unequal);
			PROBABILITIES = (0.95, 0.05, 0.95, 0.05, 0.05, 0.95, 0.95, 0.05, 0.95, 0.05, 0.5, 0.5, 0.95, 0.05, 0.95, 0.05, 0.95, 0.05, 0.95, 0.05, 0.95, 0.05, 0.5, 0.5);
		};
	};

	node LowerBodyO2
	{
		TYPE = CPT;
		HEADER =
		{
			ID = LowerBodyO2;
			NAME = "LowerBodyO2";
		};
		PARENTS = (HypoxiaInO2, HypDistrib);
		DEFINITION =
		{
			NAMESTATES = (_5, _5_12, _12_);
			PROBABILITIES = (0.1, 0.3, 0.6, 0.4, 0.5, 0.1, 0.3, 0.6, 0.1, 0.5, 0.45, 0.05, 0.5, 0.4, 0.1, 0.6, 0.35, 0.05);
		};
	};

};