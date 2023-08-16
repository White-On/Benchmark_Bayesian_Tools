net data\earthquake.bif
{
// property softwar aGrUM 1.9.0

	node Earthquake
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Earthquake;
			NAME = "Earthquake";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (True, False);
			PROBABILITIES = (0.02, 0.98);
		};
	};

	node Burglary
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Burglary;
			NAME = "Burglary";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (True, False);
			PROBABILITIES = (0.01, 0.99);
		};
	};

	node Alarm
	{
		TYPE = CPT;
		HEADER =
		{
			ID = Alarm;
			NAME = "Alarm";
		};
		PARENTS = (Earthquake, Burglary);
		DEFINITION =
		{
			NAMESTATES = (True, False);
			PROBABILITIES = (0.95, 0.05, 0.29, 0.71, 0.94, 0.06, 0.001, 0.999);
		};
	};

	node MaryCalls
	{
		TYPE = CPT;
		HEADER =
		{
			ID = MaryCalls;
			NAME = "MaryCalls";
		};
		PARENTS = (Alarm);
		DEFINITION =
		{
			NAMESTATES = (True, False);
			PROBABILITIES = (0.7, 0.3, 0.01, 0.99);
		};
	};

	node JohnCalls
	{
		TYPE = CPT;
		HEADER =
		{
			ID = JohnCalls;
			NAME = "JohnCalls";
		};
		PARENTS = (Alarm);
		DEFINITION =
		{
			NAMESTATES = (True, False);
			PROBABILITIES = (0.9, 0.1, 0.05, 0.95);
		};
	};

};