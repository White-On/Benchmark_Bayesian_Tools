net Cancer
{
// property softwar aGrUM 1.9.0

	node Smoker
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Smoker;
			NAME = "Smoker";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (True, False);
			PROBABILITIES = (0.3, 0.7);
		};
	};

	node Pollution
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Pollution;
			NAME = "Pollution";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (low, high);
			PROBABILITIES = (0.9, 0.1);
		};
	};

	node Cancer
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Cancer;
			NAME = "Cancer";
		};
		PARENTS = (Smoker, Pollution);
		DEFINITION =
		{
			NAMESTATES = (True, False);
			PROBABILITIES = (0.03, 0.97, 0.05, 0.95, 0.001, 0.999, 0.02, 0.98);
		};
	};

	node Dyspnoea
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Dyspnoea;
			NAME = "Dyspnoea";
		};
		PARENTS = (Cancer);
		DEFINITION =
		{
			NAMESTATES = (True, False);
			PROBABILITIES = (0.65, 0.35, 0.3, 0.7);
		};
	};

	node Xray
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Xray;
			NAME = "Xray";
		};
		PARENTS = (Cancer);
		DEFINITION =
		{
			NAMESTATES = (positive, negative);
			PROBABILITIES = (0.9, 0.1, 0.2, 0.8);
		};
	};

};